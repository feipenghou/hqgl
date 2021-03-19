<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="com.hqgl.hib.po.Tuidang"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
 .image{
     width:130px;
     height:160px;
     overflow:hidden;
  }
</style>
  </head>
  
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">	
  <% 
     List tuidanjutilist=(List)session.getAttribute("tuidanjutilist"); 
    Tuidang tuidang=(Tuidang)tuidanjutilist.get(0); 
    %>
  <form name="form1" method="post">
   <table class="table" width="640" height="180px"; border="1" cellspacing="0"  bordercolor="#f2c7da" style="border-collapse:collapse;margin-top:40px;"align="center">
  <tr>
    <td height="40" colspan="8" align="center" ><span class="b">退单详细资料</span></td>
  </tr>
  <tr >
    <td width="9%"  height="44" style="font-size:12px;"align="center">退单编号</td>
    <td width="11%" height="44" style="font-size:12px;"align="left"><%=tuidang.getTNumber() %></td>
    <td width="10%" height="44" style="font-size:12px;" align="center">退单人姓名</td>
    <td width="16%" height="44" style="font-size:12px;" align="left"><%=tuidang.getTName() %></td>
      </tr>
      <tr> 
            <td width="11%" style="font-size:12px;"align="center">退单人性别</td>
            <td width="13%"  height="44" style="font-size:12px;"align="left"><%=tuidang.getTSex()%></td>
            <td height="44" align="center" style="font-size:12px;">身份证号</td>
            <td width="18%" height="44" style="font-size:12px;"align="left"><%=tuidang.getTCareid()%></td>
    </tr>
    <tr> 
            <td width="11%" style="font-size:12px;"align="center">结婚日期</td>
            <td width="18%"  height="44" style="font-size:12px;"align="left"><%=tuidang.getTDate() %></td>
            <td height="44" align="center" style="font-size:12px;">联系电话</td>
            <td width="18%" height="44" style="font-size:12px;"align="left"><%=tuidang.getTPhone()%></td>
    </tr>
   <tr>
    <td height="44" align="center" style="font-size:12px;">家庭住址</td>
    <td height="44" colspan="1" style="font-size:12px;" align="left"><%=tuidang.getTAddress() %></td>
    <td height="44" align="center" style="font-size:12px;">电子邮箱</td>
    <td height="44" width="16%"  style="font-size:12px;"align="left"><%=tuidang.getTEmail()%></td>
    
  </tr>
<tr>
		
<td align="center" height="30" style="font-size:12px;font-weight:bold;" >
		               备注</td><td align="center" colspan="3">
					<textarea name="TBeizhu"style="height:60px;width:450px;"readonly="true"> <%=tuidang.getTBeizhu() %></textarea>						
					</td>    </tr>
</table>
</form>
  
  </body>
</html>
