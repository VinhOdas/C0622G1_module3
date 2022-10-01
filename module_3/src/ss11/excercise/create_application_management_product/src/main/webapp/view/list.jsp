<%--
  Created by IntelliJ IDEA.
  User: Vinho
  Date: 9/30/2022
  Time: 1:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Customers</h1>
<p>
    <a href="/product?action=create">Create new customer</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach  items='${requestScope["products"]}' var="data">
        <tr>
            <td><a href="/product?action=view&id=${data.getId()}">${data.getNameProduct()}</a></td>
            <td>${data.getPriceProduct()}</td>
            <td>${data.getProductDescription()}</td>
            <td>${data.getProducer()}</td>
            <td><a href="/product?action=edit&id=${data.getId()}">edit</a></td>
            <td><a href="/product?action=delete&id=${data.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
