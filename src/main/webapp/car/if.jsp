<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="utf-8"%>
<%@ page import="com.hqgl.hib.po.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'if.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
	#t{
	font-size:12px;
	float:left;
	padding-left:28px;
	}
#where{
width:550px;
height:30px;
line-height:30px;
font-size:12px;
font-weight:bold;
padding-left:30px
}
#where a{
text-decoration:none;
}
</style>
  </head>  
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">	
   <form action="ift.action" method="post">
     <div id="where">您当前所在位置:>>查看花车</div>			
		<div id="t">  根据编号查找  <input name="id">
   <input type="submit" value="查找"/><input type="button" style="margin-left:5px;" onClick="location='car.action'" value="全部"></div>
   </form>
  </body>
</html>
