<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="com.hqgl.hib.po.User" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>My JSP 'xgmm.jsp' starting page</title>
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
    <%
        List list = (List) session.getAttribute("adminlist");
        User user = (User) list.get(0);
    %>
    <script type="text/javascript">
        function del() {
            if (confirm("确定修改密码！")) {
                return true;
            }
            return false;
        }
    </script>
    <script language="javascript">
        function checkuser3() {
            if (form1.pass1.value != "<%=user.getPass()%>") {
                alert("原始密码不一致");
                form1.pass1.focus();
                return false;
            }
            if (form1.pass.value == "") {
                alert("请填写您的新密码！");
                form1.pass.focus();
                return false;
            } else if (form1.pass2.value == "") {
                alert("请填写您的确认密码！");
                form1.pass2.focus();
                return false;
            } else if (form1.pass.value != form1.pass2.value) {
                alert("您两次输入的密码不一致，请重新填写");
                form1.pass2.focus();
                return false;
            }
        }
    </script>

</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"
      style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">
<div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:&gt;<strong>&gt;修改密码</strong></div>
<form action="xgmm.action" method="post" id="form1" name="form1" onsubmit="return checkuser3();"/>
<table width="450" height="100" cellspacing="0"
       align="center" style="height: 100px;">
    <tr align="center">
        <td colspan="2" align="center" height="30" style="font-size:12px;">修改密码</td>
    </tr>
    <tr align="center">
        <td width="30%" height="35">用户名：</td>
        <td><%=user.getName()%>
        </td>
    </tr>
    <tr align="center">
        <td width="30%" height="35">原密码：</td>
        <td><input type="password" name="pass1" value=""></td>
    </tr>
    <tr align="center">
        <td width="30%" height="35">新密码：</td>
        <td><input type="password" name="pass" value=""></td>
    </tr>
    <tr>
    <tr align="center">
        <td width="30%" height="35">确认密码：</td>
        <td><input type="password" name="pass2" value=""></td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <input type="submit" style="height: 25px; width:70px" value="保存" onclick="return del();">
        </td>
    </tr>
</table>
</form>
</body>
</html>
