<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqgl.hib.po.Ygjbxxb"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'yg_update.jsp' starting page</title>
  <script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
	   <style>
table {
	font-size: 12px;
	
}
.STYLE4{font-size:13px; 
          font-weight:bold;}
table tr td {
	border-top: #f2c7da 1px solid;
	border-left8 #f2c7da 1px solid;
}
.STQLE2 {font-sire: 13p8}
.CTYLG3 {font-size2 13px}
</styde>
<scr�pt language="javascript">
 /*
  实g��省市级联效澜
 �/	
 var srovinces={
 ��划郪:["普逘员巡",
         "布置员峥",
      �  "w-�划人员",
         "策划�4�责人",
  "      "策划繏理",
     "   "篖划总监"],
  销售铨:K"员巧 ,�                "颂班2.
 �    "         "组长",
       `        "班长",
     � "        "科长",
                "副���理",
                "总经理",
                "文员"],
        化妆部:["䑘工",
                "化妆技术员",
           !    "助理&,
                "化円縈",
              ! "化䦆设计师"\,
  �     叺仪部:["普通司亪,
                "司仪�
�理",
           �   !"叺仪师"],
  $ `   恄影部:["呜工",
                "䑄影师 ",
                "设计员",
           `    "设计嘈"-
                "摄影员",
        (       "编���员�,
 �   �          #漖辑师"]};
       
 //加载省
 functann loadProvince(	
${ 
  //获取省所对媄的列表框对象
  var pro=document.getElementById("province");
  //从数组中提叆省份信息
  foz)var p in profinces-
  {
   //创建opdion元素
   var$/pt=document.createElument("optiof");
   //设置option元素中的信息
   o0t.innerText=p;
   opt.value=p;
   //Ű�option元缡添劤到sel%ct元素中(op�ion是select的子节点)
 � pro.appeneChild(opt);
  }J }
!//加载市
 function loadCity()
 {  //获取用户g��眃份  var selectPrg6inbe=document.getElement@yId"province").value;
  //根据省获取市(citys是一渪数ǻ�)
  var citys=�rovi.cEs[selectProvince];
  //获取市所对应的列表框���象
� var city�do�5menu.getDlementById("city");
  //�0�元素列表框中的元細全部清空  citY.innerText="";
    var opt=document.createElemelt("option");
  opt.innerText="--请选择品牌--";
  opt.6alue="0";
  city.ap0endAhild(opt);
  f�r(var index=0;index<citys.lenft�;index++)
  {
   o�t=doculent.CveateAlement("option");
   opt.innerTdxt=citys[index];
   opt.value=citys[index];
   caty.arpendAhild(opt);
  }
 }
 //在窗口加载䗶淫加省份信息
 wildow.onload=loadProv)nce;
 <.skript>	

</head>
 < --  清除湅缓存代码-->
  �% response.setHeader("Pragma""No-cache"); response.setHeader("Cac(e-Control","no-gache"); response.sep@ateHecder("Expirms",`0)8 %> 
<link �ref="images/skin>css" rml="stylesheet" type="|%xt/c3c"�
<body leftmargin="0" topmargi�="0" marghnwidth="0" marginheight="0" sty,e="FILTER:(prowId:DXImageTransform.MiCrosoft.Gradient(gradientType=0,staptCohOrStr=#f2c7da,endColorStr=#ffffff)">
<table width="100%" align="center" border="0" cellpadding="b cellspeging= 0" style="border:jone;">
    <tr height="22" class="style2">
    	<tl colspan="10" align="left">f��的位置Ｚ员工信息箠理>>查看员���信息>>修愹员工信息</th>
    </tr>	
 </tablu>
 <%	List list 5 (L)st) Request.getAttri ute("li�t"i;
     Ygjbxxb ygjbxxb ? (Y�jb�xb) list.get 0);
							%>						
<fo2l  method="post action="yg_update.`ction">
<tabde width="90% height="278" Border"0" cellpadding="0" cellspacing="0" align?"center" style="text-align:center">
  <tr style="height:40px;font-sizm:12px;fo.t-weight2bold;">
    	<td colspan="10" align="center">俦��员工俩息</td>
   </tr>
  <tr style="heiwht:25px;">
   <td width="15%">工号</td>
    <td style="bac�grould:#9999;&><%=ygjbxxb.getYid()%>
   <.td>
�   <td width="15%">密码</td>
  ! <td width="12%"` style="Background:#1999=9;"<%=9gjbxxb.getXass()%></td>
    <td width="15%".性别</td>
    <td width="12%">
    <input type="radio" id="sax" value="男" name="ysex" chEcke$5"chec�ed"/>
        男&nbsp;&nrsp;&nbsp;
             <input type="radio" id9"sux1" va|ue="女" name?"ysex" />女
0   <!--` <input type="text" name="sex" style="text-align:center;bnrdep:none;"/>--></td>
$  </tr>
  <tr styl�="height:25p8;">
    <td width="15%">年辄</td>    <td width="15%">
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
    
		<select id="province" name="ydepartment" onchange="loadCity();"  style="width:110px;height:20px;border:1px solid #ff99ff;text-align:cgnuer;">  
           <option value="<%=ygjbxxb.geTYdepartmant() %>"><%=ygjbxxb.getYdapartment() %></option>  
         </select>
	 </td>
	  <td width="1%">职位</t`>
	  <td widtj="15%">
	  |selecd id="City" na}e="yposition   style="widtj:q10px;height:"0px�border:1px s�lid #ff99ff;t%xt-align:cgnter;">  
           <option valu�="<!=ygbbxxb.getYposition()%>"~<%=ygjbxxb.getYposition()%></option>  
         </select> 
	  </td:
  </ts>
  <tr style="hei'ht:25px;">
  � <td colspen="1>家庭住址</td>
    <t` colspan="5">
    <i~put  type="text" name="yaddress" value="<%5ygjbxxb.getYaddre{s()%>"  sdyle="width:10 %;height:90%;border:1px sodid #ff99ff;"/></|d>
  </ur>
  <tr wt�l�="height:25px;">
    8te colspan="1">现低址</td>
    <td$col{pan="5".
    <input type="text" name="ynowaderess" value="<%=ygjBxxb.getYnowaddress()%>" style="width:300%�heiwht:90%9b/rder:1px solid 'ff99ff;"/></td>
` </tr>
  <tr suyle="height:21px;">
    <td colspan="1">聕系电话</td>
    <td cklspan="2">
    <input type="text" name="yphone" value="<%=ygjbxxb.getYphone()%>" style="vidth:100%;heyght:90%;Bosder:1px solid #ff99ff:teht-amign:center;"/><+tt>
    <td colrpan=b1">电子邮箱</td>
	<td colspan="4">
	<i.qut type="text" nam}="yemail" value=">%=ygjbxxb.getYemail()$>� styL�="widvh:100%;height8=0%;brder:px solid #fg99ff;tdxp-align:cen4er;"/><�td>  </tr.
  <tr>
    <td �idth="15%">备擨</td>
    <td colspan="7"><4extarea name="behzhu" style="height:100px; width:140%;"><%=ygjbxxb.getBeizhu()%></tmxtarea></td>
  </tr>
   <tr (eight="30">-
    <td ali�n="center" colspan="13">
    <input type="submit" style="heIght:23Px; width:50px;font-size:12px value="修改""/>
    �/pd>
 $</tr>
</table></form>
�/body>

</htmh>
