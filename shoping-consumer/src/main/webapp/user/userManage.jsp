<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>

    <div data-options="region:'center',title:'系统用户列表',split:false"
         style="padding: 5px; background: #eee;">

                <a  onclick=reloadsearchUser() class="easyui-linkbutton" data-options="iconCls:'icon-reload'" >刷新</a>
                <a  onclick=addUser() class="easyui-linkbutton" data-options="iconCls:'icon-add'" >新增</a>
                <a  onclick=updateUser() class="easyui-linkbutton" data-options="iconCls:'icon-edit'" >修改</a>
                <a  onclick=deleteUser() class="easyui-linkbutton" data-options="iconCls:'icon-remove'" >删除</a>
                <a  onclick=updateUserPass() class="easyui-linkbutton" data-options="iconCls:'icon-tip'" >设置密码</a>
                <a  onclick=exportUser() class="easyui-linkbutton" data-options="iconCls:'icon-print'" >导出</a>
                <div data-options="fit:true">
                    <table id="userList-table" ></table>
                </div>
                <div id="addUser-dialog"></div>
                <div id="updateUser-dialog"></div>
                <div id="updateUserPass-dialog"></div>

    </div>




<script type="text/javascript">

    /* 页面加载树 */
    $(function(){
        search();
    })

    function search(){

        $('#userList-table').datagrid({
            url:'<%=request.getContextPath()%>/userController/queryUserPage.do',
            fitColumns:true,
            striped:true,
            pagination:true,
            pageNumber:1,
            pageSize:5,
            pageList:[5,8,10],
           // toolbar:"#tb",
            singleSelect:false,
            selectOnCheck:true,
            checkOnSelect:true,
            order:"asc",
            queryParams:{

            },
            columns:[[
                {field:'userbianhao',title:'编号',width:100,sortable:true},
                {field:'username',title:'登录名',width:100,sortable:true},
                {field:'userrelname',title:'用户名',width:100,sortable:true},
                {field:'bumenid',title:'部门',width:100,sortable:true},
                {field:'userstatus',title:'有效',width:100,sortable:true,
                    formatter:function(value,row,index){
                        if(row.userstatus==0){
                            return "√";
                        }else{
                            return "×";
                        }
                    }
                },
                {field:'useremail',title:'邮箱地址',width:100,sortable:true},
                {field:'userphone',title:'手机号码',width:100,sortable:true},
                {field:'usermiaoshu',title:'描述',width:100,sortable:true}
            ]]
        });

    }

    function reloadsearchUser() {
        $('#userList-table').datagrid('reload');
    }
    function addUser() {
        $('#addUser-dialog').dialog({
            title: '新增用户',
            width: 760,
            height: 500,
            closed: false,
            href: '<%=request.getContextPath()%>/user/addUser.jsp',
            //content:'<input class="easyui-textbox" data-options="iconCls:\'icon-man\'" style="width:300px">',
            modal : true,
            buttons : [ {
                text : '保存',
                handler : function() {
                    alert("保存")
                    $.ajax({//新增提交表单
                        url:'<%=request.getContextPath()%>/userController/addUser.do',
                        data:$("#addUser-form").serialize(),
                        type:'post',
                        success:function(result){
                            $('#addUser-dialog').dialog("close");
                            $('#userList-table').datagrid('reload');

                        }
                    })
                }
            }, {
                text : '关闭',
                handler : function() {
                    $.messager.confirm('确认对话框', '您确定取消保存么？？？', function(r) {
                        console.info(r)
                        if (r) {
                            // 退出操作;
                            $('#addUser-dialog').dialog("close");
                        }
                    });
                }
            } ]
        });
    }
     function updateUser() {

        var selRow = $('#userList-table').datagrid('getSelections');
        if (selRow.length==1) {

            $('#updateUser-dialog').dialog({
                title: '修改员工',
                width: 760,
                height: 500,
                closed: false,
                href: '<%=request.getContextPath()%>/userController/toupdateUser.do?userid='+selRow[0].userid,
                //content:'<input class="easyui-textbox" data-options="iconCls:\'icon-man\'" style="width:300px">',
                modal : true,
                buttons : [ {
                    text : '保存',
                    handler : function() {
                        alert("保存")
                        $.ajax({//新增提交表单
                            url:'<%=request.getContextPath()%>/userController/updateUser.do',
                            data:$("#updateUser-form").serialize(),
                            type:'post',
                            success:function(result){
                                $('#updateUser-dialog').dialog("close");
                                $('#userList-table').datagrid('reload');

                            }
                        })
                    }
                }, {
                    text : '关闭',
                    handler : function() {
                        $.messager.confirm('确认对话框', '您确定取消保存么？？？', function(r) {
                            console.info(r)
                            if (r) {
                                // 退出操作;
                                $('#updateUser-dialog').dialog("close");
                            }
                        });
                    }
                } ]
            });
        }else{
            $.messager.alert("提示", "请选择要修改的行！", "info");

        }

    }
    function deleteUser() {
        //返回选中多行  
        var selRow = $('#userList-table').datagrid('getSelections')
        //判断是否选中行  
        if (selRow.length==0) {
            $.messager.alert("提示", "请选择要删除的行！", "info");
            return;
        }else{
            var temID="";
            //批量获取选中行的评估模板ID  
            for (i = 0; i < selRow.length;i++) {
                if (temID =="") {

                    temID = selRow[i].userid;
                } else {
                    temID = selRow[i].userid + "," + temID;
                }
            }

            $.messager.confirm('提示', '是否删除选中数据?', function (r) {

                if (!r) {
                    return;
                }
                alert(temID)
                //提交  
                $.ajax({
                    type: "POST",
                    async: false,
                    url: "<%=request.getContextPath()%>/userController/deleteUser.do",
                    data:"id=" + temID,
                    success: function (result) {

                        $('#userList-table').datagrid('clearSelections');
                        $.messager.alert("提示", "恭喜您，信息删除成功！", "info");
                        $('#userList-table').datagrid('reload');

                    }
                });
            });

        }
    };

    function updateUserPass(){

        var selRow = $('#userList-table').datagrid('getSelections');
        if (selRow.length==1) {

            $('#updateUserPass-dialog').dialog({
                title: '设置用户密码',
                width: 380,
                height: 200,
                closed: false,
                href: '<%=request.getContextPath()%>/userController/toupdateUserPass.do?userid='+selRow[0].userid,
                //content:'<input class="easyui-textbox" data-options="iconCls:\'icon-man\'" style="width:300px">',
                modal : true,
                buttons : [ {
                    text : '保存',
                    handler : function() {
                        alert("保存")
                        $.ajax({//新增提交表单
                            url:'<%=request.getContextPath()%>/userController/updateUserPass.do',
                            data:$("#updateUserPass-form").serialize(),
                            type:'post',
                            success:function(result){
                                $('#updateUserPass-dialog').dialog("close");
                                $('#userList-table').datagrid('reload');

                            }
                        })
                    }
                }, {
                    text : '关闭',
                    handler : function() {
                        $.messager.confirm('确认对话框', '您确定取消保存么？？？', function(r) {
                            console.info(r)
                            if (r) {
                                // 退出操作;
                                $('#updateUserPass-dialog').dialog("close");
                            }
                        });
                    }
                } ]
            });
        }else{
            $.messager.alert("提示", "请选择要修改的行！", "info");

        }
    }


</script>
</body>
</html>