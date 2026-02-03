// On stocke la liste des microservices abonnés au Config Server en mémoire 
package com.example.config.server.registry;

import org.springframework.stereotype.Component;

import java.time.Instant;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@Component
public class SubscriberRegistry {

    public static class SubscriberInfo {
        private final String serviceName;
        private final Instant subscribedAt;
        private volatile Instant lastSeenAt;


        private volatile Instant lastRefreshAt;
        private volatile Integer lastRefreshStatus;
        private volatile String lastRefreshBody; // raw JSON string (e.g. [] or ["a","b"])

        public SubscriberInfo(String serviceName, Instant subscribedAt) {
            this.serviceName = serviceName;
            this.subscribedAt = subscribedAt;
            this.lastSeenAt = subscribedAt;
        }

        public String getServiceName() { return serviceName; }
        public Instant getSubscribedAt() { return subscribedAt; }
        public Instant getLastSeenAt() { return lastSeenAt; }

        public Instant getLastRefreshAt() { return lastRefreshAt; }
        public Integer getLastRefreshStatus() { return lastRefreshStatus; }
        public String getLastRefreshBody() { return lastRefreshBody; }

        public void touch() { this.lastSeenAt = Instant.now(); }


        public void updateRefreshResult(int status, String body) {
            this.lastRefreshAt = Instant.now();
            this.lastRefreshStatus = status;
            this.lastRefreshBody = body;
        }
    }

    private final Map<String, SubscriberInfo> subs = new ConcurrentHashMap<>();

    public void addSubscriber(String serviceName) {
        String key = serviceName.trim();
        subs.compute(key, (k, existing) -> {
            if (existing == null) return new SubscriberInfo(k, Instant.now());
            existing.touch();
            return existing;
        });
    }

    public void recordRefreshResult(String serviceName, int status, String body) {
        String key = serviceName.trim();
        subs.compute(key, (k, existing) -> {
            SubscriberInfo info = (existing == null) ? new SubscriberInfo(k, Instant.now()) : existing;
            info.updateRefreshResult(status, body);
            return info;
        });
    }

    public Collection<SubscriberInfo> list() {
        return subs.values().stream()
                .sorted(Comparator.comparing(SubscriberInfo::getServiceName))
                .toList();
    }

    public int count() {
        return subs.size();
    }
}
