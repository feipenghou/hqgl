<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@page import="com.hqgl.hib.po.Kehu" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <script type="text/javascript">
        function del() {
            if (confirm("确定删除吗？")) {
                return true;
            }
            return false;
        }
    </script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"
      style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">
<div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:&gt;<strong>&gt;查看/编辑客户信息</strong></div>
<table width="740" border="1" align="center" cellspacing="0" bordercolor="#f2c7da"
       style="border-collapse: collapse;margin-top:0px; font-size:12px;">
    <tr height="30">
        <td colspan="6" align="center" style="font-size:12px;font-weight:bold;">客户信息浏览</td>
    </tr>
    <tr height="40" align="center" style="font-size:12px;">
        <td width="90">客户编号</td>
        <td width="90">客户姓名</td>
        <td width="70">客户性别</td>
        <td width="80">联系电话</td>
        <td width="100">电子邮箱</td>
        <td width="90">操作</td>
    </tr>
    <%
        List customertiaojianlist = (List) session.getAttribute("kehulist");
        String str = (String) request.getParameter("page");
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
                Kehu kehu = (Kehu) customertiaojianlist.get(i);
    %>
    <tr height="40" align="center">
        <td width="90"><%=kehu.getKNumber()%>
        </td>
        <td width="90"><%=kehu.getKName()%>
        </td>
        <td width="70"><%=kehu.getKSex()%>
        </td>
        <td width="80"><%=kehu.getKPhone() %>
        </td>
        <td width="100"><%=kehu.getKEmail() %>
        </td>
        <td width="110">
            <a href="kehujuti.action?KNumber=<%=kehu.getKNumber()%> ">[查看]</a>
            <a href="updatekehuid.action?KNumber=<%=kehu.getKNumber()%>  ">[修改]</a>
            <a href="detelekehu.action?KNumber=<%=kehu.getKNumber()%> " onclick="return del()">[删除]</a>
        </td>
    </tr>
    <%
        }
    } else {
        for (int i = 0; i < ((((currentPage - 1) * pagesize + pagesize) / customertiaojianlist.size() > 0) ? (customertiaojianlist.size()) : ((currentPage - 1) * pagesize + pagesize)); i++) {
            Kehu kehu = (Kehu) customertiaojianlist.get(i);
    %>
    <tr height="40" align="center">
        <td width="90"><%=kehu.getKNumber()%>
        </td>
        <td width="90"><%=kehu.getKName()%>
        </td>
        <td width="70"><%=kehu.getKSex()%>
        </td>
        <td width="80"><%=kehu.getKPhone() %>
        </td>
        <td width="100"><%=kehu.getKEmail() %>
        </td>
        <td width="110">
            <a href="kehujuti.action?KNumber=<%=kehu.getKNumber()%> ">[查看]</a>
            <a href="updatekehuid.action?KNumber=<%=kehu.getKNumber()%>  ">[修改]</a>
            <a href="detelekehu.action?KNumber=<%=kehu.getKNumber()%> " onclick="return del()">[删除]</a>
        </td>
    </tr>
    <%
            }
        }

    %>
    <tr style="font-size:12px; height:50px;text-align:center;">
        <td colspan="12">共&nbsp;<font size="2px" color=red><%=recordCount %>
        </font>&nbsp;条记录&nbsp;&nbsp;当前页数【<%=currentPage %>/<%=maxPage %>】
            <a href="kehumanage.action?page=1">首页</a>&nbsp;&nbsp;
            <a href="kehumanage.action?page=<%=currentPage-1%>">上一页</a>&nbsp;&nbsp;
            <%
                for (int j = 1; j <= maxPage; j++) {
                    out.print("&nbsp;&nbsp;<a href='kehumanage.action?page=" + j + "'><span class=STYLE20>" + j + "</span></a>&nbsp;&nbsp;");
                }
            %>
            <a href="kehumanage.action?page=<%=currentPage+1%>">下一页</a>&nbsp;&nbsp;
            <a href="kehumanage.action?page=<%=maxPage%>">最后一页</a></td>
    </tr>
</table>
</body>
</html>

