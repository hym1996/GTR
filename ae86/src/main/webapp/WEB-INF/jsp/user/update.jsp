<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fm" %>
<h1>修改密码</h1>

<form action="/update.html">

    <div class="from-pcode">
        新密码<input type="password" name="password" class="newpaw" required="required"></td>
        <span class="showNewPasswordResult"></span>
    </div>

    <div class="from-pcode2">
        再次输入<input type="password" name="password2" class="newpaw" required="required"></td>
        <span class="showNewPasswordResult2"></span>
    </div>

    <button type="submit">提交</button>

</form>