<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fm" %>
<script type="text/javascript" src="../../../js/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="../../../js/register.js" charset="UTF-8"></script>

<h1>短信认证修改密码页面</h1>

<div>
    <input type="text" class="form-phone" name="phone"
           placeholder="请输入电话号码" required=""/>
</div>

<div>
    <button class="btn btn-success" onclick="p()">获取验证码</button>
</div>

<form action="/SMSPcode.html" method="post">
    <div class="code">

        <input type="text" class="form-code" name="code"
               placeholder="请输入验证码" required=""/>
    </div>
    <button type="submit">提交</button>
</form>

<span>${error}</span>