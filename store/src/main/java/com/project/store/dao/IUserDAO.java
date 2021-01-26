package com.project.store.dao;

import com.project.store.model.UserModel;
import com.project.store.paging.Pageble;

import java.sql.Timestamp;
import java.util.List;

public interface IUserDAO extends IGenericDAO<UserModel> {
    List<UserModel> findByUserId(Long categoryId);
    List<UserModel> findAll();
    Long save(UserModel newsModel);
    UserModel findOneUser(long id);
    UserModel findByUserName(String name);
    UserModel findByUserNameAndPasswordAndStatus(String username, String password);
    void updateCode(String code, Timestamp time, String username);
    void updateNewPassword(String username, String password);
    List<UserModel> findAllPage(Pageble pageble);
    int getTotal();
    void updateInfo(UserModel userModel);
}
