<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fm" %>
<link href="../../../css/userAdd.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="../../../js/jquery-1.8.3.min.js" charset="UTF-8"></script>
<link rel="stylesheet" href="../../../css/jquery.toast.css">
<script type="text/javascript" src="../../../js/jquery.toast.js"></script>
<script type="text/javascript" src="../../../js/userAdd.js" charset="UTF-8"></script>

<link rel="shortcut icon" href="../../../img/favicon.ico" type="image/x-icon"/>
<link rel="stylesheet" href="../../../layui/css/layui.css">
<link rel="stylesheet" href="../../../css/register.css">

<body style="background-image: url('../../../img/login-bg2.jpg');">
<form action="">
<div class="layui-main user">
    <div class="layui-clear main">
        <fieldset class="layui-elem-field layui-field-title">
            <legend class="text-white">用户注册</legend>
        </fieldset>
        <div class="layui-form layui-form-pane">
            <div class="layui-form">
                <div class="from-addSave" align="center">
                    <form action="/addSave.html" method="post" onsubmit="return noAdd()" class="layui-form-item">
                        <table class="addtable">
                            <tr>
                                <input class="layui-input" id="acc" name="account" onblur="accountcheck()"
                                       placeholder="请输入注册账号" type="text" required>
                            </tr>

                            <tr>
                                <input class="layui-input" id="paw" name="password" onblur="check()"
                                       placeholder="请输入注册密码" type="password" required>
                            </tr>

                            <tr>
                                <input class="layui-input" id="paw2" name="password2" onblur="pawEquals()"
                                       placeholder="请再次输入密码" type="password" required>
                            </tr>

                            <tr>
                                <input class="layui-input" id="nc" name="nickName" onblur="nickNamecheck()"
                                       placeholder="用户名称" type="text" required>
                            </tr>

                            <tr>
                                <select name="sex" lay-filter="city">
                                    <option value="男">男
                                    <option value="女">女
                                    <option value="其他">其他
                                </select>
                            </tr>

                            <tr>
                                <input class="layui-input" id="email" name="email" onblur="Emailcheck()"
                                       placeholder="邮箱" type="text" required>
                            </tr>

                            <tr>
                                <input class="layui-input" id="phone" name="phone" onblur="phonecheck()"
                                       placeholder="手机号码" type="text" required>
                            </tr>

                            <tr>
                                <input class="layui-input" id="identityId" name="identityId" onblur="isCardNo()"
                                       placeholder="身份证号" type="text" required>
                            </tr>

                            <tr class="layui-form-item" style="float: left;margin-left: -10px;">
                                <td>
                                    <input title="我同意" type="checkbox" checked>

                                </td>

                                <td>
                                    <a href="../agreement.html" target="_blank">《注册协议》</a>
                                </td>
                            </tr>
                        </table>

                        <button  type="submit" class="login_btn layui-btn layui-btn-radius layui-btn-normal" lay-submit >立即注册</button>
                    </form>
                    <div>
                        <small class="text-white">已经有账户了？</small>
                        <a href="../login2.html">点此登录</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
</body>
<script type="text/javascript" src="../../../layui/layui.all.js"></script>