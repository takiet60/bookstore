package com.project.store.mapper;

import com.project.store.model.ProductModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper<ProductModel> {
    @Override
    public ProductModel mapRow(ResultSet rs) {
        try{
            ProductModel productModel = new ProductModel();
            productModel.setName(rs.getString("name"));
            productModel.setCategoryId(rs.getInt("categoryId"));
            productModel.setCost(rs.getInt("cost"));
            productModel.setDiscount(rs.getInt("discount"));
            productModel.setDiscount(rs.getInt("value"));
            productModel.setImages(rs.getString("images"));
            productModel.setShortDescription(rs.getString("shortDescription"));
            productModel.setDescription(rs.getString("description"));
            productModel.setProduction(rs.getString("production"));

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}
