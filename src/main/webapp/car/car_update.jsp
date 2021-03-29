<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="utf-8" %>
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
<%
    List list = (List) request.getAttribute("carid");
    Car car = (Car) list.get(0);
%>
<div style="height:30px;font-size:12px;padding-top:30px;padding-left:30px;">当前位置:<strong>&gt;&gt;修改花车资料</strong></div>
<form action="car_update.action" method="post">
    <table width="85%" cellspacing="0" align="center">
        <tr>
            <td align="center" height="30" style="font-size:12px;" colspan="5">
                修改花车详细资料
            </td>
        </tr>
        <tr>
            <td align="center" rowspan="3" width="150">基本信息</td>
            <td align="center" height="30" width="100">编号</td>
            <td><%=car.getId()%></td>
            <td align="center" height="30" width="100">
                品牌
            </td>
            <td><%=car.getPingpai()%></td>
        </tr>
        <tr>
            <td align="center" height="30">
                购买时间
            </td>
            <td>
                <%
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                %>
                <%=sdf.format(car.getShop()) %>
            </td>
            <td align="center" height="30">
                司机
            </td>
            <td><input type="text" name="people" value="<%=car.getPeople()%>"/>
            </td>

        </tr>
        <tr>
            <td align="center" height="30">
                容纳人数
            </td>
            <td>
                <%=car.getCount()%>    人
            </td>
            <td align="center" height="30">
                车牌号码
            </td>
            <td>
                <%=car.getCarid()%>
            </td>
        </tr>
        <tr>
            <td align="center" rowspan="6" width="150">详细信息</td>
            <td align="center" height="30" width="100">
                车型
            </td>
            <td><%=car.getStyle()%>
            </td>
            <td align="center" height="30">
                颜色
            </td>
            <td><%=car.getColor()%>
            </td>
        </tr>
        <tr>
            <td align="center" height="30">
                价格
            </td>
            <td>￥：&nbsp;&nbsp;<%=car.getPrice()%>万
            </td>
            <td align="center" height="30">
                经销商
            </td>
            <td>
                <%=car.getJing()%>
            </td>
        </tr>
        <tr>
            <td align="center" height="30">
                油耗
            </td>
            <td>
                <%=car.getYouhao()%>&nbsp;L/百公里
            </td>

            <td align="center" height="30">
                加速
            </td>
            <td>
                <%=car.getJiasu()%>&nbsp;S
            </td>
        </tr>
        <tr>
            <td align="center" height="30">
                刹车
            </td>
            <td>
                <%=car.getShache()%>&nbsp;S
            </td>
            <td align="center" height="30">
                保险
            </td>
            <td>
                <%=car.getBaoxian()%>&nbsp;年
            </td>
        </tr>
        <tr>
            <td align="center">违章记录</td>
            <td><input type="text" name="weizhang" value="<%=car.getWeizhang() %>"/>次</td>
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
            <td><%=car.getShuxing() %></td>
            <td align="center">级别</td>
            <td height="30"><%=car.getJibie()%>级</td>
        </tr>
        <tr height="165">
            <td align="center">汽车展示</td>
            <td align="center">图片展示</td>
            <td>
                <IMAGE SRC="img/<%=car.getImage()%>"/>
            </td>
            <td align="center">汽车描述</td>
            <td><%=car.getShangbiao()%>
            </td>
        </tr>
        <tr>
            <td align="center">备注</td>
            <td colspan="4">
					<textarea name="beizhu" id="beizhu" style="width:550px;height:80px;font-size:12px;line-height:30px;"><%=car.getBeizhu()%></textarea>
            </td>
        </tr>
        <tr>
            <td align="center" height="30" colspan="5">
                <input type="submit" style="height: 25px;" value="确定">
                <input type="button" style="height: 25px;" onClick="location='car.action'" value="返回">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
