package com.example.ecommerce.service;

import java.util.HashMap;
import java.util.Map;

public class UserService {
    private static  UserService instance;
    private static Map<String,String> users = new HashMap<>();
    static {
        users.put("admin","admin");
        users.put("user1","123");
        users.put("user2","123");
    }
    public UserService() {

    }

    public static UserService getInstance() {
        if (instance == null) {
            instance = new UserService();
        }
        return instance;
    }

    public boolean checkLogin(String username, String password) {
        return users.containsKey(username) && users.containsValue(password);
    }

    public boolean register(String username,String password, String rePassword) {
        if (users.containsKey(username)) {
            return false;
        } else if (!password.equals(rePassword)){
            return false;
        } else {
            users.put(username, password);
        }
        return true;
    }
}
