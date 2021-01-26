package com.project.store.service;

import com.project.store.dao.IDetailOrderDAO;
import com.project.store.model.DetailOrderModel;
import com.project.store.paging.Pageble;

import javax.inject.Inject;
import java.util.List;

public interface IDetailOrderService {

    List<DetailOrderModel> findAll(Pageble pageble);
    List<DetailOrderModel> findByOrderId(long id);
    List<DetailOrderModel> findByUserId(long id);

}
