package com.gta.ae86.contorller;

import com.alibaba.fastjson.JSON;
import com.gta.ae86.pojo.gtr_sex;
import com.gta.ae86.pojo.gtr_user;
import com.gta.ae86.service.gtr_sexService.gtr_sexService;
import com.gta.ae86.service.gtr_userService.gtr_userService;
import com.gta.ae86.util.Note_IndustrySMS;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class gtr_userController {

    @Autowired
    private gtr_userService userService;

    @Autowired
    private gtr_sexService sexService;

    // 进入登录页面
    @RequestMapping(value = "/a.html")
    public String alogin() {

        return "/user/index";
    }

    // 进入登录页面
    @RequestMapping(value = "/login.html")
    public String login() {

        return "login";
    }


    // 登录页面，验证用户密码是否正确
    @RequestMapping(value = "/gologin.html", method = RequestMethod.POST)
    public String login(@RequestParam(value = "account", required = false) String account,
                        @RequestParam(value = "password", required = false) String password,
                        HttpServletRequest request,
                        HttpSession session) {
        gtr_user user = null;
        if (account != null) {
            user = userService.getLogin(account, password);
            System.out.println("进入--登录验证--方法");
        }
        //验证用户账号密码
        if (null != user) {
            session.setAttribute("userSession", user);
            System.out.println("进入方法返回页面");
            return "redirect:/main.html";
        } else {
            session.setAttribute("error", "500");
            return "redirect:/login.html";
        }

    }

    // 登陆后的主页
    @RequestMapping(value = "/main.html")
    public String main(HttpSession session) {
        if (session.getAttribute("userSession") == null) {
            System.out.println("userSession==空，返回登陆页面");
            return "redirect:/login.html";
        }
        System.out.print("返回用户主页页面");
        return "/user/main";
    }

    //前往短信认证页面
    @RequestMapping(value = "/register.html")
    public String register() {
        return "/user/register";
    }

    //免费注册页面
    @ResponseBody
    @RequestMapping(value = "/sms.html", method = RequestMethod.POST)
    public String SMS(@RequestParam String phone) {

        //生成随机数验证码
        String hcode = Note_IndustrySMS.smsCode();
        Note_IndustrySMS.execute(phone, hcode);
        String json = JSON.toJSONString(hcode);
        System.out.println(json);
        return json;
    }

    //判断验证码
    @RequestMapping(value = "/SMSHcode.html", method = RequestMethod.POST)
    public String SMSHcode(@RequestParam String code, @RequestParam String hcode, HttpServletRequest request) {
        System.out.println("code=" + code + "hcode=" + hcode);

        if (hcode.equals(code)) {
            return "redirect:/add.html";
        } else {
            request.setAttribute("error", "验证码不正确");
            return "/user/register";
        }
    }

    //前往添加页面
    @RequestMapping(value = "/add.html")
    public String addUser() {
        return "/user/addUser";
    }


    //新用户创建
    @RequestMapping(value = "/addSave.html", method = RequestMethod.POST)
    public String userAddSave(
            @RequestParam(value = "account", required = false) String account,
            @RequestParam(value = "password", required = false) String password,
            @RequestParam(value = "nickName", required = false) String nickName,
            @RequestParam(value = "sex", required = false) String sex,
            @RequestParam(value = "email", required = false) String email,
            @RequestParam(value = "phone", required = false) String phone,
            @RequestParam(value = "identityId", required = false) String identityId,
            HttpServletRequest request,
            HttpSession session) {

        gtr_user user = null;
        System.out.println("sex=" + sex);
        gtr_sex userSex = sexService.getUserSex(sex);
        user = new gtr_user(account, password, nickName, userSex, email, phone, identityId);

        boolean i = userService.addUser(user);
        if (i) {
            System.out.println("添加用户成功，返回主页面");
            session.setAttribute("userSession", user);
            return "redirect:/main.html";
        } else {
            request.setAttribute("error", "用户创建失败，若无法解决可联系客服。");
            return "/add";
        }
    }

    //忘记密码
    @RequestMapping(value = "/forget.html")
    public String forgetPwd() {
        return "/user/forgetPassword";
    }

    //修改密码所需的验证码
    @ResponseBody
    @RequestMapping(value = "/smspaw.html", method = RequestMethod.POST)
    public String SMSPAW(@RequestParam String phone) {
        String pcode = Note_IndustrySMS.smsCode();
        Note_IndustrySMS.execute(phone, pcode);
        String json = JSON.toJSONString(pcode);
        return json;
    }


    //手机号修改密码判断验证码
    @RequestMapping(value = "/SMSPcode.html", method = RequestMethod.POST)
    public String SMSPAWpcode(@RequestParam String code, @RequestParam String pcode, HttpServletRequest request) {
        System.out.println("code=" + code + "pcode=" + pcode);

        if (pcode.equals(code)) {
            return "/user/update";
        } else {
            request.setAttribute("error", "验证码不正确");
            return "/user/forgetPassword";
        }
    }

    //根据用户电话修改密码
    @RequestMapping(value = "/update.html", method = RequestMethod.POST)
    public String update() {
        return "as";
    }


    //用户个人信息页面
    @RequestMapping(value = "/userShow.html")
    public String userShow(HttpSession session, @RequestParam(value = "userId", required = false) String userId) {

        if (session != null) {
            int id = Integer.parseInt(userId);
            gtr_user user = userService.getUserById(id);
            System.out.println("userid=" + id+"username"+user.getNickName());
            session.setAttribute("user", user);
            return "/user/userShow";
        } else {
            return "/login";
        }
    }


}
