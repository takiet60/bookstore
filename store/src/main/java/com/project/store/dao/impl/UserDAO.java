package com.project.store.dao.impl;

import com.project.store.dao.IUserDAO;
import com.project.store.mapper.DetailMapper;
import com.project.store.mapper.UserMapper;
import com.project.store.model.UserModel;
import com.project.store.paging.Pageble;
import org.apache.commons.lang.StringUtils;

import java.sql.Timestamp;
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
        String sql = "INSERT INTO user(fullname, gender, address, phone, email, username, password, roleId) values (?, ?, ?, ?, ?, ?, ?, ?)";
        return insert(sql, newsModel.getName(), newsModel.getGender(), newsModel.getAddress(), newsModel.getPhone(), newsModel.getEmail(), newsModel.getUsername(), newsModel.getPassword(), 2);
    }

    @Override
    public UserModel findOneUser(long id) {
        return null;
    }

    @Override
    public UserModel findByUserName(String name) {
        String sql = "SELECT * FROM user WHERE username = ?";
        List<UserModel> list = query(sql, new UserMapper(), name);
        return list.isEmpty() ? null : list.get(0);
    }

    @Override
    public UserModel findByUserNameAndPasswordAndStatus(String username, String password) {
        StringBuilder sql = new StringBuilder("SELECT * FROM user AS u ");
        sql.append(" JOIN role AS r ON r.id = u.roleId");
        sql.append(" WHERE username = ? AND password = ?;");
        List<UserModel> list = query(sql.toString(), new UserMapper(), username, password);
        return list.isEmpty() ? null : list.get(0);
    }

    public void updateCode(String code, Timestamp time, String username){
        String sql = "UPDATE user SET forgotCode = ?, time = ? WHERE username = ?";
        update(sql, code, time, username);
    }

    @Override
    public void updateNewPassword(String username, String password) {
        String sql = "UPDATE user SET password = ? WHERE username = ?";
        update(sql, password, username);
    }

    @Override
    public List<UserModel> findAllPage(Pageble pageble) {
        StringBuilder sql = new StringBuilder("SELECT u.id as id, u.fullname, u.gender, u.address, u.phone, u.email, u.roleId, r.name, r.code, u.username, u.password, u.forgotCode, u.time FROM user u JOIN role r ON u.roleId = r.id ");
        if(pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName())&& StringUtils.isNotBlank(pageble.getSorter().getSortBy())){
            sql.append(" ORDER BY " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy() + "");
        }
        if(pageble.getOffset() != null &&  pageble.getLimit() != null){
            sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLimit() + "");
        }
        return query(sql.toString(), new UserMapper());
    }

    @Override
    public int getTotal() {
        String sql = "SELECT count(*) FROM user";
        return count(sql);
    }

    @Override
    public void updateInfo(UserModel userModel) {
        StringBuilder sql = new StringBuilder("UPDATE user SET fullname = ?, address = ?, phone = ?, email = ? ");
        sql.append(" WHERE id = ?");
        update(sql.toString(), userModel.getName(), userModel.getAddress(), userModel.getPhone(), userModel.getEmail(), userModel.getId());
    }
}
