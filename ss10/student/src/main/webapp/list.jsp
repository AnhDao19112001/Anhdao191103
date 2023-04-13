<%--
  Created by IntelliJ IDEA.
  User: anhda
  Date: 4/5/2023
  Time: 10:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <title>Title</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div>---DANH SÁCH HỌC VIÊN TRUNG TÂM CODEGYM---</div>
<p class="text-center text-danger p">${massage}</p>
<table class="table">
  <thead>
  <tr class="tr">
    <th style="width: 12%;">MÃ HỌC VIÊN:</th>
    <th>TÊN HỌC VIÊN:</th>
    <th>GIỚI TÍNH:</th>
    <th>ĐIỂM:</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${studentList}" var="a" varStatus="loop">
    <tr>
      <td>${loop.count}</td>
      <td>${a.name}</td>
      <td>
        <c:if test="${a.gender == 0}">Nam</c:if>
        <c:if test="${a.gender == 1}">Nữ</c:if>
      </td>
      <td>
        <c:choose>
          <c:when test="${a.score >= 9}">Giỏi</c:when>
          <c:when test="${a.score >= 8}">Khá</c:when>
          <c:when test="${a.score >= 6}">Trung bình</c:when>
          <c:when test="${a.score < 6}">Yếu</c:when>
          <c:otherwise>
            Danh sách rỗng
          </c:otherwise>
        </c:choose>
      </td>
    </tr>

  </c:forEach>
  </tbody>
</table>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>
