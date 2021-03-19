<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqgl.hib.po.Notice" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <title>My JSP 'notice_cha.jsp' starting page</title>
 <style>
table {
	font-size: 12px;
	margin-top:10px;	
	
	border-right: #f2c7da 1px solid;
	border-bottom: #f2c7da 1px solid;
}
table td {
border-top: #f2c7da 1px solid;
	border-left: #f2c7da 1px solid;
}
</style>
 </head>
  
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">	
  <div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:&gt;<strong>&gt;查看公告</strong></div>
     <%
  		List list=(List)session.getAttribute("noticelist");
  		Notice notice=(Notice)list.get(0);
   %>
			<table width="70%" cellspacing="0" align="center">
				<tr >
					<td colspan="4" align="center"
						style="font-size:12px; height:35px;">
						查看公告
					</td>
				</tr>
					<tr >
					<td width="15%" height="35" align="center">公告编号：</td>
						<td width="35%" style="padding-left:20px;"><%=notice.getId()%></td>
						<td width="15%" height="35" align="center">发布人姓名：</td>
						<td width="35%" style="padding-left:20px;"><%=notice.getName()%></td>
						</tr>
						
						<tr><td width="15%" height="35" align="center">
						公告主题：</td><td colspan="4" width="55%" style="padding-left:20px;"><%=notice.getTitle()%></td></tr>
						<tr><td width="15%" height="35" align="center">
						发布时间：</td>
						<td width="35%" style="padding-left:20px;"> <%=notice.getQtime() %></td>
						<td width="15%" height="35" align="center">
						结束时间：</td>
						<td colspan="4" width="35%" style="padding-left:20px;"> <%=notice.getJtime() %></td>
						
						</tr>
						
							<tr><td  width="15%" height="90" align="center">
					发布内容：</td>
					<td colspan="4" width="55%" style="padding-left:20px;"><%=notice.getContent()%>
						    
					</td>
				</tr>
					<tr height="30px">
					<td colspan="4" align="center">
    <input type="button" onClick="location='notice_display.action'" style=" height:23px; width:50px;" value="返回"></input>
				</tr>
			</table>
	
   
   
   
   
  </body>
</html>
