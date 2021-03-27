<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="utf-8" %>
<%@ page import="com.hqgl.hib.po.*" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'look_gly.jsp' starting page</title>
    <style>
        table {
            font-size: 12px;
            border-top: #f2c7da 1px solid;
            border-left: #f2c7da 1px solid;
            margin-top: 5px;
        }

        table td {
            border-bottom: #f2c7da 1px solid;
            border-right: #f2c7da 1px solid;
        }

        #where {
            width: 550px;
            height: 30px;
            line-height: 30px;
            font-size: 12px;
            font-weight: bold;
            padding-left: 30px
        }

        #where a {
            text-decoration: none;
        }
    </style>
    <base href="<%=basePath%>">
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
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"
      style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">
<div id="where">当前所在位置:>>留言信息操作</div>
<form action="mess_del" method="post">
    <table width="700" align="center" cellspacing="0">
        <tr align="center" style="font-size:12px;">
            <td height="30" colspan="6">我的留言</td>
        </tr>
        <tr align="center" style="font-size:12px;">
            <td width="15%" height="30">编号</td>
            <td width="8%">选择</td>
            <td width="12%">留言人</td>
            <td width="20%">留言时间</td>
            <td width="20%">状态</td>
            <td width="25%">操作</td>
        </tr>
        <%
            List list = (List) session.getAttribute("mess");
            String str = (String) request.getParameter("page");
            if (str == null || str.equals("")) {
                str = "0";
            }
            int pagesize = 4;
            int recordCount = list.size();
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
                for (int i = ((currentPage - 1) * pagesize); i < ((((currentPage - 1) * pagesize + pagesize) / list.size() > 0) ? (list.size()) : ((currentPage - 1) * pagesize + pagesize)); i++) {
                    Livemessage livemessage = (Livemessage) list.get(i);
        %>
        <tr align="center" height="30" onMouseOver="this.bgColor='#F8EFF2'" onMouseOut="this.bgColor='#ffffff'">
            <td width="15%"><%=i + 1%>
            </td>
            <td width="8"><input type="checkbox" name="aa" value="<%=livemessage.getId()%>"/></td>
            <td width="12%"><%=livemessage.getLivep()%>
            </td>
            <td width="20%"><%
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            %>
                <%=sdf.format(livemessage.getLivetime()) %>
            </td>
            <td width="20%"><%=livemessage.getLivezhu() %>
            </td>
            <td width="25%"><a href="mess_id.action?id=<%=livemessage.getId()%>"/>|查看并回应|</a>
                <a href="mess_delete.action?id=<%=livemessage.getId()%>" onclick="return del()">|删除|</a>
            </td>
        </tr>
        <%
            }
        } else {
            for (int i = 0; i < ((((currentPage - 1) * pagesize + pagesize) / list.size() > 0) ? (list.size()) : ((currentPage - 1) * pagesize + pagesize)); i++) {
                Livemessage livemessage = (Livemessage) list.get(i);
        %>
        <tr align="center" height="30" onMouseOver="this.bgColor='#F8EFF2'" onMouseOut="this.bgColor='#ffffff'">
            <td width="15%"><%=i + 1%>
            </td>
            <td width="8"><input type="checkbox" name="aa" value="<%=livemessage.getId()%>"/></td>
            <td width="12%"><%=livemessage.getLivep()%>
            </td>
            <td width="20%"><%
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            %>
                <%=sdf.format(livemessage.getLivetime()) %>
            </td>
            <td width="20%"><%=livemessage.getLivezhu() %>
            </td>
            <td width="25%"><a href="mess_id.action?id=<%=livemessage.getId()%>"/>|查看并回应|</a>
                <a href="mess_delete.action?id=<%=livemessage.getId()%>" onclick="return del()">|删除|</a>
            </td>
        </tr>
        <%
                }
            }%>
        <tr>
            <td colspan="10" style="border-right: #0099cc 1px solid;text-align:center;">
                <input type="button" id="xuanze" value="全选"/>
                <input type="button" id="cancel" value="取消"/>
                <input type="submit" value="多项删除" onclick="return del();"/>
            </td>

        </tr>
        <tr style="font-size:12px; height:50px;text-align:center;">
            <td colspan="10">共&nbsp;<font size="2px" color=red><%=recordCount %>
            </font>&nbsp;条记录&nbsp;&nbsp;当前页数【<%=currentPage %>/<%=maxPage %>】
                <a href="mess.action?page=1">首页</a>&nbsp;&nbsp;
                <a href="mess.action?page=<%=currentPage-1%>">上一页</a>&nbsp;&nbsp;
                <%
                    for (int j = 1; j <= maxPage; j++) {
                        out.print("&nbsp;&nbsp;<a href='mess.action?page=" + j + "'><span class=STYLE20>" + j + "</span></a>&nbsp;&nbsp;");
                    }
                %>
                <a href="mess.action?page=<%=currentPage+1%>">下一页</a>&nbsp;&nbsp;
                <a href="mess.action?page=<%=maxPage%>">最后一页</a></td>
        </tr>
    </table>
</form>
</body>
</html>
				