<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updatesuccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
 
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#eef2fb,endColorStr=#ffffff)">

 <center>
  <div style="margin-top:80px;">
  <%
      out.println("<h3>恭喜您，修改成功！！！</h3>");
      out.println("<h4>自动返回上一页面！</h4>");
      response.setHeader("Refresh","1;URL=javascript:history.go(-2)");
    %>
    浏览器没有跳转？？
     <a href="javascript:history.go(-2);">点击返回</a>
  </div></center>
  </body>
</html>
