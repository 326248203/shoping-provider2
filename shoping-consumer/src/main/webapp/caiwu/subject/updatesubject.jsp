<%--
  Created by IntelliJ IDEA.
  User: 赵雅楠
  Date: 2017/12/19
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="subjectform" >
<table>
    <tr>
        <td>所属一级科目</td>
        <td><input type="hidden" name="id" value="${sub.id}"><input name="pid" value="${sub.pid}"></td>
    </tr>
    <tr>
        <td>所属二级科目</td>
        <td><input name="text" value="${sub.text}"></td>
    </tr>
    <tr>
        <td>所属类别</td>
        <td><input name="leibie" value="${sub.leibie}"></td>
    </tr>

</table>
</form>
</body>
</html>
