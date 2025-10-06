package com.example.spring_batch;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.FilterType;

@SpringBootApplication
@ComponentScan(
    basePackages = "com.example.spring_batch", // package principal
    excludeFilters = {
        @ComponentScan.Filter(
            type = FilterType.REGEX,
            pattern = "com\\.example\\.spring_batch\\.batch_file_processing\\..*"
        ),
        // @ComponentScan.Filter(
        //     type = FilterType.REGEX,
        //     pattern = "com\\.example\\.spring_batch\\.batch_database_processing\\..*"
        // )
    }

)
public class SpringBatchApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBatchApplication.class, args);
	}

}
