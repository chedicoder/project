package com.example.spring_batch.batch_database_processing;

import com.example.spring_batch.entities.Client;
import org.springframework.batch.item.database.JdbcBatchItemWriter;
import org.springframework.batch.item.database.builder.JdbcBatchItemWriterBuilder;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

// Si id n’existe pas dans la base de données → insertion d’une nouvelle ligne
// Si id existe dans la base de données → mise à jour des champs nom, email, age de la ligne existante

@Configuration
public class ClientItemWriterConfig {

    @Bean
        public JdbcBatchItemWriter<Client> clientItemWriter(@Qualifier("secondDataSource") DataSource targetDataSource) {
            JdbcBatchItemWriter<Client> writer = new JdbcBatchItemWriterBuilder<Client>()
                    .dataSource(targetDataSource)
                    .sql("""
                            INSERT INTO clients (id, nom, email, age)
                            VALUES (:id, :nom, :email, :age)
                            ON CONFLICT (id)
                            DO UPDATE SET 
                                nom = EXCLUDED.nom,
                                email = EXCLUDED.email,
                                age = EXCLUDED.age
                            """)
                    .beanMapped()
                    .build();
            return writer;
        }

}
