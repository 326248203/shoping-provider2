<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>电商宝(二组)管理平台</title>
    <!-- Bootstrap 插件 css -->
    <link
            href="<%=request.getContextPath()%>/js/bootstrap/css/bootstrap-theme.min.css"
            rel="stylesheet">
    <!-- Bootstrap 核心css -->
    <link
            href="<%=request.getContextPath()%>/js/bootstrap/css/bootstrap.min.css"
            rel="stylesheet">
    <!-- Bootstrap TreeView css -->
    <link
            href="<%=request.getContextPath()%>/js/bootstrap-treeview/dist/bootstrap-treeview.min.css"
            rel="stylesheet">
    <!-- Bootstrap addTabs css -->
    <link
            href="<%=request.getContextPath()%>/js/bootStrap-addTabs/bootstrap.addtabs.css"
            rel="stylesheet">
    <!-- Bootstrap table css -->
    <link
            href="<%=request.getContextPath()%>/js/bootstrap-table/dist/bootstrap-table.css"
            rel="stylesheet">
    <!-- Bootstrap dialog css -->
    <link
            href="<%=request.getContextPath()%>/js/bootstrap-dialog/dist/css/bootstrap-dialog.min.css"
            rel="stylesheet">
    <style type="text/css">

        .bianse:hover{
            background-color: #d5f4f0;
            cursor:pointer;
        }
    </style>
    <style type="text/css">

        .table2 {
            width: 550px;
            max-width: 550px;
            margin-bottom: 10px;
        }
        .table2 > thead > tr > th,
        .table2 > tbody > tr > th,
        .table2 > tfoot > tr > th,
        .table2 > thead > tr > td,
        .table2 > tbody > tr > td,
        .table2 > tfoot > tr > td {
            padding: 4px;
        line-height: 1.42857143;
            vertical-align: top;

        }
        .table2 > thead > tr > th {
            vertical-align: bottom;

        }
        .table2 > tbody + tbody {

        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid ">
        <div class="col-md-12 column">
            <nav class=" navbar" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Brand</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">交易<strong class="caret"></strong></a>
                            <ul id="1000" class="dropdown-menu">
                                <li>
                                    <table class="table2" id="jiaoyi">

                                    </table>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">进销存<strong class="caret"></strong></a>
                            <ul id="1001" class="dropdown-menu">
                                <li>

                                    <table  class ="table2" id="jinxiaocun">

                                    </table>

                                </li>

                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">商品<strong class="caret"></strong></a>
                            <ul id="1002" class="dropdown-menu">
                                <li>
                                    <table  class ="table2" id="shangpin">

                                    </table>
                                </li>

                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">售后<strong class="caret"></strong></a>
                            <ul id="1003" class="dropdown-menu">
                                <li>
                                    <table  class ="table2" id="shouhou">

                                    </table>
                                </li>

                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">报表<strong class="caret"></strong></a>
                            <ul id="1004" class="dropdown-menu">
                                <li>
                                    <table  class ="table2" id="baobiao">

                                    </table>
                                </li>

                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">营销<strong class="caret"></strong></a>
                            <ul id="1005" class="dropdown-menu">
                                <li>
                                    <table  class ="table2" id="yingxiao">

                                    </table>
                                </li>

                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">财务<strong class="caret"></strong></a>
                                <ul id="1006" class="dropdown-menu">
                                <li>
                                    <table  class ="table2" id="caiwu">

                                    </table>
                                </li>

                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">设置<strong class="caret"></strong></a>
                            <ul id="1007" class="dropdown-menu">
                                <li>
                                    <table  class ="table2" id="shezhi">

                                    </table>
                                </li>

                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">产品中心</a>
                        </li>
                        <li>
                            <a href="#">客户服务</a>
                        </li>
                        <li>
                            <a href="#">个人中心</a>
                        </li>
                        <li>
                            <a href="#">切换版本</a>
                        </li>
                    </ul>
                </div>

            </nav>
        </div>
    </div>
    <div class="row-fluid ">
        <div class="col-md-12 column">
            <div class="tabbable" id="tabs-29629">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#panel-198905" data-toggle="tab">首页</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="panel-198905">
                        <div class="row-fluid ">
                            <div class="col-md-9 column">
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">快捷入口</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class = "bianse" style="width: 200px; height: 160px;float: left;">
                                            <center>
                                            <img src="<%=request.getContextPath()%>/imgcon/shangpin.png"
                                                 width="80px"  height="80px" alt="打单发货">
                                                <br><br>打单发货
                                            <br><span class="text-muted"><small>查看订单状态</small></span>
                                                <br>
                                            </center>

                                        </div>
                                        <div class = "bianse" style="width: 200px; height: 160px;float: left;">
                                            <center>
                                            <img src="<%=request.getContextPath()%>/imgcon/dadan.png"
                                                 width="80px"  height="80px" alt="商品同步">
                                                <br> <br>商品同步
                                            <br><span class="text-muted"><small>默认同步全部店铺已上架商品</small></span>
                                                <br>
                                            </center>
                                        </div>
                                        <div class = "bianse" style="width: 200px; height: 160px;float: left;">
                                            <center>
                                            <img src="<%=request.getContextPath()%>/imgcon/kucun.png"
                                                 width="80px"  height="80px" alt="商品库存">
                                                <br> <br>商品库存
                                                <br><span class="text-muted"><small>库存导入库存调整</small></span>
                                                <br>
                                            </center>
                                        </div>
                                        <div class = "bianse" style="width: 200px; height: 160px;float: left;">
                                            <center>
                                            <img src="<%=request.getContextPath()%>/imgcon/chaxun.png"
                                                 width="80px"  height="80px" alt="库存盘点">
                                                <br><br>库存盘点
                                                <br><span class="text-muted"><small>快速精准的掌控运营情况</small></span>
                                                <br>
                                            </center>
                                        </div>
                                        <div class = "bianse" style="width: 200px; height: 160px;clear:left;float: left;">
                                            <center>
                                            <img src="<%=request.getContextPath()%>/imgcon/kuaidi.png"
                                                 width="80px"  height="80px" alt="快递模版">
                                                <br><br>快递模版
                                                <br><span class="text-muted"><small>设置电子/纸质快递单模版</small></span>
                                                <br>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">近七天销售额</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="jumbotron">
                                            <div class="container">
                                                <h1>欢迎登陆页面！</h1>
                                                <p>这是一个超大屏幕（Jumbotron）的实例。</p>
                                                <p><a class="btn btn-primary btn-lg" role="button">
                                                    学习更多</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 column">
                                <div class="panel panel-warning">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">公告信息</h3>
                                    </div>
                                    <div class="panel-body">
                                        <table   class="table ">
                                            <tr>
                                                <td><span class="text-muted"><small>新版介绍</small></span></td>
                                                <td><small>电商宝开工啦</small></td>
                                                <td><span class="text-muted"><small>2017-12</small></span></td>
                                            </tr>
                                            <tr>
                                                <td><span class="text-muted"><small>新版介绍</small></span></td>
                                                <td><small>电商宝出0.0版本啦</small></td>
                                                <td><span class="text-muted"><small>2017-12</small></span></td>
                                            </tr>
                                            <tr>
                                                <td><span class="text-muted"><small>新版介绍</small></span></td>
                                                <td><small>电商宝出0.5版本啦</small></td>
                                                <td><span class="text-muted"><small>2017-12</small></span></td>
                                            </tr>
                                            <tr>
                                                <td><span class="text-muted"><small>新版介绍</small></span></td>
                                                <td><small>电商宝出1.0版本啦</small></td>
                                                <td><span class="text-muted"><small>2017-12</small></span></td>
                                            </tr>
                                            <tr>
                                                <td><span class="text-muted"><small>新版介绍</small></span></td>
                                                <td><small>电商宝出1.5版本啦</small></td>
                                                <td><span class="text-muted"><small>2017-12</small></span></td>
                                            </tr>
                                        </table>

                                    </div>
                                </div>
                                <div class="panel panel-warning">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">客户端下载</h3>
                                    </div>
                                    <div class="panel-body">
                                        <a href="#" class="thumbnail">
                                            <img src="<%=request.getContextPath()%>/imgcon/mianfeila.jpg"
                                                 alt="通用的占位符缩略图">
                                        </a>
                                    </div>
                                </div>
                                <div class="panel panel-warning">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">showtime科技</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div id="myCarousel" class="carousel slide">
                                            <!-- 轮播（Carousel）指标 -->
                                            <ol class="carousel-indicators">
                                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                            </ol>

                                            <!-- 轮播（Carousel）项目 -->
                                            <div class="carousel-inner">
                                                <div class="item active">
                                                    <img src="<%=request.getContextPath()%>/imgcon/dianshang.bmp" alt="First slide">
                                                </div>
                                                <div class="item">
                                                    <img src="<%=request.getContextPath()%>/imgcon/bams2.bmp" alt="Second slide">
                                                </div>
                                                <div class="item">
                                                    <img src="<%=request.getContextPath()%>/imgcon/4.jpg" alt="Third slide">
                                                </div>
                                            </div>
                                            <!-- 轮播（Carousel）导航 -->
                                            <a class="carousel-control left" href="#myCarousel" data-slide="prev">‹</a>
                                            <a class="carousel-control right" href="#myCarousel" data-slide="next">›</a>
                                        </div>

                                        <!-- 控制按钮 -->

<%--                                        <div style="text-align:center;">
                                            <input type="button" class="btn start-slide" value="Start">
                                            <input type="button" class="btn pause-slide" value="Pause">
                                            <input type="button" class="btn prev-slide" value="Previous Slide">
                                            <input type="button" class="btn next-slide" value="Next Slide">
                                            <input type="button" class="btn slide-one" value="Slide 1">
                                            <input type="button" class="btn slide-two" value="Slide 2">
                                            <input type="button" class="btn slide-three" value="Slide 3">
                                        </div>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row-fluid ">
                            <div class="col-md-12 column">
                                  <center>
                                    showtime旗下：<a class="btn" href="#">BAMS</a>|<a class="btn" href="#">电商宝ERP</a>|<a class="btn" href="#">迪蒙网贷</a>
                                    <h5>软件证书编号：京88-8888-8888 | 软件著作权登记号：888888888 | 专利号：201730097224.3</h5>
                                      <h5>北京金科科技有限公司 版权所有 @2017-11-15 version 3.0</h5>

                                  </center>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        </div>
    </div>


</div>









<!--jQuery核心js  -->
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<!-- bootstrap 核心js文件 -->
<script
        src="<%=request.getContextPath()%>/js/bootstrap/js/bootstrap.min.js"></script>
<!-- bootStrap TreeView -->
<script
        src="<%=request.getContextPath()%>/js/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<!-- bootStrap addTabs -->
<script
        src="<%=request.getContextPath()%>/js/bootStrap-addTabs/bootstrap.addtabs.js"></script>
<!-- bootStrap table -->
<script
        src="<%=request.getContextPath()%>/js/bootstrap-table/dist/bootstrap-table.js"></script>
<!-- bootStrap dialog -->
<script
        src="<%=request.getContextPath()%>/js/bootstrap-dialog/dist/js/bootstrap-dialog.min.js">     </script>
<!-- bootStrap table 语言包中文-->
<script
        src="<%=request.getContextPath()%>/js/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<script type="text/javascript">
    $(function(){
        // 初始化轮播
        $(".start-slide").click(function(){
            $("#myCarousel").carousel('cycle');
        });
        // 停止轮播
        $(".pause-slide").click(function(){
            $("#myCarousel").carousel('pause');
        });
        // 循环轮播到上一个项目
        $(".prev-slide").click(function(){
            $("#myCarousel").carousel('prev');
        });
        // 循环轮播到下一个项目
        $(".next-slide").click(function(){
            $("#myCarousel").carousel('next');
        });
        // 循环轮播到某个特定的帧
        $(".slide-one").click(function(){
            $("#myCarousel").carousel(0);
        });
        $(".slide-two").click(function(){
            $("#myCarousel").carousel(1);
        });
        $(".slide-three").click(function(){
            $("#myCarousel").carousel(2);
        });
    });


    //鼠标的移入移出
    $(".dropdown").mouseover(function (){
        var arr= $(".dropdown");
        var arr2= $(".dropdown-menu");
        var t=arr.index(this);
        if(t==0){
            $("#1000").show();
        }
        if(t==1){
            $("#1001").show();
        }
        if(t==2){
            $("#1002").show();
        }
        if(t==3){
            $("#1003").show();
        }
        if(t==4){
            $("#1004").show();
        }
        if(t==5){
            $("#1005").show();
        }
        if(t==6){
            $("#1006").show();
        }
        if(t==7){
            $("#1007").show();
        }
    }).mouseout(function (){
        var arr= $(".dropdown");
        var t=arr.index(this);
        if(t==0){
            $("#1000").hide();
        }
        if(t==1){
            $("#1001").hide();
        }

        if(t==2){
            $("#1002").hide();
        }
        if(t==3){
            $("#1003").hide();
        }
        if(t==4){
            $("#1004").hide();
        }
        if(t==5){
            $("#1005").hide();
        }
        if(t==6){
            $("#1006").hide();
        }
        if(t==7){
            $("#1007").hide();
        }
    });
    $(function (){
        //页面加载模块
        beforequery();
    })
    function beforequery(){

        $.ajax({
            url:"<%=request.getContextPath()%>/indexTreeController/beforqueryIndexTree.do",
            type:"post",
            dataType:"json",
            data:"",
            // async:false,
            success:function (result){
                var arr =result.jiaoyilist[0].nodes;
                var str="";
                for(var i =0;i<arr.length;i++){
                    var arrnodes=arr[i].nodes;
                    str +=  " <thead>"+
                            "<tr>"+
                            " <th>"+arr[i].text+"</th>"+
                            "</tr>"+
                            "  </thead>"+
                            " <tbody>";
                                 if(arrnodes.length>4){
                                      var page=arrnodes.length/4+1;
                                      for(var m =0;m<page*4;m+=4){
                                          str += " <tr>";
                                          for(var j =0;j<arrnodes.length;j++){
                                             if(j<4&&m==0){
                                                  str += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+arrnodes[j].url+"\",\""+arrnodes[j].text+"\")'>"+arrnodes[j].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                             }
                                               if(j>=4&&j<8&&m==4){
                                                  str += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+arrnodes[j].url+"\",\""+arrnodes[j].text+"\")'>"+arrnodes[j].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                              }
                                               if(j>=8&&j<12&&m==8){
                                                  str += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+arrnodes[j].url+"\",\""+arrnodes[j].text+"\")'>"+arrnodes[j].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                              }
                                          }
                                         str += "</tr>";
                                      }
                                  }else{
                                      str += " <tr>";
                                      for(var j =0;j<arrnodes.length;j++){
                                              str += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+arrnodes[j].url+"\",\""+arrnodes[j].text+"\")'>"+arrnodes[j].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                      }
                                      str += "</tr>";
                                  }
                    str += " </tbody>";


                }
                $("#jiaoyi").html(str);
                //进销存-------------------------------------------------------
                var jinxiaocunarr =result.jinxiaocunlist[0].nodes;
                var jinxiaostr="";
                for(var i2 =0;i2<jinxiaocunarr.length;i2++){
                    var jinxiaocunarrnodes=jinxiaocunarr[i2].nodes;
                    jinxiaostr +=  " <thead>"+
                            "<tr>"+
                            " <th>"+jinxiaocunarr[i2].text+"</th>"+
                            "</tr>"+
                            "  </thead>"+
                            " <tbody>";
                    if(jinxiaocunarrnodes.length>4){
                        var page=jinxiaocunarrnodes.length/4+1;
                        for(var m2 =0;m2<page*4;m2+=4){
                            jinxiaostr += " <tr>";
                            for(var j2 =0;j2<jinxiaocunarrnodes.length;j2++){
                                if(j2<4&&m2==0){
                                    jinxiaostr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+jinxiaocunarrnodes[j2].url+"\",\""+jinxiaocunarrnodes[j2].text+"\")'>"+jinxiaocunarrnodes[j2].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                }
                                if(j2>=4&&j2<8&&m2==4){
                                    jinxiaostr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+jinxiaocunarrnodes[j2].url+"\",\""+jinxiaocunarrnodes[j2].text+"\")'>"+jinxiaocunarrnodes[j2].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                }
                                if(j2>=8&&j2<12&&m2==8){
                                    jinxiaostr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+jinxiaocunarrnodes[j2].url+"\",\""+jinxiaocunarrnodes[j2].text+"\")'>"+jinxiaocunarrnodes[j2].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                }
                            }
                            jinxiaostr += "</tr>";
                        }
                    }else{
                        jinxiaostr += " <tr>";
                        for(var j2 =0;j2<jinxiaocunarrnodes.length;j2++){
                            jinxiaostr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+jinxiaocunarrnodes[j2].url+"\",\""+jinxiaocunarrnodes[j2].text+"\")'>"+jinxiaocunarrnodes[j2].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                        }
                        jinxiaostr += "</tr>";
                    }
                    jinxiaostr += " </tbody>";


                }
                $("#jinxiaocun").html(jinxiaostr);
                //商品-------------------------------------------------------
                var shangpinarr =result.shangpinlist;
        var  shangpinstr =  " <thead>"+
                            "<tr>"+
                            " <th>商品</th>"+
                            "</tr>"+
                            "  </thead>"+
                            " <tbody>";
                    if(shangpinarr.length>4){
                        var page=shangpinarr.length/4+1;
                        for(var m3 =0;m3<page*4;m3+=4){
                            shangpinstr += " <tr>";
                            for(var j3 =0;j3<shangpinarr.length;j3++){
                                if(j3<4&&m3==0){
                                    shangpinstr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+shangpinarr[j3].url+"\",\""+shangpinarr[j3].text+"\")'>"+shangpinarr[j3].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                }
                                if(j3>=4&&j3<8&&m3==4){
                                    shangpinstr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+shangpinarr[j3].url+"\",\""+shangpinarr[j3].text+"\")'>"+shangpinarr[j3].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                }
                                if(j3>=8&&j3<12&&m3==8){
                                    shangpinstr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+shangpinarr[j3].url+"\",\""+shangpinarr[j3].text+"\")'>"+shangpinarr[j3].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                }
                            }
                            shangpinstr += "</tr>";
                        }
                    }else{
                        shangpinstr += " <tr>";
                        for(var j3 =0;j3<shangpinarr.length;j3++){
                            shangpinstr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+shangpinarr[j3].url+"\",\""+shangpinarr[j3].text+"\")'>"+shangpinarr[j3].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                        }
                        shangpinstr += "</tr>";
                    }
                    shangpinstr += " </tbody>";
                $("#shangpin").html(shangpinstr);
                //售后-------------------------------------------------------
                var shouhouarr =result.shouhoulist;
                var  shouhoustr =  " <thead>"+
                        "<tr>"+
                        " <th>售后</th>"+
                        "</tr>"+
                        "  </thead>"+
                        " <tbody>";
                if(shouhouarr.length>4){
                    var page=shouhouarr.length/4+1;
                    for(var m4 =0;m4<page*4;m4+=4){
                        shouhoustr += " <tr>";
                        for(var j4 =0;j4<shouhouarr.length;j4++){
                            if(j4<4&&m4==0){
                                shouhoustr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+shouhouarr[j4].url+"\",\""+shouhouarr[j4].text+"\")'>"+shouhouarr[j4].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                            }
                            if(j4>=4&&j4<8&&m4==4){
                                shouhoustr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+shouhouarr[j4].url+"\",\""+shouhouarr[j4].text+"\")'>"+shouhouarr[j4].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                            }
                            if(j4>=8&&j4<12&&m4==8){
                                shouhoustr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+shouhouarr[j4].url+"\",\""+shouhouarr[j4].text+"\")'>"+shouhouarr[j4].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                            }
                        }
                        shouhoustr += "</tr>";
                    }
                }else{
                    shouhoustr += " <tr>";
                    for(var j4 =0;j4<shouhouarr.length;j4++){
                        shouhoustr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+shouhouarr[j4].url+"\",\""+shouhouarr[j4].text+"\")'>"+shouhouarr[j4].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                    }
                    shouhoustr += "</tr>";
                }
                shouhoustr += " </tbody>";
                $("#shouhou").html(shouhoustr);
                //设置-------------------------------------------------------
                var shezharr =result.shezhilist;
                var  shezhistr =  " <thead>"+
                        "<tr>"+
                        " <th>设置</th>"+
                        "</tr>"+
                        "  </thead>"+
                        " <tbody>";
                if(shezharr.length>4){
                    var page=shezharr.length/4+1;
                    for(var m5 =0;m5<page*4;m5+=4){
                        shezhistr += " <tr>";
                        for(var j5 =0;j5<shezharr.length;j5++){
                            if(j5<4&&m5==0){
                                shezhistr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+shezharr[j5].url+"\",\""+shezharr[j5].text+"\")'>"+shezharr[j5].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                            }
                            if(j5>=4&&j5<8&&m5==4){
                                shezhistr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+shezharr[j5].url+"\",\""+shezharr[j5].text+"\")'>"+shezharr[j5].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                            }
                            if(j5>=8&&j5<12&&m5==8){
                                shezhistr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+shezharr[j5].url+"\",\""+shezharr[j5].text+"\")'>"+shezharr[j5].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                            }
                        }
                        shezhistr += "</tr>";
                    }
                }else{
                    shezhistr += " <tr>";
                    for(var j5 =0;j5<shezharr.length;j5++){
                        shezhistr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+shezharr[j5].url+"\",\""+shezharr[j5].text+"\")'>"+shezharr[j5].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                    }
                    shezhistr += "</tr>";
                }
                shezhistr += " </tbody>";
                $("#shezhi").html(shezhistr);
                //报表--------------------------
                var baobiaoarr =result.baobiaolist;
                var baobiaostr="";
                for(var i6 =0;i6<baobiaoarr.length;i6++){
                    var baobiaonodes=baobiaoarr[i6].nodes;
                    baobiaostr +=  " <thead>"+
                            "<tr>"+
                            " <th>"+baobiaoarr[i6].text+"</th>"+
                            "</tr>"+
                            "  </thead>"+
                            " <tbody>";
                    if(baobiaonodes.length>4){
                        var page=baobiaonodes.length/4+1;
                        for(var m6 =0;m6<page*4;m6+=4){
                            baobiaostr += " <tr>";
                            for(var j6 =0;j6<baobiaonodes.length;j6++){
                                if(j6<4&&m6==0){
                                    baobiaostr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+baobiaonodes[j6].url+"\",\""+baobiaonodes[j6].text+"\")'>"+baobiaonodes[j6].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                }
                                if(j6>=4&&j6<8&&m6==4){
                                    baobiaostr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+baobiaonodes[j6].url+"\",\""+baobiaonodes[j6].text+"\")'>"+baobiaonodes[j6].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                }
                                if(j6>=8&&j6<12&&m6==8){
                                    baobiaostr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+baobiaonodes[j6].url+"\",\""+baobiaonodes[j6].text+"\")'>"+baobiaonodes[j6].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                }
                            }
                            baobiaostr += "</tr>";
                        }
                    }else{
                        baobiaostr += " <tr>";
                        for(var j6 =0;j6<baobiaonodes.length;j6++){
                            baobiaostr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+baobiaonodes[j6].url+"\",\""+baobiaonodes[j6].text+"\")'>"+baobiaonodes[j6].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                        }
                        baobiaostr += "</tr>";
                    }
                    baobiaostr += " </tbody>";
                }
                $("#baobiao").html(baobiaostr);
                //营销-------------------------
                var yingxiaoarr =result.yingxiaolist;
                var yingxiaostr="";
                for(var i7 =0;i7<yingxiaoarr.length;i7++){
                    var yingxiaonodes=yingxiaoarr[i7].nodes;
                    yingxiaostr +=  " <thead>"+
                            "<tr>"+
                            " <th>"+yingxiaoarr[i7].text+"</th>"+
                            "</tr>"+
                            "  </thead>"+
                            " <tbody>";
                    if(yingxiaonodes.length>4){
                        var page=yingxiaonodes.length/4+1;
                        for(var m7 =0;m7<page*4;m7+=4){
                            yingxiaostr += " <tr>";
                            for(var j7 =0;j7<yingxiaonodes.length;j7++){
                                if(j7<4&&m7==0){
                                    yingxiaostr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+yingxiaonodes[j7].url+"\",\""+yingxiaonodes[j7].text+"\")'>"+yingxiaonodes[j7].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                }
                                if(j7>=4&&j7<8&&m7==4){
                                    yingxiaostr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+yingxiaonodes[j7].url+"\",\""+yingxiaonodes[j7].text+"\")'>"+yingxiaonodes[j7].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                }
                                if(j7>=8&&j7<12&&m7==8){
                                    yingxiaostr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+yingxiaonodes[j7].url+"\",\""+yingxiaonodes[j7].text+"\")'>"+yingxiaonodes[j7].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                }
                            }
                            yingxiaostr += "</tr>";
                        }
                    }else{
                        yingxiaostr += " <tr>";
                        for(var j7 =0;j7<yingxiaonodes.length;j7++){
                            yingxiaostr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+yingxiaonodes[j7].url+"\",\""+yingxiaonodes[j7].text+"\")'>"+yingxiaonodes[j7].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                        }
                        yingxiaostr += "</tr>";
                    }
                    yingxiaostr += " </tbody>";
                }
                $("#yingxiao").html(yingxiaostr);
                //财务--------------------------
                var caiwuarr =result.caiwulist;
                var caiwustr="";
                for(var i8 =0;i8<caiwuarr.length;i8++){
                    var caiwunodes=caiwuarr[i8].nodes;
                    caiwustr +=  " <thead>"+
                            "<tr>"+
                            " <th>"+caiwuarr[i8].text+"</th>"+
                            "</tr>"+
                            "  </thead>"+
                            " <tbody>";
                    if(caiwunodes.length>4){
                        var page=caiwunodes.length/4+1;
                        for(var m8 =0;m8<page*4;m8+=4){
                            caiwustr += " <tr>";
                            for(var j8 =0;j8<caiwunodes.length;j8++){
                                if(j8<4&&m8==0){
                                    caiwustr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+caiwunodes[j8].url+"\",\""+caiwunodes[j8].text+"\")'>"+caiwunodes[j8].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                }
                                if(j8>=4&&j8<8&&m8==4){
                                    caiwustr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+caiwunodes[j8].url+"\",\""+caiwunodes[j8].text+"\")'>"+caiwunodes[j8].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                }
                                if(j8>=8&&j8<12&&m8==8){
                                    caiwustr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+caiwunodes[j8].url+"\",\""+caiwunodes[j8].text+"\")'>"+caiwunodes[j8].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                                }
                            }
                            caiwustr += "</tr>";
                        }
                    }else{
                        caiwustr += " <tr>";
                        for(var j8 =0;j8<caiwunodes.length;j8++){
                            caiwustr += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:addTabs(\""+caiwunodes[j8].url+"\",\""+caiwunodes[j8].text+"\")'>"+caiwunodes[j8].text+"</a>&nbsp;&nbsp;&nbsp;</td>";
                        }
                        caiwustr += "</tr>";
                    }
                    caiwustr += " </tbody>";
                }
                $("#caiwu").html(caiwustr);
            },
            error:function (){
                alert("执行失败");
                //location.reload();
            }
        });

      //  $("#jinxiaocun").html(str);
       // $("#jiaoyi").html(str);
    }
    function addTabs(url,text){


            $.ajax({
                type:"post",
                url:"<%=request.getContextPath()%>/"+url,
                success:function(msg){

                   // msg = "大家快点背，我们快讲完了";
                    $("#1000").hide();
            $("#1001").hide();
            $("#1002").hide();
            $("#1003").hide();
            $("#1004").hide();
            $("#1005").hide();
            $("#1006").hide();
            $("#1007").hide();
                    //添加选项卡
                    $.addtabs.add({
                        id:text,
                        title:text,
                        content:msg,
                    });
                }
            })
        }

</script>


</body>
</html>