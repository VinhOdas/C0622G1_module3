<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Employee Application</title>
</head>
<body>
<center>
    <h1>Employee Management</h1>
    <h2>
        <a href="/customer">List All Customer</a>
    </h2>
    <p>
        <c:if test="${mess != null}">
            <span>${mess}</span>
        </c:if>
    </p>
</center>
<div align="center">
    <form action="/customer?action=edit" method="post">
        <table border="1" cellpadding="5">
            <input type="hidden" name="idCustomer" value="${customer.idCustomer}">
            <caption>
                <h2>
                    Edit Customer
                </h2>
            </caption>
            <tr>
                <th>Customer Name:</th>
                <td>
                    <input type="text" name="nameCustomer" id="nameCustomer" value="${customer.nameCustomer}">
                </td>
            </tr>
            <tr>
                <th>Customer Date Of Birth:</th>
                <td>
                    <input type="text" name="birthDay" id="birthDay" size="45" value="${customer.birthDay}">
                </td>
            </tr>
            <tr>
                <th>Customer gender:</th>
                <td>
                    <input type="text" name="gender" id="gender" size="45" value="${customer.gender}">
                </td>
            </tr>
            <tr>
                <th>Customer idCard:</th>
                <td>
                    <input type="text" name="idCard" id="idCard" size="45" value="${customer.idCard}">
                </td>
            </tr>
            <tr>
                <th>Customer phone:</th>
                <td>
                    <input type="text" name="phone" id="phone" size="45" value="${customer.phone}">
                </td>
            </tr>
            <tr>
                <th>Customer email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45" value="${customer.email}">
                </td>
            </tr>
            <tr>
                <th>Customer address:</th>
                <td>
                    <input type="text" name="address" id="address" size="45" value="${customer.address}">
                </td>
            </tr>
            <tr>
                <th> customerTypeId:</th>
                <td>
                    <input type="text" name="customerTypeId" id="customerTypeId" size="45" value="${customer.customerTypeId}">
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
