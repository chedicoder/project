// Le RuntimeConfigController est un contrôleur REST qui expose les fichiers de configuration du Config Server sous forme JSON pour que les microservices ou autres consommateurs puissent les lire
// /runtime-config/csr-toolbox-ui-config.json : -> Config du module CSR Toolbox UI
// /runtime-config/fetch/by-name/{alias}.json :-> Récupération via un alias défini dans application.yml

package com.example.config.server;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/runtime-config")
public class RuntimeConfigController {

    @Autowired
    private RuntimeConfigProperties props;

    private final RestTemplate rest = new RestTemplate();
    private final ObjectMapper mapper = new ObjectMapper();

    // -----------------------------
    // Paths (Config Server endpoints)
    // -----------------------------
    private static final String FEDERATION_PATH = "/federation-manifest/k8s";

    private static final String CSR_PATH = "/csr-toolbox-ui-config/k8s";
    private static final String CSR_TOOLBOX_UI_PERMISSIONS_PATH = "/csr-toolbox-ui-permissions/k8s";

    private static final String TASK_UI_CONFIG_PATH = "/task-ui-config/k8s";
    private static final String TASK_UI_PERMISSIONS_PATH = "/task-ui-permissions/k8s";

    // ✅ Added MFEs
    private static final String CUSTOMER_UI_CONFIG_PATH = "/customer-ui-config/k8s";
    private static final String CUSTOMER_UI_PERMISSIONS_PATH = "/customer-ui-permissions/k8s";

    private static final String CASH_REGISTER_UI_CONFIG_PATH = "/cash-register-ui-config/k8s";
    private static final String CASH_REGISTER_UI_PERMISSIONS_PATH = "/cash-register-ui-permissions/k8s";

    private static final String CPQ_UI_CONFIG_PATH = "/cpq-ui-config/k8s";
    private static final String CPQ_UI_PERMISSIONS_PATH = "/cpq-ui-permissions/k8s";

    private static final String PORTABILITY_UI_CONFIG_PATH = "/portability-ui-config/k8s";
    private static final String PORTABILITY_UI_PERMISSIONS_PATH = "/portability-ui-permissions/k8s";

    private static final String RESOURCE_MANAGEMENT_UI_CONFIG_PATH = "/resource-management-ui-config/k8s";
    private static final String RESOURCE_MANAGEMENT_UI_PERMISSIONS_PATH = "/resource-management-ui-permissions/k8s";

    private static final String SALES_HIERARCHY_UI_CONFIG_PATH = "/sales-hierarchy-ui-config/k8s";
    private static final String SALES_HIERARCHY_UI_PERMISSIONS_PATH = "/sales-hierarchy-ui-permissions/k8s";

    // -----------------------------
    // Keys (propertySources keys)
    // -----------------------------
    private static final String FEDERATION_KEY = "federation.manifest";
    private static final String CONFIG_KEY = "config.manifest";
    private static final String PERMISSIONS_KEY = "permissions.manifest";

    private static final Logger log = LoggerFactory.getLogger(RuntimeConfigController.class);


    @GetMapping("/federation-manifest.json")
    public ResponseEntity<JsonNode> federationManifest() {
        String url = join(props.getBaseUrl(), FEDERATION_PATH);
        return ResponseEntity.ok(fetchAsJson(url, FEDERATION_KEY));
    }

    @GetMapping("/csr-toolbox-ui-config.json")
    public ResponseEntity<JsonNode> csrToolboxUiConfig() {
        String url = join(props.getBaseUrl(), CSR_PATH);
        return ResponseEntity.ok(fetchAsJson(url, CONFIG_KEY));
    }

    @GetMapping("/csr-toolbox-ui-permissions.json")
    public ResponseEntity<JsonNode> csrToolboxUiPermissions() {
        String url = join(props.getBaseUrl(), CSR_TOOLBOX_UI_PERMISSIONS_PATH);
        return ResponseEntity.ok(fetchAsJson(url, PERMISSIONS_KEY));
    }

