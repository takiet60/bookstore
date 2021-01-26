package com.project.store.service.impl;

import com.project.store.dao.ICategoryDAO;
import com.project.store.model.CategoryModel;
import com.project.store.service.ICategoryService;

import javax.inject.Inject;
import java.util.List;

public class CategoryService implements ICategoryService {

    @Inject
    private ICategoryDAO categoryDAO;

    @Override
    public List<CategoryModel> findAll() {
        return categoryDAO.findAll();
    }
}
