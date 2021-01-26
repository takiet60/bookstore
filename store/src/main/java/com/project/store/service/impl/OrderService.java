package com.project.store.service.impl;

import com.project.store.dao.IOrderDAO;
import com.project.store.model.OrderModel;
import com.project.store.paging.Pageble;
import com.project.store.service.IOrderService;

import javax.inject.Inject;
import java.util.List;

public class OrderService implements IOrderService {

    @Inject
    private IOrderDAO orderDAO;

    @Override
    public List<OrderModel> findAll(Pageble pageble) {
        return orderDAO.findAll(pageble);
    }

    @Override
    public int getTotalOrder() {
        return orderDAO.getTotalOrder();
    }
}
