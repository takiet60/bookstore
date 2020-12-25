package com.project.store.service;

import com.project.store.model.ProductModel;

import java.util.List;

public interface IProductService {
    List<ProductModel> findAll();
    ProductModel findById(long id);
    List<ProductModel> findByCategoryId(int id);
    List<ProductModel> findByNewest();
}
