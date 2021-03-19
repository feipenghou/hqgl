<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqgl.hib.po.Ygjbxxb"%>

<html>
<head>
<title></title>
<style>
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE2 {font-size: 13px}
.STYLE3 {font-size: 13px}
</style>
<script language="javascript">
	function addRow(obj)
    {
    	//添加行
        var newTr = testTbl.insertRow();
        //添加列
        var newTd0 = newTr.insertCell();
        var newTd1 = newTr.insertCell();
        var newTd2 = newTr.insertCell();
        var newTd3 = newTr.insertCell();
        var newTd4 = newTr.insertCell();
        var newTd5 = newTr.insertCell();
        var newTd6 = newTr.insertCell();
        var newTd7 = newTr.insertCell();
        var newTd8 = newTr.insertCell();
        var newTd9 = newTr.insertCell();
        var newTd10 = newTr.insertCell();
        var newTd11 = newTr.insertCell();
        
    
      //设置列内容和属性
        newTd0.innerHTML = '<div style="bgcolor:#FFFFFF; text-align:center; "><input type=text name="firstplid" style="width:100%;height:100%;border:1px solid #f2c7da;"/><div>'; 
        newTd1.innerHTML = '<div style="bgcolor:#FFFFFF; text-align:center; "><input type=text name="firstplname" style="width:100%;height:100%;border:1px solid #f2c7da;"/><div>';
        newTd2.innerHTML = '<div style="bgcolor:#FFFFFF; text-align:center; "><input type=text name="firstplpass" style="width:100%;height:100%;border:1px solid #f2c7da;"/><div>';
        newTd3.innerHTML = '<div style="bgcolor:#FFFFFF; text-align:center; "><input type=text name="firstplsex" style="width:100%;height:100%;border:1px solid #f2c7da;"/><div>';
        newTd4.innerHTML = '<div style="bgcolor:#FFFFFF; text-align:center; "><input type=text name="firstplold" style="width:100%;height:100%;border:1px solid #f2c7da;"/><div>';
        newTd5.innerHTML = '<div style="bgcolor:#FFFFFF; text-align:center; "><input type=text name="firstplyin" style="width:100%;height:100%;border:1px solid #f2c7da;"/><div>';
        newTd6.innerHTML = '<div style="bgcolor:#FFFFFF; text-align:center; "><input type=text name="firstplface" style="width:100%;height:100%;border:1px solid #f2c7da;"/><div>';
        newTd7.innerHTML = '<div style="bgcolor:#FFFFFF; text-align:center; "><input type=text name="firstpladdress" style="width:100%;height:100%;border:1px solid #f2c7da;"/><div>';
        newTd8.innerHTML = '<div style="bgcolor:#FFFFFF; text-align:center; "><input type=text name="firstplnowaddress" style="width:100%;height:100%;border:1px solid #f2c7da;"/><div>';
        newTd9.innerHTML = '<div style="bgcolor:#FFFFFF; text-align:center; "><input type=text name="firstplphone" style="width:100%;height:100%;border:1px solid #f2c7da;"/><div>';
        newTd10.innerHTML = '<div style="bgcolor:#FFFFFF; text-align:center; "><input type=text name="firstplemail" style="width:100%;height:100%;border:1px solid #f2c7da;"/><div>';
        newTd11.innerHTML = '<div style="bgcolor:#FFFFFF; text-align:center; "><input type=text name="firstplbeizhu" style="width:100%;height:100%;border:1px solid #f2c7da;"/><div>';
    }
	function removerow(){
    var o = document.getElementById('testTbl');
   	if(o.rows.length>3){
      var remdobj = o.firstChild.removeChild(o.rows(o.rows.length-1));
   }
}
</script>

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
<body  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)"> 

<form name="form" action="../ygpladd1.action" method="post">
        				
<table width="100%" align="center" border="0" cellpadding="0" cellspacing="1" id="testTbl">
    <tr height="22" class="style2">
    	<th colspan="12" align="left">当前位置：批量添加员工信息</th>
    </tr><br>
    <tr height="22" class="style3" style="padding-top:20px;" >
    	<th colspan="5" align="right">批量添加:</th>
    	<th colspan="2" align="center">请选择部门：</th>
    	<th colspan="2" align="left">
        <select id="province" name="firstpldepartment" onchange="loadCity();"  style="width:110px;">  
           <option value="-请选择部门-">-请选择部门-</option>  
         </select> 
	    </th>
	    <th colspan="1" align="center" >请选择职位：</th>
	    <th colspan="2" align="left">
	    <select id="city" name="firstplposition"  style="width:110px;">  
           <option value="-请选择职位-">-请选择职位-</option>  
         </select> 
	    </th>
    </tr><br>
       <tr class="STYLE1" height="25" >
    	<td align="center" width="5%">工号</td>
    	<td align="center" width="5%">姓名</td>
    	<td align="center" width="5%">密码</td>
    	<td align="center" width="5%">性别</td> 
    	<td align="center" width="5%">年龄</td> 
    	<td align="center" width="7%">入职日期</td> 
        <td align="center" width="9%">政治面貌</td> 
    	<td align="center" width="9%">家庭住址</td> 
    	<td align="center" width="10%">现住址</td> 
    	 <td align="center" width="9%">联系电话</td> 
    	 <td align="center" width="9%">电子邮箱</td> 
    	<td align="center" width="9%">备注</td> 
    
    	<td>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr class="STYLE1">
                <td align="center">增减个数</td>
                <td align="center">
                	<input type="button" value="+" onclick="addRow();"/>
                	<input type="button" value="-" onclick="javascript:removerow();"/></td>
            </tr>
        </table>
        </td>
    </tr>     
    <tr height="25" class="STYLE1" bgcolor="#FFFFFF">            					
          <td><input type="text" name="firstplid" style="width:100%;height:90%;border:1px solid #f2c7da;" ></td> 
          <td><input type="text" name="firstplname" style="width:100%;height:90%;border:1px solid #f2c7da;"></td>
          <td><input type="text" name="firstplpass" style="width:100%;height:90%;border:1px solid #f2c7da;"></td>
          <td><input type="text" name="firstplsex" style="width:100%;height:90%;border:1px solid #f2c7da;"></td>
          <td><input type="text" name="firstplold" style="width:100%;height:90%;border:1px solid #f2c7da;"></td>
           <td><input type="text" name="firstplyin" style="width:100%;height:90%;border:1px solid #f2c7da;"></td>
          <td><input type="text" name="firstplface" style="width:100%;height:90%;border:1px solid #f2c7da;"></td>
          <td><input type="text" name="firstpladdress" style="width:100%;height:90%;border:1px solid #f2c7da;"></td>
          <td><input type="text" name="firstplnowaddress" style="width:100%;height:90%;border:1px solid #f2c7da;"></td>
          <td><input type="text" name="firstplphone" style="width:100%;height:90%;border:1px solid #f2c7da;"></td>
          <td><input type="text" name="firstplemail" style="width:100%;height:90%;border:1px solid #f2c7da;"></td>
          <td><input type="text" name="firstplbeizhu" style="width:100%;height:90%;border:1px solid #f2c7da;"></td>
    </tr>
</table>

<table width="100%" border="0">
	<tr align="center"　class="STYLE1">
    	<td width="100%" height="20">            						
    		<input type="submit" value="添加"></input>　
			<input type="reset" value="重置"></input>
		</td>            		
    </tr>          					
</table>           			
						
</body>
</html>
