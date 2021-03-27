<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="com.hqgl.hib.po.User" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>My JSP 'header.jsp' starting page</title>
    <link rel="stylesheet" href="css/admin.css" type="text/css"></link>
</head>

<body>
<%
    List userslist = (List) session.getAttribute("loginlist");
    if (userslist == null) {
        response.sendRedirect("login.jsp");
    } else {
        User user = (User) userslist.get(0);
%>
<table cellSpacing=0 cellPadding=0 width="100%" background="image/d.jpg" border=0 height="200">
    <tr height="200">
        <td></td>
    </tr>
</table>
<table cellSpacing=0 cellPadding=0 width="100%" border=0 height="30">
    <tr height="30" style="background-color:#F2C7DA">
        <td style="FONT-WEIGHT: bold; float:right;line-height:30px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前用户：<%=user.getName()%>&nbsp;你好,欢迎进入!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


        </td>
        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td style="FONT-WEIGHT: bold; float:right;line-height:30px;">
            <a href="ptnotice1.action" target="main">主页</a>
            <a href="javascript:window.location.replace(location)" target="main">刷新</a>
            <a href="javascript:history.go(1);">前进</a>
            <a href="javascript:history.go(-1);">后退</a>
            <a style="COLOR: #A02D48"
               onclick="if (confirm('确定要退出吗？')) return true; else return false;"
               href="" target=_top>退出系统</a>&nbsp;&nbsp;&nbsp;&nbsp;

        </td>
    </tr>
</table>
<%}%>
</body>
</html>