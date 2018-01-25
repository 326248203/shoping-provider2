<%--
  Created by IntelliJ IDEA.
  User: 赵雅楠
  Date: 2017/12/18
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <script type="text/javascript" src="<%=request.getContextPath()%>/My97/My97DatePicker/WdatePicker.js"/>

 </head>

<body>
<form id="biaojiform" >
<table>
    <tr>
        <td>关键词：</td>
        <td><input type="hidden" name="id"><input  name="biaojigjc" placeholder="淘宝订单中包含的关键字"></td>
    </tr>
    <tr>
        <td>适用店铺：</td>
        <td><input name="shiyongdianpu" type="checkbox"  checked="checked" value="全选">全选</td>
    </tr>
    <tr>
        <td>匹配规则：</td>
        <td>
            <input type="checkbox" name="pipeiguize" value="卖家备注">卖家备注
            <input type="checkbox" name="pipeiguize" value="买家留言">买家留言
            <input type="checkbox" name="pipeiguize" value="卖家插旗">卖家插旗
            <select name="pipeiguize">
                <option value="红旗">红旗</option>
                <option value="黄旗">黄旗</option>
                <option value="绿旗">绿旗</option>
                <option value="蓝旗">蓝旗</option>
                <option value="紫旗">紫旗</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>特殊邮费：</td>
        <td>
            <input type="checkbox" >使用固定邮费
            <input name="money">元
        </td>
    </tr>
    <tr>
        <td>系统操作：</td>
        <td><input type="checkbox" name=""  checked="checked" value="特殊订单（不计销售额、宝贝成本，但计运费和交易费用）">特殊订单（不计销售额、宝贝成本，但计运费和交易费用）</td>
    </tr>
    <tr>
        <td>是否重算：</td>
        <td>
            <input type="checkbox">是，订单付款时间
            <input id="d4311" class="Wdate" type="text" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4312\')||\'2030-10-01\'}'})"/>
            -<input id="d4312" class="Wdate" type="text" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}',maxDate:'2030-10-01'})"/>
        </td>
    </tr>
</table>
</form>
</body>
</html>
