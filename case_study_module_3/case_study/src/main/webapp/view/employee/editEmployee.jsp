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
        <a href="/employee">List All Employee</a>
    </h2>
    <p>
        <c:if test="${mess != null}">
            <span>${mess}</span>
        </c:if>
    </p>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Employee
                </h2>
            </caption>
            <%--            <c:if test="${user != null}">--%>
            <%--                <input type="hidden" name="id" value="<c:out value='${user.id}' />"/>--%>
            <%--            </c:if>--%>
            <tr>
                <th>Employee Name:</th>
                <td>
                    <input type="text" name="nameEmployee" id="nameEmployee" size="45" value=${employee.nameEmployee}/>
                </td>
            </tr>
            <tr>
                <th>Employee Employee Date Of Birth:</th>
                <td>
                    <input type="text" name="birthDay" id="birthDay" size="45" value=${employee.birthDay}/>
                </td>
            </tr>
            <tr>
                <th>Employee Employee ID Card:</th>
                <td>
                    <input type="text" name="idCardEmployee" id="idCardEmployee" size="45" value=${employee.idCardEmployee}/>
                </td>
            </tr>
            <tr>
                <th>Employee Phone:</th>
                <td>
                    <input type="text" name="salaryEmployee" id="salaryEmployee" size="45" value=${employee.salaryEmployee}/>
                </td>
            </tr>
            <tr>
                <th>Employee Email:</th>
                <td>
                    <input type="text" name="phoneNumberEmployee" id="phoneNumberEmployee" size="45" value=${employee.phoneNumberEmployee}/>
                </td>
            </tr>
            <tr>
                <th>Employee Address:</th>
                <td>
                    <input type="text" name="emailEmployee" id="emailEmployee" size="45" value=${employee.emailEmployee}/>
                </td>
            </tr>
            <tr>
                <th>Employee Education_Degree:</th>
                <td>
                    <input type="text" name="addressEmployee" id="addressEmployee" size="45" value=${employee.addressEmployee}/>
                </td>
            </tr>
            <tr>
                <th>Employee Position:</th>
                <td>
                    <input type="text" name="idPosition" id="idPosition" size="45" value=${employee.idPosition}/>
                </td>
            </tr>
            <tr>
                <th>Employee Salary:</th>
                <td>
                    <input type="text" name="idEducationDegree" id="idEducationDegree" size="45" value=${employee.idEducationDegree}/>
                </td>
            </tr>
            <tr>
                <th>Employee Division:</th>
                <td>
                    <input type="text" name="idDivision" id="idDivision" size="45" value=${employee.idDivision}/>
                </td>
            </tr>
            <tr>
                <th>Employee Division:</th>
                <td>
                    <input type="text" name="division" id="userName" size="45" value=${employee.userName}/>
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
