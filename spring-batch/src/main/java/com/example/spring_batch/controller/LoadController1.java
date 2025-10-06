package com.example.spring_batch.controller;

import org.springframework.batch.core.*;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.batch.core.repository.JobExecutionAlreadyRunningException;
import org.springframework.batch.core.repository.JobInstanceAlreadyCompleteException;
import org.springframework.batch.core.repository.JobRestartException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

// GET http://localhost:8080/load1?fileName=<path to csv file>.csv
// Controller pour lire depuis un fichier CSV et insérer dans une base de données

@RestController
@RequestMapping("/load1")
public class LoadController1 {

    @Autowired
    private JobLauncher jobLauncher;

    // mettre le nom du job qu'on a défini dans la configuration de batch
    @Autowired
    private Job importClientJob;

    @GetMapping
    public BatchStatus load(@RequestParam String fileName) throws JobParametersInvalidException,
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
