package com.example.spring_batch.batch_database_processing;

import javax.sql.DataSource;

import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.core.configuration.annotation.StepScope;
import org.springframework.batch.repeat.RepeatStatus;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import java.util.Collections;

@Configuration
public class DeleteMissingIDs {

    @Bean
    @StepScope
    public Tasklet deleteMissingClientsTasklet(
            @Qualifier("firstDataSource") DataSource sourceDataSource,
            @Qualifier("secondDataSource") DataSource targetDataSource) {

        return (contribution, chunkContext) -> {
            // NamedParameterJdbcTemplate pour la target
            NamedParameterJdbcTemplate targetJdbc = new NamedParameterJdbcTemplate(targetDataSource);
            NamedParameterJdbcTemplate sourceJdbc = new NamedParameterJdbcTemplate(sourceDataSource);

            // Récupérer tous les IDs existants dans la source (référence)
            var sourceIds = sourceJdbc.queryForList("SELECT id FROM clients",Collections.emptyMap(), Long.class);

            if (!sourceIds.isEmpty()) {
                // Supprimer dans la target tous les clients dont l'ID n'existe plus dans la source
                targetJdbc.update(
                        "DELETE FROM clients WHERE id NOT IN (:ids)",
                        Collections.singletonMap("ids", sourceIds)
                );
            } else {
                // Si la source est vide, supprimer tous les clients dans la target
                targetJdbc.update("DELETE FROM clients", Collections.emptyMap());
            }

            return RepeatStatus.FINISHED;
        };
    }
}
