<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
  <head>
    <title>My JSP 'yg_add.jsp' starting page</title>
	   <style>
table {
	font-size: 12px;
	margin-top: 0px;
	
}
.STYLE4{font-size:13px; 
          font-weight:bold;}
table tr td {
	border-top: #f2c7da 1px solid;
	border-left: #f2c7da 1px solid;
}
.tianjia{
text-align:center;
font-size:12px;
}
.tianjia a{
text-decoration: none;
color: black;
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
	

<script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script></head>
<!--  清除清缓存代码-->
<% response.setHeader("Pragma","No-cache"); response.setHeader("Cache-Control","no-cache"); response.setDateHeader("Expires", 0); %>  
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">						

<form  method="post" action="../yg_add.action">
<table width="100%" align="center" border="0" cellpadding="0" cellspacing="0" style="border:none;">
    <tr height="25" class="style2">
    	<th colspan="10" align="left">&nbsp;&nbsp;&nbsp;&nbsp;您的位置：员工信息管理 >> 添加员工</th>
    </tr>
 </table><br>
 <table width="95%" height="278" border="0" cellpadding="0" cellspacing="0" align="center" style="text-align:center">
  <tr style="font-size: 14px; font-weight: bold;">
  <td colspan="1"><div class="tianjia"><a href="yg_addall.jsp" style="color:#ff0000;">批量添加</a></div></td>
  
  
   <td height="25" align="center" colspan="6">添加员工</td>
    </tr>
   <tr style="height:25px;">
   <td width="15%">工号</td>
    <td >
         <label>
              <input name="yid" type="text" size="20" onMouseOver="this.style.backgroundColor='#f2c7da'" onMouseOut="this.style.backgroundColor='#FFFFFF'"" style="width:100%;height:90%;border:1px solid #ff99ff;"/>
         </label>
   </td>
    <td width="15%">姓名</td>
    <td width="12%">
          <label>
              <input name="yname" type="text" size="20" onMouseOver="this.style.backgroundColor='#f2c7da'" onMouseOut="this.style.backgroundColor='#FFFFFF'"" style="width:100%;height:90%;border:1px solid #ff99ff;"/>
         </label>
    </td>
    <td width="12%">性别</td>
    <td width="10%">
    <input type="radio" id="sex" value="男" name="ysex" checked="checked"/>
      		  男&nbsp;&nbsp; 
             <input type="radio" id="sex1" value="女" name="ysex" />女
    <!--  <input type="text" name="sex" style="text-align:center;border:none;"/>--></td>
   
  </tr>
  <tr style="height:25px;">
    <td width="15%">年龄</td>
    <td width="15%">
          <label>
              <input name="yold" type="text" size="20" onMouseOver="this.style.backgroundColor='#f2c7da'" onMouseOut="this.style.backgroundColor='#FFFFFF'"" style="width:100%;height:90%;border:1px solid #ff99ff;"/>
         </label>
    </td>
    <td width="15%">政治面貌</td>
    <td width="12%">
          <label>
              <input name="yface" type="text" size="20" onMouseOver="this.style.backgroundColor='#f2c7da'" onMouseOut="this.style.backgroundColor='#FFFFFF'"" style="width:100%;height:90%;border:1px solid #ff99ff;"/>
         </label>
  
    </td>
    <td width="12%">入职日期</td>
    <td width="10%">
         <input type="text" name="yin" class="Wdate" onClick="WdatePicker()" style="width:100%;height:90%;border:1px solid #ff99ff;"/>
     </td>
  </tr>
  <tr style="height:25px;">
    <td width="15%">密 码</td>
    <td width="15%">
          <label>
              <input name="pass" type="text" size="20" onMouseOver="this.style.backgroundColor='#f2c7da'" onMouseOut="this.style.backgroundColor='#FFFFFF'"" style="width:100%;height:90%;border:1px solid #ff99ff;"/>
         </label>
  </td>
    <td width="15%">所属部门 </td>
    <td align="left"> 
    <select id="province" name="ydepartment" onchange="loadCity();"  style="width:110px;">  
           <option value="0">-请选择部门-</option>  
         </select>  
        
									
	 </td>
	<td width="15%">职位</td>
    <td width="12%">
          <select id="city" name="yposition"  style="width:110px;">  
           <option value="0">-请选择职位-</option>  
         </select> 
    </td>
  </tr>
  <tr style="height:25px;">
    <td colspan="1">家庭住址</td>
    <td colspan="5">
           <label>
              <input name="yaddress" type="text" size="20" onMouseOver="this.style.backgroundColor='#f2c7da'" onMouseOut="this.style.backgroundColor='#FFFFFF'"" style="width:100%;height:90%;border:1px solid #ff99ff;"/>
           </label>
    </td>
  </tr>
  <tr style="height:25px;">
    <td colspan="1">现住址</td>
    <td colspan="5">
           <label>
              <input name="ynowaddress" type="text" size="20" onMouseOver="this.style.backgroundColor='#f2c7da'" onMouseOut="this.style.backgroundColor='#FFFFFF'"" style="width:100%;height:90%;border:1px solid #ff99ff;"/>
             </label>
    </td>
  </tr>
  <tr style="height:25px;">
    <td colspan="1">联系电话</td>
    <td colspan="2">
              <label>
              <input name="yphone" type="text" size="20" onMouseOver="this.style.backgroundColor='#f2c7da'" onMouseOut="this.style.backgroundColor='#FFFFFF'"" style="width:100%;height:90%;border:1px solid #ff99ff;"/>
                </label>
    </td>
    <td colspan="1">电子邮箱</td>
	<td colspan="4">
	      <label>
               <input name="yemail" type="text" size="20" onMouseOver="this.style.backgroundColor='#f2c7da'" onMouseOut="this.style.backgroundColor='#FFFFFF'" style="width:100%;height:90%;border:1px solid #ff99ff;"/>
         </label>
</td>
  </tr>
  <tr>
    <td width="15%">备注</td>
    <td colspan="7">
          <textarea name="ggbody" onMouseOver="this.style.backgroundColor='#f2c7da'" onMouseOut="this.style.backgroundColor='#FFFFFF'" style="height:100px; width:100%;border:1px solid #ff99ff;"></textarea>
     </td>
  </tr>
   <tr height="40">
    <td align="center" colspan="13">
    <input type="submit"  style="height:23px; width:50px;font-size:12px;" value="提交""/>
    </td>
  </tr>
</table>




</body>

</html>
