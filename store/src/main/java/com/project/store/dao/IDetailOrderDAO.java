package com.project.store.dao;

import com.project.store.model.DetailOrderModel;
import com.project.store.paging.Pageble;

import java.util.List;

public interface IDetailOrderDAO extends IGenericDAO<DetailOrderModel> {
    List<DetailOrderModel> findAll(Pageble pageble);
    List<DetailOrderModel> findByOrderId(long id);
    List<DetailOrderModel> findByUserId(long id);
}
