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
    <c:forEach item="${list}" var="a" varStatus="loop">
        <tr>
            <td>${loop.count}</td>
            <td>${a.name}</td>
            <td>
                <c:if test="${a.gioiTinh == 0}">Nam</c:if>
                <c:if test="${a.gioiTinh == 1}">Nữ</c:if>
            </td>
            <td>
                <c:choose>
                    <c:when test="${a.diem >= 90}">Giỏi</c:when>
                    <c:when test="${a.diem >= 80}">Khá</c:when>
                    <c:when test="${a.diem >= 60}">Trung bình</c:when>
                    <c:when test="${a.diem < 60}">Yếu</c:when>
                    <c:otherwise>
                        Danh sách rỗng
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>

    </c:forEach>
    </tbody>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>