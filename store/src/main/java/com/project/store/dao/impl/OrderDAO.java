package com.project.store.dao.impl;

import com.project.store.dao.IOrderDAO;
import com.project.store.mapper.DetailMapper;
import com.project.store.mapper.OrderMapper;
import com.project.store.model.OrderModel;
import com.project.store.paging.Pageble;
import org.apache.commons.lang.StringUtils;

import java.util.List;

public class OrderDAO extends AbtractDAO<OrderModel> implements IOrderDAO {
    @Override
    public List<OrderModel> findAll(Pageble pageble) {
        StringBuilder sql = new StringBuilder("SELECT * FROM orders");
        if(pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName())&& StringUtils.isNotBlank(pageble.getSorter().getSortBy())){
            sql.append(" ORDER BY " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy() + "");
        }
        if(pageble.getOffset() != null &&  pageble.getLimit() != null){
            sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLimit() + "");
        }
        return query(sql.toString(), new OrderMapper());
    }

    @Override
    public int getTotalOrder() {
        String sql = "SELECT count(*) FROM orders";
        return count(sql);
    }


}
