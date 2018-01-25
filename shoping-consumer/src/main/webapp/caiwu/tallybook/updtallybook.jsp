<%--
  Created by IntelliJ IDEA.
  User: 赵雅楠
  Date: 2017/12/21
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="tallybookform">

    <div class="form-group">
        <label for="firstname" class="col-sm-2 control-label">账本名称:</label>
        <div class="col-sm-10">
            <input type="text" name="name" value="${tallybook.name}" class="form-control" id="firstname" >
        </div>
    </div>

</form>

</body>
</html>
