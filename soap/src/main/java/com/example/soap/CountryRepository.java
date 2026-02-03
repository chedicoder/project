package com.example.soap;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import io.spring.guides.gs_producing_web_service.Country;
import io.spring.guides.gs_producing_web_service.Currency;

@Component
public class CountryRepository {
    private static final Map<String, Country> countries = new HashMap<>();

    static {
        Country france = new Country();
        france.setName("France");
        france.setCapital("Paris");
        france.setPopulation(67000000);
        france.setCurrency(Currency.EUR);
        countries.put(france.getName(), france);
    }

    public Country findCountry(String name) {
        return countries.get(name);
    }
}

