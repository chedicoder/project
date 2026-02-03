// DTO (Data Transfer Object) qui sert à structurer et renvoyer la configuration d’un projet de manière lisible
package com.example.config.server;

import lombok.*;

import java.util.List;


import java.util.List;

@Data @NoArgsConstructor @AllArgsConstructor
public class ProjectConfigSplitResponse {
    private String projectName;
    private String env;     // dev/tst/uat/...
    private String label;   // branch/tag

    private int commonKeysCount;
    private int envKeysCount;
    private int overriddenKeysCount;

    // Tableau 1 : config partagée (common) avec override appliqué
    private List<PropertyEntry> sharedConfig;

    // Tableau 2 : config dédiée à l'env (uniquement env)
    private List<PropertyEntry> envDedicatedConfig;

    @Data @NoArgsConstructor @AllArgsConstructor
    public static class PropertyEntry {
        private String key;
        private String value;
        private String source;      // fichier (propertySource name)
        private boolean overridden; // true si vient de env mais clé existe aussi en common
    }
}

