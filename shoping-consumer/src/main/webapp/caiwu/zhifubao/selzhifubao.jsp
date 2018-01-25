<%--
  Created by IntelliJ IDEA.
  User: 赵雅楠
  Date: 2017/12/22
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>





<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="tabbable" id="tabs-941052">
                <ul class="nav nav-tabs">
                    <li>
                        <a href="#panel-669428" data-toggle="tab">已到账明细</a>
                    </li>
                    <li class="active">
                        <a href="#panel-888795" data-toggle="tab">未到账明细</a>
                    </li>
                </ul>

            </div>
        </div>
    </div>
</div>

<!--页面效果-->
<div style="width:1200px;height:20px; "></div>

<div style="font-weight: bold;background:#F3DCB6;width:1200px;height: 30px; ">
    <a href="#">
        <span class="glyphicon glyphicon-exclamation-sign"></span>
        温馨提醒：仅支持淘宝平台订单，默认同步近30天的订单对账信息。
    </a>
</div>
<div style="width:1200px;height:20px; "></div>
<!--模糊查询-->
<select id="dianpu">
    <option value="-1" >全部店铺</option>
    <c:forEach items="${alipaylist}" var="a">
        <option value="${a.id}">${a.dianpu}</option>
    </c:forEach>
</select>
<input name="dingdannum" id="dingdannum" placeholder="订单编号" >
<a href="#" class="btn btn-info btn-sm" onclick="searchAli()">
    <span class="glyphicon glyphicon-search">查询</span>
</a>

<div class="tab-content">
    <div class="tab-pane" id="panel-669428">
        <table id="ydtb"></table>
    </div>
    <div class="tab-pane active" id="panel-888795">
        <table id="wdtb"></table>
    </div>
</div>


<div>
<script type="text/javascript">

    $(function(){
        searchAli();
    })
    function searchAli(){
        $('#ydtb').bootstrapTable({
            url: '<%=request.getContextPath() %>/alipay/selydalipay.do',
            pagination: true,
            pageNumber: 1,
            pageSize: 8,
            pageList: [1, 3, 5, 8],
            sidePagination: "server",//必须有  否则没有效果
            method: 'post',//发送请求的方式
            contentType: "application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
            queryParams: function () {
                return {
                    dianpu:$("#dianpu").val(),
                    dingdannum:$("#dingdannum").val(),
                    page: this.pageNumber,//当前页
                    rows: this.pageSize //每页条数
                }
            },
            columns: [
                {field: 'time', title: '到账时间', width: 10,align: 'center'},
                {field: 'zfbdingdanhao', title: '支付宝订单号', width: 100,align: 'center'},
                {field: 'dingdannum', title: '订单编号', width: 100,align: 'center'
                },
                {field: 'dianpu', title: '店铺', width: 100,align: 'center'
                },
                {field: 'money', title: '到账金额', width: 100,align: 'center'}
            ]
        })

        $('#wdtb').bootstrapTable({
            url: '<%=request.getContextPath() %>/alipay/selwdalipay.do',
            pagination: true,

            pageNumber: 1,
            pageSize: 8,
            pageList: [1, 3, 5, 8],
            sidePagination: "server",//必须有  否则没有效果
            method: 'post',//发送请求的方式
            contentType: "application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
            queryParams: function () {
                return {
                    dianpu:$("#dianpu").val(),
                    dingdannum:$("#dingdannum").val(),
                    page: this.pageNumber,//当前页
                    rows: this.pageSize //每页条数
                }
            },
            columns: [
                {field: 'time', title: '付款时间', width: 10,align: 'center'},
                {field: 'dingdannum', title: '订单编号', width: 100,align: 'center'},
                {field: 'dianpu', title: '店铺', width: 100,align: 'center'},
                {field: 'money', title: '订单金额', width: 100,align: 'center'},
                {field: 'flag', title: '状态', width: 100,align: 'center',
                    formatter:function (value,row,index){
                       if(row.flag==2){
                           return "未到账";

                       }

                    }
                }
            ]
        })
    }
</script>
</div>
</body>
</html>
