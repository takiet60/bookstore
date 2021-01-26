package com.project.store.mapper;

import com.project.store.model.DetailOrderModel;
import com.project.store.model.OrderModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class DetailMapper implements RowMapper<DetailOrderModel> {


    @Override
    public DetailOrderModel mapRow(ResultSet rs) {
        try{
            DetailOrderModel detailOrderModel = new DetailOrderModel();
            detailOrderModel.setOrderId(rs.getLong("orderId"));
            detailOrderModel.setProductId(rs.getLong("productId"));
            detailOrderModel.setQuantity(rs.getInt("quantity"));
            detailOrderModel.setDiscountCode(rs.getString("discountCode"));
            detailOrderModel.setValue(rs.getInt("value"));
            try{
                detailOrderModel.setCreateTime(rs.getTimestamp("createTime"));
                detailOrderModel.setFinishTime(rs.getTimestamp("finishTime"));
            }catch (Exception e){

            }

            return detailOrderModel;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}
