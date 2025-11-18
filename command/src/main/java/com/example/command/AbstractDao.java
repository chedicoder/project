// Charge le XML des requêtes dans Properties via loadFromXML.

// queryProperties.getProperty("persons.find.name") permet de récupérer la requête

package com.example.command;

import java.io.InputStream;
import java.util.Properties;

public class AbstractDao {
    protected Properties queryProperties = new Properties();

    public AbstractDao(String xmlFile) {
        try (InputStream is = getClass().getClassLoader().getResourceAsStream(xmlFile)) {
            queryProperties.loadFromXML(is);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}

