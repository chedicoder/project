package com.example.config_client;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import java.util.List;

@FeignClient(name = "artifact", url = "http://localhost:8081")  // URL du microservice exposant l'API
public interface SimCardSubscriptionClient {

    @GetMapping("/api/sim-card-subscriptions/getall")
    List<SimCardSubscriptionEntity> getAllSubscriptions();

    @GetMapping("/api/sim-card-subscriptions/{id}")
    SimCardSubscriptionEntity getSubscriptionById(@PathVariable("id") Long id);
}
