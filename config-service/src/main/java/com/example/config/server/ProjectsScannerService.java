// Service pour lister les projets
package com.example.config.server;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.nio.file.*;
import java.util.*;
import java.util.stream.Stream;

@Service
@RequiredArgsConstructor
public class ProjectsScannerService {

    @Value("${spring.cloud.config.server.git.basedir:/config-repo}")
    private String repoBaseDir;

    private static final Set<String> EXT = Set.of(".yml", ".yaml", ".properties");
    private static final Set<String> ENV_SUFFIXES = Set.of("dev","tst","uat","prod","preprod","k8s","local","default");
    private static final Set<String> IGNORE = Set.of("application", "bootstrap");

    public ProjectsListResponse listProjects() {
        Path base = Paths.get(repoBaseDir);

        // Spring Cloud Config clone souvent dans basedir + "/{repoName}".
        // Donc on cherche le premier dossier git cloné.
        Path repoRoot = resolveRepoRoot(base);

        if (repoRoot == null) {
            return new ProjectsListResponse(0, List.of());
        }

        Set<String> projects = new TreeSet<>();

        List<Path> roots = List.of(
                repoRoot.resolve("common"),
                repoRoot.resolve("env")
        );

        for (Path r : roots) {
            if (!Files.exists(r)) continue;

            try (Stream<Path> s = Files.walk(r)) {
                s.filter(Files::isRegularFile)
                        .filter(this::isConfigFile)
                        .forEach(p -> {
                            String name = toProjectName(p.getFileName().toString());
                            if (name != null) projects.add(name);
                        });
            } catch (IOException ignored) {}
        }

        return new ProjectsListResponse(projects.size(), new ArrayList<>(projects));
    }

    private Path resolveRepoRoot(Path basedir) {
        // 1) cas "normal" : basedir contient directement common/env
        if (Files.exists(basedir.resolve("common")) || Files.exists(basedir.resolve("env"))) {
            return basedir;
        }

        // 2) cas "spring clone" : basedir contient un sous-dossier du repo
        if (Files.exists(basedir) && Files.isDirectory(basedir)) {
            try (Stream<Path> s = Files.list(basedir)) {
                Optional<Path> found = s.filter(Files::isDirectory)
                        .filter(p -> Files.exists(p.resolve("common")) || Files.exists(p.resolve("env")))
                        .findFirst();
                if (found.isPresent()) return found.get();
            } catch (IOException ignored) {}
        }

        // 3) cas K8s chez toi: clone dans /tmp/config-repo-<random> (vu dans les logs)
        // on scanne /tmp pour trouver un dossier contenant common/env
        Path tmp = Paths.get("/tmp");
        if (Files.exists(tmp) && Files.isDirectory(tmp)) {
            try (Stream<Path> s = Files.list(tmp)) {
                return s.filter(Files::isDirectory)
                        .filter(p -> p.getFileName().toString().startsWith("config-repo-"))
                        .filter(p -> Files.exists(p.resolve("common")) || Files.exists(p.resolve("env")))
                        .findFirst()
                        .orElse(null);
            } catch (IOException ignored) {}
        }

        return null;
    }


    private boolean isConfigFile(Path p) {
        String f = p.getFileName().toString().toLowerCase();
        for (String e : EXT) {
            if (f.endsWith(e)) return true;
        }
        return false;
    }

    private String toProjectName(String filename) {
        String lower = filename.toLowerCase();

        // remove extension
        String base = filename;
        for (String e : EXT) {
            if (lower.endsWith(e)) {
                base = filename.substring(0, filename.length() - e.length());
                break;
            }
        }

        String cleaned = base.trim();
        if (cleaned.isEmpty()) return null;

        // ignore application.yml / bootstrap.yml etc
        if (IGNORE.contains(cleaned.toLowerCase())) return null;

        // strip env suffix: my-service-dev.yml => my-service
        int idx = cleaned.lastIndexOf('-');
        if (idx > 0) {
            String suffix = cleaned.substring(idx + 1).toLowerCase();
            if (ENV_SUFFIXES.contains(suffix)) {
                cleaned = cleaned.substring(0, idx);
            }
        }

        return cleaned.isBlank() ? null : cleaned;
    }
}
