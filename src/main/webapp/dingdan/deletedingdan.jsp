<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@page import="com.hqgl.hib.po.Dingdan" %>
<%@page import="com.hqgl.hib.po.Tuidang" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
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
<div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:<strong>&gt;&gt;拒绝订单信息填写</strong></div>
<%
    List kehujutilist = (List) session.getAttribute("dingdanjutilist");
    Dingdan dingdan = (Dingdan) kehujutilist.get(0);
%>
<form action="deletedingdan.action" method="post">
    <table width="85%" cellspacing="0" align="center">
        <tr>
            <td height="40" colspan="8" align="center"><span class="b">订单详细资料</span></td>
        </tr>
        <tr>
            <td width="9%" height="44" style="font-size:12px;" align="center">订单编号</td>
            <td width="11%" height="44" style="font-size:12px;" align="left"><input type="hidden" name="TNumber"
                                                                                    value="<%=dingdan.getDNumber() %>"><%=dingdan.getDNumber() %>
            </td>
            <td width="10%" height="44" style="font-size:12px;" align="center">预约人姓名</td>
            <td width="16%" height="44" style="font-size:12px;" align="left"><input type="hidden" name="TName"
                                                                                    value="<%=dingdan.getDName() %>"><%=dingdan.getDName() %>
            </td>
        </tr>
        <tr>
            <td width="11%" style="font-size:12px;" align="center">预约人性别</td>
            <td width="13%" height="44" style="font-size:12px;" align="left"><input type="hidden" name="TSex"
                                                                                    value="<%=dingdan.getDSex() %>"><%=dingdan.getDSex()%>
            </td>
            <td height="44" align="center" style="font-size:12px;">身份证号</td>
            <td width="18%" height="44" style="font-size:12px;" align="left"><input type="hidden" name="TCareid"
                                                                                    value="<%=dingdan.getDCareid() %>"><%=dingdan.getDCareid()%>
            </td>
        </tr>
        <tr>
            <td width="11%" style="font-size:12px;" align="center">结婚日期</td>
            <td width="18%" height="44" style="font-size:12px;" align="left"><input type="hidden" name="TDate"
                                                                                    value="<%=dingdan.getDRiqi() %>"><%=dingdan.getDRiqi() %>
            </td>
            <td height="44" align="center" style="font-size:12px;">联系电话</td>
            <td width="18%" height="44" style="font-size:12px;" align="left"><input type="hidden" name="TPhone"
                                                                                    value="<%=dingdan.getDPhone() %>"><%=dingdan.getDPhone()%>
            </td>
        </tr>
        <tr>
            <td height="44" align="center" style="font-size:12px;">家庭住址</td>
            <td height="44" colspan="1" style="font-size:12px;" align="left"><input type="hidden" name="TAddress"
                                                                                    value="<%=dingdan.getDAddress() %>"><%=dingdan.getDAddress() %>
            </td>
            <td height="44" align="center" style="font-size:12px;">电子邮箱</td>
            <td height="44" width="16%" style="font-size:12px;" align="left"><input type="hidden" name="TEmail"
                                                                                    value="<%=dingdan.getDEmail() %>"><%=dingdan.getDEmail()%>
            </td>

        </tr>
        <tr>
            <td align="center" height="30" style="font-size:12px;">
                备注
            </td>
            <td colspan="3">
                <textarea name="TBeizhu" style="height:60px;width:450px;"></textarea>
            </td>
        </tr>
        <tr height="40">
            <td align="center" height="30" colspan="4">
                <input type="submit" value="确定" style="height: 25px;"/>
                <input type="reset" value="重置" style="height: 25px;"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
