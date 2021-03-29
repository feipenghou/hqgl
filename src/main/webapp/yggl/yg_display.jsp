<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="com.hqgl.hib.po.Ygjbxxb" %>
<html>
<head>
    <title>yg_display.jsp</title>
    <script type="text/javascript">
        window.onload = function () {
            document.getElementById('btn').onclick = function () {
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
    <script type="text/javascript">
        function del() {
            if (confirm("确定删除吗？")) {
                return true;
            }
            return false;
        }
    </script>
</head>
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
<body leftmargin="0" topmargin="0" marginwidth="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">
<div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:<strong>&gt;&gt;查看员工</strong></div>
<form action="yg_d.action" method="post">
    <table width="85%" cellspacing="0" align="center">
        <tr>
            <td align="center" style="font-size:12px; height:35px;" colspan="9">全部员工资料</td>
        </tr>
        <tr align="center">
            <td width="3%" height="30">
                <div align="center">选择</div>
            </td>
            <td height="30" width="6%">工号</td>
            <td height="30" width="5%">姓名</td>
            <td height="30" width="5%">性别</td>
            <td height="30" width="5%">年龄</td>
            <td height="30" width="5%">职位</td>
            <td height="30" width="6%">所属部门</td>
            <td height="30" width="6%">联系电话</td>
            <td height="30" width="8%">操作</td>
        </tr>
        <%
            List list = (List) request.getAttribute("list");
            String str = request.getParameter("page");
            if (str == null || str.equals("")) {
                str = "0";
            }
            int pagesize = 6;
            int recordCount = list.size();
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
                        / list.size() > 0) ? (list.size()) : ((currentPage - 1)
                        * pagesize + pagesize)); i++) {
                    Ygjbxxb ygjbxxb = (Ygjbxxb) list.get(i);
        %>
        <tr align="center" height="30">
            <td width="3%"><input type="checkbox" name="delete" value="<%=ygjbxxb.getYid()%>"/></td>
            <td width="6%"><%=ygjbxxb.getYid()%>
            </td>
            <td width="5%"><%=ygjbxxb.getYname() %>
            </td>
            <td width="5%"><%=ygjbxxb.getYsex()%>
            </td>
            <td width="5%"><%=ygjbxxb.getYold()%>
            </td>
            <td width="5%"><%=ygjbxxb.getYposition()%>
            </td>
            <td width="6%"><%=ygjbxxb.getYdepartment()%>
            </td>
            <td width="6%"><%=ygjbxxb.getYphone()%>
            </td>
            <td width="8%">
                <a href="yg_id.action?yid=<%=ygjbxxb.getYid()%>">[修改]</a>
                <a href="yg_delete.action?yid=<%=ygjbxxb.getYid()%>" onclick="return del()">[删除]</a>
            </td>
        </tr>
        <%
            }
        } else {
            for (int i = 0; i < ((((currentPage - 1) * pagesize + pagesize) / list.size() > 0) ? (list.size()) : ((currentPage - 1) * pagesize + pagesize)); i++) {
                Ygjbxxb ygjbxxb = (Ygjbxxb) list.get(i);
        %>
        <tr align="center" height="30">
            <td width="3%"><input type="checkbox" name="delete" value="<%=ygjbxxb.getYid()%>"/></td>
            <td width="6%"><%=ygjbxxb.getYid()%>
            </td>
            <td width="5%"><%=ygjbxxb.getYname() %>
            </td>
            <td width="5%"><%=ygjbxxb.getYsex()%>
            </td>
            <td width="5%"><%=ygjbxxb.getYold()%>
            </td>
            <td width="5%"><%=ygjbxxb.getYposition()%>
            </td>
            <td width="6%"><%=ygjbxxb.getYdepartment()%>
            </td>
            <td width="6%"><%=ygjbxxb.getYphone()%>
            </td>
            <td width="8%">
                <a href="yg_id.action?yid=<%=ygjbxxb.getYid()%>">[修改]</a>
                <a href="yg_delete.action?yid=<%=ygjbxxb.getYid()%>" onclick="return del()">[删除]</a>
            </td>
                <%}}%>

        <tr align="left" valign="middle" height="30">
            <td height="29" colspan="9">
                <input type="button" value="全选" id="btn" style="width: 50px;"/>
                <input type="button" value="取消" id="cancel" style="width: 50px;"/>
                <input type="submit" value="批量删除" onclick="return del();" style="width: 75px;"/>
            </td>
        </tr>
        <tr align="center">
            <td colspan="9" height="30">
                共&nbsp;&nbsp;<font size="2px" color=red><%=recordCount %></font>&nbsp;&nbsp;条记录&nbsp;&nbsp;&nbsp; 当前页数【<%=currentPage %>/<%=maxPage %>】
                <a href="yg_display.action?page=1">首页</a>&nbsp;&nbsp;
                <a href="yg_display.action?page=<%=currentPage-1%>">上一页</a>&nbsp;&nbsp;
                <%
                    for (int j = 1; j <= maxPage; j++) {
                        out.print("&nbsp;&nbsp;<a href='yg_display.action?page=" + j + "'><span class=STYLE20>" + j + "</span></a>&nbsp;&nbsp;");
                    }
                %>
                <a href="yg_display.action?page=<%=currentPage+1%>">下一页</a>&nbsp;&nbsp;
                <a href="yg_display.action?page=<%=maxPage%>">最后一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</form>
</body>
</html>
