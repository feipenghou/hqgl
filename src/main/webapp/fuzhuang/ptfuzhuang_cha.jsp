<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="com.hqgl.hib.po.Fuzhuang" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>My JSP 'fuzhuang_cha.jsp' starting page</title>
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
            width: 180px;
            height: 160px;
            overflow: hidden;
        }
    </style>

</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"
      style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">
<div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:&gt;<strong>&gt;查看详细礼服信息</strong></div>
<%
    List list = (List) session.getAttribute("fuzhuanglist");
    Fuzhuang fuzhuang = (Fuzhuang) list.get(0);
%>
<table width="80%" cellspacing="0" align="center">
    <tr>
        <td colspan="8" align="center"
            style="font-size:12px; height:35px;">
            查看详细礼服信息
        </td>
    </tr>
    <tr>
        <td width="10%" height="35" align="center">礼服编号：</td>
        <td width="35%" style="padding-left:20px;"><%=fuzhuang.getId()%>
        </td>
        <td width="10%" height="35" align="center">礼服类型：</td>
        <td width="35%" style="padding-left:20px;"><%=fuzhuang.getType()%>
        </td>
    </tr>
    <tr>
        <td width="10%" height="35" align="center">礼服颜色：</td>
        <td width="35%" style="padding-left:20px;"><%=fuzhuang.getPhoto()%>
        </td>
        <td width="10%" height="35" align="center">礼服尺码：</td>
        <td width="35%" style="padding-left:20px;"><%=fuzhuang.getLipin()%>
        </td>
    </tr>
    <tr>
        <td width="10%" height="100" align="center">礼服介绍：</td>
        <td width="35%" style="padding-left:20px;"><%=fuzhuang.getJianjie()%></td>
        <td width="10%" height="35" align="center">礼服价格：</td>
        <td width="35%" style="padding-left:20px;"><%=fuzhuang.getMoney()%>人民币</td>
    </tr>
    <tr>
        <td width="10%" height="160" align="center">礼服图片：</td>
        <td colspan="4" style="padding-left:20px;">
            <div class="image">
                <image src="upload/<%=fuzhuang.getZhaopian()%>"/>
            </div>
        </td>
    </tr>
    <tr height="30px">
        <td colspan="4" align="center">
            <input type="button" onClick="location='ptfuzhuang_display.action'" style=" height:23px; width:50px;"
                   value="返回"></input>
    </tr>
</table>
<br>
</body>
</html>
