<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>showtime二组BAMS开发研究平台</title>
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/kindeditor/themes/default/default.css" />
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/kindeditor/plugins/code/prettify.css" />
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/uploadify/uploadify.css" />

    <!-- 引入EasyUI的样式文件-->
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css"
          type="text/css" />

    <!-- 引入EasyUI的图标样式文件-->
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/EasyUI/themes/icon.css"
          type="text/css" />
    <script charset="utf-8"
            src="<%=request.getContextPath()%>/kindeditor/kindeditor-all.js"></script>
    <script charset="utf-8"
            src="<%=request.getContextPath()%>/kindeditor/lang/zh-CN.js"></script>
    <script charset="utf-8"
            src="<%=request.getContextPath()%>/kindeditor/plugins/code/prettify.js"></script>


    <script type="text/javascript"
            src="<%=request.getContextPath()%>/EasyUI/jquery-3.2.1.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/uploadify/jquery.uploadify.js"></script>

    <script type="text/javascript"
            src="<%=request.getContextPath() %>/My97/My97DatePicker/WdatePicker.js"></script>
    <%-- <link rel="stylesheet"
        href="<%=request.getContextPath()%>/zTree/css/demo.css"
        type="text/css"> --%>
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/zTree/css/zTreeStyle/zTreeStyle.css"
          type="text/css">
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/zTree/js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/zTree/js/jquery.ztree.excheck.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/zTree/js/jquery.ztree.exedit.js"></script>
</head>
<body class="easyui-layout">
<div data-options="region:'north',title:'',split:false"
     style="height: 70px; background-color: #660099;">
    <div style="margin-top: 15px; margin-left: 2%; float: left">
        <font size="6px" color="white"><b>BAMS 开发项目</b></font>
    </div>
    <div style="margin-top: 15px; margin-right: 1%; float: right">
        <input type="image" title="这是shutdown"
               src="<%=request.getContextPath()%>/imgcon/shutdown.net (1).png"
               width="23px" height="23px">
    </div>
    <div style="margin-top: 15px; margin-right: 2%; float: right">
        <font size="2px" color="white">欢迎您：${dblogin.username }&nbsp;&nbsp;部门：财务
            &nbsp;&nbsp;岗位：主管</font>
    </div>

</div>


<div data-options="region:'south',title:'',split:false"
     style="height: 35px; background-color: #660099;">

    <div style="margin-top: 9px; margin-left: 10%; float: left">
        <font color="white" size="2px"> @2017-11-15 public bams
            version 3.0</font>
    </div>
    <div style="margin-top: 4px; float: right">

        <table cellpadding="4px">
            <tr>
                <td><input type="image" id="home" title="这是home"
                           src="<%=request.getContextPath()%>/imgcon/home.png" width="17px"
                           height="16px"></td>
                <td><input type="image" title="这是email"
                           src="<%=request.getContextPath()%>/imgcon/email (1).png"
                           width="17px" height="16px"></td>
                <td><input type="image" title="这是menu"
                           src="<%=request.getContextPath()%>/imgcon/menus.net.png"
                           width="17px" height="16px"></td>
                <td><input type="image" title="这是message"
                           src="<%=request.getContextPath()%>/imgcon/Message.png"
                           width="17px" height="16px"></td>
                <td><input type="image" title="这是set"
                           src="<%=request.getContextPath()%>/imgcon/set (1).png"
                           width="17px" height="16px"></td>
                <td><input type="image" title="这是clock"
                           src="<%=request.getContextPath()%>/imgcon/clock.png" width="17px"
                           height="16px"></td>
                <td><input type="image" title="这是msg"
                           src="<%=request.getContextPath()%>/imgcon/mes.png" width="17px"
                           height="16px"></td>
            </tr>
        </table>
    </div>
</div>
<!--   框架下和右  边关闭
<div data-options="region:'east',iconCls:'icon-reload',title:'East',split:true" style="width:100px;"></div>
 -->

