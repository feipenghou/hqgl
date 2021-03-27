<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="com.hqgl.hib.po.User" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title></title>
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
        table td a {
            TEXT-DECORATION: none;
        }
        table td a:link {
            color: #0033cc;
        }
        table td a:visited {
            color: #f2c7da;
        }
        table td a:hover {
            color: #990000;
            TEXT-DECORATION: none;
        }
        img {
            border: none;
        }
    </style>
    <script type="text/javascript">
        function del() {
            if (confirm("确定删除吗？")) {
                return true;
            }
            return false;
        }
    </script>
    <script type="text/javascript">
        window.onload = function () {
            document.getElementById('xuanze').onclick = function () {
                var obj = document.getElementsByTagName('input'); //获取文档中所有的input元素
                for (var i = 0; i < obj.length; i++) {
                    if (obj[i].type == 'checkbox') {
                        obj[i].checked = true; //设置复选框元素对象的checked属性值为true就能勾选该复选框；false即为取消选择
                    }
                }
            }
            document.getElementById('cancel').onclick = function () {
                var obj = document.getElementsByTagName('input'); //获取文档中所有的input元素
                for (var i = 0; i < obj.length; i++) {
                    if (obj[i].type == 'checkbox') {
                        obj[i].checked = false; //设置复选框元素对象的checked属性值为true就能勾选该复选框；false即为取消选择
                    }
                }
            }
        }
    </script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">
<div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:&gt;<strong>&gt;全部管理员</strong></div>
<form action="admin_d.action" method="post">
    <table width="90%" align="center" cellspacing="0">
        <tr>
            <td align="center" colspan="10" height="30" style="font-size:12px;">全部管理员信息</td>
        </tr>
        <tr align="center" style="font-size:12px;">
            <td width="5%">选择</td>
            <td width="12%" height="30">编号</td>
            <td width="8%">姓名</td>
            <td width="5%">性别</td>
            <td width="10%">出生日期</td>
            <td width="10%">联系电话</td>
            <td width="15%">家庭地址</td>
            <td width="13%">电子邮箱</td>
            <td width="13%">操作</td>
        </tr>
        <%
            List adminlist = (List) session.getAttribute("adminlist");
            String str = request.getParameter("page");
            if (str == null || str.equals("")) {
                str = "0";
            }
            int pagesize = 6;
            int recordCount = adminlist.size();
            int maxPage = 0;
            maxPage = (recordCount % pagesize == 0) ? (recordCount / pagesize)
                    : (recordCount / pagesize + 1);
            int currentPage = Integer.parseInt(str.trim());
            if (currentPage < 1) {
                currentPage = 1;
            } else {
                if (currentPage > maxPage) {
                    currentPage = maxPage;
                }
            }
            if (currentPage > 1) {
                for (int i = ((currentPage - 1) * pagesize); i < ((((currentPage - 1)
                        * pagesize + pagesize)
                        / adminlist.size() > 0) ? (adminlist.size()) : ((currentPage - 1)
                        * pagesize + pagesize)); i++) {
                    User admin = (User) adminlist.get(i);
        %>
        <tr align="center" height="30" onMouseOver="this.bgColor='#f9f2f2'" onMouseOut="this.bgColor='#Ffffff'">
            <td><input type="checkbox" name="aa" value="<%=admin.getId()%>"/></td>
            <td width="12%"><%=admin.getId()%></td>
            <td width="8%"><%=admin.getName()%></td>
            <td width="5%"><%=admin.getSex()%></td>
            <td width="10%"><%=admin.getBirthday()%></td>
            <td width="10%"><%=admin.getPhone()%></td>
            <td width="15%"><%=admin.getAddress()%></td>
            <td width="13%"><%=admin.getEmail()%></td>
            <td width="13%">
                <a href="admin_id1.action?id=<%=admin.getId()%>"> 查看</a>
                <a href="admin_id.action?id=<%=admin.getId()%>"> 更新</a>
            </td>
        </tr>
        <%
            }
        } else {
            for (int i = 0; i < ((((currentPage - 1) * pagesize + pagesize)
                    / adminlist.size() > 0) ? (adminlist.size()) : ((currentPage - 1)
                    * pagesize + pagesize)); i++) {
                User admin = (User) adminlist.get(i);
        %>
        <tr align="center" height="30" onMouseOver="this.bgColor='#f9f2f2'" onMouseOut="this.bgColor='#Ffffff'">
            <td><input type="checkbox" name="aa" value="<%=admin.getId()%>"/></td>
            <td width="12%"><%=admin.getId()%></td>
            <td width="8%"><%=admin.getName()%></td>
            <td width="5%"><%=admin.getSex()%></td>
            <td width="10%"><%=admin.getBirthday()%></td>
            <td width="10%"><%=admin.getPhone()%></td>
            <td width="15%"><%=admin.getAddress()%></td>
            <td width="13%"><%=admin.getEmail()%></td>
            <td width="13%">
                <a href="admin_id1.action?id=<%=admin.getId()%>"> 查看</a>
                <a href="admin_id.action?id=<%=admin.getId()%>">更新</a>
            </td>
        </tr>
        <%
                }
            }
        %>
        <tr align="left" height="30">
            <td colspan="10">
                <input type="button" id="xuanze" value="全选"/>
                <input type="button" id="cancel" value="取消"/>
                <input type="submit" value="批量删除" onclick="return del();"/>
            </td>
        </tr>
        <tr align="center" height="40">
            <td colspan="10">
                <a href="admin_display.action?page=1">首页</a>&nbsp;&nbsp;
                <a href="admin_display.action?page=<%=currentPage - 1%>">上一页</a>&nbsp;&nbsp;
                <%
                    for (int j = 1; j <= maxPage; j++) {
                        out.print("&nbsp;&nbsp;<a href='admin_display.action?page="
                                + j + "'><span class=STYLE20>" + j
                                + "</span></a>&nbsp;&nbsp;");
                    }
                %>
                <a href="admin_display.action?page=<%=currentPage + 1%>">下一页</a>&nbsp;&nbsp;
                <a href="admin_display.action?page=<%=maxPage%>">最后一页</a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
