package com.project.store.dao.impl;

import com.project.store.dao.IProductDAO;
import com.project.store.mapper.ProductMapper;
import com.project.store.model.*;
import com.project.store.paging.Pageble;
import org.apache.commons.lang.StringUtils;

import java.awt.print.Pageable;
import java.sql.Timestamp;
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
        String sql = "INSERT into product(name, categoryId, cost, discount, value, image1, shortDescription, description, production) values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
    public List<ProductModel> search(String search, Pageble pageble) {
        StringBuilder sql = new StringBuilder("SELECT * FROM product WHERE name LIKE '%" + search + "%'");
        if(pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName())&& StringUtils.isNotBlank(pageble.getSorter().getSortBy())){
            sql.append(" ORDER BY " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy() + "");
        }
        if(pageble.getOffset() != null &&  pageble.getLimit() != null){
            sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLimit() + "");
        }
        return query(sql.toString(), new ProductMapper());
    }

    @Override
    public int getTotalItem() {
        String sql = "SELECT count(*) FROM product";
        return count(sql);
    }

    @Override
    public long saveOrder(CartModel cartModel, UserModel userModel) {
        String sql = "INSERT INTO orders(cusId, total, payType, finalPrice, status, createTime) VALUES(?, ?, ?, ?, ?, ?)";
        return insert(sql, userModel.getId(), cartModel.total(), "Thanh toán trực tiếp", cartModel.total(), "Đang vận chuyển", new Timestamp(System.currentTimeMillis()));
    }

    @Override
    public void saveDetailOrder(CartModel cartModel, long id) {
      StringBuilder sql = new StringBuilder("INSERT INTO detailOrder(orderId, productId, quantity, discountCode, value) VALUES ");
        int i = 0;
        for(ItemModel itemModel : cartModel.getItem()) {
            if (++i < cartModel.getItem().size()) {
                sql.append("(" + id + ", " + itemModel.getProductModel().getId() + ", " + itemModel.getQuantity() + ", 0, " + itemModel.getProductModel().getValue() + "),");
            } else {
                sql.append("(" + id + ", " + itemModel.getProductModel().getId() + ", " + itemModel.getQuantity() + ", 0, " + itemModel.getProductModel().getValue() + ");");
            }
        }
        insert(sql.toString());
    }

    @Override
    public void update(ProductModel productModel) {
        StringBuilder sql  = new StringBuilder("UPDATE product SET name = ?, categoryId = ?, ");
        sql.append("cost = ?, discount = ?, value = ?, image1 = ?, shortDescription = ?, ");
        sql.append("description = ?, production = ? ");
        sql.append("WHERE id = ?");
        update(sql.toString(), productModel.getName(), productModel.getCategoryId(), productModel.getCost(), productModel.getDiscount(),
                productModel.getValue(), productModel.getImage1(), productModel.getShortDescription(),
                productModel.getDescription(), productModel.getProduction(), productModel.getId());
    }

    @Override
    public List<ProductModel> findAllPag(Pageble pageble) {
        StringBuilder sql = new StringBuilder("SELECT * FROM product");
        if(pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName())&& StringUtils.isNotBlank(pageble.getSorter().getSortBy())){
            sql.append(" ORDER BY " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy() + "");
        }
        if(pageble.getOffset() != null &&  pageble.getLimit() != null){
            sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLimit() + "");
        }
        return query(sql.toString(), new ProductMapper());
    }

    @Override
    public List<ProductModel> findBestSeller() {
        StringBuilder sql = new StringBuilder("SELECT * ,count(productId) as total ");
        sql.append("FROM detailOrder d JOIN product  p WHERE d.productId = p.id ");
        sql.append("GROUP BY productId ");
        sql.append("ORDER by total DESC ");
        sql.append("LIMIT 10");
        return query(sql.toString(), new ProductMapper());
    }

    @Override
    public List<ProductModel> findByCategoryIdPage(int id, Pageble pageble) {
        StringBuilder sql = new StringBuilder("SELECT * FROM product WHERE categoryId = ?");
        if(pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName())&& StringUtils.isNotBlank(pageble.getSorter().getSortBy())){
            sql.append(" ORDER BY " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy() + "");
        }
        if(pageble.getOffset() != null &&  pageble.getLimit() != null){
            sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLimit() + "");
        }
        return query(sql.toString(), new ProductMapper(), id);
    }

    @Override
    public int getTotalItemByCategoryId(int id) {
        String sql = "SELECT count(*) FROM product WHERE categoryId = ?";
        return count(sql, id);
    }


}
