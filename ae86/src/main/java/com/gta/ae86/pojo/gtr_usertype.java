package com.gta.ae86.pojo;

/**
 * 用户权限类
 */
public class gtr_usertype {
    private int typeid;//用户表管理权限外键
    private String type;//0普通用户1管理员

    public int getTypeid() {
        return typeid;
    }

    public void setTypeid(int typeid) {
        this.typeid = typeid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
