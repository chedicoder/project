package com.example.command;

import java.util.Map;

public class UserVerifyCommand {

    private final UserDao dao = new UserDao();

    public void process(Map<String, Object> serviceContext,
                        String version,
                        String command,
                        Map<String, Object> input,
                        Map<String, Object> output) {

        // Simule la récupération du nom depuis l'input
        String nameToFind = (String) input.get("name");
        if (nameToFind == null) {
            nameToFind = "default";
        }

        // Appelle le DAO
        String result = dao.find_name(nameToFind);

        // Met le résultat dans l'output
        output.put("queryResult", result);
    }
}
