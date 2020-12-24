package com.project.store.mapper;

import com.project.store.model.UserModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<UserModel>{


    @Override
    public UserModel mapRow(ResultSet rs) {
        try{
            UserModel userModel = new UserModel();
            userModel.setId(rs.getLong("id"));
            System.out.println(userModel.getId());
            userModel.setName(rs.getString("name"));
            System.out.println(userModel.getName());
            userModel.setPhone(rs.getString("phone"));
            System.out.println(userModel.getPhone());
            userModel.setEmail(rs.getString("email"));
            userModel.setUsername(rs.getString("username"));
            userModel.setPassword(rs.getString("password"));



            System.out.println(userModel.getUsername());
            return userModel;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }
    }
}
