<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>login</title>
    <link rel="stylesheet" href="css/login.css" type="text/css"></link>
</head>
<body>
<div class="kuang">
    <div class="login">
        <form action="login.action" method="post">
            用户名：<input type="text" name="id" size="14" value="">
            <br><br>
            密&nbsp;&nbsp;&nbsp;码：<input type="password" name="pass" size="14" value="">
            <br><br>
            验证码：<input name="yanzhengma" type="text" id="yanzhengma" size="5">
            <img src="yanzheng.jsp" id="pic">
            <br><br>
            <input type="image" src="image/lu.jpg" style="height:29px;width:75px;"> &nbsp;&nbsp;
            <input type="image" src="image/zhi.jpg" style="height:29px;width:75px;">
        </form>
    </div>
</div>
</body>
</html>