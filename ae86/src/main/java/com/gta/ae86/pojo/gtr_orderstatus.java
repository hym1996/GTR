package com.gta.ae86.pojo;

/**
 * 订单揽件状态表
 * 待接单，已接单，已揽件，已签收，取消
 */
public class gtr_orderstatus {
    private int id;//订单状态主键
    private String orderStatus;//订单状态

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }
}
