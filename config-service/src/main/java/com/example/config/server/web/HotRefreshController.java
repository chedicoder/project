// /hot-refresh/subscribe/{serviceName} Inscrire un nouveau service
// /hot-refresh/cm  appelle RefreshService

package com.example.config.server.web;

import com.example.config.server.registry.SubscriberRegistry;
import com.example.config.server.service.RefreshService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/hot-refresh")
public class HotRefreshController {

    private final SubscriberRegistry registry;
    private final RefreshService refreshService;
    public HotRefreshController(SubscriberRegistry registry, RefreshService refreshService) {
        this.refreshService = refreshService;
        this.registry = registry;
    }

    @PostMapping("/subscribe/{serviceName}")
    public ResponseEntity<Void> subscribe(@PathVariable String serviceName) {
        if (serviceName == null || serviceName.isBlank()) return ResponseEntity.badRequest().build();
        refreshService.subscribe(serviceName);
        return ResponseEntity.ok().build();
    }

    @PostMapping("/cm")
    public ResponseEntity<Void> subscribe() {
        this.refreshService.notifySubscribers(registry);
        return ResponseEntity.ok().build();
    }


}
