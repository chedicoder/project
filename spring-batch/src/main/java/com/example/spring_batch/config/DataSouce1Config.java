package com.example.spring_batch.config;

import java.util.HashMap;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(
    entityManagerFactoryRef = "firstEntityManagerFactoryBean", // à changer
    basePackages = "com.example.spring_batch.repository_ds1", // à changer
    transactionManagerRef = "firstTransactionManager" // à changer
)
public class DataSouce1Config  // à changer
{

    @Autowired
    private Environment environment;

    @Primary
    @Bean(name = "firstDataSource") // à changer
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setUrl(environment.getProperty("first.datasource.url")); // à changer
		dataSource.setUsername(environment.getProperty("first.datasource.username")); // à changer
        dataSource.setPassword(environment.getProperty("first.datasource.password")); // à changer
        dataSource.setDriverClassName(environment.getProperty("first.datasource.driver-class-name")); // à changer
		return dataSource;
    }

    @Primary
    @Bean(name = "firstEntityManagerFactoryBean") // à changer
    public LocalContainerEntityManagerFactoryBean entityManagerFactoryBean() {
        LocalContainerEntityManagerFactoryBean bean = new LocalContainerEntityManagerFactoryBean();
        bean.setDataSource(dataSource());
        bean.setPackagesToScan("com.example.spring_batch.entities"); // à changer

        JpaVendorAdapter adapter = new HibernateJpaVendorAdapter();
        bean.setJpaVendorAdapter(adapter);

        Map<String, Object> props = new HashMap<>();
        props.put("hibernate.dialect", "org.hibernate.dialect.MySQL8Dialect"); // à changer
        props.put("hibernate.show_sql", "true");
        props.put("hibernate.hbm2ddl.auto", "update");
        bean.setJpaPropertyMap(props);

        return bean;
    }

    @Primary
    @Bean(name = "firstTransactionManager") // à changer
    public PlatformTransactionManager transactionManager() {
        JpaTransactionManager manager = new JpaTransactionManager();
        manager.setEntityManagerFactory(entityManagerFactoryBean().getObject());
        return manager;
    }

}
