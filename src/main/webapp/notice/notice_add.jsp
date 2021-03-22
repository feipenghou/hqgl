<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqgl.hib.po.User" %>
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
 <script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script></head>
  
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">	
  <%
  		List adminlist=(List)session.getAttribute("adminlist");
  		User user=(User)adminlist.get(0);
   %>
  <div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:&gt;<strong>&gt;添加公告</strong></div>
     
   <form action="notice_add.action" method="post">
			<table width="70%" cellspacing="0" align="center">
				<tr >
					<td colspan="20" align="center"
						style="font-size:12px; height:35px;">
						添加公告
					</td>
				</tr>
						<tr><td width="15%" height="35" align="center">
						公告主题：</td><td colspan="15" width="45%" style="padding-left:10px;"><input type="text" size="70" name="title" ></td>
						</tr>
						<tr><td width="15%" height="35" align="center">
						公告从</td>
						<td width="45%" style="padding-left:10px;"> <input type="text" size="10" name="qtime" class="Wdate" onClick="WdatePicker()">截止到<input type="text" size="10" class="Wdate" onClick="WdatePicker()" name="jtime"></td>
						<td width="15%" height="35" align="center">
						公告类型：</td>
						<td colspan="10" width="10%" style="padding-left:10px;"><select name="type">
                   <option value="娱乐">娱乐</option> 
                  <option value="纪念日">纪念日</option>
                  <option value="喜讯">喜讯</option>

                  </select></td>
						
						</tr>
						
							<tr><td  width="15%" height="90" align="center">
					发布内容：</td>
					<td colspan="15" width="55%" style="padding-left:10px;">
						<textarea name="content" style="width:465px;height:300px;font-size:12px;line-height:25px;"  >
  
    </textarea>    
					</td>
				</tr>
				<tr height="35" >
						<td  colspan="15"  align="right">发布人姓名：
						<input type="text" size="10" name="name" value="<%=user.getName()%>"/></td>
						</tr>
					<tr height="30px">
					<td colspan="15" align="center">
					<input type="submit" style=" height:23px; width:50px;" value="添加">

				</tr>
			</table>
	
   </form>
   
   
   
  </body>
</html>
