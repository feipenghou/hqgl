<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.hqgl.hib.po.Car"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'car_update.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
table {
	font-size: 12px;
	margin-top:10px;
	border-top:#f2c7da 1px solid;
	border-left:#f2c7da 1px solid;
}

table td {
border-bottom:#f2c7da 1px solid;
border-right: #f2c7da 1px solid;
}
#where{
width:550px;
height:30px;
line-height:30px;
font-size:12px;
font-weight:bold;
padding-left:30px
}
#where a{
text-decoration:none;
}
</style>
</head>
 <body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">	
   <form action="upload3.action" method="post" enctype="multipart/form-data">   
     <div id="where">您当前所在位置:>>添加花车资料</div>
 <table width="700"  cellspacing="0" align="center" >
 				<tr>
 				<td align="center" height="30"  style="font-size:12px;" colspan="5">
 				添加花车资料
 				</td>
 				</tr>
 				<tr>
 				<td align="center" rowspan="2" width="100">基本信息</td>
 						<td align="center" height="30" width="100">
					品牌</td><td align="center"><input type="text" name="pingpai">
										</td>
					<td align="center" height="30" width="100">
						司机</td><td align="center"><input type="text" name="people" />
					</td>					
					</tr>
					<tr>
					<td align="center" height="30">
					容纳人数</td><td align="center">
					<input type="text" name="count">				
					</td>
					<td align="center" height="30">
					车牌号码</td><td align="center">
					<input type="text" name="carid">			
					</td>
					</tr>					
					<tr>
					<td align="center" rowspan="6">详细信息</td>
 				<td align="center" height="30">
 				 车型</td><td align="center"><select name="style" style="align:center;width:150px;"> 
 				   <option value="轿车">轿车</option>
 				 <option value="微型">微型</option>
 				 <option value="轻型">轻型</option>
 				  <option value="中型">中型</option>
 				   <option value="大型">大型</option> 				  
 				 </select></td>
					<td align="center" height="30" >
				颜色</td><td align="center"><select name="color" style="align:center;width:150px;"> 
 				   <option value="红色">红色</option>
 				 <option value="蓝色">蓝色</option>
 				 <option value="紫色">紫色</option>		
 				 <option value="银色">银色</option>
 				  <option value="白色">白色</option>
 				   <option value="黑色">黑色</option> 		  
 				 </select>
					</td>
					</tr>
					<tr>
					<td align="center" height="30">
				价格</td><td align="center"><input type="text" name="price">
					</td>
					<td align="center" height="30">
				经销商</td><td align="center">
					<input type="text" name="jing">		
					</td>
					</tr>
					<tr>
					<td align="center" height="30">
				油耗</td><td align="center">
				<input type="text" name="youhao">				
					</td>
					
					<td align="center" height="30">
				加速</td><td align="center">
					<input type="text" name="jiasu">	
					</td>					
					</tr>
					<tr>
					<td align="center" height="30">
				刹车</td><td align="center">
				<input type="text" name="shache">			
					</td>
					<td align="center" height="30">
				保险</td><td align="center">
					<input type="text" name="baoxian">				
					</td>
					</tr>
					<tr>
					<td align="center">违章记录</td>
					<td align="center"><input type="text" name="weizhang"/></td>				
					<td align="center" height="30">
				状态</td><td align="center">
				<input type="radio" name="zhuangtai" value="已用"/>已用&nbsp;&nbsp;
				<input type="radio" name="zhuangtai" value="未用" checked="checked"/>未用
				<input type="radio" name="zhuangtai" value="报废" />报废
					</td>
						</tr>
					<tr height="30"><td align="center">属性</td><td align="center"><input type="text" name="shuxing"></td>
					<td align="center">级别</td><td height="30" align="center">
					<input type="radio" name="jibie" value="一"/>一&nbsp;&nbsp;
				<input type="radio" name="jibie" value="二" checked="checked"/>二
				<input type="radio" name="jibie" value="三" />三					
					</tr>
					<tr height="30" >
					<td rowspan="1" align="center">汽车信息 </td>
					<td align="center">图片展示</td>
					<td align="center"><input type="file" style="width:150px;" name="upload"></td>
					<td align="center" >汽车描述</td>
					<td align="center" ><textarea  style="width:150px;height:60px;"  name="shangbiao"></textarea></td>
					</tr>
					<tr>
					<td align="center">备注</td>
					<td colspan="4"> 
					<textarea name="beizhu" id="beizhu" style="width:550px;height:80px;font-size:12px;line-height:30px;">
   					 </textarea></td>
					</tr>					
					<tr>
					<td align="center" height="30" colspan="5">
						<input type="submit" style="height: 25px;" value="确定">			
						<input type="reset" style="height: 25px;" value="重置">
					</td>
				</tr>
			</table>
			</form>  </body>
</html>
