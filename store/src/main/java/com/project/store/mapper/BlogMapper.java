package com.project.store.mapper;

import com.project.store.model.BlogCategoryModel;
import com.project.store.model.BlogModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BlogMapper implements RowMapper<BlogModel> {
    @Override
    public BlogModel mapRow(ResultSet rs) {
        try {
            BlogModel blogModel = new BlogModel();
            blogModel.setId(rs.getLong("id"));
            blogModel.setTitle(rs.getString("title"));
            blogModel.setThumbnail(rs.getString("thumbnail"));
            blogModel.setSortDescription(rs.getString("shortDescription"));
            blogModel.setCategoryId(rs.getInt("categoryId"));
            blogModel.setContent(rs.getString("content"));
            blogModel.setCreatedDate(rs.getTimestamp("createdDate"));
            blogModel.setCreatedBy(rs.getString("createdBy"));
            try{
                BlogCategoryModel categoryModel = new BlogCategoryModel();
                categoryModel.setId(rs.getInt("id"));
                categoryModel.setName(rs.getString("name"));
                categoryModel.setCode(rs.getString("code"));
                blogModel.setCategoryModel(categoryModel);
            }catch (Exception e){

            }
            return blogModel;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}
