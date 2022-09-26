<%--
  Created by IntelliJ IDEA.
  User: Vinho
  Date: 9/26/2022
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ứng dụng Product Discount Calculator</title>
</head>
<body>
<form action="/display" method="post">
    <input placeholder="Product Description:" type="text" name="product_description">
    <input placeholder="List Price" type="text" name="list_price">
    <input placeholder="Discount Percent" type="text" name="discount_percent">
    <input type="submit" id="submit" value="sadsa">
</form>

<h1> Mô tả sản phẩm: ${productDescription}</h1>

<h1> Giá niêm yết của sản phẩm: ${listPrice}</h1>

<h1> Tỷ lệ chiết khấu (phần trăm): ${discountPercent}</h1>

<h1> Lượng chiết khâu: ${discountAmount}</h1>

<h1> giá sau khi chiết khấu: ${discountPrice}</h1>
</body>
</html>
