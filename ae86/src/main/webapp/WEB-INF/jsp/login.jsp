<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fm" %>

<script type="text/javascript" src="../../js/jquery-1.8.3.min.js" charset="UTF-8"></script>
<link rel="shortcut icon" href="../../img/favicon.ico" type="image/x-icon"/>
<link rel="stylesheet" href="../../layui/css/layui.css">
<link rel="stylesheet" href="../../css/jquery.toast.css">
<script type="text/javascript" src="../../js/jquery.toast.js"></script>
<link rel="stylesheet" href="../../css/login.css">

<body>
<div class="layui-carousel video_mask" id="login_carousel">
    <div carousel-item>
        <div class="carousel_div1"></div>
        <div class="carousel_div2"></div>
        <div class="carousel_div3"></div>
    </div>

    <div class="login layui-anim layui-anim-up">
        <fieldset class="layui-elem-field layui-field-title">
            <legend class="text-white">登录</legend>
        </fieldset>
        <div class="layui-form" action="" method="post">
            <form action="/gologin.html" method="post">
                <div class="layui-form-item">
                    <input type="text" id="account" lay-verify="required|account" maxlength="20"
                           placeholder="请输入登录账号/手机/邮箱"
                           autocomplete="off" autofocus="autofocus" class="layui-input" name="account">
                </div>

                <div class="layui-form-item">
                    <input type="password" id="password" lay-verify="required" maxlength="20" placeholder="请输入密码"
                           autocomplete="off" class="layui-input" name="password">
                </div>

                <button class="login_btn layui-btn layui-btn-radius layui-btn-normal" lay-submit lay-filter="login" onblur="f()">登录
                </button>
            </form>
            <strong class="text-white">还没有账号？ <a href="/register.html"
                                                 style="color: cornflowerblue;">立即注册&raquo;</a></strong>
        </div>
        <a href="/forget.html"
           style="color: cornflowerblue;">忘记密码&raquo;</a>

        <input type="hidden" value="${error}" id="error">

        <hr class="layui-bg-gray">
        <div class="layui-footer text-white">
            <!-- 底部固定区域 -->
            &copy;1998-2100 本熊科技有限公司版权所有
        </div>
    </div>
</div>

<script type="text/javascript" src="../../layui/layui.all.js"></script>
<script type="text/javascript" src="../../js/login.js"></script>
</body>
