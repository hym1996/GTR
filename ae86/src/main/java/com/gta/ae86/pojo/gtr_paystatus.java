package com.gta.ae86.pojo;

/**
 * 支付状态表，未支付，已支付，已结算，取消
 */
public class gtr_paystatus {
    private int id;//订单支付表主键
    private String payStatus;//支付状态

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPayStatus() {
        return payStatus;
    }

    public void setPayStatus(String payStatus) {
        this.payStatus = payStatus;
    }
}
