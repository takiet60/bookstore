package com.project.store.dao.impl;

import com.project.store.dao.IUserDAO;
import com.project.store.mapper.UserMapper;
import com.project.store.model.UserModel;

import java.util.List;

public class UserDAO extends AbtractDAO<UserModel> implements IUserDAO {
    @Override
    public List<UserModel> findByUserId(Long categoryId) {
        String sql = "SELECT * FROM user WHERE id = ?";
        return null;
    }

    @Override
    public List<UserModel> findAll() {
        String sql = "SELECT * FROM user";
        return query(sql, new UserMapper());
    }

    @Override
    public Long save(UserModel newsModel) {
        String sql = "INSERT INTO user(name, gender, address, phone, email, username, password) values (?, ?, ?, ?, ?, ?, ?)";
        return insert(sql, newsModel.getName(), newsModel.getGender(), newsModel.getAddress(), newsModel.getPhone(), newsModel.getEmail(), newsModel.getUsername(), newsModel.getPassword());
    }

    @Override
    public UserModel findOneUser(long id) {
        return null;
    }

    @Override
    public UserModel findByUserName(String username) {
        String sql = "SELECT * FROM user WHERE username = ?";
        List<UserModel> list = query(sql, new UserMapper(), username);
        return (list.size() == 0 ? null : list.get(0));
    }
}
