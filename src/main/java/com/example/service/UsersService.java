package com.example.service;

import com.example.entity.User;


public interface UsersService {
    int validateUsersByUsernameAndPassword(String username, String password);

    int insertUser(User user);

}
