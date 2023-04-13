<%--
  Created by IntelliJ IDEA.
  User: anhda
  Date: 4/11/2023
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3><a href="/book">Xóa Danh Sách</a></h3>
<h4>Bạn có muốn xóa danh sách này?</h4>
<form method="post">
    <pre>ID:        <span>${book.id}</span></pre>
    <pre>TITLE:     <span>${book.title}</span></pre>
    <pre>PAGE SIZE: <span>${book.paseSize}</span></pre>
    <pre>AUTHOR:    <span>${book.author}</span></pre>
    <pre>CATEGORY:  <span>${book.category}</span></pre>
    <pre>           <button style="background-color: orange">Xóa sản phẩm</button> </pre>
</form>
<a href="/book">Quay lại trang chính</a>
</body>
</html>
