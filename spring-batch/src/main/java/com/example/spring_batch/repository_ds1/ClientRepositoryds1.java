package com.example.spring_batch.repository_ds1;

import com.example.spring_batch.entities.Client;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClientRepositoryds1 extends JpaRepository<Client, Long> {

}
