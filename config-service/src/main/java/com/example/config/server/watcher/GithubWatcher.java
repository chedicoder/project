// GitlabWatcher Surveille GitLab à intervalle régulier 30 secondes (par défaut)

// Détecte si la config a changé (nouveau commit)

// -> Si oui :

// met à jour lastKnownCommit

// On peut l'optimiser pour notifier que le service concerné
// Le microservice doit recharger sa config

// -> Si non : rien à faire

// Tout est logué pour trace
package com.example.config.server.watcher;

import com.example.config.server.registry.SubscriberRegistry;
import com.example.config.server.service.RefreshService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.*;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import java.util.Map;

@Component
@EnableScheduling
public class GithubWatcher {

    private final Logger log = LoggerFactory.getLogger(this.getClass());

    @Value("${github.owner}")               // ex: chedicoder
    private String githubOwner;

    @Value("${github.repo}")                // ex: config-repo
    private String githubRepo;

    @Value("${github.branch:main}")
    private String branch;

    @Value("${spring.cloud.config.server.git.password}") // GitHub token
    private String githubToken;

    private final RefreshService refreshService;
    private final RestTemplate restTemplate;
    private final SubscriberRegistry registry;

    private String lastKnownCommit = null;

    public GithubWatcher(RestTemplate restTemplate, SubscriberRegistry registry, RefreshService refreshService) {
        this.restTemplate = restTemplate;
        this.registry = registry;
        this.refreshService = refreshService;
    }

    @Scheduled(fixedDelayString = "${scheduler.interval:30000}")
    public void checkForConfigChanges() {
        try {
            String currentCommit = this.getCurrentCommitHash();

            if (currentCommit == null) {
                log.warn("Failed to fetch current commit hash");
                return;
            }

            if (lastKnownCommit == null) {
                lastKnownCommit = currentCommit;
                log.info("Initial commit: {}", currentCommit);
                return;
            }

            if (!currentCommit.equals(lastKnownCommit)) {
                log.info("Configuration changed! Old: {}, New: {}", lastKnownCommit, currentCommit);
                lastKnownCommit = currentCommit;

                refreshService.notifySubscribers(registry);
            } else {
                log.info("No changes. Commit: {}", currentCommit);
            }

        } catch (Exception e) {
            log.error("Error checking commits", e);
        }
    }

    private String getCurrentCommitHash() {
        try {
            String url = String.format(
                    "https://api.github.com/repos/%s/%s/commits/%s",
                    githubOwner, githubRepo, branch);

            HttpHeaders headers = new HttpHeaders();
            headers.set("Authorization", "token " + githubToken);
            headers.setAccept(MediaType.parseMediaTypes("application/vnd.github.v3+json"));

            HttpEntity<Void> entity = new HttpEntity<>(headers);

            ResponseEntity<Map<String, Object>> response = restTemplate.exchange(
                    url,
                    HttpMethod.GET,
                    entity,
                    new ParameterizedTypeReference<Map<String, Object>>() {}
            );

            Map<String, Object> body = response.getBody();
            return body != null ? (String) body.get("sha") : null;

        } catch (Exception e) {
            log.error("Error fetching commit from GitHub", e);
            return null;
        }
    }
}
