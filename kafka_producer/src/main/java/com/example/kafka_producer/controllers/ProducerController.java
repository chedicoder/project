package com.example.kafka_producer.controllers;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.kafka_producer.model.Client;
import com.example.kafka_producer.services.KafkaProducer;

@RestController
public class ProducerController {

    private final KafkaProducer producer;

    public ProducerController(KafkaProducer producer) {
        this.producer = producer;
    }

    @PostMapping("/send")
    public String sendClient(@RequestBody Client client) {
        producer.send("clients-topic", client);
        return "Client envoyé à Kafka: " + client;
    }
}