    @GetMapping("/task-ui-config.json")
    public ResponseEntity<JsonNode> taskUiConfig() {
        String url = join(props.getBaseUrl(), TASK_UI_CONFIG_PATH);
        return ResponseEntity.ok(fetchAsJson(url, CONFIG_KEY));
    }

    @GetMapping("/task-ui-permissions.json")
    public ResponseEntity<JsonNode> taskUiPermissions() {
        String url = join(props.getBaseUrl(), TASK_UI_PERMISSIONS_PATH);
        return ResponseEntity.ok(fetchAsJson(url, PERMISSIONS_KEY));
    }


    // customer-ui
    @GetMapping("/customer-ui-config.json")
    public ResponseEntity<JsonNode> customerUiConfig() {
        String url = join(props.getBaseUrl(), CUSTOMER_UI_CONFIG_PATH);
        return ResponseEntity.ok(fetchAsJson(url, CONFIG_KEY));
    }

    @GetMapping("/customer-ui-permissions.json")
    public ResponseEntity<JsonNode> customerUiPermissions() {
        String url = join(props.getBaseUrl(), CUSTOMER_UI_PERMISSIONS_PATH);
        return ResponseEntity.ok(fetchAsJson(url, PERMISSIONS_KEY));
    }

    // cash-register-ui
    @GetMapping("/cash-register-ui-config.json")
    public ResponseEntity<JsonNode> cashRegisterUiConfig() {
        String url = join(props.getBaseUrl(), CASH_REGISTER_UI_CONFIG_PATH);
        return ResponseEntity.ok(fetchAsJson(url, CONFIG_KEY));
    }

    @GetMapping("/cash-register-ui-permissions.json")
    public ResponseEntity<JsonNode> cashRegisterUiPermissions() {
        String url = join(props.getBaseUrl(), CASH_REGISTER_UI_PERMISSIONS_PATH);
        return ResponseEntity.ok(fetchAsJson(url, PERMISSIONS_KEY));
    }

    // cpq-ui
    @GetMapping("/cpq-ui-config.json")
    public ResponseEntity<JsonNode> cpqUiConfig() {
        String url = join(props.getBaseUrl(), CPQ_UI_CONFIG_PATH);
        return ResponseEntity.ok(fetchAsJson(url, CONFIG_KEY));
    }

    @GetMapping("/cpq-ui-permissions.json")
    public ResponseEntity<JsonNode> cpqUiPermissions() {
        String url = join(props.getBaseUrl(), CPQ_UI_PERMISSIONS_PATH);
        return ResponseEntity.ok(fetchAsJson(url, PERMISSIONS_KEY));
    }

    // portability-ui
    @GetMapping("/portability-ui-config.json")
    public ResponseEntity<JsonNode> portabilityUiConfig() {
        String url = join(props.getBaseUrl(), PORTABILITY_UI_CONFIG_PATH);
        return ResponseEntity.ok(fetchAsJson(url, CONFIG_KEY));
    }

    @GetMapping("/portability-ui-permissions.json")
    public ResponseEntity<JsonNode> portabilityUiPermissions() {
        String url = join(props.getBaseUrl(), PORTABILITY_UI_PERMISSIONS_PATH);
        return ResponseEntity.ok(fetchAsJson(url, PERMISSIONS_KEY));
    }

    // resource-management-ui
    @GetMapping("/resource-management-ui-config.json")
    public ResponseEntity<JsonNode> resourceManagementUiConfig() {
        String url = join(props.getBaseUrl(), RESOURCE_MANAGEMENT_UI_CONFIG_PATH);
        return ResponseEntity.ok(fetchAsJson(url, CONFIG_KEY));
    }

    @GetMapping("/resource-management-ui-permissions.json")
    public ResponseEntity<JsonNode> resourceManagementUiPermissions() {
        String url = join(props.getBaseUrl(), RESOURCE_MANAGEMENT_UI_PERMISSIONS_PATH);
        return ResponseEntity.ok(fetchAsJson(url, PERMISSIONS_KEY));
    }

    // sales-hierarchy-ui
    @GetMapping("/sales-hierarchy-ui-config.json")
    public ResponseEntity<JsonNode> salesHierarchyUiConfig() {
        String url = join(props.getBaseUrl(), SALES_HIERARCHY_UI_CONFIG_PATH);
        return ResponseEntity.ok(fetchAsJson(url, CONFIG_KEY));
    }

