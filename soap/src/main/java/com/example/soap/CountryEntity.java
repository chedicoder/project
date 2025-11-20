package com.example.soap;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data                  // génère getters, setters, toString, equals, hashCode
@NoArgsConstructor     // constructeur sans argument
@AllArgsConstructor    // constructeur avec tous les arguments


@Entity
@Table(name = "countries")
public class CountryEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private int population;
    private String capital;
    private String currency;

    // getters et setters
}
