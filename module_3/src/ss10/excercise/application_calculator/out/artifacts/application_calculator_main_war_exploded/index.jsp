<%--
  Created by IntelliJ IDEA.
  User: Vinho
  Date: 9/29/2022
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
    <title>Ứng dụng Calculator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>

  </head>
  <body>
  <form>
    <fieldset>
      <legend>Calculator</legend>
      <label for="operandFirst">First operand: </label>
      <input type="text" name="operandFirst" id="operandFirst">
      <br>
      <label for="operator">Operator</label>
      <select name="operator" id="operator">
        <option value="+">+</option>
        <option value="-">-</option>
        <option value="*">*</option>
        <option value="/">/</option>
      </select>
      <br>
      <label for="operandSecond">Second operand: </label>
      <input type="text" name="operandSecond" id="operandSecond">
      <br>
      <div class="submit">
        <input type="submit" value="Calculate">
      </div>
    </fieldset>
  </form>

  <h1>Result: ${result}</h1>
  </body>

</html>
