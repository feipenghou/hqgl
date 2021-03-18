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
            <table id=child1 style="DISPLaY: none" cellSpacing=0 cellPadding=0
                   width=150 border=0>

                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="admin_id1.action?id=<%=user.getId() %>" target=main>查看个人资料</a>
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
                        <a class=menuChild href="notice_add1.action" target=main>发布公告</a>
                    </td>
                </tr>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="notice_display.action" target=main>查看/编辑公告</a>
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
                        <a class=menuChild href="fuzhuang/fuzhuang_add.jsp" target=main>添加礼服</a>
                    </td>
                </tr>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="fuzhuang_display.action" target=main>查看/编辑礼服</a>
                    </td>
                </tr>

                <tr height=4>
                    <td colSpan=2></td>
                </tr>
            </table>
            <table cellSpacing=0 cellPadding=0 width=150 border=0>
                <tr height=22>
                    <td style="PaDDING-LEFT: 30px" background=image/w.jpg>
                        <a class=menuParent onclick=expand(4) href="javascript:void(0);">客户管理</a>
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
                        <a class=menuChild href="addkehuid.action?id=<%=user.getId() %>" target=main>客户资料添加</a>
                    </td>
                </tr>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="kehumanage.action" target=main>查看/编辑客户信息</a>
                    </td>
                </tr>
                <tr height=4>
                    <td colSpan=2></td>
                </tr>
            </table>
            <table cellSpacing=0 cellPadding=0 width=150 border=0>
                <tr height=22>
                    <td style="PaDDING-LEFT: 30px" background=image/w.jpg>
                        <a class=menuParent onclick=expand(5) href="javascript:void(0);">员工管理</a>
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
                        <a class=menuChild href="yggl/yg_add.jsp" target=main>添加员工</a>
                    </td>
                </tr>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="yg_display.action" target=main>查看/编辑员工</a>
                    </td>
                </tr>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="yg_yishan.action" target=main>已删员工信息</a>
                    </td>
                </tr>
                <tr height=4>
                    <td colSpan=2></td>
                </tr>
            </table>
            <table cellSpacing=0 cellPadding=0 width=150 border=0>
                <tr height=22>
                    <td style="PaDDING-LEFT: 30px" background=image/w.jpg>
                        <a class=menuParent onclick=expand(6) href="javascript:void(0);">花车管理</a>
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
                        <a class=menuChild href="car.action" target=main>查看花车</a>
                    </td>
                </tr>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="car/car_add.jsp" target=main>花车添加</a>
                    </td>
                </tr>
                <tr height=4>
                    <td colSpan=2></td>
                </tr>
            </table>
            <table cellSpacing=0 cellPadding=0 width=150 border=0>
                <tr height=22>
                    <td style="PaDDING-LEFT: 30px" background=image/w.jpg>
                        <a class=menuParent onclick=expand(7) href="javascript:void(0);">预约管理</a>
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
                        <a class=menuChild href="tianjiadingdan.action" target=main>添加订单</a>
                    </td>
                </tr>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="dingdanmanage.action" target=main>编辑订单</a>
                    </td>
                </tr>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="tuidanmanage.action" target=main>退单查看</a>
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
                        <a class=menuParent onclick=expand(8) href="javascript:void(0);">客服管理</a>
                    </td>
                </tr>
                <tr height=4>
                    <td></td>
                </tr>
            </table>
            <table id=child8 style="DISPLaY: none" cellSpacing=0 cellPadding=0
                   width=150 border=0>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="message/mess_add.jsp" target=main>添加留言</a>
                    </td>
                </tr>

                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="mess.action" target=main>留言信息操作</a>
                    </td>
                </tr>
                <tr height=4>
                    <td colSpan=2></td>
                </tr>
            </table>
            <table cellSpacing=0 cellPadding=0 width=150 border=0>

                <tr height=22>
                    <td style="PADDING-LEFT: 30px" background=image/w.jpg>
                        <a class=menuParent onclick=expand(9) href="javascript:void(0);">系统管理</a>
                    </td>
                </tr>
                <tr height=4>
                    <td></td>
                </tr>
            </table>

            <table id=child9 style="DISPLaY: none" cellSpacing=0 cellPadding=0
                   width=150 border=0>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="fuzhuang/admin_add.jsp" target=main>添加管理员</a>
                    </td>
                </tr>
                <tr height=20>
                    <td align=middle width=30>
                        <IMG height=9 src="image/o.jpg" width=9>
                    </td>
                    <td>
                        <a class=menuChild href="admin_display.action" target=main>查看/编辑管理员</a>
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
