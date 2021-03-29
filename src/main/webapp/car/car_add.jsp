<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.hqgl.hib.po.Car" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>My JSP 'car_update.jsp' starting page</title>
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
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f2c7da,endColorStr=#ffffff)">
<div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:<strong>&gt;&gt;添加花车资料</strong></div>
<form action="upload3.action" method="post" enctype="multipart/form-data">
    <table width="85%" cellspacing="0" align="center">
        <tr>
            <td align="center" height="30" style="font-size:12px;" colspan="5">
                添加花车资料
            </td>
        </tr>
        <tr>
            <td align="center" rowspan="2" width="100">基本信息</td>
            <td align="center" height="30" width="100">
                品牌
            </td>
            <td><input type="text" name="pingpai">
            </td>
            <td align="center" height="30" width="100">
                司机
            </td>
            <td><input type="text" name="people"/>
            </td>
        </tr>
        <tr>
            <td align="center" height="30">
                容纳人数
            </td>
            <td>
                <input type="text" name="count">    人
            </td>
            <td align="center" height="30">
                车牌号码
            </td>
            <td>
                <input type="text" name="carid">
            </td>
        </tr>
        <tr>
            <td align="center" rowspan="6">详细信息</td>
            <td align="center" height="30">
                车型
            </td>
            <td><select name="style" style="align:center;width:150px;">
                <option value="轿车">轿车</option>
                <option value="微型">微型</option>
                <option value="轻型">轻型</option>
                <option value="中型">中型</option>
                <option value="大型">大型</option>
            </select></td>
            <td align="center" height="30">
                颜色
            </td>
            <td><select name="color" style="align:center;width:150px;">
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
                价格
            </td>
            <td>￥：&nbsp;&nbsp;<input type="text" name="price">万
            </td>
            <td align="center" height="30">
                经销商
            </td>
            <td>
                <input type="text" name="jing">
            </td>
        </tr>
        <tr>
            <td align="center" height="30">
                油耗
            </td>
            <td>
                <input type="text" name="youhao">&nbsp;L/百公里
            </td>

            <td align="center" height="30">
                加速
            </td>
            <td>
                <input type="text" name="jiasu">&nbsp;S
            </td>
        </tr>
        <tr>
            <td align="center" height="30">
                刹车
            </td>
            <td>
                <input type="text" name="shache">&nbsp;S
            </td>
            <td align="center" height="30">
                保险
            </td>
            <td>
                <input type="text" name="baoxian">&nbsp;年
            </td>
        </tr>
        <tr>
            <td align="center">违章记录</td>
            <td><input type="text" name="weizhang"/>次</td>
            <td align="center" height="30">
                状态
            </td>
            <td>
                <input type="radio" name="zhuangtai" value="已用"/>已用&nbsp;&nbsp;
                <input type="radio" name="zhuangtai" value="未用" checked="checked"/>未用
                <input type="radio" name="zhuangtai" value="报废"/>报废
            </td>
        </tr>
        <tr height="30">
            <td align="center">属性</td>
            <td><input type="text" name="shuxing"></td>
            <td align="center">级别</td>
            <td height="30">
                <input type="radio" name="jibie" value="一" checked="checked"/>一&nbsp;&nbsp;
                <input type="radio" name="jibie" value="二"/>二
                <input type="radio" name="jibie" value="三"/>三
        </tr>
        <tr height="30">
            <td rowspan="1" align="center">汽车信息</td>
            <td align="center">图片展示</td>
            <td><input type="file" style="width:150px;" name="upload"></td>
            <td align="center">汽车描述</td>
            <td><input type="text" name="shangbiao"></td>
        </tr>
        <tr>
            <td align="center">备注</td>
            <td colspan="4">
                <textarea name="beizhu" id="beizhu" style="width:550px;height:80px;font-size:12px;line-height:30px;"></textarea>
            </td>
        </tr>
        <tr>
            <td align="center" height="30" colspan="5">
                <input type="submit" style="height: 25px;" value="确定">
                <input type="reset" style="height: 25px;" value="重置">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
