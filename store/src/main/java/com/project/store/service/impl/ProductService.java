package com.project.store.service.impl;

import com.project.store.dao.IProductDAO;
import com.project.store.model.ProductModel;
import com.project.store.service.IProductService;

import javax.inject.Inject;
import java.util.List;

public class ProductService implements IProductService {

    @Inject
    private IProductDAO productDAO;

    @Override
    public List<ProductModel> findAll() {
        return productDAO.findAll();
    }

    @Override
    public ProductModel findById(long id) {
        return productDAO.findById(id);
    }
}
