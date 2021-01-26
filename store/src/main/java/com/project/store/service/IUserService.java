package com.project.store.service;

import com.project.store.model.UserModel;
import com.project.store.paging.Pageble;

import java.sql.Timestamp;
import java.util.List;

public interface IUserService {
    List<UserModel> findAll();
    UserModel findByUserNameAndPassWordAndStatus(String username, String password);
    UserModel findByUserName(String username);
    long save(UserModel userModel);
    void updateCode(String code, Timestamp time, String username);
    void updateNewPassword(String username, String password);
    List<UserModel> findAllPage(Pageble pageble);
    int getTotal();
    void updateInfo(UserModel userModel);
}
