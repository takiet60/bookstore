package com.project.store.dao;

import com.project.store.model.OrderModel;
import com.project.store.paging.Pageble;

import java.util.List;

public interface IOrderDAO extends IGenericDAO<OrderModel> {
    List<OrderModel> findAll(Pageble pageble);
    int getTotalOrder();
}
