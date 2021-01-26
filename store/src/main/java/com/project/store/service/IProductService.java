package com.project.store.service;

import com.project.store.model.CartModel;
import com.project.store.model.ItemModel;
import com.project.store.model.ProductModel;
import com.project.store.model.UserModel;
import com.project.store.paging.Pageble;

import java.util.List;

public interface IProductService {
    List<ProductModel> findAll();
    ProductModel findById(long id);
    long save(ProductModel productModel);
    List<ProductModel> findByCategoryId(int id);
    List<ProductModel> findByNewest();
    List<ProductModel> search(String item, Pageble pageble);
    int getTotalItem();
    long saveOrder(CartModel cartModel, UserModel userModel);
    void saveDetailOrder(CartModel cartModel, long id);
    void update(ProductModel productModel);
    List<ProductModel> findAllPag(Pageble pageble);
    List<ProductModel> findBestSeller();
    List<ProductModel> findByCategoryIdPage(int id, Pageble pageble);
    int getTotalItemByCategoryId(int id);
}
