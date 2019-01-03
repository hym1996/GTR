package com.gta.ae86.pojo;

import java.util.Date;

/**
 * 用户类
 */
public class gtr_user {

    private int userId;//用户ID
    private String account;//用户账号
    private String password;//用户密码
    private String nickName;//用户名
    private byte[] headPortrait;//用户头像
    private gtr_sex sex;//性别 1=男,2=女,3=其它
    private String email;//邮箱
    private String phone;//用户电话
    private String identityId;//身份证号码
    private String address;//地址
    private Date birthday;//生日
    private int integrity;//诚信值
    private gtr_usertype type;//用户等级

    public gtr_sex getSex() {
        return sex;
    }

    public void setSex(gtr_sex sex) {
        this.sex = sex;
    }

    public gtr_usertype getType() {
        return type;
    }

    public void setType(gtr_usertype type) {
        this.type = type;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public byte[] getHeadPortrait() {
        return headPortrait;
    }

    public void setHeadPortrait(byte[] headPortrait) {
        this.headPortrait = headPortrait;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIdentityId() {
        return identityId;
    }

    public void setIdentityId(String identityId) {
        this.identityId = identityId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public int getIntegrity() {
        return integrity;
    }

    public void setIntegrity(int integrity) {
        this.integrity = integrity;
    }
}
