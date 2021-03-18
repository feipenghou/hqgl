<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="com.hqgl.hib.po.User" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>My JSP 'menu.jsp' starting page</title>
    <script language=javascript>
        function expand(el) {
            childObj = document.getElementById("child" + el);
            if (childObj.style.display == 'none') {
                childObj.style.display = 'block';
            } else {
                childObj.style.display = 'none';
            }
            return;
        }
    </script>
    <link rel="stylesheet" href="css/admin.css" type="text/css"></link>
    <style type="text/css">
        <!--
        .STYLE1 {
            color: #F2C7DA
        }

        -->
    </style>
</head>
<body>
<%
    List userslist = (List) session.getAttribute("loginlist");
    User user = (User) userslist.get(0);
%>
<table height="100%" cellSpacing=0 cellPadding=0 width=170
       style="background-color:#F2C7DA;" border=0>
    <tr>
        <td vAlign=top align=middle>
            <table cellSpacing=0 cellPadding=0 width="100%" border=0>
                <tr>
                    <td height=10></td>
                </tr>
            </table>
            <table cellSpacing=0 cellPadding=0 width=150 border=0>
                <tr height=22>
                    <td style="PaDDING-LEFT: 30px" background=image/w.jpg>
                        <a class=menuParent onclick=expand(1) href="javascript:void(0);">个人管理</a>
                    </td>
                </tr>
                <tr height=4>
                    <td></td>
                </tr>
            </table>
            <span class="STYLE1"></span>
            <table id=child1 style="DISPLaY: none" cellSpacing=0 cellPadding=0
                   width=150 border=0>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="pt_id1.action?id=<%=user.getId() %>" target=main>查看个人资料</a>
                    </td>
                </tr>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="admin_id2.action?id=<%=user.getId() %>" target=main>修改密码</a>
                    </td>
                </tr>
                <tr height=4>
                    <td colSpan=2></td>
                </tr>
            </table>
            <table cellSpacing=0 cellPadding=0 width=150 border=0>
                <tr height=22>
                    <td style="PaDDING-LEFT: 30px" background=image/w.jpg>
                        <a class=menuParent onclick=expand(2) href="javascript:void(0);">公告管理</a>
                    </td>
                </tr>
                <tr height=4>
                    <td></td>
                </tr>
            </table>
            <table id=child2 style="DISPLaY: none" cellSpacing=0 cellPadding=0
                   width=150 border=0>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="ppt.action" target=main>查看公告</a>
                    </td>
                </tr>
                <tr height=4>
                    <td colSpan=2></td>
                </tr>
            </table>
            <table cellSpacing=0 cellPadding=0 width=150 border=0>
                <tr height=22>
                    <td style="PADDING-LEFT: 30px" background=image/w.jpg>
                        <a class=menuParent onclick=expand(3) href="javascript:void(0);">礼服管理</a>
                    </td>
                </tr>
                <tr height=4>
                    <td></td>
                </tr>
            </table>
            <table id=child3 style="DISPLaY: none" cellSpacing=0 cellPadding=0
                   width=150 border=0>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="ptfuzhuang_display.action" target=main>查看礼服</a>
                    </td>
                </tr>
                <tr height=4>
                    <td colSpan=2></td>
                </tr>
            </table>
            <table cellSpacing=0 cellPadding=0 width=150 border=0>
                <tr height=22>
                    <td style="PaDDING-LEFT: 30px" background=image/w.jpg>
                        <a class=menuParent onclick=expand(4) href="javascript:void(0);">花车管理</a>
                    </td>
                </tr>
                <tr height=4>
                    <td></td>
                </tr>
            </table>
            <table id=child4 style="DISPLaY: none" cellSpacing=0 cellPadding=0
                   width=150 border=0>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="ptcar.action" target=main>查看花车</a>
                    </td>
                </tr>
                <tr height=4>
                    <td colSpan=2></td>
                </tr>
            </table>
            <table cellSpacing=0 cellPadding=0 width=150 border=0>
                <tr height=22>
                    <td style="PaDDING-LEFT: 30px" background=image/w.jpg>
                        <a class=menuParent onclick=expand(5) href="javascript:void(0);">预约管理</a>
                    </td>
                </tr>
                <tr height=4>
                    <td></td>
                </tr>
            </table>
            <table id=child5 style="DISPLaY: none" cellSpacing=0 cellPadding=0
                   width=150 border=0>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="pttianjiadingdan.action" target=main>婚庆预定</a>
                    </td>
                </tr>
                <tr height=4>
                    <td colSpan=2></td>
                </tr>
                <tr height=4>
                    <td colSpan=2></td>
                </tr>
            </table>
            <table cellSpacing=0 cellPadding=0 width=150 border=0>
                <tr height=22>
                    <td style="PaDDING-LEFT: 30px" background=image/w.jpg>
                        <a class=menuParent onclick=expand(6) href="javascript:void(0);">客服管理</a>
                    </td>
                </tr>
                <tr height=4>
                    <td></td>
                </tr>
            </table>
            <table id=child6 style="DISPLaY: none" cellSpacing=0 cellPadding=0
                   width=150 border=0>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="message/mess_add.jsp" target=main>添加留言</a>
                    </td>
                </tr>
                <tr height=4>
                    <td colSpan=2></td>
                </tr>
            </table>
            <table cellSpacing=0 cellPadding=0 width=150 border=0>
                <tr height=22>
                    <td style="PaDDING-LEFT: 30px" background=image/w.jpg>
                        <a class=menuParent onclick=expand(7) href="javascript:void(0);">用户管理</a>
                    </td>
                </tr>
                <tr height=4>
                    <td></td>
                </tr>
            </table>
            <table id=child7 style="DISPLaY: none" cellSpacing=0 cellPadding=0
                   width=150 border=0>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="fuzhuang/pt_add.jsp" target=main>用户注册</a>
                    </td>
                </tr>
                <tr height=4>
                    <td colSpan=2></td>
                </tr>
            </table>
        </td>
        <td width=1 bgColor=#d1e6f7></td>
    </tr>
</table>
</body>
</html>
