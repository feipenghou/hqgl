<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <title>My JSP 'gonggao_one.jsp' starting page</title>
    <style>
        table {
            font-size: 12px;
            margin-top: 10px;
            border-right: #f2c7da 1px solid;
            border-bottom: #f2c7da 1px solid;
        }

        table td {
            border-top: #f2c7da 1px solid;
            border-left: #f2c7da 1px solid;
        }
    </style>

</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">
<div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:<strong>&gt;&gt;添加留言</strong></div>
<form action="../mess_add.action" method="post">
    <table width="85%" cellspacing="0" align="center">
        <tr style="height:30px;">
            <td align="center" style="font-size:12px;">
                添加留言
            </td>
        </tr>
        <tr height="30">
            <td style=" font-size:12px;padding-left:23px;" align="left">
                留言人:<input type="text" name="livep" style="width:150px;"/>
            </td>
        </tr>
        <tr height="20">
            <td height="200" style=" font-size:12px;padding:10px 25px 0px 25px; ">
                留言内容：<br><textarea name="livecon" style="width:80%;height:200px;font-size:12px;line-height:30px;"></textarea>
            </td>
        </tr>
        <tr>
            <td style=" font-size:12px;padding-right:23px;" align="right">
                接受人:<input type="text" name="liveh" style="width:150px;"/></td>
        </tr>
        <tr height="30">
            <td align="right">
                <input type="submit" style=" height:25px;" value="提交"/>
                <input type="reset" style=" height:25px;" value="重置"/>
            </td>
        </tr>
    </table>
    <br>
</body>
</html>
