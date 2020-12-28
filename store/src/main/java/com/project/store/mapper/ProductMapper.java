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
            productModel.setImage1(rs.getString("image1"));
            productModel.setImage2(rs.getString("image2"));
            productModel.setImage3(rs.getString("image3"));
            productModel.setImage4(rs.getString("image4"));
            productModel.setImage5(rs.getString("image5"));
            productModel.setShortDescription(rs.getString("shortDescription"));
            productModel.setDescription(rs.getString("description"));
            return productModel;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}
