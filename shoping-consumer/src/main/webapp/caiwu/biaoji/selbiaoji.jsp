<%--
  Created by IntelliJ IDEA.
  User: 赵雅楠
  Date: 2017/12/15
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<button class="btn btn-info" type="button" onclick="add()">新增标记</button>
<input id="mobanname" name="mobanname" placeholder="模板名称">
<input type="button" class="btn btn-large" value="搜索" onclick="search()">
<table class="table"  id="biaojiid"></table>


<script type="text/javascript">
   /* $(function(){
        search();
    })*/
   function search(){
       $("#biaojiid").bootstrapTable("refresh",{'pageNumber':1});
   }
   $(function(){
    $('#biaojiid').bootstrapTable({
        url: '<%=request.getContextPath() %>/biaoji/selbiaoji.do',
        pagination: true,
        pageNumber: 1,
        pageSize: 8,
        pageList: [1, 3, 5, 8],
        sidePagination: "server",//必须有  否则没有效果
        method: 'post',//发送请求的方式
        contentType: "application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
        queryParams: function () {
            return {
                mobanname: $("#mobanname").val(),
                page: this.pageNumber,//当前页
                rows: this.pageSize //每页条数
            }
        },
        columns: [
            {field: 'id', title: '编号', width: 100, align: 'center'},
            {field: 'biaojigjc', title: '标记关键词', width: 100, align: 'center'},
            {field: 'shiyongdianpu', title: '适用店铺', width: 100, align: 'center'},
            {field: 'pipeiguize', title: '匹配规则', width: 100, align: 'center'},
            {field: 'money', title: '邮费', width: 100, align: 'center'},
            {field: 'mobanname', title: '模板名称', width: 100, align: 'center'},
            {field: 'xtcz', title: '系统操作', width: 100, align: 'center'},
            {field: 'cz', title: '操作', width: 100, align: 'center'}
        ]
    })
 });




    function add(){
        BootstrapDialog.show({
            title: '自动标记新增',
            message: $("<div></div>").load('<%=request.getContextPath() %>/biaoji/addbiaojitiao.do'),
            modal: true,
            buttons:[{
                label:'保存',
                action:function(dialog){//biaojiform
                    $.ajax({
                        url: "<%=request.getContextPath()%>/biaoji/addbiaoji.do",
                        type:"post",
                        data:$("#biaojiform").serialize(),
                        //回调函数
                        success: function () {

                            dialog.close();
                            $("#biaojiid").bootstrapTable("refresh");
                        },
                        error: function () {
                            alert("新增失败")
                        }

                    })
                }
            }]
        });
    }
</script>
</body>
</html>
