package com.project.store.dao;

import com.project.store.model.ProductModel;

import java.util.List;

public interface IProductDAO extends IGenericDAO<ProductModel> {
    List<ProductModel> findAll();
    ProductModel findById(long id);
    long save(ProductModel productModel);
    List<ProductModel> findByCategory(int id);
    List<ProductModel> findByNewest();
}
