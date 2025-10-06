package com.example.config_client;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestController {

    private final SimCardService simCardService;

    public TestController(SimCardService simCardService) {
        this.simCardService = simCardService;
    }

    @GetMapping("/print")
    public void testFeign() {
        simCardService.printAllSubscriptions();
    }
}
