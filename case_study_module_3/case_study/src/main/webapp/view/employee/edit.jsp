<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>The Furama Resort</title>
    <link rel="stylesheet" href="../bootstrap520/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../datatables/css/dataTables.bootstrap5.min.css"/>
</head>
<body>
<center>
    <h2>Edit Employee</h2>
    <form action="/employee?action=edit" method="post">
        <table style="border-style:hidden;" width="200px" bgcolor="#c4e4cd">
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
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
</body>
</html>