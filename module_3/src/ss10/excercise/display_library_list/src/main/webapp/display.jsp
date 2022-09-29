
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Hiển thị danh sách khách hàng </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>

</head>
<body> <h1>Danh sách khách hàng</h1>
<table class="table table-dark table-striped">

<tbody>
<tr>
    <td> STT </td>
    <td>ID</td>
    <td> Tên </td>
    <td> Ngày sinh </td>
    <td> Địa chỉ </td>
    <td> Ảnh </td>
</tr>
<c:forEach var="data" items="${listServlet}" varStatus="status" >
    <tr>
        <td>${status.count}</td>
        <td>${data.getId()}</td>
        <td>${data.getName()}</td>
        <td>${data.getBirthDay()}</td>
        <td>${data.getAddress()}</td>
        <td>
            <c:choose>
                <c:when test="${status.count == 1}">
                    <img style="width: 200px"; height="200px" src="image/cat_uyen.png">
                </c:when>
                <c:when test="${status.count == 2}">
                    <img style="width: 200px"; height="200px" src="image/cat_uyen.png">
                </c:when>
                <c:when test="${status.count == 3}">
                    <img style="width: 200px"; height="200px" src="image/cat_uyen.png">
                </c:when>
                <c:when test="${status.count == 4}">
                    <img style="width: 200px"; height="200px" src="image/cat_uyen.png">
                </c:when>
                <c:when test="${status.count == 5}">
                    <img style="width: 200px"; height="200px" src="image/cat_uyen.png">
                </c:when>
            </c:choose>
        </td>
    </tr>
</c:forEach>
</tbody>

</table>
</body>
</html>
