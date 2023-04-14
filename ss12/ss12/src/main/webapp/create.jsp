<%--
  Created by IntelliJ IDEA.
  User: anhda
  Date: 4/13/2023
  Time: 10:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Thêm sách</title>
</head>
<body>
<h3><a href="/book">Thêm sách mới?</a></h3>
<c:if test="${message!=null}">
  <p style="color: green">${message}</p>
</c:if>
<form method="post">
  <pre>ID:        <span>${book.id}</span></pre>
  <pre>TITLE:     <span>${book.title}</span></pre>
  <pre>PAGE SIZE: <span>${book.paseSize}</span></pre>
  <pre>AUTHOR:    <span>${book.author}</span></pre>
  <pre>CATEGORY:  <span>${book.category}</span></pre>
  <pre>           <button style="background-color: orange">Thêm sản phẩm</button> </pre>
</form>
<a href="/book">Quay về trang chính</a>
</body>
</html>
