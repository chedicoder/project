package com.example.config.server;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

@Component
@ConfigurationProperties(prefix = "runtime-config")
public class RuntimeConfigProperties {

    private String baseUrl;

    /** Aliases: name -> (path, key) */
    private Map<String, Mapping> files = new HashMap<>();

    public static class Mapping {
        private String path;
        private String key;

        public String getPath() { return path; }
        public void setPath(String path) { this.path = path; }

        public String getKey() { return key; }
        public void setKey(String key) { this.key = key; }
    }

    public String getBaseUrl() { return baseUrl; }
    public void setBaseUrl(String baseUrl) { this.baseUrl = baseUrl; }

    public Map<String, Mapping> getFiles() { return files; }
    public void setFiles(Map<String, Mapping> files) { this.files = files; }

}
