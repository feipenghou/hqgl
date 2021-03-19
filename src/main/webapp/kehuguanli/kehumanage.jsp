<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.hqgl.hib.po.Kehu"%>

<html>
  <style>
table {
	font-size: 12px;
	margin-top:40px;	
	border-right:#f2c7da 1px solid;
	border-bottom:#f2c7da 1px solid;
}
table td {
border-top:#f2c7da 1px solid;
	border-left:#f2c7da 1px solid;
}
</style>
<script src="js2/webcalendar.js" type="text/javascript"></script>
<script type="text/javascript" src="include/jquery.js"></script>
<script type="text/javascript" src="include/common.js"></script>
<script type="text/javascript" src="include/xheditor/xheditor-1.1.14-zh-cn.min.js"></script>
<script type="text/javascript">
$(pageInit);
function pageInit()
{
	$('#elm2').xheditor({tools:'mfull'});
}
function submitForm(){$('#frmDemo').submit();}
</script>
  <head>
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
  </head>
 
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">	
  <form action="kehutiaojian.action" method="post">
    <table width="740" cellspacing="0" align="center" height="80">
      <tr >
         <td align="center" colspan="5"  height="35" style="font-size:12px;">根据条件查看信用情况</td>
      </tr>  
      <tr height="35" style="width:100px">
         <td align="center" style="width:80px;font-size:12px;" height="35">客户编号</td>
 					<td style="width:100px" align="left"><input name="KNumber"  style="height:25px;" id="k_number"/></td>
		    <td align="center" style="font-size:12px;" height="35px">
					结婚日期</td><td align="left" colspan="0">
					<input type="text"   name="KDate" onClick="setDayHM(this,'yyyy年MM月dd日 hh时mm分ss秒',0,-150);" style=" width:110px;border:1px solid #999999;">
					</td>
		  <td style="width:100px;" align="center"><input type="submit" value="查询"></td>
  </tr>
    </table>
        </form>
  </body>
</html>

