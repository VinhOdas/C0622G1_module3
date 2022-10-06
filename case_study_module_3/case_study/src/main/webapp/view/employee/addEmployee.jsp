<%--
  Created by IntelliJ IDEA.
  User: Vinho
  Date: 10/6/2022
  Time: 8:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Thêm mới</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/employee?action=list">List All Employee</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New Employee</h2>
            </caption>
            <tr>
                <th>Employee Name:</th>
                <td>
                    <input type="text" name="nameEmployee" id="nameEmployee" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee BirthDay:</th>
                <td>
                    <input type="text" name="birthDay" id="birthDay" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee idCardEmployee:</th>
                <td>
                    <input type="text" name="idCardEmployee" id="idCardEmployee" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee salaryEmployee:</th>
                <td>
                    <input type="text" name="salaryEmployee" id="salaryEmployee" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee phone:</th>
                <td>
                    <input type="text" name="phoneNumberEmployee" id="phoneNumberEmployee" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee email:</th>
                <td>
                    <input type="text" name="emailEmployee" id="emailEmployee" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee address:</th>
                <td>
                    <input type="text" name="addressEmployee" id="addressEmployee" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee idPosition:</th>
                <td>
                    <input type="text" name="idPosition" id="idPosition" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee idEducationDegree:</th>
                <td>
                    <input type="text" name="idEducationDegree" id="idEducationDegree" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee idDivision:</th>
                <td>
                    <input type="text" name="idDivision" id="idDivision" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee userName:</th>
                <td>
                    <input type="text" name="userName" id="userName" size="45"/>
                </td>
            </tr>


            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
