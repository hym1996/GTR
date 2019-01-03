package com.gta.ae86.pojo;

import java.util.Date;

/**
 * 订单表
 */
public class gtr_order {
    private int id;//订单表id
    private int userid;//用户主键
    private String serialNumber;//订单编号
    private byte[] pickPicture;//揽件图片
    private gtr_isreal isReal;//物品属实,0 否 1是
    private gtr_orderstatus orderStatus;//订单状态（1 待接单 2 已接单 3 已揽件4已签收 5取消）
    private gtr_paystatus payStatus;//（1未支付，2已支付，3已结算）
    private String remark;//备注
    private Date startTime;//出发时间(准确)
    private Date endTime;//到达时间(准确)
    private int receiveName;//收件人名字
    private String receivePhone;//收件人电话
    private String receiveAddress;//收件人地址
    private double deliveryFee;//配送费

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public byte[] getPickPicture() {
        return pickPicture;
    }

    public void setPickPicture(byte[] pickPicture) {
        this.pickPicture = pickPicture;
    }

    public gtr_isreal getIsReal() {
        return isReal;
    }

    public void setIsReal(gtr_isreal isReal) {
        this.isReal = isReal;
    }

    public gtr_orderstatus getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(gtr_orderstatus orderStatus) {
        this.orderStatus = orderStatus;
    }

    public gtr_paystatus getPayStatus() {
        return payStatus;
    }

    public void setPayStatus(gtr_paystatus payStatus) {
        this.payStatus = payStatus;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public int getReceiveName() {
        return receiveName;
    }

    public void setReceiveName(int receiveName) {
        this.receiveName = receiveName;
    }

    public String getReceivePhone() {
        return receivePhone;
    }

    public void setReceivePhone(String receivePhone) {
        this.receivePhone = receivePhone;
    }

    public String getReceiveAddress() {
        return receiveAddress;
    }

    public void setReceiveAddress(String receiveAddress) {
        this.receiveAddress = receiveAddress;
    }

    public double getDeliveryFee() {
        return deliveryFee;
    }

    public void setDeliveryFee(double deliveryFee) {
        this.deliveryFee = deliveryFee;
    }
}
