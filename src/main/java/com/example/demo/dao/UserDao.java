package com.example.demo.dao;

import com.example.demo.models.User;

public interface UserDao {
    User get(String username);
}
