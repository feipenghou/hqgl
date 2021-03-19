<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="utf-8"%>
<%@ page import="com.hqgl.hib.po.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>   
    <title>My JSP 'gonggao_one.jsp' starting page</title>
<style>
table {
	font-size: 12px;
	margin-top:10px;
	border-top:#f2c7da 1px solid;
	border-left:#f2c7da 1px solid;
}

table td {
border-bottom:#f2c7da 1px solid;
border-right: #f2c7da 1px solid;
}
#where{
width:625px;
height:30px;
line-height:30px;
font-size:12px;
font-weight:bold;
text-align:center;
padding-right:15px;
}
#where a{
text-decoration:none;
}
</style>

  </head>
  
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">	
   <%
  		List list=(List)request.getAttribute("messid");
  		Livemessage livemessage=(Livemessage)list.get(0);
   %>
    <form action="mess_update.action" method="post">
      <div id="where">当前所在位置:<a href="message/mess.jsp">客服管理</a>&nbsp;&nbsp;回复留言</div>
<table width="700"  cellspacing="0"  align="center">
<tr style="height:30px;">
					<td align="center" style="font-size:12px;">
					回复留言
				    </td>
				</tr>
     <tr height="30">
    <td  style=" font-size:12px; font-weight:bold;padding-left:10px;">       
      留言人:<%=livemessage.getLivep()%>
    </td>
  </tr>
   <tr>
    <td height="30" style=" font-size:12px; font-weight:bold;padding-left:10px; ">
    留言内容： </td></tr>
	<tr style="width:400px;height:70px;font-size:12px;line-height:30px;text-align:center;"><td>
     <%=livemessage.getLivecon()%></td></tr>
    	<tr height="30">
    	 <td height="30" style=" font-size:12px; font-weight:bold;padding-left:10px; ">
      回复：</td></tr><tr><td><textarea name="livere"  style="width:680px;height:70px;font-size:12px;line-height:30px;" >
     <%=livemessage.getLivere()%></textarea>
    </td>    
  </tr>  
    <tr>
    <td height="30" ><div class="file" style="width:200px; float:right;line-height:25px;" >
    留言时间
    <%
    		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    	 %>
    <%=sdf.format(livemessage.getLivetime()) %><br/></div>
    </td>
  </tr>
  <tr height="30">
    <td align="center"><input type="submit" value="提交"/><span style="padding-left:10px;">
<input type="button" onClick="location='mess.action'" style="height: 25px;" value="返回">
</span></td></tr>
  </table>
  </body>
</html>
