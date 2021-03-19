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
 <script type="text/javascript" src="notice/My97DatePicker/WdatePicker.js"></script></head>
  
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">	
  <div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:&gt;<strong>&gt;查看公告</strong></div>
     <%
  		List list=(List)session.getAttribute("noticelist");
  		Notice notice=(Notice)list.get(0);
   %><form action="notice_update.action" method="post">
			<table width="70%" cellspacing="0" align="center">
				<tr >
					<td colspan="4" align="center"
						style="font-size:12px; height:35px;">
						修改公告
					</td>
				</tr>
					<tr >
					<td width="20%" height="35" align="center">公告编号：</td>
						<td width="20%"  style="padding-left:20px;background-color:#cccccc;"><%=notice.getId()%></td>
						<td width="20%" height="35" align="center">发布人姓名：</td>
						<td width="15%" style="padding-left:20px;"><%=notice.getName()%></td>
						</tr>
						
						<tr><td width="15%" height="35" align="center">
						公告主题：</td><td colspan="4" width="55%" style="padding-left:10px;"><input type="text" size="70" name="title" value="<%=notice.getTitle()%>"></td></tr>
						<tr><td width="15%" height="35" align="center">
						公告从</td>
						<td width="55%" style="padding-left:10px;"> <input type="text" size="10" name="qtime" class="Wdate" onClick="WdatePicker()" value="<%=notice.getQtime() %>">截止到<input type="text" size="10" class="Wdate" onClick="WdatePicker()" name="jtime"value="<%=notice.getJtime() %>"></td>
						<td width="10%" height="35" align="center">
						公告类型：</td>
						<td colspan="4" width="10%" style="padding-left:10px;"><select name="type">
                  <option value="娱乐">娱乐</option>
                  <option value="纪念日">纪念日</option>
                  <option value="喜讯">喜讯</option>

                  </select></td>
						
						</tr>
						
							<tr><td  width="15%" height="90" align="center">
					发布内容：</td>
					<td colspan="4" width="55%" style="padding-left:10px;">
						<textarea name="content" style="width:465px;height:150px;font-size:12px;line-height:25px;"  >
     <%=notice.getContent()%>
    </textarea>    
					</td>
				</tr>
					<tr height="30px">
					<td colspan="4" align="center">
					<input type="submit" style=" height:23px; width:50px;" value="修改">
    <input type="button" onClick="location='notice_display.action'" style=" height:23px; width:50px;" value="返回"></input>
				</tr>
			</table>
	
   </form>
   
   
   
  </body>
</html>
