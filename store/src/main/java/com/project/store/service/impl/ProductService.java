package com.project.store.service.impl;

import com.project.store.dao.IProductDAO;
import com.project.store.model.CartModel;
import com.project.store.model.ItemModel;
import com.project.store.model.ProductModel;
import com.project.store.model.UserModel;
import com.project.store.paging.Pageble;
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

    @Override
    public long save(ProductModel productModel) {
        return productDAO.save(productModel);
    }

    @Override
    public List<ProductModel> findByCategoryId(int id) {
        return productDAO.findByCategory(id);
    }

    @Override
    public List<ProductModel> findByNewest() {
        return productDAO.findByNewest();
    }

    @Override
    public List<ProductModel> search(String item, Pageble pageble) {
        return productDAO.search(item, pageble);
    }

    @Override
    public int getTotalItem() {
        return productDAO.getTotalItem();
    }

    @Override
    public long saveOrder(CartModel cartModel, UserModel userModel) {
        return productDAO.saveOrder(cartModel, userModel);
    }

    @Override
    public void saveDetailOrder(CartModel cartModel, long id) {
         productDAO.saveDetailOrder(cartModel, id);
    }

    @Override
    public void update(ProductModel productModel) {
        productDAO.update(productModel);
    }

    @Override
    public List<ProductModel> findAllPag(Pageble pageble) {
        return productDAO.findAllPag(pageble);
    }

    @Override
    public List<ProductModel> findBestSeller() {
        return productDAO.findBestSeller();
    }

    @Override
    public List<ProductModel> findByCategoryIdPage(int id, Pageble pageble) {
        return productDAO.findByCategoryIdPage(id, pageble);
    }

    @Override
    public int getTotalItemByCategoryId(int id) {
        return productDAO.getTotalItemByCategoryId(id);
    }
}
