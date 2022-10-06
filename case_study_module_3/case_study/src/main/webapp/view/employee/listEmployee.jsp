<%--
  Created by IntelliJ IDEA.
  User: Vinho
  Date: 10/6/2022
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Hiển thị nhân viên</title>
</head>
<body>
<center>
    <table border="1" >
        <tr >
            <th>ID</th>
            <th>NAME</th>
            <th>BIRTH DAY</th>
            <th>ID CARD</th>
            <th>SALARY</th>
            <th>PHONE NUMBER</th>
            <th>EMAIL</th>
            <th>ADDRESS</th>
            <th>ID POSITION</th>
            <th>ID EDUCATION DEGREE</th>
            <th>ID DIVISION</th>
            <th>ID USERNAME</th>
        </tr>
        <c:forEach var="data" items="${listEmployee}">
            <tr>
                <td><c:out value="${data.getIdEmployee()}"/></td>
                <td><c:out value="${data.getNameEmployee()}"/></td>
                <td><c:out value="${data.getBirthDay()}"/></td>
                <td><c:out value="${data.getIdCardEmployee()}"/></td>
                <td><c:out value="${data.getSalaryEmployee()}"/></td>
                <td><c:out value="${data.getPhoneNumberEmployee()}"/></td>
                <td><c:out value="${data.getEmailEmployee()}"/></td>
                <td><c:out value="${data.getAddressEmployee()}"/></td>
                <td><c:out value="${data.getIdPosition()}"/></td>
                <td><c:out value="${data.getIdEducationDegree()}"/></td>
                <td><c:out value="${data.getIdDivision()}"/></td>
                <td><c:out value="${data.getUserName()}"/></td>
            </tr>
        </c:forEach>
    </table>
</center>

</body>
</html>
