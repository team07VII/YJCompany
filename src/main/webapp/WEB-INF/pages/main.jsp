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
    <title>首页</title>
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
        #topbk{
            background: url(/resources/images/top.png) repeat-x 0 ;
            background-size: 100%;
            width: 100%;
            height: 10%;
            float: left;
        }
    </style>
</head>
<body>
<%--http://music.163.com/#/song?id=849739--%>
<div id="topbk">
    <span style="float: left; padding-left: 80px"><h3>当前用户: ${username}</h3></span>
    <button style="float: right" onclick="exit()">退出登录</button>
    <button style="float: right">个人工作台</button>
</div>
<div  id="layout1" class="mini-layout" style="width:100%;height:90%;background-color:RGB(41,105,166);" borderStyle="border:solid 1px #aaa;">
    <%--<div  region="north"--%>
         <%--style="background-color: #e8ecf6;float: left;width: 100%;height: 15px">--%>
         <%--&lt;%&ndash;&ndash;%&gt;--%>
        <%--&lt;%&ndash; 背景音乐 &ndash;%&gt;--%>
        <%--&lt;%&ndash;<embed width="1" height="1" src="/resources/music/underMusic.mp3" autostart=true controls="pausebutton">&ndash;%&gt;--%>

                <%--<span style="float: left"><h3>当前用户: ${username}</h3></span>--%>
                <%--<button style="float: right" onclick="exit()">退出登录</button>--%>
                <%--<button style="float: right">个人工作台</button>--%>

                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
    <%--</div>--%>
        <%--<div style="background-image:url(/resources/images/top.png)">--%>

        <%--</div>--%>
    <div title="center" region="center">
        <div class="mini-splitter" style="width:99%;height:100%">
            <%--左侧menu--%>
            <%-- /resources/text/outlookmenu.txt --%>
            <div style="background-color:rgb(229,225,230)" size="15%" showCollapseButton="true">
                <div id="leftTree" class="mini-outlookmenu" url="/someJson"
                     onitemselect="onItemSelect"
                     idField="id" parentField="pid" textField="text" borderStyle="border:0">
                </div>
            </div>
            <%--右侧主题--%>
            <div style="background-color: whitesmoke" showCollapseButton="true" title="center" region="center" bodyStyle="overflow:scroll;">
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
