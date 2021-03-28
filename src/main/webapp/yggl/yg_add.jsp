<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>

<html>
<head>
    <title>yg_add.jsp</title>
    <style>
        table {
            font-size: 12px;
            margin-top: 10px;
            border-right: #f2c7da 1px solid;
            border-bottom: #f2c7da 1px solid;
        }
        table td {
            border-top: #f2c7da 1px solid;
            border-left: #f2c7da 1px solid;
        }
    </style>
    <script language="javascript">
        /*
         实现省市级联效果
        */
        var provinces = {
            策划部: ["普通员工",
                "布置员工",
                "策划人员",
                "策划负责人",
                "策划经理",
                "策划总监"],
            销售部: ["员工",
                "领班",
                "组长",
                "班长",
                "科长",
                "副经理",
                "总经理",
                "文员"],
            化妆部: ["员工",
                "化妆技术员",
                "助理",
                "化妆师",
                "化妆设计师"],
            司仪部: ["普通司仪",
                "司仪助理",
                "司仪师"],
            摄影部: ["员工",
                "摄影师 ",
                "设计员",
                "设计师",
                "摄影员",
                "编辑员",
                "编辑师"]
        };

        //加载省
        function loadProvince() {
            //获取省所对应的列表框对象
            var pro = document.getElementById("province");
            //从数组中提取省份信息
            for (var p in provinces) {
                //创建option元素
                var opt = document.createElement("option");
                //设置option元素中的信息
                opt.innerText = p;
                opt.value = p;
                //将option元素添加到select元素中(option是select的子节点)
                pro.appendChild(opt);
            }
        }

        //加载市
        function loadCity() {
            //获取用户的省份
            var selectProvince = document.getElementById("province").value;
            //根据省获取市(citys是一个数组)
            var citys = provinces[selectProvince];
            //获取市所对应的列表框对象
            var city = document.getElementById("city");
            //将元素列表框中的元素全部清空
            city.innerText = "";

            var opt = document.createElement("option");
            opt.innerText = "--请选择职位--";
            opt.value = "0";
            city.appendChild(opt);
            for (var index = 0; index < citys.length; index++) {
                opt = document.createElement("option");
                opt.innerText = citys[index];
                opt.value = citys[index];
                city.appendChild(opt);
            }
        }

        //在窗口加载时添加省份信息
        window.onload = loadProvince;
    </script>
    <script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">
<div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:&gt;<strong>&gt;添加员工</strong></div>
<form method="post" action="../yg_add.action">
    <table width="85%" cellspacing="0" align="center">
        <tr>
            <td align="center" style="font-size:12px; height:35px;" colspan="8">添加员工</td>
        </tr>
        <tr>
            <td width="10%" height="30" align="center">工号</td>
            <td width="15%" style="padding-left:5px;"><input type="text" size="8" name="yid"></td>
            <td width="10%" height="30" align="center">姓名</td>
            <td width="15%" style="padding-left:5px;"><input type="text" size="8" name="yname"></td>
            <td width="10%" height="30" align="center">性别</td>
            <td width="15%" style="padding-left:5px;">
                <input type="radio" id="sex" value="男" name="ysex" checked="checked"/>
                男&nbsp;&nbsp;
                <input type="radio" id="sex1" value="女" name="ysex"/>女
            </td>
        </tr>
        <tr>
            <td width="10%" height="30" align="center">年龄</td>
            <td width="15%" style="padding-left:5px;"><input type="text" size="8" name="yold"></td>
            <td width="10%" height="30" align="center">政治面貌</td>
            <td width="15%" style="padding-left:5px;"><input type="text" size="8" name="yface"></td>
            <td width="10%" height="30" align="center">入职日期</td>
            <td width="15%" style="padding-left:5px;">
                <input type="text" size="10" class="Wdate" onClick="WdatePicker()" name="yin">
            </td>
        </tr>
        <tr>
            <td width="10%" height="30" align="center">密 码</td>
            <td width="15%" style="padding-left:5px;"><input type="text" size="12" name="pass"></td>
            <td width="10%" height="30" align="center">所属部门</td>
            <td width="15%" style="padding-left:5px;">
                <select id="province" name="ydepartment" onchange="loadCity();">
                    <option value="0">-请选择部门-</option>
                </select>
            </td>
            <td width="10%" height="30" align="center">职位</td>
            <td width="15%" style="padding-left:5px;">
                <select id="city" name="yposition">
                    <option value="0">-请选择职位-</option>
                </select>
            </td>
        </tr>
        <tr>
            <td width="10%" height="30" align="center">家庭住址</td>
            <td width="15%" style="padding-left:5px;"><input name="yaddress" type="text" size="25"></td>
            <td width="10%" height="30" align="center">现住址</td>
            <td width="15%" style="padding-left:5px;"><input name="ynowaddress" type="text" size="25"></td>
            <td width="10%" height="30" align="center">联系电话</td>
            <td width="15%" style="padding-left:5px;"><input name="yphone" type="text" size="20"></td>
        </tr>
        <tr>
            <td width="10%" height="30" align="center">电子邮箱</td>
            <td width="15%" style="padding-left:5px;"><input name="yemail" type="text" size="20"></td>
            <td width="10%" height="30" align="center">备注</td>
            <td colspan="3" style="padding-left:5px;">
                <textarea name="beizhu" style="height:100px; width:100%;font-size:12px;line-height:25px;"></textarea>
            </td>
        </tr>
        <tr height="30px">
            <td align="center" colspan="13">
                <input type="submit" style="height:23px; width:50px;" value="提交"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
