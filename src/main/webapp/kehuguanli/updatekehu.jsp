<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.hqgl.hib.po.Kehu"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员资料修改</title>
<style>
body{
margin-top:40px;
font-size:12px;
}

table{
 margin-top:40px;
  border-right:#f2c7da 1px solid;
}
table td{
 border:#f2c7da 1px solid;
}
 td a{
 color:#000000;
text-decoration:none;
 }
</style>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">	
<% 
     List updateworkersidlist=(List)request.getAttribute("updatekehuidlist"); 
     Kehu kehu=(Kehu)updateworkersidlist.get(0); 
    %>
<form action="updatekehu.action" method="post">
  <table width="560"  border="1" cellspacing="0"  bordercolor="#f2c7da" style="border-collapse:collapse;margin-top: 40px;"align="center">
    <tr>
      <td height="30" colspan="4" align="center"><span class="b">修改客户信息</span></td>
    </tr>
    <tr>
      <td width="18%" height="30"  style="font-size:12px;" align="center"><span class="a">客户编号：</span>&nbsp;</td>
      <td width="18%" height="30" style="font-size:12px;align="left">
      <input type="text" name="KNumber" style="font-size:12px; background-color:#cccccc;" readonly="true" value="<%=kehu.getKNumber()%>"/>
      </td>
      <td width="18%" height="30"  style="font-size:12px;" align="center"><span class="a">客户姓名：</span>&nbsp;</td>
     <td width="18%" height="30" style="font-size:12px;"align="left">
      <input type="text" name="KName"   value="<%=kehu.getKName() %>"/>
      </td>   
    </tr>
    <tr>
    <td width="18%" height="30" style="font-size:12px;" align="center"><span class="a">客户性别：</span>&nbsp;</td>
      <td width="18%" height="30" style="font-size:12px;" align="left">
      <input type="text" name="KSex"   value="<%=kehu.getKSex() %>"/>
      </td>
      <td width="10%" height="30" style="font-size:12px;" align="center"><span class="a">身份证号：</span>&nbsp;</td>
      <td width="10%" height="30" colspan="1" style="font-size:12px;" align="left">
      <input type="text" name="KCareid"    value="<%=kehu.getKCareid()%>"/>
      </td>
      
    </tr>
    <tr>
    <td width="10%" height="30" style="font-size:12px;" align="center"><span class="a">结婚日期：</span>&nbsp;</td>
      <td width="10%" height="30" colspan="1" readonly="true" style="font-size:12px;" align="left">
      <input type="text"   name="KDate" value="<%=kehu.getKDate() %>">
      </td>
    <td width="10%" height="30"  style="font-size:12px;"align="center"><span class="a">联系电话：</span>&nbsp;</td>
      <td width="10%" height="30" colspan="0" style="font-size:12px;" align="left">
         <input type="text" name="KPhone"   value="<%=kehu.getKPhone() %>"/>
      </td>
        </tr>
    <tr>
    <td width="10%"  height="30" style="font-size:12px;"  align="center"><span class="a">家庭住址：</span>&nbsp;</td>
      <td width="10%"  height="30" style="font-size:12px;"  align="left" >
       <input type="text" name="KAddress"   value="<%=kehu.getKAddress()%>"/>
      </td>
      <td width="10%"  height="30" style="font-size:12px;"  align="center"><span class="a">电子邮箱：</span>&nbsp;</td>
      <td width="10%"  height="30" style="font-size:12px;"  align="left" >
       <input type="text" name="KEmail"   value="<%=kehu.getKEmail()%>"/>
      </td>
     
    </tr>
    <tr height="40">
			<td colspan="4"><input type="submit" value="修改"/ style="margin-right:20px;margin-left:250px"><input type="reset" value="重置"/></td>
  		</tr>
  </table>
    </form>
  </body>
</html>
