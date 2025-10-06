package com.example.spring_batch.batch_database_processing;

import com.example.spring_batch.entities.Client;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.job.builder.JobBuilder;
import org.springframework.batch.core.repository.JobRepository;
import org.springframework.batch.core.step.builder.StepBuilder;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.batch.item.ItemReader;
import org.springframework.batch.item.ItemWriter;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.PlatformTransactionManager;


// Les éléments sont :
// Job = importClientJob
// Step = importClientStep
// ItemReader = ton bean clientItemReader() (lit la BDD)
// ItemProcessor = ton bean clientItemProcessor() (transforme les données)
// ItemWriter = ton bean clientItemWriter() (insert en BDD)


@Configuration
public class ImportClientBatchConfig {

    private final JobRepository jobRepository;

    public ImportClientBatchConfig(JobRepository jobRepository,
                                   PlatformTransactionManager transactionManager) {
        this.jobRepository = jobRepository;
    }

// Step pour traiter la BDD: On appelle les ItemReader, ItemProcessor, ItemWriter crées 
@Bean    
public Step importClientStep(ItemReader<Client> reader,
                             ItemProcessor<Client, Client> processor,
                             ItemWriter<Client> writer,
                             @Qualifier("firstTransactionManager") PlatformTransactionManager transactionManager) {
        return new StepBuilder("importClientStep", jobRepository)
                .<Client, Client>chunk(10, transactionManager) // taille du chunk
                .reader(reader)
                .processor(processor)
                .writer(writer)
                .build();
    }

// Step qui appelle le Tasklet deleteMissingClientsIDs
    @Bean
    public Step deleteMissingClientsStep(Tasklet deleteMissingClientsTasklet,@Qualifier("secondTransactionManager") PlatformTransactionManager transactionManager) {
    return new StepBuilder("deleteMissingClientsStep", jobRepository)
            .tasklet(deleteMissingClientsTasklet, transactionManager) // <- ici on passe le TransactionManager
            .build();
}

// Job qui exécute les Steps dans l'ordre    
    @Bean
    public Job importClientJob(Step importClientStep, Step deleteMissingClientsStep) {
    return new JobBuilder("importClientJob", jobRepository)
            .start(importClientStep)
            .next(deleteMissingClientsStep)
            .build();
}

}
