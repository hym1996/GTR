package com.gta.ae86.pojo;

/**
 * 回执单表
 */
public class gtr_receipt {
    private int receiptid;//回执单单号
    private String serialNumber;//订单号外键
    private int pieceAmount;//件数
    private double weight;//重量
    private String priceMode;//计价方式
    private double money;//配送费

    public int getReceiptid() {
        return receiptid;
    }

    public void setReceiptid(int receiptid) {
        this.receiptid = receiptid;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public int getPieceAmount() {
        return pieceAmount;
    }

    public void setPieceAmount(int pieceAmount) {
        this.pieceAmount = pieceAmount;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public String getPriceMode() {
        return priceMode;
    }

    public void setPriceMode(String priceMode) {
        this.priceMode = priceMode;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }
}
