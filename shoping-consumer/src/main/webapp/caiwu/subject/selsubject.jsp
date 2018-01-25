<%--
  Created by IntelliJ IDEA.
  User: 赵雅楠
  Date: 2017/12/18
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body >
<%--
<select id="province" name="pid" ></select>
<select id="city" name="text"></select>
--%>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-3 column">
            <select id="province" name="leibie" ></select>
            <select id="city" name="pid"></select>
            <a href="#" class="btn btn-info btn-sm" onclick="searchSub()">
                <span class="glyphicon glyphicon-search">查询</span>
            </a>
                <%--<select id="province" name="leibie" onchange="onc()">
                    <option value="-1" >请选择</option>
                    <c:forEach items="${fu}" var="zw">
                        <option value="${zw.id}">${zw.leibie}</option>
                    </c:forEach>
                </select>--%>
        </div>
        <div class="col-md-7 column">

        </div>
        <div class="col-md-2 column">
            <a href="#" class="btn btn-info btn-sm" onclick="add()">
                <span class="glyphicon glyphicon-plus">添加科目</span>
            </a>
            <a href="#" class="btn btn-warning btn-sm" onclick="delAll()">
                <span class="glyphicon">批量删除</span>
            </a>
        </div>
    </div>
</div>

<table id="subjecttb"></table>


<script type="text/javascript">
    $(function (){
    $.ajax({
        url:"<%=request.getContextPath() %>/subject/selerjifu.do",
        type:"post",
        data:"",
        async:false,
        dataType:"json",
        success:function (provice){
            var option = "<option value='0'>全部类别</option>";
           for (var i = 0; i < 2; i++) {

                option += "<option value='"+provice[i].leibie+"'>"+provice[i].leibie+"</option>";
            }
            $("#province").html(option);
        },
        error:function(){
            alert("错了")
        }
    });



    $("#province").on("change",function(){

         $.ajax({
          url:"<%=request.getContextPath() %>/subject/selerjizi.do",
            type:"post",
            data:"leibie="+$(this).val(),//{"leibie":$(this).val()}
            dataType:"json",
            success:function(city){
                var op = "<option value='0'>不限科目</option>";
                for (var i = 0; i < city.length; i++) {
                    if(city[i].pid!=''){
                        op += "<option value='"+city[i].pid+"'>"+city[i].pid+"</option>";
                    }

                }
                $("#city").html(op);

            },
            error:function(){
                alert("错了2")
            }

        })
   })
})
    function searchSub(){
       // alert($("#city").val());
        $("#subjecttb").bootstrapTable("refresh",{'pageNumber':1});
    }
  $(function() {

        $('#subjecttb').bootstrapTable({
            url: '<%=request.getContextPath() %>/subject/selsubject.do',
            pagination: true,

            pageNumber: 1,
            pageSize: 8,
            pageList: [1, 3, 5, 8],
            sidePagination: "server",//必须有  否则没有效果
            method: 'post',//发送请求的方式
            contentType: "application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
            queryParams: function () {
                return {
                    pid: $("#city").val(),
                    page: this.pageNumber,//当前页
                    rows: this.pageSize //每页条数
                }
            },
            columns: [
                {field: 'check', title: '', width: 10,checkbox:true,align: 'center'},
                {field: 'id', title: '序号', width: 100,align: 'center'},
                {field: 'pid', title: '所属一级科目', width: 100,align: 'center'
                },
                {field: 'text', title: '所属二级科目', width: 100,align: 'center'
                },
                {field: 'leibie', title: '所属类别', width: 100,align: 'center',
                    formatter:function(value,row,index) {
                        var a = "";
                        if (value =="收入") {
                            //字符串主键需要转义字符
                            var a = '<span style="color:#00ff00">'+value+'</span>';
                        }
                        if(value =="支出"){
                            var a = '<span style="color:orange">'+value+'</span>';
                        }
                        return a;
                    }
                },
                {field: 'cz', title: '操作', width: 100,align: 'center',
                    formatter: function (value, row, index) {

                            return '<a href="#" onclick="update('+row.id+')"><span class="glyphicon glyphicon-pencil">修改</span></a>|<a href="#" onclick="del('+row.id+')"><span class="glyphicon glyphicon-trash">删除</span> </a>';

                    }
                }
            ]
        })
    });
function update(id){
    BootstrapDialog.show({
        title: '自动标记新增',
        message: $("<div></div>").load('<%=request.getContextPath() %>/subject/updSubjectById.do?id='+id),
        modal: true,
        width:200,
        buttons:[{
            label:'修改',
            action:function(dialog,id){//biaojiform
                $.ajax({
                    url: "<%=request.getContextPath()%>/subject/updatesubject.do",
                    type:"post",
                    data:$("#subjectform").serialize(),
                    //回调函数
                    success: function () {

                        dialog.close();
                        $("#subjecttb").bootstrapTable("refresh");
                    },
                    error: function () {
                        alert("修改失败")
                    }

                })
            }
        }]
    });
}
function del(id){
    $.ajax({
        url:"<%=request.getContextPath() %>/subject/deleteSubjectById.do",
        type:"post",
        data:"id="+id,
        success:function(){
            $("#subjecttb").bootstrapTable("refresh");
        },
        error:function(){

        }
    })
}

    function add(){
        BootstrapDialog.show({
            title: '自动标记新增',
            message: $("<div></div>").load('<%=request.getContextPath() %>/subject/addSubjectTiao.do'),
            modal: true,
            buttons:[{
                label:'新增科目',
                action:function(dialog){//biaojiform
                    $.ajax({
                        url: "<%=request.getContextPath()%>/subject/addSubject.do",
                        type:"post",
                        data:$("#addsubjectform").serialize(),
                        //回调函数
                        success: function () {
                            dialog.close();
                            $("#subjecttb").bootstrapTable("refresh");
                        },
                        error: function () {
                            alert("新增失败")
                        }

                    })
                }
            }]
        });

    }

    function delAll(){
        var rows=$("#subjecttb").bootstrapTable('getSelections');//获取bootstrap复选框数组
        if(rows.length==0){
            alert("请选择要删除的数据");
        }
        var ids="";
        for(var i =0;i<rows.length;i++){
        ids+=rows[i]['id']+",";//获取数组中的id
        }
        ids=ids.substring(0,ids.length-1);//截取从0开始到长度减一的字符
        $.ajax({
            url: "<%=request.getContextPath()%>/subject/deleteAllSubject.do",
            type:"post",
            data:"ids="+ids,
            //回调函数
            success: function () {

                $("#subjecttb").bootstrapTable("refresh");
            },
            error: function () {
                alert("批量删除失败")
            }

        })
    }
</script>
</body>
</html>
