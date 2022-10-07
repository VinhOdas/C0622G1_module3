<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>The Furama Resort</title>
</head>
<body>
<center>
    <h2>Edit Employee</h2>
    <form action="/employee?action=edit" method="post">
        <table border="1px">
            <input type="hidden" name="idEmployee" value="${employee.idEmployee}">
            <tr>
                <td>
                    <pre>Name:</pre>
                </td>
                <td><input type="text" name="nameEmployee" value="${employee.nameEmployee}"></td>
            </tr>
            <tr>
                <td>
                    <pre>Birthday:</pre>
                </td>
                <td><input type="text" name="birthDay" value="${employee.birthDay}"></td>
            </tr>
            </tr>
            <tr>
                <td>
                    <pre>ID Card:  </pre>
                </td>
                <td><input type="text" name="idCardEmployee" value="${employee.idCardEmployee}"></td>
            </tr>
            </tr>
            <tr>
                <td>
                    <pre>Salary:  </pre>
                </td>
                <td><input type="text" name="salaryEmployee" value="${employee.salaryEmployee}"></td>
            </tr>
            <tr>
                <td>
                    <pre>Phone Number:</pre>
                </td>
                <td><input type="text" name="phoneNumberEmployee" value="${employee.phoneNumberEmployee}"></td>
            </tr>
            <tr>
                <td>
                    <pre>Email:</pre>
                </td>
                <td><input type="text" name="emailEmployee" value="${employee.emailEmployee}"></td>
            </tr>
            <tr>
                <td>
                    <pre>Address:</pre>
                </td>
                <td><input type="text" name="addressEmployee" value="${employee.addressEmployee}"></td>
            </tr>
            <tr>
                <td>
                    <pre>Position:</pre>
                </td>
                <td>
                    <select name="idPosition">
                        <option value="1">Lễ Tân</option>
                        <option value="2">Phục Vụ</option>
                        <option value="3">Chuyên Viên</option>
                        <option value="4">Giám sát</option>
                        <option value="5">Quản lí</option>
                        <option value="6">Giám Đốc</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <pre>Education:</pre>
                </td>
                <td><select name="idEducationDegree">
                    <option value="1">Trung Cấp</option>
                    <option value="2">Cao Đẳng</option>
                    <option value="3">Đại Học</option>
                    <option value="4">Sau Đại Học</option>
                </select></td>
            </tr>

            <tr>
                <td>
                    <pre>Division:</pre>
                </td>
                <td><select name="idDivision">
                    <option value="1">Sale-Marketing</option>
                    <option value="2">Hành chính</option>
                    <option value="3">Phục vụ</option>
                    <option value="4">Quản lý</option>
                </select></td>
            </tr>
            <tr>
                <td>
                    <pre>Username:</pre>
                </td>
                <td><input type="text" name="username" value="${employee.userName}"></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"/></td>
            </tr>
        </table>
    </form>
    <a href="/employee?action=list">
        <button type="button">Back List Employees</button>
    </a>
</center>
</body>
</html>