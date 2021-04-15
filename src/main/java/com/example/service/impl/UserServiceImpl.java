package com.example.service.impl;

import com.example.dao.impl.UserDaoImpl;
import com.example.entity.User;
import com.example.service.UsersService;


public class UserServiceImpl implements UsersService {
    UserDaoImpl udi = new UserDaoImpl();
    //UsersDao usersDao;

    @Override
    public int validateUsersByUsernameAndPassword(String username, String password) {
        return udi.getUsersByUsernameAndPassword(username, password);

    }

    @Override
    public int insertUser(User user) {
        return udi.insertUser(user);
    }

}
