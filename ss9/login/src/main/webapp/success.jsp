<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: anhda
  Date: 4/3/2023
  Time: 10:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="modelTitleId">Login Successfully</h4>
            </div>
            <div class="modal-body">
                <p>Admin successfully logged in</p>
                <p>Today's date: <%= (new Date()).toString() %> </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<script src="js/bootstrap.bundle.js"></script>
<script>
    let myModal = new bootstrap.Modal(document.getElementById('modelId'), {
        keyboard: false
    })
    myModal.show();
</script>
</body>
</html>
