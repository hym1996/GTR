package com.gta.ae86.pojo;

/**
 * 货物单表
 */
public class gtr_cargo {
    private int orderid;//主键，订单表外键
    private int cases;//件数
    private double weight;//重量
    private gtr_way way;//计算方式，1同城，2跨城，3跨省，4跨国
    private int cargo_value;//货物价值

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    public int getCases() {
        return cases;
    }

    public void setCases(int cases) {
        this.cases = cases;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public gtr_way getWay() {
        return way;
    }

    public void setWay(gtr_way way) {
        this.way = way;
    }

    public int getCargo_value() {
        return cargo_value;
    }

    public void setCargo_value(int cargo_value) {
        this.cargo_value = cargo_value;
    }
}
