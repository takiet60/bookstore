package com.project.store.service;

import com.project.store.model.OrderModel;
import com.project.store.paging.Pageble;

import java.util.List;

public interface IOrderService {
    List<OrderModel> findAll(Pageble pageble);
    int getTotalOrder();
}
