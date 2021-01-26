package com.project.store.dao;

import com.project.store.model.CategoryModel;

import java.util.List;

public interface ICategoryDAO extends IGenericDAO<CategoryModel> {
    List<CategoryModel> findAll();
}
