package com.example.spring_batch.batch_file_processing;

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
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.PlatformTransactionManager;


// Les éléments sont :
// Job = importClientJob
// Step = importClientStep
// ItemReader = ton bean clientItemReader() (lit le CSV)
// ItemProcessor = ton bean clientItemProcessor() (transforme les données)
// ItemWriter = ton bean clientItemWriter() (insert en BDD)


@Configuration
public class ImportClientBatchConfig {

    private final JobRepository jobRepository;
    private final PlatformTransactionManager transactionManager;

    public ImportClientBatchConfig(JobRepository jobRepository,
                                   PlatformTransactionManager transactionManager) {
        this.jobRepository = jobRepository;
        this.transactionManager = transactionManager;
    }

// Step pour traiter le CSV: On appelle les ItemReader, ItemProcessor, ItemWriter crées 
@Bean    
public Step importClientStep(ItemReader<Client> reader,
                             ItemProcessor<Client, Client> processor,
                             ItemWriter<Client> writer) {
        return new StepBuilder("importClientStep", jobRepository)
                .<Client, Client>chunk(10, transactionManager) // taille du chunk
                .reader(reader)
                .processor(processor)
                .writer(writer)
                .build();
    }

// Step qui appelle le Tasklet deleteMissingClientsIDs
    @Bean
    public Step deleteMissingClientsStep(Tasklet deleteMissingClientsTasklet) {
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
