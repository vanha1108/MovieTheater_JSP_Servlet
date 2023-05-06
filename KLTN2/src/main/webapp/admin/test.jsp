<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"https://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>jQuery, Ajax and Servlet/JSP integration example</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>

<form method="POST">
    Enter Your Name: <input type="text" id="userName"/>
</form>
<br>
<br>

<strong>Ajax Response</strong>:
<div id="ajaxGetUserServletResponse"></div>
</body>
<script>
    $(document).ready(function () {
        $('#userName').blur(function () {
            $.ajax({
                url: 'http://localhost:8080/KLTN_war_exploded/GetUserServlet',
                data: {
                    userName: $('#userName').val()
                },
                success: function (responseText) {
                    $('#ajaxGetUserServletResponse').text(responseText);
                }
            });
        });
    });
</script>
</html>