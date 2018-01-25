<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/14
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <form id="addUser-form" method="post">
              <table border="1px" width="740px" height="380px">
                  <tr>
                      <td width="120px">登陆用户名</td>
                      <td width="260px"><input class="easyui-textbox" name="username"
                                  style="width:180px">
                      </td>
                      <td width="120px">姓名</td>
                      <td width="260px">
                          <input class="easyui-textbox" name="userrelname"
                                  style="width:180px">
                      </td>
                  </tr>
                  <tr>
                      <td width="120px">编号</td>
                      <td width="260px"><input class="easyui-textbox" name="userbianhao"
                                               style="width:180px">
                      </td>
                      <td width="120px">用户密码</td>
                      <td width="260px">
                          <input class="easyui-textbox" name="userpass"
                                 style="width:180px">
                      </td>
                  </tr>
                  <tr>
                      <td width="120px">性别</td>
                      <td width="260px">
                          <input type="radio" name="usersex" value="0">男
                          <input type="radio" name="usersex" value="1">女

                      </td>
                      <td width="100px">手机号码</td>
                      <td width="260px">
                          <input class="easyui-textbox" name="userphone"
                                 style="width:180px">
                      </td>
                  </tr>
                  <tr>
                      <td width="120px">出生日期</td>
                      <td>
                          <input   type= "text" style="width:180px" name="starttime"
                                   class= "easyui-datebox" required ="required"> </input>
                      </td>
                      <td width="120px">固定号码</td>
                      <td width="260px">
                          <input class="easyui-textbox" name="usertel"
                                 style="width:180px">
                      </td>
                  </tr>
                  <tr>
                      <td width="120px">岗位</td>
                      <td width="260px"><input class="easyui-textbox" name="gangweiid"
                                      value="1"         style="width:180px">
                      </td>
                      <td width="120px">QQ号码</td>
                      <td width="260px">
                          <input class="easyui-textbox" name="userqq"
                                 style="width:180px">
                      </td>
                  </tr>
                  <tr>
                      <td width="120px">职称</td>
                      <td width="260px"><input class="easyui-textbox" name="userzhicheng"
                                               style="width:180px">
                      </td>
                      <td width="120px">邮箱地址</td>
                      <td width="260px">
                          <input class="easyui-textbox" name="useremail"
                                 style="width:180px">
                      </td>
                  </tr>
                  <tr>
                      <td width="120px">默认角色</td>
                      <td width="260px"><input class="easyui-textbox" name="userrole"
                                               style="width:180px">
                      </td>
                      <td width="120px">工司名称</td>
                      <td width="260px">
                          <input class="easyui-textbox" name="usergongsi"
                                 style="width:180px">
                      </td>
                  </tr>
                  <tr>
                      <td width="120px">部门名称</td>
                      <td width="260px"><input class="easyui-textbox" name="bumenid"
                                 value="1"              style="width:180px">
                      </td>
                      <td width="120px">工作组</td>
                      <td width="260px">
                          <input class="easyui-textbox" name="usergongzuoset"
                                 style="width:180px">
                      </td>
                  </tr>
                  <tr>
                      <td width="120px">家庭住址</td>
                      <td width="260px" colspan="3"><input class="easyui-textbox" name="useradress"
                                               style="width:180px">
                      </td>
                  </tr>
                  <tr>
                      <td width="120px">有效性</td>
                      <td width="260px" colspan="3">
                          <input type="radio" name="userstatus" value="0">有效
                          <input type="radio" name="userstatus" value="1">无效
                      </td>
                  </tr>
                  <tr>
                      <td width="120px">描述</td>
                      <td colspan="3">
                          <textarea cols="80" rows="4" name="empmiaoshu"></textarea>
                      </td>
                  </tr>

              </table>

        </form>

</body>
</html>
