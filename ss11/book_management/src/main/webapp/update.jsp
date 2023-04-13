<%--
  Created by IntelliJ IDEA.
  User: anhda
  Date: 4/11/2023
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3><a href="/book">Chỉnh sửa danh sách</a></h3>
<c:if test="${message!=null}">
    <p style="color: blue">${message}</p>
</c:if>
<form method="post">
    <pre>TITLE: <input type="text" value="${book.title}" name="title"></pre>
    <pre>PAGE SIZE: <input type="text" value="${book.pageSize}" name="pageSize"></pre>
    <pre>AUTHOR: <input type="text" value="${book.author}" name="author"></pre>
    <pre>CATEGORY: <input type="text" value="${book.category}" name="category"></pre>
    <pre><button style="background-color: dimgrey">Cập nhật</button></pre>
</form>
<a href="/book">Quay lại trang chính.</a>
</body>
</html>
