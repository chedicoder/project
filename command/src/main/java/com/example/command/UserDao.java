package com.example.command;

public class UserDao extends AbstractDao {

    public UserDao() {
        super("query/query.xml");
    }

    public String find_name(String name) {
        String result = DaoSupport.builder()
                .query(queryProperties.getProperty("persons.find.name"))
                .addParam("NAME", name)
                .read();

        return result;
    }
}
