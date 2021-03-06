package com.gta.ae86.pojo;

import java.util.Date;

/**
 * 订单表
 */
public class gtr_order {
    private int id;//订单表id
    private int userId;//用户主键
    private String serialNumber;//订单编号
    private byte[] pickPicture;//揽件图片
    private int isReal;//物品属实,0 否 1是
    private gtr_orderstatus orderStatus;//订单状态（1 待接单 2 已接单 3 已揽件4已签收 5取消）
    private gtr_paystatus payStatus;//（1未支付，2已支付，3已结算）
    private  String senderName;//寄件人名字
    private String senderPhone ;//寄件人电话
    private  String senderAddress;//寄件人地址
    private  String payway;//付款方式
    private String remark;//备注
    private Date startTime;//出发时间(准确)
    private Date endTime;//到达时间(准确)
    private String receiveName;//收件人名字
    private String receivePhone;//收件人电话
    private String receiveAddress;//收件人地址
    private double deliveryFee;//配送费

    public gtr_order(int userId,String serialNumber, int isReal, String senderName, String senderPhone, String senderAddress, String payway, String remark, String receiveName, String receivePhone, String receiveAddress) {
        this.userId= userId;
        this.serialNumber = serialNumber;
        this.isReal = isReal;
        this.senderName = senderName;
        this.senderPhone = senderPhone;
        this.senderAddress = senderAddress;
        this.payway = payway;
        this.remark = remark;
        this.receiveName = receiveName;
        this.receivePhone = receivePhone;
        this.receiveAddress = receiveAddress;
    }


    public gtr_order(){}

    public String getSenderName() {
        return senderName;
    }

    public void setSenderName(String senderName) {
        this.senderName = senderName;
    }

    public String getSenderPhone() {
        return senderPhone;
    }

    public void setSenderPhone(String senderPhone) {
        this.senderPhone = senderPhone;
    }

    public String getSenderAddress() {
        return senderAddress;
    }

    public void setSenderAddress(String senderAddress) {
        this.senderAddress = senderAddress;
    }

    public String getPayway() {
        return payway;
    }

    public void setPayway(String payway) {
        this.payway = payway;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public int getIsReal() {
        return isReal;
    }

    public void setIsReal(int isReal) {
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

    public String getReceiveName() {
        return receiveName;
    }

    public void setReceiveName(String receiveName) {
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
