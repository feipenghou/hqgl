<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
  </head>
 
 <body>
 
   <center>
  <div style="margin-top:80px;">
  <%
      out.println("<h3>恭喜您，删除成功！！！</h3>");
      out.println("<h4>自动返回上一页面！</h4>");
      response.setHeader("Refresh","1;URL=javascript:history.go(-1)");
    %>
    浏览器没有跳转？？
     <a href="javascript:history.go(-1);">点击返回</a>
  </div></center>
   
</body>
</html>
