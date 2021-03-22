<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqgl.hib.po.Ygjbxxb"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'yg_update.jsp' starting page</title>
  <script language="javascript" type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
	   <style>
table {
	font-size: 12px;
	
}
.STYLE4{font-size:13px; 
          font-weight:bold;}
table tr td {
	border-top: #f2c7da 1px solid;
	border-left: #f2c7da 1px solid;
}
.STYLE2 {font-size: 13px}
.STYLE3 {font-size: 13px}
</style>

<script language="javascript">
 /*
  实现省市级联效果
 */
 var provinces={
 策划部:["普通员工",
         "布置员工",
         "策划人员",
         "策划负责人",
         "策划经理",
         "策划总监"],
  销售部:["员工",
                "领班",
                "组长",
                "班长",
                "科长",
                "副经理",
                "总经理",
                "文员"],
        化妆部:["员工",
                "化妆技术员",
                "助理",
                "化妆师",
                "化妆设计师"],
        司仪部:["普通司仪",
                "司仪助理",
                "司仪师"],
        摄影部:["员工",
                "摄影师 ",
                "设计员",
                "设计师",
                "摄影员",
                "编辑员",
                "编辑师"]};
       
 //加载省
 function loadProvince()
 { 
  //获取省所对应的列表框对象
  var pro=document.getElementById("province");
  //从数组中提取省份信息
  for(var p in provinces)
  {
   //创建option元素
   var opt=document.createElement("option");
   //设置option元素中的信息
   opt.innerText=p;
   opt.value=p;
   //将option元素添加到select元素中(option是select的子节点)
   pro.appendChild(opt);
  }
 }
 //加载市
 function loadCity()
 {
  //获取用户的省份
  var selectProvince=document.getElementById("province").value;
  //根据省获取市(citys是一个数组)
  var citys=provinces[selectProvince];
  //获取市所对应的列表框对象
  var city=document.getElementById("city");
  //将元素列表框中的元素全部清空
  city.innerText="";
  
  var opt=document.createElement("option");
  opt.innerText="--请选择品牌--";
  opt.value="0";
  city.appendChild(opt);
  for(var index=0;index<citys.length;index++)
  {
   opt=document.createElement("option");
   opt.innerText=citys[index];
   opt.value=citys[index];
   city.appendChild(opt);
  }
 }
 //在窗口加载时添加省份信息
 window.onload=loadProvince;
 </script>

</head>
 <!--  清除清缓存代码-->
  <% response.setHeader("Pragma","No-cache"); response.setHeader("Cache-Control","no-cache"); response.setDateHeader("Expires", 0); %> 
<link href="images/skin.css" rel="stylesheet" type="text/css">
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">
<table width="100%" align="center" border="0" cellpadding="0" cellspacing="0" style="border:none;">
    <tr height="22" class="style2">
    	<th colspan="10" align="left">&nbsp;&nbsp;&nbsp;&nbsp;您的位置：员工信息管理>>查看员工信息>>修改员工信息</th>
    </tr>
 </table>
 <%	List list = (List) request.getAttribute("onelist");
     Ygjbxxb ygjbxxb = (Ygjbxxb) list.get(0);
							%>						
<form  method="post" action="yg_update.action">
<table width="90%" height="278" border="0" cellpadding="0" cellspacing="0" align="center" style="text-align:center">
  <tr style="height:40px;font-size:13px;font-weight:bold;">
    	<td colspan="10" align="center">修改员工信息</td>
   </tr>
  <tr style="height:25px;">
   <td width="15%">工号</td>
    <td style="background:#999999;"><%=ygjbxxb.getYid()%>
   </td>
    <td width="15%">密码</td>
    <td width="12%"  style="background:#999999;"><%=ygjbxxb.getPass()%></td>
    <td width="15%">性别</td>
    <td width="12%">
    <input type="radio" id="sex" value="男" name="ysex" checked="checked"/>
      		  男&nbsp;&nbsp;&nbsp;
             <input type="radio" id="sex1" value="女" name="ysex" />女
    <!--  <input type="text" name="sex" style="text-align:center;border:none;"/>--></td>
   </tr>
  <tr style="height:25px;">
    <td width="15%">年龄</td>
    <td width="15%">
    <input type="text" name="yold" value="<%=ygjbxxb.getYold()%>" style="width:100%;height:90%;border:1px solid #ff99ff;text-align:center;"/></td>
    <td width="15%">政治面貌</td>
    <td width="12%">
    <input type="text" name="yface" value="<%=ygjbxxb.getYface()%>" style="width:100%;height:90%;border:1px solid #ff99ff;text-align:center;"/></td>
    <td width="10%">入公司日期</td>
    <td width="10%">
    <input name="yin" class="Wdate"  onClick="WdatePicker()" value="<%=ygjbxxb.getYin()%>" style="width:100%;height:90%;border:1px solid #ff99ff;text-align:center;"/></td>
  </tr>
  <tr style="height:25px;">
    <td width="15%">姓名</td>
    <td width="15%">
     <input type="text" name="yname" value="<%=ygjbxxb.getYname()%>" style="width:100%;height:90%;border:1px solid #ff99ff;text-align:center;"/>
    </td>
    <td width="15%">所属部门 </td>
    <td align="left"> 
    
		<select id="province" name="ydepartment" onchange="loadCity();"  style="width:110px;height:20px;border:1px solid #ff99ff;text-align:center;">  
           <option value="<%=ygjbxxb.getYdepartment() %>"><%=ygjbxxb.getYdepartment() %></option>  
         </select>
	 </td>
	  <td width="15%">职位</td>
	  <td width="15%">
	  <select id="city" name="yposition"  style="width:110px;height:20px;border:1px solid #ff99ff;text-align:center;">  
           <option value="<%=ygjbxxb.getYposition()%>"><%=ygjbxxb.getYposition()%></option>  
         </select> 
	  </td>
  </tr>
  <tr style="height:25px;">
    <td colspan="1">家庭住址</td>
    <td colspan="5">
    <input  type="text" name="yaddress" value="<%=ygjbxxb.getYaddress()%>"  style="width:100%;height:90%;border:1px solid #ff99ff;"/></td>
  </tr>
  <tr style="height:25px;">
    <td colspan="1">现住址</td>
    <td colspan="5">
    <input type="text" name="ynowaddress" value="<%=ygjbxxb.getYnowaddress()%>" style="width:100%;height:90%;border:1px solid #ff99ff;"/></td>
  </tr>
  <tr style="height:25px;">
    <td colspan="1">联系电话</td>
    <td colspan="2">
    <input type="text" name="yphone" value="<%=ygjbxxb.getYphone()%>" style="width:100%;height:90%;border:1px solid #ff99ff;text-align:center;"/></td>
    <td colspan="1">电子邮箱</td>
	<td colspan="4">
	<input type="text" name="yemail" value="<%=ygjbxxb.getYemail()%>" style="width:100%;height:90%;border:1px solid #ff99ff;text-align:center;"/></td>
  </tr>
  <tr>
    <td width="15%">备注</td>
    <td colspan="7"><textarea name="beizhu" style="height:100px; width:100%;"><%=ygjbxxb.getBeizhu()%></textarea></td>
  </tr>
   <tr height="30">
    <td align="center" colspan="13">
    <input type="submit" style="height:23px; width:50px;font-size:12px" value="修改""/>
    </td>
  </tr>
</table></form>
</body>

</html>
