<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fm" %>
<script type="text/javascript" src="../../../js/jquery-1.8.3.min.js" charset="UTF-8"></script>
<link rel="stylesheet" href="../../../css/jquery.toast.css">
<script type="text/javascript" src="../../../js/jquery.toast.js"></script>
<script type="text/javascript" src="../../../js/register.js" charset="UTF-8"></script>

<h1>短信认证页面</h1>

<div>
    <input type="text" class="layui-input" name="phone"
           placeholder="请输入电话号码" required=""/>
</div>

<div>
    <button class="btn btn-success" onclick="f()">获取验证码</button>
</div>

<form action="/SMSHcode.html" method="post">
    <div class="code">

        <input type="text" class="layui-input" name="code"
               placeholder="请输入验证码" required=""/>
    </div>
    <button type="submit">提交</button>
</form>
<span>${error}</span>