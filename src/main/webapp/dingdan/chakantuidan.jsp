<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="com.hqgl.hib.po.Tuidang"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <script type="text/javascript">
	function del()
	{
		if(confirm("确定删除吗？"))
		{
			return true;
		}
		return false;
	}	
	</script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>

 <body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">	 
   <form method="post">
    <table width="740" border="1" align="center" cellspacing="0" bordercolor="#f2c7da" style="border-collapse: collapse;margin-top:0px; font-size:12px;">
 	<tr height="30">
	          <td colspan="7" align="center"  style="font-size:12px;">退单信息浏览</td>
		  </tr>
    <tr height="40"  align="center" style="font-size:12px;">
     <td width="90">退单编号</td> <td width="90">退单人姓名</td><td  width="90">退单人性别</td><td width="80">预约结婚日期</td><td width="80">联系电话</td> <td width="100">电子邮箱</td><td width="90">操作</td>
    </tr>
   <%
    	List tuidanmanagelist=(List)session.getAttribute("tuidanmanagelist");
    	String str=(String)request.getParameter("page");
 	if(str==null||str.equals(""))
 	{
	 	str="0";
 	}
 	int pagesize=4;
	int recordCount=tuidanmanagelist.size();
 	int maxPage=0;
 	maxPage=(recordCount%pagesize==0)?(recordCount/pagesize):(recordCount/pagesize+1);
 	int currentPage=Integer.parseInt(str.trim());
 	if (currentPage<1)
 	{
	 	currentPage=1;
 	}else{
	 	if(currentPage>maxPage)
	 	{
		 	currentPage=maxPage;
	 	}
 	}
 	if(currentPage>1){
         for(int i=((currentPage-1)*pagesize);i<((((currentPage-1)*pagesize+pagesize)/tuidanmanagelist.size()>0)?(tuidanmanagelist.size()):((currentPage-1)*pagesize+pagesize));i++)
     	 {
    		Tuidang tuidang=(Tuidang)tuidanmanagelist.get(i);
 			%>
			<tr height="40" align="center" >
				<td width="90"><%=tuidang.getTNumber()%></td>
				<td width="90"><%=tuidang.getTName()%></td>
				<td width="90"><%=tuidang.getTSex()%></td>
				<td width="70"><%=tuidang.getTDate()%></td>
				<td width="80"><%=tuidang.getTPhone()%></td>
				<td width="100"><%=tuidang.getTEmail()%></td>
				<td width="110">
				                <a href="tuidanjuti.action?TNumber=<%=tuidang.getTNumber()%> ">[查看]</a>
			</td></tr>
			<% 
    			}
   				}
   				else{
       				for(int i=0;i<((((currentPage-1)*pagesize+pagesize)/tuidanmanagelist.size()>0)?(tuidanmanagelist.size()):((currentPage-1)*pagesize+pagesize));i++)
       				{
    		Tuidang tuidang=(Tuidang)tuidanmanagelist.get(i);
 			%>
			<tr height="40" align="center" >
				<td width="90"><%=tuidang.getTNumber()%></td>
				<td width="90"><%=tuidang.getTName()%></td>
				<td width="90"><%=tuidang.getTSex()%></td>
				<td width="70"><%=tuidang.getTDate()%></td>
				<td width="80"><%=tuidang.getTPhone() %></td>
				<td width="100"><%=tuidang.getTEmail() %></td>
				<td width="110">
				                <a href="tuidanjuti.action?TNumber=<%=tuidang.getTNumber()%> ">[查看]</a>
			</td></tr>
			<% 
    			}
			}
			
			%>
			<tr style="font-size:12px; height:50px;text-align:center;">
						<td colspan="12">共&nbsp;<font size="2px" color=red><%=recordCount %></font>&nbsp;条记录&nbsp;&nbsp;当前页数【<%=currentPage %>/<%=maxPage %>】
						<a href="tuidanmanage.action?page=1">首页</a>&nbsp;&nbsp;
						<a href="tuidanmanage.action?page=<%=currentPage-1%>">上一页</a>&nbsp;&nbsp;
						<%
	 					for(int j=1;j<=maxPage;j++)
	 					{
		 					out.print("&nbsp;&nbsp;<a href='tuidanmanage.action?page="+j+"'><span class=STYLE20>"+j+"</span></a>&nbsp;&nbsp;");
	 					}
	 				   %>
						<a href="tuidanmanage.action?page=<%=currentPage+1%>">下一页</a>&nbsp;&nbsp;
					    <a href="tuidanmanage.action?page=<%=maxPage%>">最后一页</a></td>
			  </tr>
</table>
  </body>
</html>

