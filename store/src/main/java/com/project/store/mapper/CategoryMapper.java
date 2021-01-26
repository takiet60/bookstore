package com.project.store.mapper;

import com.project.store.model.CategoryModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryMapper implements RowMapper<CategoryModel> {
    @Override
    public CategoryModel mapRow(ResultSet rs) {
        try{
            CategoryModel categoryModel = new CategoryModel();
            categoryModel.setId(rs.getLong("id"));
            categoryModel.setCode(rs.getString("code"));
            categoryModel.setName(rs.getString("name"));
            return categoryModel;
        } catch (SQLException e) {
            return null;
        }
    }
}
