package com.project.store.dao;

import com.project.store.model.UserModel;

import java.sql.Timestamp;
import java.util.List;

public interface IUserDAO extends IGenericDAO<UserModel> {
    List<UserModel> findByUserId(Long categoryId);
    List<UserModel> findAll();
    Long save(UserModel newsModel);
    UserModel findOneUser(long id);
    UserModel findByUserName(String username);
    void updateCode(String code, Timestamp time, String username);
}
