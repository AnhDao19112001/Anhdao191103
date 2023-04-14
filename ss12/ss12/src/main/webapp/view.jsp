<%--
  Created by IntelliJ IDEA.
  User: anhda
  Date: 4/5/2023
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View</title>
</head>
<body>
<h1>Book</h1>
<p>
    <a href="/book">Quay về trang chính</a>
</p>
<table>
    <tr>
        <td>Title: </td>
        <td>${requestScope["book"].getTitle()}</td>
    </tr>
    <tr>
        <td>Page Size: </td>
        <td>${requestScope["book"].getPageSize()}</td>
    </tr>
    <tr>
        <td>Author: </td>
        <td>${requestScope["book"].getAuthor()}</td>
    </tr>
    <tr>
        <td>Category: </td>
        <td>${requestScope["book"].getCategory()}</td>
    </tr>
</table>
</body>
</html>
