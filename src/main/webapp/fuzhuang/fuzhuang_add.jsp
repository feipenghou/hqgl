<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>fuzhuang_add.jsp</title>
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
<div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:&gt;<strong>&gt;添加礼服</strong></div>
<form action="upload.action" method="post" enctype="multipart/form-data">
    <table width="80%" cellspacing="0" align="center">
        <tr>
            <td colspan="20" align="center" style="font-size:12px; height:35px;">添加礼服</td>
        </tr>
        <tr>
            <td width="10%" height="35" align="center">礼服类型：</td>
            <td width="35%" style="padding-left:10px;"><select name="type">
                <option value="婚纱服">婚纱服</option>
                <option value="龙凤服">龙凤服</option>
                <option value="晚礼服">晚礼服</option>
                <option value="和服">和服</option>
                <option value="西服">西服</option>
                <option value="燕尾服">燕尾服</option>
            </select></td>
        </tr>
        <tr>
            <td width="10%" height="35" align="center">礼服颜色：</td>
            <td>
                <input type="radio" name="photo" value="白色" checked="checked"/>白色
                <input type="radio" name="photo" value="红色"/>红色
                <input type="radio" name="photo" value="粉色"/>粉色
                <input type="radio" name="photo" value="蓝色"/>蓝色
                <input type="radio" name="photo" value="紫色"/>紫色
                <input type="radio" name="photo" value="黑色"/>黑色
                <input type="radio" name="photo" value="黄色"/>黄色
                <input type="radio" name="photo" value="绿色"/>绿色
            </td>
        </tr>
        <tr>
            <td width="10%" height="35" align="center">礼服简介：</td>
            <td style="padding-left:10px;">
                <textarea name="jianjie" style="width:490px;height:100px;font-size:12px;line-height:25px;"></textarea>
            </td>
        </tr>
        <tr>
            <td width="10%" height="35" align="center">礼服尺码：</td>
            <td>
                <input type="radio" name="lipin" value="S" checked="checked"/>S
                <input type="radio" name="lipin" value="M"/>M
                <input type="radio" name="lipin" value="L"/>L
                <input type="radio" name="lipin" value="XL"/>XL
                <input type="radio" name="lipin" value="XXL"/>XXL
            </td>
        </tr>
        <tr>
            <td width="10%" height="35" align="center">礼服图片：</td>
            <td style="padding-left:10px;">
                <input style="width:450px; height:25px;" type="file" name="upload"/>
            </td>
        </tr>
        <tr>
            <td width="10%" height="35" align="center">礼服价格：</td>
            <td style="padding-left:10px;"><input type="text" size="4" name="money">人民币</td>
        </tr>
        <tr height="30px">
            <td colspan="15" align="center">
                <input type="submit" style=" height:23px; width:50px;" value="添加">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
