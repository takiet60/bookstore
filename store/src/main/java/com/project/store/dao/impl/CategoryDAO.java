package com.project.store.dao.impl;

import com.project.store.dao.ICategoryDAO;
import com.project.store.mapper.CategoryMapper;
import com.project.store.model.CategoryModel;

import java.util.List;

public class CategoryDAO extends AbtractDAO<CategoryModel> implements ICategoryDAO {
    @Override
    public List<CategoryModel> findAll() {
        String sql = "SELECT id, name, code FROM category;";
        return query(sql, new CategoryMapper());
    }
}
