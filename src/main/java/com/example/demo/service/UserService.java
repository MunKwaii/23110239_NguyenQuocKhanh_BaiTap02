package com.example.demo.service;

import com.example.demo.models.User;

public interface UserService {
    User login(String username, String password);
    User get(String username);
}
