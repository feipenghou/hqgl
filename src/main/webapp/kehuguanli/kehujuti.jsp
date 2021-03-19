<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="com.hqgl.hib.po.Kehu"%>

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
     List kehujutilist=(List)session.getAttribute("kehujutilist"); 
    Kehu kehu=(Kehu)kehujutilist.get(0); 
    %>
  <form>
   <table class="table" width="640" height="180px"; border="1" cellspacing="0"  bordercolor="#f2c7da" style="border-collapse:collapse;margin-top:40px;"align="center">
  <tr>
    <td height="40" colspan="8" align="center" ><span class="b">客户详细资料</span></td>
  </tr>
  <tr >
    <td width="9%"  height="44" style="font-size:12px;"align="center">客户编号</td>
    <td width="11%" height="44" style="font-size:12px;"align="left"><%=kehu.getKNumber() %></td>
    <td width="10%" height="44" style="font-size:12px;" align="center">客户姓名</td>
    <td width="16%" height="44" style="font-size:12px;" align="left"><%=kehu.getKName() %></td>
    <td width="16%" rowspan="4" align="center"><div class="image"><image src="upload/<%=kehu.getKTx()%>"></div>
      </td>
      </tr>
      <tr> 
            <td width="11%" style="font-size:12px;"align="center">客户性别</td>
            <td width="13%"  height="44" style="font-size:12px;"align="left"><%=kehu.getKSex()%></td>
            <td height="44" align="center" style="font-size:12px;">身份证号</td>
            <td width="18%" height="44" style="font-size:12px;"align="left"><%=kehu.getKCareid()%></td>
    </tr>
    <tr> 
            <td width="11%" style="font-size:12px;"align="center">结婚日期</td>
            <td width="18%"  height="44" style="font-size:12px;"align="left"><%=kehu.getKDate() %></td>
            <td height="44" align="center" style="font-size:12px;">联系电话</td>
            <td width="18%" height="44" style="font-size:12px;"align="left"><%=kehu.getKPhone()%></td>
    </tr>
   <tr>
    <td height="44" align="center" style="font-size:12px;">家庭住址</td>
    <td height="44" colspan="1" style="font-size:12px;" align="left"><%=kehu.getKAddress() %></td>
    <td height="44" align="center" style="font-size:12px;">电子邮箱</td>
    <td height="44" width="16%"  style="font-size:12px;"align="left"><%=kehu.getKEmail()%></td>
    
  </tr>
 
 
</table>
</form>
  </body>
</html>
