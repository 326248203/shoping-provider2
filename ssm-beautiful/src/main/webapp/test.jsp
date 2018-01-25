<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>jsonp</title>
    <script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
</head>
<body>
<div id="showcontent"></div>
<script type="text/javascript">

    $(function(){

        $.ajax({
            url:"http://localhost:8080/selriskorder2",
            type:"get",
            dataType:"jsonp",
            jsonp:"jsonptest",
            async:false,
            success:function(res){

                var str="";
                str="<table ><tr><td>产品编号</td><td>订单编号</td><td>账号</td><td>操作</td></tr>";
                for(var i=0;i<res.length;i++){
                    var id =res[i].id;
                    var ordernumber =res[i].ordernumber;
                    var zhanghao =res[i].zhanghao;
                    str+="<tr><td><input type='text' value="+id+"></td>";
                    str+="<td><input type='text' value="+ordernumber+"></td>";
                    str+="<td><input type='text' value="+zhanghao+"></td>";
                    str+="<td><a href='javascript:void(0)' onclick='del("+res[i].id+")' >删除</a><a href='javascript:void(0)' onclick='upd("+res[i].id+")' >修改</a></td></tr>";
                }
                str+="<tr><td><a href='javascript:void(0)' onclick='add();'>新增</a></td></tr></table>";
                $("#showcontent").html(str);
            },
            error:function(){

            }
        })
    })


    function del(id){

        $.ajax({
            url:"http://localhost:8080/del?id="+id,
            type:"get",
            dataType:"jsonp",
            jsonp:"jsonptest",
            async:false,
            success:function(){
                self.location = document.referrer;
            },
            error:function(){

            }
        })
    }

    function upd(id){

        $.ajax({
            url:"http://localhost:8080/selbyid?id="+id,
            type:"get",
            dataType:"jsonp",
            jsonp:"jsonptest",
            async:false,
            success:function(){

            },
            error:function(){

            }
        })
    }
</script>
</body>
</html>