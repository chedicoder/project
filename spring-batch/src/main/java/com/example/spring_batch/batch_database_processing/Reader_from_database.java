package com.example.spring_batch.batch_database_processing;

import javax.sql.DataSource;
import org.springframework.batch.item.database.JdbcCursorItemReader;
import org.springframework.batch.item.database.builder.JdbcCursorItemReaderBuilder;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.example.spring_batch.entities.Client;

@Configuration
public class Reader_from_database {
    @Bean
    public JdbcCursorItemReader<Client> clientItemReader(@Qualifier("firstDataSource") DataSource dataSource) {
        return new JdbcCursorItemReaderBuilder<Client>()
                .name("clientItemReader")
                .dataSource(dataSource)
                .sql("SELECT id, nom, email, age FROM clients")
                .rowMapper((rs, rowNum) -> {
                    Client c = new Client();
                    c.setId(rs.getLong("id"));
                    c.setNom(rs.getString("nom"));
                    c.setEmail(rs.getString("email"));
                    c.setAge(rs.getInt("age"));
                    return c;
                })
                .build();
    }
}
