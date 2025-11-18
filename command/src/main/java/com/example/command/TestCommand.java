package com.example.command;

import java.util.HashMap;
import java.util.Map;

public class TestCommand {

    public static void main(String[] args) {

        // Simule le service
        UserVerifyService service = new UserVerifyService();

        // Simule ServiceContext (vide)
        Map<String, Object> serviceContext = new HashMap<>();

        // Input avec le nom à rechercher
        Map<String, Object> input = new HashMap<>();
        String name = args.length > 0 ? args[0] : "";
        input.put("name", name);

        // Output
        Map<String, Object> output = new HashMap<>();

        // Appelle le service
        service.process(serviceContext, "v1", "findUser", input, output);

        // Affiche le résultat
        System.out.println("Résultat DAO : " + output.get("queryResult"));
    }
}

