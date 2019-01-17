package com.gta.ae86.service.gtr_orderService;

import com.gta.ae86.dao.order.gtr_orderMapper;
import com.gta.ae86.pojo.gtr_order;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;
import java.util.List;

@Service("order")
public class gtr_orderServiceImpl implements gtr_orderService {

    @Resource
    private gtr_orderMapper orderMapper;

    @Override
    public gtr_order getOrderList(String serialNumber) {

        return orderMapper.getOrderList(serialNumber);
    }

    @Override
    public int totalCount() {
        int count=0;
        return count;
    }

    @Override
    public int addOrder(gtr_order order) {

        return orderMapper.insert(order);
    }
}
