package com.project.store.mapper;

import com.project.store.model.ProductModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper<ProductModel> {
    @Override
    public ProductModel mapRow(ResultSet rs) {
        try{
            ProductModel productModel = new ProductModel();
            productModel.setId(rs.getLong("id"));
            productModel.setName(rs.getString("name"));
            productModel.setCategoryId(rs.getInt("categoryId"));
            productModel.setCost(rs.getInt("cost"));
            productModel.setDiscount(rs.getInt("discount"));
            productModel.setValue(rs.getInt("value"));
            productModel.setProduction(rs.getString("production"));
            productModel.setImages(rs.getString("images"));
            productModel.setShortDescription(rs.getString("shortDescription"));
            productModel.setDescription(rs.getString("description"));
            return productModel;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}
