// Ce service permet de notifier tous les abonnés qu'il y a une nouvelle config est chargé (POST /actuator/refresh à chaque service abonné concerné ou non par cette config)

package com.example.config.server.service;

import com.example.config.server.registry.SubscriberRegistry;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientResponseException;
import org.springframework.web.client.RestTemplate;


@Service

public class RefreshService {
    private final SubscriberRegistry subscriberRegistry;
    Logger log= LoggerFactory.getLogger(RefreshService.class);
    private final RestTemplate restTemplate;
    @Value("${hotrefresh.namespace:msic-app}")
    private String namespace;

    @Value("${hotrefresh.port:8080}")
    private int targetPort;

    @Value("${hotrefresh.path:/actuator/refresh}")
    private String refreshPath;

    public RefreshService(RestTemplate restTemplate, SubscriberRegistry registry, SubscriberRegistry subscriberRegistry) {
        this.restTemplate = restTemplate;
        this.subscriberRegistry = subscriberRegistry;
    }
    public void notifySubscribers(SubscriberRegistry registry) {
        var subscribers = registry.list();

        if (subscribers == null || subscribers.isEmpty()) {
            log.info("No subscribers registered for hot refresh (commit={})");
            return;
        }
        log.info("Refreshing {} subscribers ({})", subscribers.size(), subscribers);
    for (SubscriberRegistry.SubscriberInfo sub : subscribers) {
            String serviceName = sub.getServiceName();
            if (serviceName == null || serviceName.isBlank()) continue;

            String url = buildRefreshUrl(serviceName.trim());

            try {
                HttpHeaders headers = new HttpHeaders();
                headers.setContentType(MediaType.APPLICATION_JSON);

                HttpEntity<String> entity = new HttpEntity<>("{}", headers);

                ResponseEntity<String> resp = restTemplate.exchange(url, HttpMethod.POST, entity, String.class);

                String body = resp.getBody() == null ? "" : resp.getBody();
                int status = resp.getStatusCode().value();


                registry.recordRefreshResult(serviceName, status, body);

                log.info("Refresh OK for {} status={} (commit={})", serviceName, status);

            } catch (RestClientResponseException e) {
                int status = e.getRawStatusCode();
                String body = e.getResponseBodyAsString() == null ? "" : e.getResponseBodyAsString();


                registry.recordRefreshResult(serviceName, status, body);

                log.warn("Refresh FAIL for {} status={} body={}", serviceName, status, oneLine(body));

            } catch (Exception e) {

                registry.recordRefreshResult(serviceName, 0, e.getMessage());
                log.warn("Refresh FAIL for {} error={}", serviceName, e.getMessage());
            }
        }
    }

    public void subscribe(String subscrier){
        subscriberRegistry.addSubscriber(subscrier);
    }
    private String buildRefreshUrl(String serviceName) {

        return String.format("http://%s.%s:%d%s", serviceName, namespace, targetPort, refreshPath);
    }
    //servicename.namespace:8080
    private String oneLine(String s) {
        return s == null ? "" : s.replace("\n", " ").replace("\r", " ").trim();
    }
}
