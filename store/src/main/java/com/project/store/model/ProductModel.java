package com.project.store.model;

import java.io.Serializable;

public class ProductModel extends PagingModel<ProductModel> implements Serializable {
    private long id;
    private String name;
    private int categoryId;
    private int cost;
    private int discount;
    private int value;
    private String image1;
    private String image2;
    private String image3;
    private String image4;
    private String image5;
    private String shortDescription;
    private String description;
    private String production;
    private DetailOrderModel detailOrderModel;



    public ProductModel(){

    }

    public ProductModel(long id, String name, int categoryId, int cost, int discount, int value, String image1, String image2, String image3, String image4, String image5, String shortDescription, String description, String production) {
        this.id = id;
        this.name = name;
        this.categoryId = categoryId;
        this.cost = cost;
        this.discount = discount;
        this.value = value;
        this.image1 = image1;
        this.image2 = image2;
        this.image3 = image3;
        this.image4 = image4;
        this.image5 = image5;
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

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }

    public String getImage4() {
        return image4;
    }

    public void setImage4(String image4) {
        this.image4 = image4;
    }

    public String getImage5() {
        return image5;
    }

    public void setImage5(String image5) {
        this.image5 = image5;
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

    public DetailOrderModel getDetailOrderModel() {
        return detailOrderModel;
    }

    public void setDetailOrderModel(DetailOrderModel detailOrderModel) {
        this.detailOrderModel = detailOrderModel;
    }
}
