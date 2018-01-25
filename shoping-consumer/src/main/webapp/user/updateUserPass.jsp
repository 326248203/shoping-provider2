<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/14
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form id="updateUserPass-form" method="post">
    <input type="hidden" name="userid" value="${dbuser.userid}">
        <table border="1px" width="360px" height="100px">
        <tr>
            <td width="100px">登陆用户名</td>
            <td width="260px"><input class="easyui-textbox" name="username"
                               value="${dbuser.username}"      style="width:180px">
            </td>
        </tr>
        <tr>
            <td >新密码</td>
            <td ><input class="easyui-textbox" name="userpass"
                                          style="width:180px">
            </td>
        </tr>
    </table>

</form>

</body>
</html>
