package com.example.spring_batch.entities;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data                   // génère getters, setters, toString, equals, hashCode
@NoArgsConstructor     // constructeur sans argument
@AllArgsConstructor    // constructeur avec tous les arguments

@Entity
public class Client {
    @Id
    private Long id;
    private String nom;
    private String email;
    private int age;
}

