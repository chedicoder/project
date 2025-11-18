// DAO = Repository (Spring Data)
// Un DAO est une couche d'abstraction qui communique le code de l'application avec la base de données.
// Il exécute des requêtes SQL et retourne les résultats à partir la base de données.  

package com.example.command;


public class UserDao extends AbstractDao {

    public UserDao() {
        super("query/query.xml");
    }

    public String find_name(String name) {
        return DaoSupport.builder()
                .query(queryProperties.getProperty("persons.find.name"))
                .addParam("NAME", name)
                .count();
    }
}

