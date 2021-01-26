package com.project.store.mapper;

import com.project.store.model.RoleModel;
import com.project.store.model.UserModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<UserModel>{


    @Override
    public UserModel mapRow(ResultSet rs) {
        try{
            UserModel userModel = new UserModel();
            userModel.setId(rs.getLong("id"));
            userModel.setName(rs.getString("fullname"));
            userModel.setPhone(rs.getString("phone"));
            userModel.setAddress(rs.getString("address"));
            userModel.setEmail(rs.getString("email"));
            userModel.setUsername(rs.getString("username"));
            userModel.setPassword(rs.getString("password"));
            userModel.setCode(rs.getString("forgotCode"));
            userModel.setTimeStart(rs.getTimestamp("time"));
            try{
                RoleModel roleModel = new RoleModel();
                roleModel.setCode(rs.getString("code"));
                roleModel.setName(rs.getString("name"));
                userModel.setRoleModel(roleModel);
            }catch (Exception e){

            }
            return userModel;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }
    }
}
