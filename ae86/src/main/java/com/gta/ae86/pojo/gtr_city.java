package com.gta.ae86.pojo;

/**
 * 市级表
 */
public class gtr_city {
    private int cityid;//市表主键
    private gtr_branch pointid;//省表外键
    private String city;//市表

    public int getCityid() {
        return cityid;
    }

    public void setCityid(int cityid) {
        this.cityid = cityid;
    }

    public gtr_branch getPointid() {
        return pointid;
    }

    public void setPointid(gtr_branch pointid) {
        this.pointid = pointid;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
