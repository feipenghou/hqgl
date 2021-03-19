<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script language="javascript">
 /*
  实现省市级联效果
 */
 var provinces={
  四川省:["成都市",
                "自贡市",
                "攀枝花市",
                "泸州市",
                "德阳市",
                "绵阳市",
                "广元市",
                "遂宁市",
                "内江市",
                "乐山市",
                "南充市",
                "眉山市",
                "宜宾市",
                "广安市",
                "达州市",
                "雅安市",
                "巴中市",
                "资阳市",
                "阿坝藏族羌族自治州",
                "甘孜藏族自治州",
                "凉山彝族自治州"],
  山西省:["太原市",
                "大同市",
                "阳泉市",
                "长治市",
                "晋城市",
                "朔州市",
                "晋中市",
                "运城市",
                "忻州市",
                "临汾市",
                "吕梁市"],
        内蒙古:["呼和浩特市",
                "包头市",
                "乌海市",
                "赤峰市",
                "通辽市",
                "鄂尔多斯市",
                "呼伦贝尔市",
                "巴彦淖尔市",
                "乌兰察布市",
                "兴安盟",
                "锡林郭勒盟",
                "阿拉善盟"],
        辽宁省:["沈阳市",
                "大连市",
                "鞍山市",
                "抚顺市",
                "本溪市",
                "丹东市",
                "锦州市",
                "营口市",
                "阜新市",
                "辽阳市",
                "盘锦市",
                "铁岭市",
                "朝阳市",
                "葫芦岛市"],
        吉林省:["长春市",
                "吉林市",
                "四平市",
                "辽源市",
                "通化市",
                "白山市",
                "松原市",
                "白城市",
                "延边朝鲜族自治州"],
      黑龙江省:["哈尔滨市",
                "齐齐哈尔市",
                "鸡西市",
                "鹤岗市",
                "双鸭山市",
                "大庆市",
                "伊春市",
                "佳木斯市",
                "七台河市",
                "牡丹江市",
                "黑河市",
                "绥化市",
                "大兴安岭地区"],
          上海:["上海"],
          北京:["北京"],
        江苏省:["南京市",
                "无锡市",
                "徐州市",
                "常州市",
                "苏州市",
                "南通市",
                "连云港市",
                "淮安市",
                "盐城市",
                "扬州市",
                "镇江市",
                "泰州市",
                "宿迁市"],
        浙江省:["杭州市",
                "宁波市",
                "温州市",
                "嘉兴市",
                "湖州市",
                "绍兴市",
                "金华市",
                "衢州市",
                "舟山市",
                "台州市",
                "丽水市"],
        安徽省:["合肥市",
                "芜湖市",
                "蚌埠市",
                "淮南市",
                "马鞍山市",
                "淮北市",
                "铜陵市",
                "安庆市",
                "黄山市",
                "滁州市",
                "阜阳市",
                "宿州市",
                "巢湖市",
                "六安市",
                "亳州市",
                "池州市",
                "宣城市"],
        福建省:["福州市",
                "厦门市",
                "莆田市",
                "三明市",
                "泉州市",
                "漳州市",
                "南平市",
                "龙岩市",
                "宁德市"],
        江西省:["南昌市",
                "景德镇市",
                "萍乡市",
                "九江市",
                "新余市",
                "鹰潭市",
                "赣州市",
                "吉安市",
                "宜春市",
                "抚州市",
                "上饶市"],
        山东省:["济南市",
                "青岛市",
                "淄博市",
                "枣庄市",
                "东营市",
                "烟台市",
                "潍坊市",
                "济宁市",
                "泰安市",
                "威海市",
                "日照市",
                "莱芜市",
                "临沂市",
                "德州市",
                "聊城市",
                "滨州市",
                "菏泽市"],
        河南省:["郑州市",
                "开封市",
                "洛阳市",
                "平顶山市",
                "安阳市",
                "鹤壁市",
                "新乡市",
                "焦作市",
                "濮阳市",
                "许昌市",
                "漯河市",
                "三门峡市",
                "南阳市",
                "商丘市",
                "信阳市",
                "周口市",
                "驻马店市"],
        湖北省:["武汉市",
                "黄石市",
                "十堰市",
                "宜昌市",
                "襄樊市",
                "鄂州市",
                "荆门市",
                "孝感市",
                "荆州市",
                "黄冈市",
                "咸宁市",
                "随州市",
                "恩施土家族苗族自治州"],
        湖南省:["长沙市",
                "株洲市",
                "湘潭市",
                "衡阳市",
                "邵阳市",
                "岳阳市",
                "常德市",
                "张家界市",
                "益阳市",
                "郴州市",
                "永州市",
                "怀化市",
                "娄底市",
                "湘西土家族苗族自治州"],
        广东省:["广州市",
                "韶关市",
                "深圳市",
                "珠海市",
                "汕头市",
                "佛山市",
                "江门市",
                "湛江市",
                "茂名市",
                "肇庆市",
                "惠州市",
                "梅州市",
                "汕尾市",
                "河源市",
                "阳江市",
                "清远市",
                "东莞市",
                "中山市",
                "潮州市",
                "揭阳市",
                "云浮市"],
        广西省:["南宁市",
                "柳州市",
                "桂林市",
                "梧州市",
                "北海市",
                "防城港市",
                "钦州市",
                "贵港市",
                "玉林市",
                "百色市",
                "贺州市",
                "河池市",
                "来宾市",
                "崇左市"],
        海南省:["海口市",
                "三亚市"],
        重庆市:["重庆"],
        贵州省:["贵阳市",
                "六盘水市",
                "遵义市",
                "安顺市",
                "铜仁地区",
                "黔西南布依族苗族自治州",
                "毕节地区",
                "黔东南苗族侗族自治州",
                "黔南布依族苗族自治州"],
        云南省:["昆明市",
                "曲靖市",
                "玉溪市",
                "保山市",
                "昭通市",
                "丽江市",
                "思茅市",
                "临沧市",
                "楚雄彝族自治州",
                "红河哈尼族彝族自治州",
                "文山壮族苗族自治州",
                "西双版纳傣族自治州",
                "大理白族自治州",
                "德宏傣族景颇族自治州",
                "怒江傈僳族自治州",
                "迪庆藏族自治州"],
    西藏自治区:["拉萨市",
                "昌都地区",
                "山南地区",
                "日喀则地区",
                "那曲地区",
                "阿里地区",
                "林芝地区"],
        陕西省:["西安市",
                "铜川市",
                "宝鸡市",
                "咸阳市",
                "渭南市",
                "延安市",
                "汉中市",
                "榆林市",
                "安康市",
                "商洛市"],
        甘肃省:["兰州市",
                "嘉峪关市",
                "金昌市",
                "白银市",
                "天水市",
                "武威市",
                "张掖市",
                "平凉市",
                "酒泉市",
                "庆阳市",
                "定西市",
                "陇南市",
                "临夏回族自治州",
                "甘南藏族自治州"],
       青海省:["西宁市",
                "海东地区",
                "海北藏族自治州",
                "黄南藏族自治州",
                "海南藏族自治州",
                "果洛藏族自治州",
                "玉树藏族自治州",
                "海西蒙古族藏族自治州"],
    宁夏自治区:["银川市",
                "石嘴山市",
                "吴忠市",
                "固原市",
                "中卫市"],
    新疆自治区:["乌鲁木齐市",
                "克拉玛依市",
                "吐鲁番地区",
                "哈密地区",
                "昌吉回族自治州",
                "博尔塔拉蒙古自治州",
                "巴音郭楞蒙古自治州",
                "阿克苏地区",
                "克孜勒苏柯尔克孜自治州",
                "喀什地区",
                "和田地区",
                "伊犁哈萨克自治州",
                "塔城地区",
                "阿勒泰地区"],
        台湾省:["台北市"],
      香港特区:["香港"],
      澳门特区:["澳门"]};
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
  opt.innerText="--请选择城市--";
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
	<script type="text/javascript">        
	function texiao(form) {            
		var DNameValue = document.getElementById("DName").value;
		var DAddressValue = document.getElementById("DAddress").value;
		var DCareidValue = document.getElementById("DCareid").value;
		var DPhoneValue = document.getElementById("DPhone").value;
		var DEmailValue = document.getElementById("DEmail").value; 
        if(DNameValue.length==0){
        	alert("请输入姓名");
        	return false;
        }
        else if(/^[u4E00-u9FA5]+$/.test(DNameValue)){
        	alert("您好，姓名只能输入汉字！！！");
        	document.getElementById("DName".value="");
        	return false;
        }
        if(DAddressValue.length==0){
        	alert("你好，请输入地址！");
        	return false;
        }
        else if(/^[u4E00-u9FA5]+$/.test(DAddressValue)){
        	alert("你好，地址只能输入汉字！");
        	document.getElementById("DAddress".value="");
        	return false;
        }
        if(DCareidValue.length==0)
  			{
  				alert("请填写您的身份证号！");
  				return false;
  			}
  			else if(!DCareidValue.match(/^[0-9]{18}$/))
  			{
  				alert("身份证号码确认为18位吗？");
  				return false;
  			}
        if(DPhoneValue.length==0){
        	alert("请输入联系电话！");
        	return false;
        }
        else if(!DPhoneValue.match(/^[0-9]{11}$/)){
        	alert("你好，请输入正确的联系方式！");
        	return false;
        }
	}  
	
	<!-- 验证电子邮件地址 -->
	function isEmail(strEmail) {
		if (strEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
		return true;
		else
		alert("邮箱格式错误，请重新输入！");
	}
	
	  
</script>

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
  </head>
  
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">	

     <form action="pttianjia.action" method="post" onsubmit="return texiao()">
 <table  cellspacing="0" align="center"style="height:380px;border-collapse: collapse; margin-top:35px;" >
      <tr>
 					<td align="center" height="25"  style="font-size:14px;
   					 font-weight:bold;" colspan="4">
 				订单表
 					</td>
					<td align="center" ><input  style="margin-right:25px;" type="hidden"  name="DNumber" id="d_number"/> 
					</td>
	             </tr>
					<tr>
					<td align="center" style="font-size:12px;"height="35">
					预约人姓名</td>
					<td align="center" ><input style="margin-right:25px;"type="text" name="DName" id="DName" style="width:160px; height:25px;"/> 
					</td>
	
					<td align="center" style="font-size:12px;" height="35px">
					预约人性别</td><td align="center"  colspan="1">
					<select name="DSex" style="width:160px;" >
			  		<option>男</option>
			  		<option>女</option>
			  	</select>
					</td>
					</tr>
					<tr>
					<td align="center" style="font-size:12px;" height="35px">
					预约日期</td><td align="left" colspan="0">
					<input type="text"   name="DRiqi" onClick="setDayHM(this,'yyyy年MM月dd日 hh时mm分ss秒',0,-150);" style=" width:160px;border:1px solid #999999;">
					</td>
					<td align="center" style="font-size:12px;"  height="35" >
					身份证号</td><td align="center">
					<input type="text" name="DCareid" id="DCareid" style="width:160px; height:25px;" />						
					</td>
					</tr>
					<tr>
					<td align="center" style="font-size:12px;" height="35">
					联系电话</td><td align="left">
					<input type="text" name="DPhone" id="DPhone" style="width:160px; height:25px;" />						
					</td>
					<td align="center" style="font-size:12px;" height="35" >
					电子邮箱</td><td align="center">
					<input type="text" name="DEmail" onblur="isEmail(this.value)" id="DEmail" style="width:160px; height:25px;" />						
					</td>				
					
					</tr><tr>
					
					<td  align="center" style="font-size:12px;" height="35">
					家庭住址</td>
					<td colspan="4"><select align="left" style="width:160px; height:25px;" id="province" name="DAddress"  onchange="loadCity();"  >  
                         <option value="0">--选择省份--</option>  
                  </select> &nbsp; &nbsp; &nbsp; &nbsp;  
                  <select style="width:160px; height:25px;"id="city" name="address" >  
                    <option value="0">--选择市城镇--</option>  
                  </select> 
                  </td>
					</tr>
					<tr>
					<td align="center" height="30" colspan="4">
					<input type="submit" style="height:25px; margin-right:40px" value="添加">			
					<input type="reset" style="height:25px;" value="重置">
					</td>
				</tr>
	 </table>  
  </form>  
  </body>
</html>
