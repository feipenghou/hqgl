<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
</head>

<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<frameset rows="230,*,30" frameborder="no" border="0" framespacing="0">
    <frame src="top.jsp" noresize="noresize" frameborder="0" name="topFrame" marginwidth="0" marginheight="0"
           scrolling="no">
    <frameset rows="*" cols="180,*" id="frame">
        <frame src="admin_menu.jsp" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0"
               frameborder="0" scrolling="auto">
        <frame src="notice1.action" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="yes">
    </frameset>
    <frame src="bottom.jsp" noresize="noresize" frameborder="0" name="bootomFrame" marginwidth="0" marginheight="0"
           scrolling="no">
</frameset>
<noframes>
    <body>
    </body>
</noframes>
</html>
