package com.project.store.service;

import com.project.store.model.UserModel;

import java.util.List;

public interface IUserService {
    List<UserModel> findAll();
    UserModel findByUsername(String username);
    UserModel save(UserModel userModel);
}
