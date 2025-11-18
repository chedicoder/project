// Permet de prendre les paramétres de la requête SQL avant exécution
// Permet de changer les variables et personnaliser la requête SQL avant exécution

package com.example.command;

import java.util.HashMap;
import java.util.Map;

public class DaoSupport {

    private String query;
    private Map<String, Object> params = new HashMap<>();

    public static DaoSupport builder() {
        return new DaoSupport();
    }

    public DaoSupport query(String q) {
        this.query = q;
        return this;
    }

    public DaoSupport addParam(String key, Object value) {
        params.put(key, value);
        return this;
    }

    public String count() {
        // ici juste pour tester le remplacement de param
        String q = query;
        for (String k : params.keySet()) {
            q = q.replace("#" + k, params.get(k).toString());
        }
        return q;
    }
}

