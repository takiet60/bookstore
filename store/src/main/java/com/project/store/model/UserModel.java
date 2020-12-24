package com.project.store.model;

public class UserModel {
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
    private String code;
    private long introducedId;

    public UserModel() {
    }

    public UserModel(long id, String name, String gender, String address, String phone, String email, String username, String password, int categoryId, int permission, String code, long introducedId) {
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
        this.code = code;
        this.introducedId = introducedId;
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
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public long getIntroducedId() {
        return introducedId;
    }

    public void setIntroducedId(long introducedId) {
        this.introducedId = introducedId;
    }
}
