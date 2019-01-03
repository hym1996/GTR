package com.gta.ae86.pojo;

import java.util.Date;

/**
 * 送件员表
 */
public class gtr_delivery {
    private int gid;//送件员编号-9位数的随机数
    private String gaccount;//用户账号
    private String gpassword;//用户密码
    private String gname;//名称
    private byte[] gheadPortrait;//用户头像
    private gtr_sex gsex;//性别 1=男,2=女,3=其它
    private String gemail;//邮箱
    private String gphone;//电话号码
    private String gidentityId;//身份证号码
    private String gaddress;//地址
    private Date gbirthday;//生日
    private int gintegrity;//诚信值

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public String getGaccount() {
        return gaccount;
    }

    public void setGaccount(String gaccount) {
        this.gaccount = gaccount;
    }

    public String getGpassword() {
        return gpassword;
    }

    public void setGpassword(String gpassword) {
        this.gpassword = gpassword;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public byte[] getGheadPortrait() {
        return gheadPortrait;
    }

    public void setGheadPortrait(byte[] gheadPortrait) {
        this.gheadPortrait = gheadPortrait;
    }

    public gtr_sex getGsex() {
        return gsex;
    }

    public void setGsex(gtr_sex gsex) {
        this.gsex = gsex;
    }

    public String getGemail() {
        return gemail;
    }

    public void setGemail(String gemail) {
        this.gemail = gemail;
    }

    public String getGphone() {
        return gphone;
    }

    public void setGphone(String gphone) {
        this.gphone = gphone;
    }

    public String getGidentityId() {
        return gidentityId;
    }

    public void setGidentityId(String gidentityId) {
        this.gidentityId = gidentityId;
    }

    public String getGaddress() {
        return gaddress;
    }

    public void setGaddress(String gaddress) {
        this.gaddress = gaddress;
    }

    public Date getGbirthday() {
        return gbirthday;
    }

    public void setGbirthday(Date gbirthday) {
        this.gbirthday = gbirthday;
    }

    public int getGintegrity() {
        return gintegrity;
    }

    public void setGintegrity(int gintegrity) {
        this.gintegrity = gintegrity;
    }
}
