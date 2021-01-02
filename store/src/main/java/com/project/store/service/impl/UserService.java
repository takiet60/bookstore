package com.project.store.service.impl;

import com.project.store.dao.IUserDAO;
import com.project.store.model.UserModel;
import com.project.store.service.IUserService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class UserService implements IUserService {

    @Inject
    private IUserDAO userDAO;


    @Override
    public List<UserModel> findAll() {
        return userDAO.findAll();
    }

    @Override
    public UserModel findByUsername(String username) {
        return userDAO.findByUserName(username);
    }

    @Override
    public UserModel save(UserModel userModel) {
        long id = userDAO.save(userModel);
        return userDAO.findOneUser(id);
    }

    @Override
    public void updateCode(String code, Timestamp time, String username) {
        userDAO.updateCode(code, time, username);
    }

}
