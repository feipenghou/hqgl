<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@page import="com.hqgl.hib.po.Dingdan" %>
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
<div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:<strong>&gt;&gt;查看全部订单</strong></div>
<form method="post">
    <table width="85%" cellspacing="0" align="center">
        <tr height="30">
            <td colspan="7" align="center" style="font-size:12px;">订单信息浏览</td>
        </tr>
        <tr height="40" align="center" style="font-size:12px;">
            <td width="90">订单编号</td>
            <td width="90">预约人姓名</td>
            <td width="90">预约人性别</td>
            <td width="70">预约日期</td>
            <td width="80">联系电话</td>
            <td width="100">电子邮箱</td>
            <td width="90">操作</td>
        </tr>
        <%
            List customertiaojianlist = (List) session.getAttribute("dingdanlist");
            String str = request.getParameter("page");
            if (str == null || str.equals("")) {
                str = "0";
            }
            int pagesize = 4;
            int recordCount = customertiaojianlist.size();
            int maxPage = 0;
            maxPage = (recordCount % pagesize == 0) ? (recordCount / pagesize) : (recordCount / pagesize + 1);
            int currentPage = Integer.parseInt(str.trim());
            if (currentPage < 1) {
                currentPage = 1;
            } else {
                if (currentPage > maxPage) {
                    currentPage = maxPage;
                }
            }
            if (currentPage > 1) {
                for (int i = ((currentPage - 1) * pagesize); i < ((((currentPage - 1) * pagesize + pagesize) / customertiaojianlist.size() > 0) ? (customertiaojianlist.size()) : ((currentPage - 1) * pagesize + pagesize)); i++) {
                    Dingdan dingdan = (Dingdan) customertiaojianlist.get(i);
        %>
        <tr height="40" align="center">
            <td width="90"><%=dingdan.getDNumber()%>
            </td>
            <td width="90"><%=dingdan.getDName()%>
            </td>
            <td width="90"><%=dingdan.getDSex()%>
            </td>
            <td width="70"><%=dingdan.getDRiqi()%>
            </td>
            <td width="80"><%=dingdan.getDPhone() %>
            </td>
            <td width="100"><%=dingdan.getDEmail() %>
            </td>
            <td width="110">
                <a href="dingdanjuti.action?DNumber=<%=dingdan.getDNumber()%> ">[查看]</a>
            </td>
        </tr>
        <%
            }
        } else {
            for (int i = 0; i < ((((currentPage - 1) * pagesize + pagesize) / customertiaojianlist.size() > 0) ? (customertiaojianlist.size()) : ((currentPage - 1) * pagesize + pagesize)); i++) {
                Dingdan dingdan = (Dingdan) customertiaojianlist.get(i);
        %>
        <tr height="40" align="center">
            <td width="90"><%=dingdan.getDNumber()%>
            </td>
            <td width="90"><%=dingdan.getDName()%>
            </td>
            <td width="90"><%=dingdan.getDSex()%>
            </td>
            <td width="70"><%=dingdan.getDRiqi()%>
            </td>
            <td width="80"><%=dingdan.getDPhone() %>
            </td>
            <td width="100"><%=dingdan.getDEmail() %>
            </td>
            <td width="110">
                <a href="dingdanjuti.action?DNumber=<%=dingdan.getDNumber()%> ">[查看]</a>
            </td>
        </tr>
        <%
                }
            }

        %>
        <tr style="font-size:12px; height:50px;text-align:center;">
            <td colspan="12">共&nbsp;<font size="2px" color=red><%=recordCount %>
            </font>&nbsp;条记录&nbsp;&nbsp;当前页数【<%=currentPage %>/<%=maxPage %>】
                <a href="dingdanmanage.action?page=1">首页</a>&nbsp;&nbsp;
                <a href="dingdanmanage.action?page=<%=currentPage-1%>">上一页</a>&nbsp;&nbsp;
                <%
                    for (int j = 1; j <= maxPage; j++) {
                        out.print("&nbsp;&nbsp;<a href='dingdanmanage.action?page=" + j + "'><span class=STYLE20>" + j + "</span></a>&nbsp;&nbsp;");
                    }
                %>
                <a href="dingdanmanage.action?page=<%=currentPage+1%>">下一页</a>&nbsp;&nbsp;
                <a href="dingdanmanage.action?page=<%=maxPage%>">最后一页</a></td>
        </tr>
    </table>
</form>
</body>
</html>

