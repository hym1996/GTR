package com.gta.ae86.dao.order;

import com.gta.ae86.pojo.gtr_order;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;


import java.util.List;
@Mapper
public interface gtr_orderMapper {
    //根据id删除订单
    int deleteById(@Param(value = "id") Integer id);

    //添加订单
    int insert(gtr_order order);

    //  修改订单
    int updateByPrimaryKey(gtr_order order);

    //查询订单
    gtr_order getOrderList(@Param(value = "serialNumber") String serialNumber);
    //根据id查找订单
    gtr_order findByorderId(@Param(value = "id") int id);

    //查询未发货的订单
    List<gtr_order>  orderById(@Param(value = "from") int from,
                               @Param(value = "pageSize") int pageSize);

    //查询未发货的订单总数
    int orderCount();



}
