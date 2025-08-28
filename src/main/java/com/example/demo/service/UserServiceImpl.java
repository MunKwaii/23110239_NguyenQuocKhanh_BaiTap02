package com.example.demo.service;

import com.example.demo.dao.UserDao;
import com.example.demo.dao.implement.UserDaoImpl;
import com.example.demo.models.User;

public class UserServiceImpl implements UserService {
    UserDao userDao = new UserDaoImpl();

    @Override
    public User login(String username, String password) {
        User user = this.get(username);
        if (user != null && password.equals(user.getPassword())) {
            return user;
        }
        return null;
    }

    @Override
    public User get(String username) {
        return userDao.get(username);
    }
}
