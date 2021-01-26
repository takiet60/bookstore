package com.project.store.service.impl;

import com.project.store.dao.IDetailOrderDAO;
import com.project.store.model.DetailOrderModel;
import com.project.store.paging.Pageble;
import com.project.store.service.IDetailOrderService;

import javax.inject.Inject;
import java.util.List;

public class DetailOrderService implements IDetailOrderService {

    @Inject
    private IDetailOrderDAO detailOrderDAO;

    @Override
    public List<DetailOrderModel> findAll(Pageble pageble) {
        return detailOrderDAO.findAll(pageble);
    }

    @Override
    public List<DetailOrderModel> findByOrderId(long id) {
        return detailOrderDAO.findByOrderId(id);
    }

    @Override
    public List<DetailOrderModel> findByUserId(long id) {
        return detailOrderDAO.findByUserId(id);
    }
}
