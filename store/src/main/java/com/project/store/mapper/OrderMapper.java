package com.project.store.mapper;

import com.project.store.model.OrderModel;
import com.project.store.model.ProductModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderMapper implements RowMapper<OrderModel>{
    @Override
    public OrderModel mapRow(ResultSet rs) {
        try{
            OrderModel orderModel = new OrderModel();
            orderModel.setId(rs.getLong("id"));
            orderModel.setCusId(rs.getLong("cusId"));
            orderModel.setTotal(rs.getInt("total"));
            orderModel.setPayType(rs.getString("payType"));
            orderModel.setDiscountCode(rs.getString("discountCode"));
            orderModel.setFinalPrice(rs.getString("finalPrice"));
            orderModel.setStatus(rs.getString("status"));
            orderModel.setCreateTime(rs.getTimestamp("createTime"));
            orderModel.setFinishTime(rs.getTimestamp("finishTime"));
            return  orderModel;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}
