// retourner la configuration par service
package com.example.config.server;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.yaml.snakeyaml.Yaml;

import java.io.StringReader;
import java.util.*;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ConfigExplorerService {

    private final RestTemplate restTemplate;

    private final ProjectsScannerService projectsScannerService;

    @Value("${runtime-config.base-url:http://config-service:8080}")
    private String configServerBaseUrl;

    private static final Set<String> SENSITIVE_MARKERS = Set.of(
            "password", "secret", "token", "apikey", "api-key", "private", "credential", "keystore", "truststore"
    );

    private static final Set<String> KNOWN_SUFFIXES = Set.of(
            "k8s","dev","tst","uat","int","pprod","preprod","prod","local","default","dm"
    );

    public ProjectConfigSplitResponse getProjectConfigSplit(String projectName, String env, String label) {
        String effectiveEnv   = (env == null || env.isBlank()) ? "default" : env.trim();
        String effectiveLabel = (label == null || label.isBlank()) ? "main" : label.trim();

        // GET /{application}/{profile}/{label}
        String actualProject = resolveActualProjectName(projectName);

        String url = String.format("%s/%s/%s/%s",
                configServerBaseUrl,
                actualProject,
                effectiveEnv,
                effectiveLabel
        );

        @SuppressWarnings("unchecked")
        Map<String, Object> raw = restTemplate.getForObject(url, Map.class);
        if (raw == null) {
            return new ProjectConfigSplitResponse(projectName, effectiveEnv, effectiveLabel, 0, 0, 0, List.of(), List.of());
        }

        // Parse propertySources
        List<Map<String, Object>> propertySources = extractPropertySources(raw);

        // Split sources
        List<Map<String, Object>> commonSources = propertySources.stream()
                .filter(ps -> sourceName(ps).contains("/common/") || sourceName(ps).contains("\\common\\"))
                .collect(Collectors.toList());

        String envPathToken1 = "/env/" + effectiveEnv + "/";
        String envPathToken2 = "\\env\\" + effectiveEnv + "\\";
        List<Map<String, Object>> envSources = propertySources.stream()
                .filter(ps -> sourceName(ps).contains(envPathToken1) || sourceName(ps).contains(envPathToken2))
                .collect(Collectors.toList());

        // Flatten to maps: key -> Entry(value, sourceName)
        Map<String, Entry> commonMap = flattenSources(commonSources);
        Map<String, Entry> envMap    = flattenSources(envSources);

        // Table 1: shared/common keys but with override (env > common)
        List<ProjectConfigSplitResponse.PropertyEntry> shared = new ArrayList<>();
        int overriddenCount = 0;

        for (Map.Entry<String, Entry> e : commonMap.entrySet()) {
            String key = e.getKey();
            Entry commonEntry = e.getValue();

            Entry effective = commonEntry;
            boolean overridden = false;

            if (envMap.containsKey(key)) {
                effective = envMap.get(key);
                overridden = true;
                overriddenCount++;
            }

            shared.add(new ProjectConfigSplitResponse.PropertyEntry(
                    key,
                    maskIfSensitive(key, effective.value),
                    effective.source,
                    overridden
            ));
        }

        // Table 2: env dedicated (keys only in env)
        List<ProjectConfigSplitResponse.PropertyEntry> envDedicated = new ArrayList<>();
        for (Map.Entry<String, Entry> e : envMap.entrySet()) {
            String key = e.getKey();
            if (commonMap.containsKey(key)) continue; // pas "dédié", c'est override
            Entry envEntry = e.getValue();

            envDedicated.add(new ProjectConfigSplitResponse.PropertyEntry(
                    key,
                    maskIfSensitive(key, envEntry.value),
                    envEntry.source,
                    false
            ));
        }

        // Sort
        shared.sort(Comparator.comparing(ProjectConfigSplitResponse.PropertyEntry::getKey));
        envDedicated.sort(Comparator.comparing(ProjectConfigSplitResponse.PropertyEntry::getKey));

        return new ProjectConfigSplitResponse(
                projectName,
                effectiveEnv,
                effectiveLabel,
                commonMap.size(),
                envMap.size(),
                overriddenCount,
                shared,
                envDedicated
        );
    }

    // ---------------- helpers ----------------

    private List<Map<String, Object>> extractPropertySources(Map<String, Object> raw) {
        Object ps = raw.get("propertySources");
        if (!(ps instanceof List<?> list)) return List.of();

        List<Map<String, Object>> out = new ArrayList<>();
        for (Object o : list) {
            if (o instanceof Map<?, ?> m) {
                @SuppressWarnings("unchecked")
                Map<String, Object> cast = (Map<String, Object>) m;
                out.add(cast);
            }
        }
        return out;
    }

    private String sourceName(Map<String, Object> ps) {
        Object name = ps.get("name");
        return name == null ? "" : String.valueOf(name);
    }

    private Map<String, Entry> flattenSources(List<Map<String, Object>> sources) {
        Map<String, Entry> out = new HashMap<>();
        for (Map<String, Object> ps : sources) {
            String srcName = sourceName(ps);
            Object sourceObj = ps.get("source");
            if (!(sourceObj instanceof Map<?, ?> sourceMap)) continue;

            @SuppressWarnings("unchecked")
            Map<String, Object> source = (Map<String, Object>) sourceMap;

            // "source" est déjà un map plat (Config Server renvoie souvent plat),
            // mais on garde un flatten safe au cas où.
            Map<String, Object> flat = new HashMap<>();
            flattenAny("", source, flat);

            for (Map.Entry<String, Object> e : flat.entrySet()) {
                String key = e.getKey();
                String val = e.getValue() == null ? "" : String.valueOf(e.getValue());
                // Important: l'ordre propertySources est déjà precedence (high first),
                // mais nous on veut "dernier gagne" dans un même groupe (common/env).
                // Ici on "overwrite" à la fin => ok si l'ordre est du plus faible au plus fort.
                // Comme ce n'est pas garanti, on préfère conserver le premier trouvé (prioritaire).
                // Donc: putIfAbsent => garde la source la plus prioritaire.
                out.putIfAbsent(key, new Entry(val, srcName));
            }
        }
        return out;
    }

    private void flattenAny(String prefix, Object node, Map<String, Object> out) {
        if (node instanceof Map<?, ?> m) {
            for (Map.Entry<?, ?> e : m.entrySet()) {
                String k = String.valueOf(e.getKey());
                String newPrefix = prefix.isEmpty() ? k : prefix + "." + k;
                flattenAny(newPrefix, e.getValue(), out);
            }
        } else if (node instanceof List<?> list) {
            // option: JSON-ish index keys
            for (int i = 0; i < list.size(); i++) {
                String newPrefix = prefix + "[" + i + "]";
                flattenAny(newPrefix, list.get(i), out);
            }
        } else {
            out.put(prefix, node);
        }
    }

    private String maskIfSensitive(String key, String value) {
        String lower = key.toLowerCase();
        for (String m : SENSITIVE_MARKERS) {
            if (lower.contains(m)) return "******";
        }
        return value;
    }


    private String stripKnownSuffix(String name) {
        if (name == null) return null;
        String n = name.trim();
        int idx = n.lastIndexOf('-');
        if (idx > 0) {
            String suffix = n.substring(idx + 1).toLowerCase();
            if (KNOWN_SUFFIXES.contains(suffix)) {
                return n.substring(0, idx);
            }
        }
        return n;
    }

    private String resolveActualProjectName(String requested) {
        String base = stripKnownSuffix(requested);

        // liste des projets connus (déduite des fichiers common/env)
        List<String> all = projectsScannerService.listProjects().getProjects();

        // 1) match exact
        if (all.contains(requested)) return requested;
        if (all.contains(base)) return base;

        // 2) match "base-<suffix>" (ex: customer-service -> customer-service-k8s)
        for (String p : all) {
            if (stripKnownSuffix(p).equalsIgnoreCase(base)) {
                return p; // premier match trouvé
            }
        }

        // 3) fallback = ce qui a été demandé
        return requested;
    }
    private static class Entry {
        String value;
        String source;
        Entry(String value, String source) {
            this.value = value;
            this.source = source;
        }
    }
}
