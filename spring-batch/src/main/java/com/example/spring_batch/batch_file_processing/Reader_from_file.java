package com.example.spring_batch.batch_file_processing;

import com.example.spring_batch.entities.Client;

import org.springframework.batch.core.configuration.annotation.StepScope;
import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.file.builder.FlatFileItemReaderBuilder;
import org.springframework.batch.item.file.mapping.BeanWrapperFieldSetMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.FileSystemResource;

@Configuration
public class Reader_from_file {



    // Le fichier à lire clients.csv doit être dans src/main/resources
    // @Bean
    // public FlatFileItemReader<Client> clientItemReader() {
    //     return new FlatFileItemReaderBuilder<Client>()
    //             .name("clientItemReader")

    //             // Le fichier à lire clients.csv doit être dans src/main/resources
    //             .resource(new ClassPathResource("clients.csv"))

    //             .delimited()
    //             .names("id", "nom", "email", "age")
    //             // Ignorer la première ligne (les noms de colomnes)
    //             .linesToSkip(1)
    //             .fieldSetMapper(new BeanWrapperFieldSetMapper<>() {{
    //                 setTargetType(Client.class);
    //             }})
    //             .build();
    // }

    // Le path de fichier à lire clients.csv est fourni dans le URL, le fichier se trouve dans la machine ou tourne ce service batch
    @Bean    
    @StepScope  // Important : permet d'utiliser les JobParameters
        public FlatFileItemReader<Client> clientItemReader(@Value("#{jobParameters['fileName']}") String fileName) {
        return new FlatFileItemReaderBuilder<Client>()
            .name("clientItemReader")
            // Le fichier à lire clients.csv doit être dans la machine ou tourne ce service batch
            .resource(new FileSystemResource(fileName))
            .delimited()
            .names("id", "nom", "email", "age")
            .linesToSkip(1)
            .fieldSetMapper(new BeanWrapperFieldSetMapper<>() {{
                setTargetType(Client.class);
            }})
            .build();
        }
}
