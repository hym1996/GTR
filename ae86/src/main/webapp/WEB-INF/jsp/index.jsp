<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fm" %>


<table>
    <c:forEach var="user" items="${users}" varStatus="status">
        <tr>
            <td>${user.account}</td>
            <td>${user.sex.gender}</td>
            <td>${user.type.type}</td>
            <td></td>b
        </tr>
    </c:forEach>
</table>

