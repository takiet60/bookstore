package com.project.store.model;

public class ProductModel {
    private long id;
    private String name;
    private int categoryId;
    private int cost;
    private int discount;
    private int value;
    private String images;
    private String shortDescription;
    private String description;
    private String production;

    public ProductModel(){

    }

    public ProductModel(long id, String name, int categoryId, int cost, int discount, int value, String images, String shortDescription, String description, String production) {
        this.id = id;
        this.name = name;
        this.categoryId = categoryId;
        this.cost = cost;
        this.discount = discount;
        this.value = value;
        this.images = images;
        this.shortDescription = shortDescription;
        this.description = description;
        this.production = production;
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

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getProduction() {
        return production;
    }

    public void setProduction(String production) {
        this.production = production;
    }
}
