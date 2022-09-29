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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
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