package com.project.store.dao.impl;

import com.project.store.dao.IDetailOrderDAO;
import com.project.store.mapper.DetailMapper;
import com.project.store.mapper.ProductMapper;
import com.project.store.model.DetailOrderModel;
import com.project.store.paging.Pageble;
import org.apache.commons.lang.StringUtils;

import java.util.List;

public class DetailOrderDAO extends AbtractDAO<DetailOrderModel> implements IDetailOrderDAO {
    @Override
    public List<DetailOrderModel> findAll(Pageble pageble) {
        StringBuilder sql = new StringBuilder("SELECT * FROM detailOrder");
        if(pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName())&& StringUtils.isNotBlank(pageble.getSorter().getSortBy())){
            sql.append(" ORDER BY " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy() + "");
        }
        if(pageble.getOffset() != null &&  pageble.getLimit() != null){
            sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLimit() + "");
        }
        return query(sql.toString(), new DetailMapper());
    }

    @Override
    public List<DetailOrderModel> findByOrderId(long id) {
        String sql = "SELECT * FROM detailOrder WHERE orderId = ?";
        return query(sql, new DetailMapper(), id);
    }

    @Override
    public List<DetailOrderModel> findByUserId(long id) {
        StringBuilder sql = new StringBuilder("SELECT d.orderId, d.productId, d.quantity, d.discountCode, d.value, o.createTime, o.finishTime ");
        sql.append("FROM user u JOIN orders o ON u.id = o.cusId JOIN detailOrder d ON o.id = d.orderId ");
        sql.append("WHERE u.id = ?");
        return query(sql.toString(), new DetailMapper(), id);
    }
}
