package com.example.cert.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class EchoController {

    public EchoController() {
    }

    @GetMapping("/echo")
    public String affichage() {
        return "hello chedi";
    }
}
