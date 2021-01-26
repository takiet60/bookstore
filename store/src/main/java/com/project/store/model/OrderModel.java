package com.project.store.model;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "ORDER")

public class OrderModel extends PagingModel<OrderModel> implements Serializable {
    private long id;
    private long cusId;
    private int total;
    private String payType;
    private String discountCode;
    private String finalPrice;
    private String status;
    private Timestamp createTime;
    private Timestamp finishTime;
    @OneToMany(mappedBy = "order")
    private Set<DetailOrderModel> list;


    public OrderModel() {
    }

    public OrderModel(long id, long cusId, int total, String payType, String discountCode, String finalPrice, String status, Set<DetailOrderModel> list) {
        this.id = id;
        this.cusId = cusId;
        this.total = total;
        this.payType = payType;
        this.discountCode = discountCode;
        this.finalPrice = finalPrice;
        this.status = status;
        this.list = list;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public Timestamp getFinishTime() {
        return finishTime;
    }

    public void setFinishTime(Timestamp finishTime) {
        this.finishTime = finishTime;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getCusId() {
        return cusId;
    }

    public void setCusId(long cusId) {
        this.cusId = cusId;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getPayType() {
        return payType;
    }

    public void setPayType(String payType) {
        this.payType = payType;
    }

    public String getDiscountCode() {
        return discountCode;
    }

    public void setDiscountCode(String discountCode) {
        this.discountCode = discountCode;
    }

    public String getFinalPrice() {
        return finalPrice;
    }

    public void setFinalPrice(String finalPrice) {
        this.finalPrice = finalPrice;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Set<DetailOrderModel> getList() {
        return list;
    }

    public void setList(Set<DetailOrderModel> list) {
        this.list = list;
    }
}


