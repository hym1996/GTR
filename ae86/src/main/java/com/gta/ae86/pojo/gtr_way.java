package com.gta.ae86.pojo;

/**
 * 计算方式类
 */
public class gtr_way {

    private int way;//计算方式id，连接货物表
    private String city;//同城，跨城，跨省，跨国
    private int valuation;//同城15蚊，跨城25蚊，跨省50蚊，跨国200蚊

    public int getWay() {
        return way;
    }

    public void setWay(int way) {
        this.way = way;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getValuation() {
        return valuation;
    }

    public void setValuation(int valuation) {
        this.valuation = valuation;
    }
}
