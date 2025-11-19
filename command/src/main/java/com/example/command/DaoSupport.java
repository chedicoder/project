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

    public String read() {
        String q = query; // copie de la requête

        for (String k : params.keySet()) {
            q = q.replace("#" + k, params.get(k).toString());
        }

        return q;
    }
}
