<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqgl.hib.po.Ygjbxxb"%>
<html>
  <head>
 <title>My JSP 'chadeleteyg.jsp' starting page</title>
 <link rel="stylesheet" type="text/css" href="css/user.css">
<script type="text/javascript">
    window.onload = function() {
    document.getElementById('btn').onclick = function() {
      var obj = document.getElementsByTagName('input'); //获取文档中所有的input元素
      for (var i = 0; i < obj.length; i ++) {
          if (obj[i].type == 'checkbox') {
              obj[i].checked = true; //设置复选框元素对象的checked属性值为true就能勾选该复选框；false即为取消选择
          }
      }
  }
       document.getElementById('cancel').onclick = function() {
       var obj = document.getElementsByTagName('input'); //获取文档中所有的input元素
       for (var i = 0; i < obj.length; i ++) {
          if (obj[i].type == 'checkbox') {
              obj[i].checked = false; //设置复选框元素对象的checked属性值为true就能勾选该复选框；false即为取消选择
          }
      }
  }
  
}

</script> 
<script type="text/javascript">
	function del()
	{
		if (confirm("彻底删除后将无法恢复，你确定要删除吗？")){ 
		window.location.href="#";
		}else{ 
		return false;
}	
	}
</script>	
  </head>
   <style>
.table{
	font-size: 12px;
  
}


  .STYLE4{font-size:13px; 
          font-weight:bold;}
.table  td {
	border-top: #f2c7da 1px solid;
	border-left: #f2c7da 1px solid;
}
.STYLE2 {font-size: 13px}
.STYLE3 {font-size: 13px}
</style>
  <!--  清除清缓存代码-->
  <% response.setHeader("Pragma","No-cache"); response.setHeader("Cache-Control","no-cache"); response.setDateHeader("Expires", 0); %> 
