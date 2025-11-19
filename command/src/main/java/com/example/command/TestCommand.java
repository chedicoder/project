package com.example.command;


public class TestCommand {

    public static void main(String[] args) {
        UserDao dao = new UserDao();

        String nameToFind = args.length > 0 ? args[0] : "Alice";

        String result = dao.find_name(nameToFind);

        System.out.println("Résultat DAO : " + result);
    }
}
