package com.gta.ae86.contorller;

import com.gta.ae86.pojo.gtr_user;
import com.gta.ae86.service.gtr_userService.gtr_userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class gtr_userController {

    @Autowired
    private gtr_userService userService;

    @RequestMapping(value = "/UserList.html")
    public String getUserList(Model model) {
        List<gtr_user> users = userService.getUserList();
        model.addAttribute("users", users);
        return "index";
    }
}
