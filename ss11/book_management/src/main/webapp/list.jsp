<%--
  Created by IntelliJ IDEA.
  User: anhda
  Date: 4/13/2023
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
</head>
<body>
<h3 class="text-center"><a href="/book">Danh sách sách</a></h3>
<p class="text-center my-3"><a href="/book?action=create">
  <button class="btn btn-info btn-sm">+ Thêm sản phẩm mới</button>
</a>
</p>

<form action="/book" class="text-center" method="post">
  <input type="text" name="titleSearch" placeholder="Nhập tên sách">
  <button type="submit" name="action" value="search" class="btn btn-secondary btn-sm">Tim kiếm</button>
</form>

<table class="table table-striped ms-5" style="width: 95%" border="1">
  <tr>
    <th>No</th>
    <th>Tiêu đề sách</th>
    <th>Số trang</th>
    <th>Tác giả</th>
    <th>Loại sách</th>
  </tr>
  <c:forEach var="book" items="${bookList}">
        <tr>
            <td>${book.id}</td>
            <td>${book.title}</td>
            <td>${book.pageSize}</td>
            <td>${book.author}</td>
            <td>${book.category}</td>
            <td><a href="/book?action=update&id=${book.id}">
                <button class="btn btn-primary btn-sm">Chỉnh sửa</button>
            </a></td>
            <td><a href="/book?action=delete&id=${product.id}">
                <button class="btn btn-danger btn-sm">Xóa</button>
            </a></td>
            <td><a href="/book?action=view&id=${product.id}">
                <button class="btn btn-success btn-sm">Thông tin</button>
            </a></td>
        </tr>
  </c:forEach>
</table>

</body>
</html>
