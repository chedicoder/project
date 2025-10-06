package com.example.kafka_consumer.service;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

import com.example.kafka_consumer.model.Client;

// Pour chaque message envoyé par le producer au broker, le broker kafka le stocke et le transmet au consumer
// Le message reste dans le broker selon la durée de rétention en millisecondes (retention) configurée (par défaut 7 jours)

@Service
public class KafkaConsumer {

    @KafkaListener(topics = "clients-topic", containerFactory = "kafkaListenerContainerFactory")
    public void listen(Client client) {
        System.out.println("Received client: " + client);
    }
}


