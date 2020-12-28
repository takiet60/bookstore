package com.project.store.dao.impl;

import com.project.store.dao.IProductDAO;
import com.project.store.mapper.ProductMapper;
import com.project.store.model.ProductModel;
import com.project.store.model.UserModel;

import java.util.List;

public class ProductDAO extends AbtractDAO<ProductModel> implements IProductDAO {
    @Override
    public List<ProductModel> findAll() {
        String sql = "SELECT * FROM product";
        return query(sql, new ProductMapper());
    }

    @Override
    public ProductModel findById(long id) {
        String sql = "SELECT * FROM product WHERE id = ?";
        return query(sql, new ProductMapper(), id).get(0);
    }

    @Override
    public long save(ProductModel productModel) {
        String sql = "INSERT into product(name, categoryId, cost, discount, value, image1, shortDescription, description, production) values(?, ?, ?, ?, ?, ?, ?, ?, ?";
        return insert(sql, productModel.getName(), productModel.getCategoryId(), productModel.getCost(), productModel.getDiscount(), productModel.getValue(),
                productModel.getImage1(), productModel.getShortDescription(), productModel.getDescription(), productModel.getProduction());
    }

    public List<ProductModel> findByCategory(int id) {
        String sql = "SELECT * FROM product WHERE categoryId = ?";
        return query(sql, new ProductMapper(), id);
    }

    @Override
    public List<ProductModel> findByNewest() {
        String sql = "SELECT * FROM product ORDER BY id DESC";
        return query(sql, new ProductMapper());
    }

    @Override
    public List<ProductModel> search(String search) {
        String sql = "SELECT * FROM product WHERE name LIKE '%" + search + "%'";
        return query(sql, new ProductMapper());
    }


}
