package com.project.store.model;

import java.sql.Timestamp;

public class UserModel extends PagingModel<UserModel>{
    private long id;
    private String name;
    private String gender;
    private String address;
    private String phone;
    private String email;
    private String username;
    private String password;
    private int categoryId;
    private int permission;
    private String forgotCode;
    private long introducedId;
    private Timestamp timeStart;
    private RoleModel roleModel;


    public UserModel() {
    }

    public UserModel(long id, String name, String gender, String address, String phone, String email, String username, String password, int categoryId, int permission, String code, long introducedId, Timestamp timeStart, RoleModel roleModel) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.username = username;
        this.password = password;
        this.categoryId = categoryId;
        this.permission = permission;
        this.forgotCode = code;
        this.introducedId = introducedId;
        this.timeStart = timeStart;
        this.roleModel = roleModel;
    }

    public RoleModel getRoleModel() {
        return roleModel;
    }

    public void setRoleModel(RoleModel roleModel) {
        this.roleModel = roleModel;
    }

    public Timestamp getTimeStart() {
        return timeStart;
    }

    public void setTimeStart(Timestamp timeStart) {
        this.timeStart = timeStart;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getPermission() {
        return permission;
    }

    public void setPermission(int permission) {
        this.permission = permission;
    }

    public String getCode() {
        return forgotCode;
    }

    public void setCode(String code) {
        this.forgotCode = code;
    }

    public long getIntroducedId() {
        return introducedId;
    }

    public void setIntroducedId(long introducedId) {
        this.introducedId = introducedId;
    }
}