<body leftmargin="0" topmargin="0" marginwidth="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">
<table width="100%" align="center" border="0" cellpadding="0" cellspacing="0" style="border:none;">
    <tr height="22" class="style2">
    	<th colspan="10" align="left">&nbsp;&nbsp;&nbsp;&nbsp;您的位置：员工信息管理>>查看已删员工</th>
    </tr>
 </table><br>
 <form action="yg_deleteall.action" method="post">
 <table width="90%" style="border:none; text-align:center;font:12px;" >
 <tr align="center">
    <td colspan="14">      
    </td>
  </tr>
 </table>
  <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center" class="table">
    <tr>
      <td colspan="14"  height="30" align="center"><span class="STYLE4">全部已删员工</span></td>
    </tr>
   
    <tr align="center">
      <td width="3%" height="30"><div align="center">选择</div></td>
       <td height="30" width="6%">工号</td>
      <td height="30" width="5%">姓名</td>
      <td height="30" width="5%">性别</td>
      <td height="30" width="5%">年龄</td>
      <td height="30" width="5%">职位</td>
      <td height="30" width="6%">所属部门</td>
      <td height="30" width="8%">联系电话</td>
       <td height="30" width="8%">操作</td>
    </tr>
 	<%
						List list = (List) request.getAttribute("list");
						String str = (String) request.getParameter("page");
						if (str == null || str.equals("")) {
							str = "0";
						}
						int pagesize = 9;
						int recordCount = list.size();
						int maxPage = 0;
						maxPage = (recordCount % pagesize == 0) ? (recordCount / pagesize)
								: (recordCount / pagesize + 1);
						int currentPage = Integer.parseInt(str.trim());
						if (currentPage < 1) {
							currentPage = 1;
						} else {
							if (currentPage > maxPage) {
								currentPage = maxPage;
							}
						}
						if (currentPage > 1) {
							for (int i = ((currentPage - 1) * pagesize); i < ((((currentPage - 1)
									* pagesize + pagesize)
									/ list.size() > 0) ? (list.size()) : ((currentPage - 1)
									* pagesize + pagesize)); i++) {
								Ygjbxxb ygjbxxb= (Ygjbxxb)list.get(i);
					%>
    <tr align="center" height="20">
      <td width="3%"><input type="checkbox" name="DelBulletinId" value="<%=ygjbxxb.getYid()%>" /></td>
      <td width="6%"><%=ygjbxxb.getYid()%></td>
      <td width="5%"><%=ygjbxxb.getYname() %></td>
      <td width="5%"><%=ygjbxxb.getYsex()%></td>
      <td width="5%"><%=ygjbxxb.getYold()%></td>
      <td width="5%"><%=ygjbxxb.getYposition()%></td>
	  <td width="6%"><%=ygjbxxb.getYdepartment()%></td>
	  <td width="8%"><%=ygjbxxb.getYphone()%></td>
      <td width="8%">
	     <img src="images/bt_confirm.gif" width="16" height="16"/>
	   <a href="yg_huifu.action?yid=<%=ygjbxxb.getYid()%>">恢复</a>	 
	   <img src="images/bt_del.gif" width="16" height="16"/>
	  <a href="yg_deletecd.action?yid=<%=ygjbxxb.getYid()%>" onclick="return del();">删除</a>	
	     </td>
    </tr>
    <% 
    }
   }
   else{
       for(int i=0;i<((((currentPage-1)*pagesize+pagesize)/list.size()>0)?(list.size()):((currentPage-1)*pagesize+pagesize));i++)
       {
       		Ygjbxxb ygjbxxb=(Ygjbxxb)list.get(i);
 %>
    <tr align="center"  height="30">
      <td width="3%"><input type="checkbox" name="DelBulletinId" value="<%=ygjbxxb.getYid()%>" /></td>
     <td width="6%"><%=ygjbxxb.getYid()%></td>
      <td width="5%"><%=ygjbxxb.getYname() %></td>
      <td width="4%"><%=ygjbxxb.getYsex()%></td>
      <td width="4%"><%=ygjbxxb.getYold()%></td>
      <td width="5%"><%=ygjbxxb.getYposition()%></td>
	  <td width="5%"><%=ygjbxxb.getYdepartment()%></td>
	  <td width="8%"><%=ygjbxxb.getYphone()%></td>
	  <td width="10%">
	    <img src="images/bt_confirm.gif" width="16" height="16"/>
	   <a href="yg_huifu.action?yid=<%=ygjbxxb.getYid()%>">恢复</a>	 
	   <img src="images/bt_del.gif" width="16" height="16"/>
	  <a href="yg_deletecd.action?yid=<%=ygjbxxb.getYid()%>" onclick="return del();">删除</a>	
	   	   </td>
      <%}}%>
      
    <tr align="left" valign="middle">
						<td height="29" colspan="6">
							<input type="button" value="全选" id="btn" style="width: 50px;"/>
							<input type="button" value="取消" id="cancel"style="width: 50px;"/>
							<input type="submit" value="删除" onclick="return del();"style="width: 50px;"/>
							
						</td>
						
	</tr>
					
    <tr align="center">
      <td colspan="14" height="30">共&nbsp;&nbsp;<font size="2px" color=red><%=recordCount %></font>&nbsp;&nbsp;条&nbsp;记&nbsp;录&nbsp;&nbsp;&nbsp; 当&nbsp;前&nbsp;页&nbsp;数【<%=currentPage %>/<%=maxPage %>】</td>
    </tr>
   
    <tr align="center">
      <td colspan="14" height="30"><a href="yg_show.action?page=1">首页</a>&nbsp;&nbsp; <a href="yg_show.action?page=<%=currentPage-1%>">上一页</a>&nbsp;&nbsp;
          <%
	 					for(int j=1;j<=maxPage;j++)
	 					{
		 					out.print("&nbsp;&nbsp;<a href='admin_show.action?page="+j+"'><span class=STYLE20>"+j+"</span></a>&nbsp;&nbsp;");
	 					}
	 				   %>
          <a href="yg_delete.action?page=<%=currentPage+1%>">下一页</a>&nbsp;&nbsp;
          <a href="yg_delete.action?page=<%=maxPage%>">最后一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="javascript:window.location.replace(location)">刷新</a>
    </tr>

</table>

</body>
</html>
