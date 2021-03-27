<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="com.hqgl.hib.po.User" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>admin_cha.jsp</title>
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
        .image {
            width: 130px;
            height: 160px;
            overflow: hidden;
        }
    </style>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">
<div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:&gt;<strong>&gt;详细管理员资料</strong></div>
<%
    List list = (List) session.getAttribute("adminlist");
    User user = (User) list.get(0);
%>
<table width="85%" cellspacing="0" align="center">
    <tr>
        <td colspan="20" align="center" style="font-size:12px; height:35px;">详细管理员资料信息</td>
    </tr>
    <tr>
        <td width="15%" height="30" align="center">编号：</td>
        <td style="padding-left:20px;background-color:#cccccc;"><%=user.getId()%></td>
        <td width="10%" height="30" align="center">姓名：</td>
        <td width="10%" style="padding-left:5px;"><%=user.getName() %></td>
        <td width="10%" rowspan="6" align="center">
            <div class="image">
                <image src="upload/<%=user.getPhoto()%>"></image>
            </div>
        </td>
    </tr>
    <tr>
        <td width="10%" height="30" align="center">性别：</td>
        <td width="10%"><%=user.getSex()%></td>
        <td width="10%" height="30" align="center">出生日期：</td>
        <td width="10%"><%=user.getBirthday()%></td>
    </tr>
    <tr>
        <td width="15%" height="30" align="center">民族：</td>
        <td width="10%" style="padding-left:5px;"><%=user.getMinzu() %></td>
        <td width="10%" height="30" align="center">学历：</td>
        <td width="10%" style="padding-left:5px;"><%=user.getXueli()%></td>
    </tr>
    <tr>
        <td width="15%" height="30" align="center">密码：</td>
        <td width="10%" style="padding-left:5px;"><%=user.getPass()%></td>
        <td width="10%" height="30" align="center">身份证号：</td>
        <td width="10%" style="padding-left:5px;"><%=user.getShengfen()%></td>
    </tr>
    <tr>
        <td width="15%" height="30" align="center">联系电话：</td>
        <td width="10%" style="padding-left:5px;"><%=user.getPhone()%></td>
        <td width="10%" height="30" align="center">电子邮箱：</td>
        <td width="10%" style="padding-left:5px;"><%=user.getEmail()%></td>
    </tr>
    <tr>
        <td width="15%" height="30" align="center">家庭住址：</td>
        <td width="10%" style="padding-left:5px;"><%=user.getAddress() %></td>
        <td width="10%" height="30" align="center">QQ：</td>
        <td width="10%" style="padding-left:5px;"><%=user.getQq()%></td>
    </tr>
    <tr>
        <td width="15%" height="100" align="center">个人简介：</td>
        <td height="100" colspan="4" style="padding-left:10px;"><%=user.getJianjie()%></td>
    </tr>
    <tr height="30px">
        <td colspan="15" align="center">
            <input type="button" onClick="location='admin_display.action'" style=" height:23px; width:50px;" value="返回">
        </td>
    </tr>
</table>
</body>
</html>
