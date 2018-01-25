 <%--
  Created by IntelliJ IDEA.
  User: 赵雅楠
  Date: 2017/12/20
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<!--增加按钮-->
<a href="#" class="btn btn-warning btn-sm" onclick="add()">
    <span class="glyphicon glyphicon-plus">添加科目</span>
</a>
<!--增加按钮与总帐本之间的距离div-->
<div style="width:1000px;height:60px" ></div>
<!--总帐本-->
<div class="col-md-2 column">

    <div>
        <div style="float:left;background-color:#C1C1C1;width:20px;height:120px;border-radius:6px 0px 0px 6px" onclick="adddiv()">
        </div>
        <div style="background-color:#EBEBEB;width:100px;height:120px;border-radius:0px 6px 6px 0px" onclick="adddiv()">
            <div style="width:120px ;height:25px "></div>
            <div style="width:30px ;height:10px;float:left; " ></div>
            <div style="border:dotted #9999CC;width:70px;height:40px;float:left;">
                <span style="font-size:20px;">总帐本</span>
            </div>
        </div>
    </div>
</div>

<!--查询账本-->
<c:forEach items="${list}" var="list">
<div class="col-md-2 column" onmouseover="showon()" onmouseout="showout()">
    <div style="float:left;">
        <div style="width: 100px"></div>
        <div style="width: 140px;">
            <div style="float:left;background-color:#C1C1C1;width:20px;height:120px;border-radius:6px 0px 0px 6px" >
            </div>
            <div style="float:right;width:50px;">
                <div id="onout" style="width:4px;float:left;display:none">
                    <a href="#" onclick="update(${list.id})"><span class="glyphicon glyphicon-pencil"></span></a><br>
                    <div style="height: 10px"></div>
                    <a href="#" onclick="del(${list.id})"><span class="glyphicon glyphicon-trash"></span> </a>
                </div>
                <div style="width:46px;"></div>
            </div>
            <div style="background-color:#EBEBEB;width:100px;height:120px;border-radius:0px 6px 6px 0px" onclick="adddiv()">
                <div style="width:120px ;height:25px "></div>
                <div style="width:30px ;height:10px;float:left; " ></div>
                <div style="border:dotted #9999CC;width:70px;height:40px;float:left;">
                    <span style="font-size:20px;">${list.name}</span>
                </div>
            </div>

        </div>
    </div>

</div>

</c:forEach>


<!--查询账本的移入移出事件-->



<script type="text/javascript">


    /*移入移出事件*/
    function showon(){
        document.getElementById("onout").style.display="";
    }
    function showout(){
        document.getElementById("onout").style.display="none";
    }
    /*查询*/
 $(function() {
     $.ajax({
         url: "<%=request.getContextPath()%>/tallybook/selTallybook.do",
         type: "post",
         data: "",
         success: function () {
         },
         error: function () {
             alert("失败")
         }

     })
 })
    /*新增*/
    function add(){
        BootstrapDialog.show({
            title: '添加账本',
            message: $("<div></div>").load('<%=request.getContextPath() %>/tallybook/addTallybookTiao.do'),
            modal: true,
            buttons:[{
                label:'确定',
                action:function(dialog){//biaojiform
                    $.ajax({
                        url: "<%=request.getContextPath()%>/tallybook/addTallybook.do",
                        type:"post",
                        data:$("#addtallybookform").serialize(),
                        //回调函数
                        success: function () {
                            dialog.close();


                        },
                        error: function () {
                            alert("新增失败")
                        }

                    })
                }
            }]
        });

    }

    /*修改*/
    function update(id){
        BootstrapDialog.show({
            title: '账本修改',
            message: $("<div></div>").load('<%=request.getContextPath() %>/tallybook/updTallybookById.do?id='+id),
            modal: true,
            width:200,
            buttons:[{
                label:'修改',
                action:function(dialog,id){//biaojiform
                    $.ajax({
                        url: "<%=request.getContextPath()%>/tallybook/updTallybook.do",
                        type:"post",
                        data:$("#tallybookform").serialize(),
                        //回调函数
                        success: function () {

                            dialog.close();

                        },
                        error: function () {
                            alert("修改失败")
                        }

                    })
                }
            }]
        });
    }
    /*删除*/
    function del(id){
        $.ajax({
            url:"<%=request.getContextPath() %>/tallybook/delTallybook.do",
            type:"post",
            data:"id="+id,
            success:function(){
                $.addtabs.reser
            },
            error:function(){

            }
        })
    }
</script>
</body>
</html>
