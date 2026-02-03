package com.example.config.server;

import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

import java.util.logging.Logger;


@EnableConfigServer
@SpringBootApplication
public class ConfigServerApplication {



	public static void main(String[] args) {
		SpringApplication.run(ConfigServerApplication.class, args);
	}

}
