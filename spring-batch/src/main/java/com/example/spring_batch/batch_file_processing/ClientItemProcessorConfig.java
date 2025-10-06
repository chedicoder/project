package com.example.spring_batch.batch_file_processing;

import com.example.spring_batch.entities.Client;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ClientItemProcessorConfig {

    @Bean
    public ItemProcessor<Client, Client> clientItemProcessor() {
        return client -> {
            // Ignorer les mineurs
            if (client.getAge() < 18) return null;

            // Mettre le nom en majuscule
            client.setNom(client.getNom().toUpperCase());
            return client;
        };
    }
}
