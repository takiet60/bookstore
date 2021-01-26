package com.project.store.dao;

import com.project.store.model.*;
import com.project.store.paging.Pageble;

import java.awt.print.Pageable;
import java.util.List;

public interface IProductDAO extends IGenericDAO<ProductModel> {
    List<ProductModel> findAll();
    ProductModel findById(long id);
    long save(ProductModel productModel);
    List<ProductModel> findByCategory(int id);
    List<ProductModel> findByNewest();
    List<ProductModel> search(String search, Pageble pageble);
    int getTotalItem();
    long saveOrder(CartModel cartModel, UserModel userModel);
    void saveDetailOrder(CartModel cartModel, long id);
    void update(ProductModel productModel);
    List<ProductModel> findAllPag(Pageble pageble);
    List<ProductModel> findBestSeller();
    List<ProductModel> findByCategoryIdPage(int id, Pageble pageble);
    int getTotalItemByCategoryId(int id);

}
