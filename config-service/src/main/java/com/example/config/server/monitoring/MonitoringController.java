// Elle expose une page UI qui affiche les microservices abonnés au Config Server

package com.example.config.server.monitoring;

import com.example.config.server.registry.SubscriberRegistry;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.time.ZoneId;

@Controller
public class MonitoringController {

    private final SubscriberRegistry registry;

    public MonitoringController(SubscriberRegistry registry) {
        this.registry = registry;
    }

    @GetMapping("/ui/subscribers")
    public String subscribers(Model model) {
        model.addAttribute("subscribers", registry.list());
        model.addAttribute("count", registry.count());
        model.addAttribute("zone", ZoneId.systemDefault().toString());
        return "subscribers";
    }

}
