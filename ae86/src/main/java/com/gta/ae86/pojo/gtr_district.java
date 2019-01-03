package com.gta.ae86.pojo;

/**
 * 区/县级表
 */
public class gtr_district {
    private int districtid;//地区id
    private gtr_city cityid;//市级表外键
    private String district;//区名

    public int getDistrictid() {
        return districtid;
    }

    public void setDistrictid(int districtid) {
        this.districtid = districtid;
    }

    public gtr_city getCityid() {
        return cityid;
    }

    public void setCityid(gtr_city cityid) {
        this.cityid = cityid;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }
}
