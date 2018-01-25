<%--
  Created by IntelliJ IDEA.
  User: 赵雅楠
  Date: 2017/12/19
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="addsubjectform">
<table>
    <tr>
        <td>科目名称</td>
        <td><input name="text"></td>
    </tr>
    <tr>
        <td>所属类型</td>
        <td>
            <select name="leibie">
                <option value="填写类型">填写类型</option>
                <option value="支出">支出</option>
                <option value="收入">收入</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>所属一级科目</td>
        <td>
            <select name="pid">
                <option value="所属一级科目">所属一级科目</option>
                <option value="主营业务收入">主营业务收入</option>
                <option value="店铺装潢">店铺装潢</option>
                <option value="邮费">邮费</option>
                <option value="员工薪资">员工薪资</option>
                <option value="日常开支">日常开支</option>
            </select>
        </td>
    </tr>
</table>
</form>
</body>
</html>
