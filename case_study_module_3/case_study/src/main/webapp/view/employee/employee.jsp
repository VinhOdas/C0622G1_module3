
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="../../bootstrap520/css/bootstrap.min.css"/>
<link rel="stylesheet" href="../../bootstrap520/js/bootstrap.min.js">
<link rel="stylesheet" href="../../datatables/css/dataTables.bootstrap5.min.css"/>
<link rel="stylesheet" href="../../bootstrap520/css/bootstrap-grid.min.css">
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
                    <strong style="color: white; font-family: 'Lucida Sans'; font-size: 20px; margin-right: 0px">Phạm Quang Vinh</strong>
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
                                <a class="nav-link active" aria-current="page" href="/home" >Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/employee?action=list" >Danh sách nhân viên</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/customer" >Customer</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/service" >Service</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/employee?action=add" >Thêm mới nhân viên</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#" >Contact</a>
                            </li>
                        </ul>
                        <form class="d-flex">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" style="line-height: 35px; height: 35px">
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
            <table border="2" >
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
                    <th>ACTION</th>
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
                        <td>
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#quangVinh_Edit${data.getIdEmployee()}">
                                Edit
                            </button>
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#quangVinh${data.getIdEmployee()}">
                                Xoá
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </center>
    </div>
</div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>


</body>
</html>
