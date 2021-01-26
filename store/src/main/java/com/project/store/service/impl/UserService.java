package com.project.store.service.impl;

import com.project.store.dao.IUserDAO;
import com.project.store.model.UserModel;
import com.project.store.paging.Pageble;
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
    public UserModel findByUserNameAndPassWordAndStatus(String username, String password) {
        return userDAO.findByUserNameAndPasswordAndStatus(username, password);
    }

    @Override
    public UserModel findByUserName(String username) {
        return userDAO.findByUserName(username);
    }

    @Override
    public long save(UserModel userModel) {
        return userDAO.save(userModel);
    }

    @Override
    public void updateCode(String code, Timestamp time, String username) {
        userDAO.updateCode(code, time, username);
    }

    @Override
    public void updateNewPassword(String username, String password) {
        userDAO.updateNewPassword(username, password);
    }

    @Override
    public List<UserModel> findAllPage(Pageble pageble) {
        return userDAO.findAllPage(pageble);
    }

    @Override
    public int getTotal() {
        return userDAO.getTotal();
    }

    @Override
    public void updateInfo(UserModel userModel) {
        userDAO.updateInfo(userModel);
    }

}
