<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/2
  Time: 下午5:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/demo.css">

    <script src="/resources/scripts/boot.js" type="text/javascript"></script>
    <script src="/resources/scripts/thirdparty/swfupload/swfupload.js" type="text/javascript"></script>
    <script src="/resources/js/ajaxfileupload.js" type="text/javascript"></script>

    <style type="text/css">
        table, td {
            border: 1px solid #d5e9fa;
            border-collapse: collapse;
            padding: 1px;
            width: 99%;
        }

        input {
            height: 20px;
        }
    </style>
</head>
<body>
<%--http://music.163.com/#/song?id=849739--%>
<div id="layout1" class="mini-layout" style="width:100%;height:100%" borderStyle="border:solid 1px #aaa;">
    <div title="采购监管平台系统" region="north" showSplitIcon="true"
         style="background-color: #e8ecf6;float: left;width: 100%;height: 15px">

        <%-- 背景音乐 --%>
        <%--<embed width="1" height="1" src="/resources/music/underMusic.mp3" autostart=true controls="pausebutton">--%>

                <span style="float: left"><h3>当前用户: ${username}</h3></span>
                <button style="float: right" onclick="exit()">退出登录</button>
                <button style="float: right">个人工作台</button>

                <%--</div>--%>
    </div>
    <div title="center" region="center">
        <div class="mini-splitter" style="width:99%;height:100%">
            <%--左侧menu--%>
            <%-- /resources/text/outlookmenu.txt --%>
            <div size="15%" showCollapseButton="true">
                <div id="leftTree" class="mini-outlookmenu" url="/someJson"
                     onitemselect="onItemSelect"
                     idField="id" parentField="pid" textField="text" borderStyle="border:0">
                </div>
            </div>
            <%--右侧主题--%>
            <div showCollapseButton="true" title="center" region="center" bodyStyle="overflow:scroll;">
                <iframe id="mainframe" frameborder="0" name="main" style="width:100%;height:100%;" border="0"></iframe>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">

    mini.parse();
    var iframe = document.getElementById("mainframe");
    iframe.src = "page/RightBody_Welcome";

    function onItemSelect(e) {
        var item = e.item;
        iframe.src = item.url;
    }

    function exit() {

//        alert(111)
        $.post("exit", function () {
            window.location = "login";
        })


    }

</script>
</body>
</html>
