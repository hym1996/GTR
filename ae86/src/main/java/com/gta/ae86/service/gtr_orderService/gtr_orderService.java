package com.gta.ae86.service.gtr_orderService;

import com.gta.ae86.pojo.gtr_order;

import java.util.List;

public interface gtr_orderService {
    gtr_order getOrderList(String serialNumber);
    //总记录数
    int totalCount();

    int addOrder(gtr_order order);
}