    @GetMapping("/sales-hierarchy-ui-permissions.json")
    public ResponseEntity<JsonNode> salesHierarchyUiPermissions() {
        String url = join(props.getBaseUrl(), SALES_HIERARCHY_UI_PERMISSIONS_PATH);
        return ResponseEntity.ok(fetchAsJson(url, PERMISSIONS_KEY));
    }

    /**
     * 1) Générique par query params
     */
    @GetMapping("/fetch.json")
    public ResponseEntity<JsonNode> fetchGeneric(
            @RequestParam("path") String path,
            @RequestParam("key") String key
    ) {
        String url = join(props.getBaseUrl(), sanitizePath(path));
        return ResponseEntity.ok(fetchAsJson(url, key));
    }

    /**
     * 2) Générique par alias déclaré dans application.yml
     */
    @GetMapping(value = {"/fetch/by-name/{name}.json", "/fetch/by-name/{name}"})
    public ResponseEntity<JsonNode> fetchByName(@PathVariable String name) {
        log.info("fetchByName fetch file : {}", name);
        RuntimeConfigProperties.Mapping m = props.getFiles().get(name);
        if (m == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Alias inconnu: " + name);
        }
        String url = join(props.getBaseUrl(), sanitizePath(m.getPath()));
        log.info("fetchByName get url : {}", url);
        return ResponseEntity.ok(fetchAsJson(url, m.getKey()));
    }

    @GetMapping("/fetch/by-namev2/{name:.+}\\.json")
    public ResponseEntity<JsonNode> fetchByNameV2(@PathVariable String name) {
        log.info("fetchByNameV2 fetch file : {}", name);
        RuntimeConfigProperties.Mapping m = props.getFiles().get(name);
        if (m == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Alias inconnu: " + name);
        }
        String url = join(props.getBaseUrl(), sanitizePath(m.getPath()));
        log.info("fetchByNameV2 get url : {}", url);
        return ResponseEntity.ok(fetchAsJson(url, m.getKey()));
    }

    // ---- Helpers ----
    private String join(String base, String path) {
        if (!StringUtils.hasText(base)) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR,
                    "runtime-config.base-url manquant");
        }
        String left = base.endsWith("/") ? base.substring(0, base.length() - 1) : base;
        String right = path.startsWith("/") ? path : "/" + path;
        return left + right;
    }

    private String sanitizePath(String p) {
        if (!StringUtils.hasText(p)) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "paramètre 'path' requis");
        }
        String t = p.trim();
        if (t.startsWith("http://") || t.startsWith("https://")) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "URL absolue interdite; fournir un chemin relatif sous le Config Server");
        }
        if (!t.startsWith("/")) t = "/" + t;
        return t;
    }

    @SuppressWarnings("unchecked")
    private JsonNode fetchAsJson(String url, String key) {
        Map<String, Object> env = rest.getForObject(url, Map.class);
        if (env == null) {
            throw new ResponseStatusException(HttpStatus.BAD_GATEWAY, "Config Server: réponse vide");
        }
        Object value = extractFromPropertySources(env, key);
        if (value == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Clé '" + key + "' introuvable");
        }
        if (value instanceof String s) {
            String t = s.trim();
            if ((t.startsWith("{") && t.endsWith("}")) || (t.startsWith("[") && t.endsWith("]"))) {
                try {
                    return mapper.readTree(t);
                } catch (Exception ignore) {
                }
            }
        }
        return mapper.valueToTree(value);
    }

    @SuppressWarnings("unchecked")
    private Object extractFromPropertySources(Map<String, Object> env, String key) {
        Object ps = env.get("propertySources");
        if (!(ps instanceof List<?> list)) return null;
        for (Object o : list) {
            if (!(o instanceof Map<?, ?> m)) continue;
            Object src = m.get("source");
            if (src instanceof Map<?, ?> source && source.containsKey(key)) {
                return source.get(key);
            }
        }
        return null;
    }
}
