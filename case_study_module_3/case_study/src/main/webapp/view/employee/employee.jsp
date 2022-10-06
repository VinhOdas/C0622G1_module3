<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="../bootstrap520/css/bootstrap.min.css"/>
<link rel="stylesheet" href="../datatables/css/dataTables.bootstrap5.min.css"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>

    <div class="container-fluid" style="margin-top: 10px">
        <div class="container bg">
            <nav class="navbar navbar-light bg-black">
                <div class="container-fluid" style="height: 120px; line-height: 120px;margin-top: -10px">
                    <a class="navbar-brand" href="/home">
                        <img src="../../image/logo_furama.png" alt="" width="80" height="100"
                             class="d-inline-block align-content-center">
                    </a>
                    <strong style="color: white; font-family: 'Lucida Sans'; font-size: 20px; margin-right: 0px">Phạm
                        Quang Vinh</strong>
                </div>
            </nav>
        </div>
    </div>
    <div class="container-fluid" style="margin-top: 10px">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light ">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/home">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/employee?action=list">Danh sách
                                    nhân viên</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/customer">Customer</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/service">Service</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/employee?action=add">Thêm mới nhân
                                    viên</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Contact</a>
                            </li>
                        </ul>
                        <form class="d-flex">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"
                                   style="line-height: 35px; height: 35px">
                            <button class="btn btn-outline-success" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <div class="container-fluid">
        <div class="container"></div>
    </div>
    <div>
        <center>
            <table border="2" id="tableemployee" >
                <thead>
                <tr>
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
                    <th>ACTION</th>
                </tr>
                </thead>
                <tbody>
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
                        <td>

                                <%--                   <a href="/users?action=edit&id=${user.id}">Edit</a>--%>
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#quangVinh_Edit${data.idEmployee}">
                                Edit
                            </button>


                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#quangVinh${data.idEmployee}">
                                Xoá
                            </button>

                            <div class="modal fade " id="quangVinh${data.idEmployee}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog ">
                                    <div class="modal-content bg-dark">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            Bạn có muốn xóa <strong class="text-danger">${data.getNameEmployee()}</strong>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                            <a href="employee?action=delete&id=${data.idEmployee}" class="btn btn-danger">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade " id="quangVinh_Edit${data.idEmployee}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog ">
                                    <div class="modal-content bg-dark">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel_Edit">Modal title</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            Bạn có muốn xóa <strong class="text-danger">${data.getNameEmployee()}</strong>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                            <a href="employee?action=edit&id=${data.idEmployee}" class="btn btn-danger">Edit</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                </c:forEach>
                </tbody>

            </table>
        </center>
    </div>
</div>

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

<script>
    $(document).ready(function () {
        $('#tableemployee').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5,
        });
    });
</script>


</body>
</html>
