package com.gta.ae86.contorller;

import com.gta.ae86.pojo.gtr_order;
import com.gta.ae86.pojo.gtr_user;
import com.gta.ae86.service.gtr_orderService.gtr_orderService;

import com.gta.ae86.service.gtr_userService.gtr_userService;

import com.gta.ae86.util.Order_IndustrySMS;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;


@Controller
public class gtr_orderController {


    @Resource
    private gtr_orderService orderService;
    @Resource
    private gtr_userService gtr_userService;


    @RequestMapping(value = "/list.html")
    public String getOrderList(Model model, @RequestParam(value = "serialNumber", required = false) String serialNumber,HttpSession session) {
        gtr_order gr = orderService.getOrderList(serialNumber);

        int gid = gr.getUserId();
        gtr_user gtruser = gtr_userService.getUserById(gid);
        System.out.println("进入方法");

        model.addAttribute("userNickName", gtruser);
        model.addAttribute("orderList", gr);

        return "/order/orderlist";

    }

    @RequestMapping(value = "/toadd.html")
    public String add() {
        return "order/addorder";
    }


    @RequestMapping(value = "/Saveorder.html", method = RequestMethod.POST)
    public String addorder(Model method,@RequestParam(value = "userId",required = false)String userId,
            @RequestParam(value = "senderName", required = false) String senderName,
                           @RequestParam(value = "senderPhone", required = false) String senderPhone,
                           @RequestParam(value = "senderAddress", required = false) String senderAddress,
                           @RequestParam(value = "payway", required = false) String payway,
                           @RequestParam(value = "receiveName", required = false) String receiveName,
                           @RequestParam(value = "receivePhone", required = false) String receivePhone,
                           @RequestParam(value = "receiveAddress", required = false) String receiveAddress,
                           @RequestParam(value = "remark", required = false) String remark,
                           @RequestParam(value = "isReal", required = false) String isReal) {
        gtr_order order = null;
        System.out.println("进入添加订单方法");
        String aserialNumber = Order_IndustrySMS.ordersmsCode();
        System.out.println("编号是" + aserialNumber);

        int aisReal = Integer.parseInt(isReal);
        int auserId = Integer.parseInt(userId);
        System.out.println("ID是:"+auserId);
        order = new gtr_order(auserId,aserialNumber, aisReal, senderName, senderPhone, senderAddress, payway, receiveName, receivePhone, receiveAddress, remark);

        int i = orderService.addOrder(order);
        if (i>0) {
            method.addAttribute("order",order);
            System.out.println("添加成功");
            return "/order/orderSucces";
        } else {
            return "/order/addorder";
        }
    }


}