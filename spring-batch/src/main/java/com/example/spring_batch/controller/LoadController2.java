package com.example.spring_batch.controller;

import org.springframework.batch.core.*;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.batch.core.repository.JobExecutionAlreadyRunningException;
import org.springframework.batch.core.repository.JobInstanceAlreadyCompleteException;
import org.springframework.batch.core.repository.JobRestartException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

// GET http://localhost:8080/load2
// Controller pour lire depuis une base de données et insérer dans une autre base de données

@RestController
@RequestMapping("/load2")
public class LoadController2 {

    @Autowired
    private JobLauncher jobLauncher;

    // mettre le nom du job qu'on a défini dans la configuration de batch
    @Autowired
    private Job importClientJob;

    @GetMapping
    public BatchStatus load() throws JobParametersInvalidException,
        JobExecutionAlreadyRunningException,
        JobRestartException,
        JobInstanceAlreadyCompleteException {

        JobParameters jobParameters = new JobParametersBuilder()
            .addLong("time", System.currentTimeMillis())
            .toJobParameters();

        JobExecution jobExecution = jobLauncher.run(importClientJob, jobParameters);
        System.out.println("Batch is Running...");
        while (jobExecution.isRunning()) {
            System.out.println("...");
        }
        System.out.println("JobExecution Status: " + jobExecution.getStatus());
        return jobExecution.getStatus();
}

}