<div data-options="region:'west',title:'导航菜单',split:false,"
     style="width: 200px;">



    <div  class="easyui-accordion" fit="true">
        <div title="权限设置"  selected="true" style="overflow:auto;padding:10px;">
            <!--   树组件 -->
            <ul id="index-tree" ></ul>
        </div>
        <div title="系统配置"   style="padding:10px;">

        </div>
        <div title="测试频块" style="padding:10px;">
            content3
        </div>
    </div>



</div>
<div data-options="region:'center',split:false"
     style="padding: 5px; background: #eee;">

    <!--         选项卡组件 -->
    <div id="indextab" class="easyui-tabs" data-options="fit:true">
        <!-- 	默认打开一个选项卡   -->
        <div title="首页" style="padding: 20px; display: none;">
            <div style="clear: left; margin: 5px 0px; height: 170px;">
                <div style="float: left; border: solid 1px #ccd9d9; height: 170px;">
                    <div style="width: 350px; height: 20px; background-color: #d6eced">
                        <table>
                            <tr>
                                <td><input type="image" title="这是menu"
                                           src="<%=request.getContextPath()%>/imgcon/gonggao (1).png"
                                           width="17px" height="16px"></td>
                                <td>公司公告</td>
                            </tr>
                        </table>

                    </div>
                    <div style="width: 350px; height: 130px;">
                        <h4>公告：</h4>
                        <ul type="circle">
                            <li>就是这么简单</li>
                            <li>一点要认真听课</li>
                            <li>否则</li>
                            <li>老王就歇菜了就不讲课了</li>
                        </ul>
                    </div>
                </div>
                <div
                        style="float: left; border: solid 1px #ccd9d9; margin: 0px 5px; height: 170px;">
                    <div style="width: 430px; height: 20px; background-color: #d6eced">
                        <table>
                            <tr>
                                <td><input type="image" title="这是menu"
                                           src="<%=request.getContextPath()%>/imgcon/daiban (1).png"
                                           width="17px" height="16px"></td>
                                <td>待办工作</td>
                            </tr>
                        </table>
                    </div>
                    <div style="width: 430px; height: 150px;">
                        <h4>待办：</h4>
                        <ul type="circle">
                            <li>人事管理</li>
                            <li>增加人事</li>
                            <li>人事查询</li>
                            <li>完工就歇菜了</li>
                        </ul>
                    </div>

                </div>
                <div style="float: left; border: solid 1px #ccd9d9; height: 170px;">
                    <div style="width: 300px; height: 20px; background-color: #61ced3">
                        <table>
                            <tr>
                                <td><input type="image" title="这是menu"
                                           src="<%=request.getContextPath()%>/imgcon/tixing.png"
                                           width="17px" height="16px"></td>
                                <td>定时提醒</td>
                            </tr>
                        </table>
                    </div>
                    <div style="width: 300px; height: 150px;">拉拉</div>

                </div>
            </div>
            <div style="clear: left; width: 4px"></div>
            <div style="clear: left; margin: 5px 0px; height: 170px;">
                <div style="float: left; border: solid 1px #ccd9d9; height: 170px;">
                    <div style="width: 350px; height: 20px; background-color: #d6eced">
                        <table>
                            <tr>
                                <td><input type="image" title="这是menu"
                                           src="<%=request.getContextPath()%>/imgcon/tongzhi.png"
                                           width="17px" height="16px"></td>
                                <td>公司通知</td>
                            </tr>
                        </table>
                    </div>
                    <div style="width: 350px; height: 150px;">拉拉</div>

                </div>
                <div
                        style="float: left; border: solid 1px #ccd9d9; margin: 0px 5px; height: 170px;">
                    <div style="width: 430px; height: 20px; background-color: #d6eced">
                        <table>
                            <tr>
                                <td><input type="image" title="这是menu"
                                           src="<%=request.getContextPath()%>/imgcon/richeng.png"
                                           width="17px" height="16px"></td>
                                <td>日程安排</td>
                            </tr>
                        </table>
                    </div>
                    <div style="width: 430px; height: 150px;">拉拉</div>

                </div>
                <div style="float: left; border: solid 1px #ccd9d9; height: 170px;">
                    <div style="width: 300px; height: 20px; background-color: #61ced3">
                        <table>
                            <tr>
                                <td><input type="image" title="这是menu"
                                           src="<%=request.getContextPath()%>/imgcon/bianqian.png"
                                           width="17px" height="16px"></td>
                                <td>个人便签</td>
                            </tr>
                        </table>
                    </div>
                    <div style="width: 300px; height: 150px;">拉拉</div>

                </div>
            </div>
            <div style="clear: left; width: 4px"></div>
            <div style="clear: left; margin: 5px 0px; height: 170px;">
                <div style="float: left; border: solid 1px #ccd9d9; height: 170px;">
                    <div style="width: 350px; height: 20px; background-color: #d6eced">
                        <table>
                            <tr>
                                <td><input type="image" title="这是menu"
                                           src="<%=request.getContextPath()%>/imgcon/toupiao.png"
                                           width="17px" height="16px"></td>
                                <td>公司投票</td>
                            </tr>
                        </table>
                    </div>
                    <div style="width: 350px; height: 150px;">拉拉</div>

                </div>
                <div
                        style="float: left; border: solid 1px #ccd9d9; margin: 0px 5px; height: 170px;">
                    <div style="width: 430px; height: 20px; background-color: #d6eced">
                        <table>
                            <tr>
                                <td><input type="image" title="这是menu"
                                           src="<%=request.getContextPath()%>/imgcon/duanxin.png"
                                           width="17px" height="16px"></td>
                                <td>我的短信</td>
                            </tr>
                        </table>
                    </div>
                    <div style="width: 430px; height: 150px;">拉拉</div>

                </div>
                <div style="float: left; border: solid 1px #ccd9d9; height: 170px;">
                    <div style="width: 300px; height: 20px; background-color: #61ced3">
                        <table>
                            <tr>
                                <td><input type="image" title="这是menu"
                                           src="<%=request.getContextPath()%>/imgcon/guizhang.png"
                                           width="17px" height="16px"></td>
                                <td>规章制度</td>
                            </tr>
                        </table>
                    </div>
                    <div style="width: 300px; height: 150px;">拉拉</div>

                </div>
            </div>






        </div>

    </div>


