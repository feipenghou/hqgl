<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqgl.hib.po.Notice"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>


		<title>My JSP 'main.jsp' starting page</title>
		
<link rel="stylesheet" href="css/admin.css" type="text/css"></link></head>

	<body>
		
<div class="right_a">
      <div class="right_b">最新动态</div>
    </div>
  <div class="content">
   <ul>
   <%
	List list = (List) session.getAttribute("noticelist");
	for (int i=0;i<list.size();i++) {
	Notice notice = (Notice) list.get(i);
	%>
     <li><span><%=notice.getQtime()%></span><a href="ptnotice_id1.action?id=<%=notice.getId() %>"><img src="image/new.gif"></img>&nbsp;<%=notice.getTitle() %></a></li>
     <%} %>
   </ul>
  
  </div>
							
	
	</body>
</html>
