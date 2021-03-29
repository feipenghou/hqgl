<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="utf-8"%>
<%@ page import="com.hqgl.hib.po.Car" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'look_gly.jsp' starting page</title>
	<style>
		table {
			font-size: 12px;
			margin-top: 10px;
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
<div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:<strong>&gt;&gt;查看全部花车</strong></div>
  <form action="car_del.action" method="post">
   <table width="85%" align="center" cellspacing="0">
			<tr align="center" style="font-size:12px;">				
				<td colspan="9" height="30" >查看花车</td>
				</tr>
				<tr align="center">
				<td width="8%" height="30">编号</td>
				<td width="10%">品牌</td>				
				<td width="15%">购买时间</td>
				<td width="12%">司机</td>
				<td width="10%">容纳人数</td>				
				<td width="10%">车牌号码</td>
				<td width="9%">状态</td>
				<td width="18%">操作</td>
			</tr>
			 <%
		    	List aliuyanlist=(List)session.getAttribute("car");
		    	String str= request.getParameter("page");
 				if(str==null||str.equals(""))
 				{
	 				str="0";
 				}
 				int pagesize=4;
				int recordCount=aliuyanlist.size();
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
         			for(int i=((currentPage-1)*pagesize);i<((((currentPage-1)*pagesize+pagesize)/aliuyanlist.size()>0)?(aliuyanlist.size()):((currentPage-1)*pagesize+pagesize));i++)
     	 			{
		    			Car car=(Car)aliuyanlist.get(i);
		    %>
			<tr align="center" height="30" onMouseOver="this.bgColor='#F8EFF2'" onMouseOut="this.bgColor='#ffffff'">
				<td width="8%" ><%=car.getId()%></td>
					<td width="10%" ><%=car.getPingpai()%></td>
				<td width="15%"><%
    		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    		 %>
    <%=sdf.format(car.getShop()) %></td>
    			<td width="12%"><%=car.getPeople() %></td>
    			<td width="10%"><%=car.getCount() %></td>
    			<td width="10%"><%=car.getCarid()%></td>
    			<td width="9%"><%=car.getZhuangtai() %></td>
				<td width="18%">
			<a href="ptcar_id.action?id=<%=car.getId()%>">详细</a>
				</td>
		    </tr>
	<% 
    			}
   			}
   			else{
       			for(int i=0;i<((((currentPage-1)*pagesize+pagesize)/aliuyanlist.size()>0)?(aliuyanlist.size()):((currentPage-1)*pagesize+pagesize));i++)
       			{
		    			Car car=(Car)aliuyanlist.get(i);
		    %>
			<tr align="center" height="30" onMouseOver="this.bgColor='#F8EFF2'" onMouseOut="this.bgColor='#ffffff'">
				<td width="8%" ><%=car.getId()%></td>
					<td width="10%" ><%=car.getPingpai()%></td>
				<td width="15%"><%
    		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    		 %>
    <%=sdf.format(car.getShop()) %></td>
    			<td width="12%"><%=car.getPeople() %></td>
    			<td width="10%"><%=car.getCount() %></td>
    			<td width="10%"><%=car.getCarid()%></td>
    			<td width="9%"><%=car.getZhuangtai() %></td>
				<td width="18%">
			<a href="ptcar_id.action?id=<%=car.getId()%>">详细</a>
				</td>
		    </tr>
	<% 
    			}
		    }%>
			<tr style="font-size:12px; height:50px;text-align:center;">
						<td colspan="10">共&nbsp;<font size="2px" color=red><%=recordCount %></font>&nbsp;条记录&nbsp;&nbsp;当前页数【<%=currentPage %>/<%=maxPage %>】
						<a href="ptcar.action?page=1">首页</a>&nbsp;&nbsp;
						<a href="ptcar.action?page=<%=currentPage-1%>">上一页</a>&nbsp;&nbsp;
						<%
	 					for(int j=1;j<=maxPage;j++)
	 					{
		 					out.print("&nbsp;&nbsp;<a href='ptcar.action?page="+j+"'><span class=STYLE20>"+j+"</span></a>&nbsp;&nbsp;");
	 					}
	 				   %>
						<a href="ptcar.action?page=<%=currentPage+1%>">下一页</a>&nbsp;&nbsp;
					    <a href="ptcar.action?page=<%=maxPage%>">最后一页</a></td>
					</tr>
		</table>
		</form>
  </body>
</html>
