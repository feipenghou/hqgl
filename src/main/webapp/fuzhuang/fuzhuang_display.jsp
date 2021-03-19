<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqgl.hib.po.Fuzhuang" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'fuzhuang_display.jsp' starting page</title>
    
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
table td a {
	text-decoration:none;
}
table td a:link {
	color:#0033cc;
}
table td a:visited{
	color:#f2c7da;
}
table td a:hover{
	color:#990000;
	TEXT-DECORATION: none;
}
</style>
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
<script type="text/javascript">
window.onload = function() {
  document.getElementById('xuanze').onclick = function() {
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
  </head>
  
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">	
    <div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:&gt;<strong>&gt;全部礼服信息</strong></div>
    <form action="fuzhuang_d.action" method="post">
  <table width="80%" align="center" cellspacing="0">
		<tr >
    <td align="center" colspan="8"  height="30" style="font-size:12px;">全部礼服</td>
  </tr>
			<tr  align="center"  style="font-size:12px;"/>
				<td width="5%">选择</td>
				<td width="15%" height="30" >礼服编号</td>
				<td width="15%">类型</td>
				<td width="10%">颜色</td>
				<td width="10%">尺码</td>
				<td width="15%">价格</td>
				<td width="20%">操作</td>

			</tr>
			<%
				List messageslist = (List) session.getAttribute("fuzhuanglist");
				String str = (String) request.getParameter("page");
				if (str == null || str.equals("")) {
					str = "0";
				}
				int pagesize =5;
				int recordCount = messageslist.size();
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
							/ messageslist.size() > 0) ? (messageslist.size()) : ((currentPage - 1)
							* pagesize + pagesize)); i++) {
						Fuzhuang fuzhuang = (Fuzhuang)messageslist.get(i);
			%>
			<tr align="center" height="30"onMouseOver="this.bgColor='#f9f2f2'" onMouseOut="this.bgColor='#Ffffff'">
			<td><input type="checkbox" name="aa" value="<%=fuzhuang.getId()%>"/></td>
				<td width="15%" ><%=fuzhuang.getId()%></td>
				<td width="15%" ><%=fuzhuang.getType()%></td>
				<td width="10%"><%=fuzhuang.getPhoto() %></td>
				<td width="10%"><%=fuzhuang.getLipin() %></td>
				<td width="10%"><%=fuzhuang.getMoney() %></td>
				<td width="20%">
				<a href="fuzhuang_id1.action?id=<%=fuzhuang.getId()%>">查看 | </a>
				<a href="fuzhuang_id.action?id=<%=fuzhuang.getId()%>"> 更新 </a>
				
				</td>
			</tr>
			<%
				}
				} else {
					for (int i = 0; i < ((((currentPage - 1) * pagesize + pagesize)
							/ messageslist.size() > 0) ? (messageslist.size()) : ((currentPage - 1)
							* pagesize + pagesize)); i++) {
							Fuzhuang fuzhuang = (Fuzhuang)messageslist.get(i);
			%>
			<tr align="center" height="30"onMouseOver="this.bgColor='#f9f2f2'" onMouseOut="this.bgColor='#Ffffff'">
			<td><input type="checkbox" name="aa" value="<%=fuzhuang.getId()%>"/></td>
				<td width="15%" ><%=fuzhuang.getId()%></td>
				<td width="15%" ><%=fuzhuang.getType()%></td>
				<td width="10%"><%=fuzhuang.getPhoto() %></td>
				<td width="10%"><%=fuzhuang.getLipin() %></td>
				<td width="10%"><%=fuzhuang.getMoney() %></td>
				<td width="20%">
				<a href="fuzhuang_id1.action?id=<%=fuzhuang.getId()%>">查看 | </a>
				<a href="fuzhuang_id.action?id=<%=fuzhuang.getId()%>"> 更新  </a>
				</td>
			</tr>
			<%
				}
				}
			%>
			<tr align="left" height="30">
				<td colspan="8">
					<input type="button" id="xuanze" value="全选"/>
					<input type="button" id="cancel" value="取消"/>
					<input type="submit"  value="批量删除"  onclick="return del();"/>
					
				</td>
			</tr>
			<tr align="center" height="40">
				<td colspan="8">
					<a href="fuzhuang_display.action?page=1">首页</a>&nbsp;&nbsp;
					<a href="fuzhuang_display.action?page=<%=currentPage - 1%>">上一页</a>&nbsp;&nbsp;
					<%
						for (int j = 1; j <= maxPage; j++) {
							out.print("&nbsp;&nbsp;<a href='fuzhuang_display.action?page="
									+ j + "'><span class=STYLE20>" + j
									+ "</span></a>&nbsp;&nbsp;");
						}
					%>
					<a href="fuzhuang_display.action?page=<%=currentPage + 1%>">下一页</a>&nbsp;&nbsp;
					<a href="fuzhuang_display.action?page=<%=maxPage%>">最后一页</a>
				</td>
			</tr>
		</table>
</form>
  </body>
</html>
