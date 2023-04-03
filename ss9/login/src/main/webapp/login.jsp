<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>

    </style>
</head>
<body>
<br/>
<form action="/login" method="post">
    <div>
        <div class="login">
            <h2>Login</h2>
            <h3 style="margin-top: 20px">${messengerLogin}</h3>
            <div class="input-group" style="margin: 77px 0 33px;text-indent: 31px">
                <label for="use-name">Use name </label>
                <input type="text" style="margin: 0 45px 0 18px;border-radius: 3px;"
                       class="form-control" name="useName" id="use-name" placeholder="Input User name">
            </div>
            <div class="input-group" style="text-indent: 31px">
                <label for="password">Password</label>
                <input type="password" style="margin: 0 45px 0 21px; border-radius: 3px;"
                       class="form-control" name="password" id="password" placeholder="Input your password">
            </div>
            <button type="submit" class="btn btn-primary" style="margin: 26px">Submit</button>
        </div>
    </div>
</form>

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