<%--
  Created by IntelliJ IDEA.
  User: Vinho
  Date: 10/3/2022
  Time: 9:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="../bootstrap520/css/bootstrap.min.css"/>
<link rel="stylesheet" href="../datatables/css/dataTables.bootstrap5.min.css"/>

<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>
    <form method="post" action="/users?action=searchCountry">
        <input name="country" type="text"  >
        <button type="submit">Search</button>
    </form>
</center>
<div align="center">
    <caption><h2>List of Users</h2></caption>
    <table id="user-table" class="table table-striped table-bordered"  style="width:100%">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        </thead>
       <tbody>
       <c:forEach var="user" items="${listUser}">
           <tr>
               <td><c:out value="${user.id}"/></td>
               <td><c:out value="${user.name}"/></td>
               <td><c:out value="${user.email}"/></td>
               <td><c:out value="${user.country}"/></td>
               <td>

<%--                   <a href="/users?action=edit&id=${user.id}">Edit</a>--%>
                   <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#quangVinh_Edit${user.id}">
                       Edit
                   </button>


                   <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#quangVinh${user.id}">
                       Xoá
                   </button>

    <div class="modal fade " id="quangVinh${user.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog ">
            <div class="modal-content bg-dark">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Bạn có muốn xóa <strong class="text-danger">${user.name}</strong>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <a href="users ?action=delete&id=${user.id}" class="btn btn-danger">Delete</a>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade " id="quangVinh_Edit${user.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog ">
            <div class="modal-content bg-dark">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel_Edit">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Bạn có muốn xóa <strong class="text-danger">${user.name}</strong>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <a href="users?action=edit&id=${user.id}" class="btn btn-danger">Edit</a>
                </div>
            </div>
        </div>
    </div>
               </td>
           </tr>
       </c:forEach>
       </tbody>

    </table>
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
    function doSth(){
        alert(document.getElementById("price").textContent);
    }
    $(document).ready(function () {
        $('#user-table').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
</script>
</body>

</html>
