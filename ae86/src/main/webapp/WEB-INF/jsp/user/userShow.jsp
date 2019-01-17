<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fm" %>
<span>${user.nickName}</span>
<span>${user.sex.getGender()}</span>
<span>${user.phone}</span>
<span>${user.identityId}</span>