<%--
  Created by IntelliJ IDEA.
  User: 赵雅楠
  Date: 2018/1/17
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <td>订单编号</td>
        <td><input type="hidden"  name="id" value="${ord.id}"><input  name="ordernumber" value="${ord.ordernumber}"></td>
    </tr>
    <tr>
        <td>账号</td>
        <td><input  name="zhanghao" value="${ord.zhanghao}"></td>
    </tr>
</table>
</body>
</html>
