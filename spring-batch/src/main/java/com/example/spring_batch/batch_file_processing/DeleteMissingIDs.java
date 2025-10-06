package com.example.spring_batch.batch_file_processing;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import javax.sql.DataSource;

import org.springframework.batch.core.configuration.annotation.StepScope;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.repeat.RepeatStatus;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;


// Tasklet pour supprimer les clients absents du CSV

@Configuration
public class DeleteMissingIDs {
@Bean
@StepScope
public Tasklet deleteMissingClientsTasklet(DataSource dataSource,
                                           @Value("#{jobParameters['fileName']}") String fileName) {
    return (contribution, chunkContext) -> {
        List<Long> csvIds = Files.lines(Paths.get(fileName))
                .skip(1)
                .map(line -> Long.parseLong(line.split(",")[0]))
                .collect(Collectors.toList());

        if (!csvIds.isEmpty()) {
            // Utiliser NamedParameterJdbcTemplate pour IN (:ids)
            NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
            jdbcTemplate.update("DELETE FROM client WHERE id NOT IN (:ids)",
                    Collections.singletonMap("ids", csvIds));
        }

        return RepeatStatus.FINISHED;
    };
}
}