</div>




<!-- 引入EasyUI -->
<script type="text/javascript"
        src="<%=request.getContextPath()%>/EasyUI/jquery.easyui.min.js"></script>

<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
<script type="text/javascript"
        src="<%=request.getContextPath()%>/EasyUI/locale/easyui-lang-zh_CN.js"></script>
<!-- 树util -->
<script type="text/javascript"
        src="<%=request.getContextPath()%>/EasyUI/util-js.js"></script>


<script type="text/javascript">

    /* 页面加载树 */
    $(function(){
        $('#index-tree').tree({
            url:'<%=request.getContextPath() %>/indexTreeController/queryIndexTree.do',
            parentField:'pid',
            onSelect: function(node){
                console.info(node);
// 				alert(node.text);  // 在用户点击的时候提示
                if(node.url != null && node.url != ""){
                    //调用打开选项卡函数
                    changeTabs(node.text,node.url);
                }

            }

        });
    })

    function changeTabs(titleInfo,url){

        var flag = $('#indextab').tabs('exists',titleInfo);

        if(flag){

            $('#indextab').tabs('select',titleInfo);

        }else{
            $('#indextab').tabs('add',{
                title:titleInfo,
                tabHeight : 25,
                selected:true,
                href:"<%=request.getContextPath()%>/" + url,
                closable : true,
                tools : [ {
                    iconCls : 'icon-reload',
                    handler : function() {


                        var tab2 = $('#indextab').tabs('getSelected');
                        //获得当前选中的tab 的href
                        var url2 = $(tab2.panel('options')).attr('href');
                        tab2.panel('refresh', url2);

                        //alert(url2);

                    },

                } ]

                //content:$("#ddd").html()
            });
        }
    }

    $("#home").click(function() {

        var flag = $('#indextab').tabs('exists', "首页");

        if (flag) {

            $('#indextab').tabs('select', "首页");

        } else {
            $('#indextab').tabs('add', {
                title : "首页",
                tabHeight : 25,
                selected : true,
                href : "",
                closable : true,
            });
        }

    })
</script>




</body>
</html>