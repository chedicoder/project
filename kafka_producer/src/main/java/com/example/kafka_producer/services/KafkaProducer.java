package com.example.kafka_producer.services;

import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Service;

import com.example.kafka_producer.model.Client;

@Service
public class KafkaProducer {

    private final KafkaTemplate<String, Client> kafkaTemplate;

    public KafkaProducer(KafkaTemplate<String, Client> kafkaTemplate) {
        this.kafkaTemplate = kafkaTemplate;
    }

    public void send(String topic, Client client) {
        kafkaTemplate.send(topic, client);
    }
}
