<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/6
  Time: 上午8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>工程师 组织审核</title>
    <link rel="stylesheet" href="/resources/css/demo.css">

    <script src="/resources/scripts/boot.js" type="text/javascript"></script>
    <script src="/resources/scripts/thirdparty/swfupload/swfupload.js" type="text/javascript"></script>
    <script src="/resources/js/ajaxfileupload.js" type="text/javascript"></script>
    <link href="/resources/scripts/miniui/themes/blue/skin.css" rel="stylesheet" type="text/css"/>
    <style>
        /*table {*/
            /*width: 100%;*/
            /*margin: 1px;*/
            /*border: 1px solid #b6e5ff;*/
            /*border-collapse: collapse;*/
        /*}*/

        /*td {*/
            /*border-collapse: collapse;*/
            /*padding: 5px;*/
            /*height: 20px;*/
            /*background-color: #c2e3ff;*/
            /*border: 1px solid #37b9ff;*/
        /*}*/

        table {
            width: 100%;
            margin: 1px;
            border: 1px solid gainsboro;
        }

        td {

            border: 1px solid RGB(214, 230, 217);
            border-collapse: collapse;
            padding: 2px;
            background-color: RGB(239, 248, 254);;

            padding: 3px;
            height: 25px;
        }

        .trTitle {
            background-color: #daeeff;
            color: #427dc0;
        }

        input {
            height: 20px;
            text-align: center;
            vertical-align: text-bottom;
        }

    </style>
</head>
<%--<form id="form">--%>
<%--<div id="tabs1" style="width: 100%;height: 100%;border: 1px solid gainsboro" class="mini-tabs"--%>
<%--activeIndex="0"--%>
<%--plain="false">--%>
<%--&lt;%&ndash;基本信息TAB&ndash;%&gt;--%>
<%--<div title="项目基本信息" >--%>

<%--<table cellpadding="1" cellspacing="2" class="table1">--%>
<%--<tr>--%>
<%--<td class="trTitle" colspan="4">项目基本信息</td>--%>
<%--</tr>--%>

<div style="width: 100%">

    <div id="baseInformation" class="mini-panel" margin-top="0px" title="项目基本信息" iconCls="icon-downgrade"
         style="width:100%;height: 240px"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">

        <table style="width: 100%;height: 100%">

            <tr>
                <td style="width:120px">项目名称</td>
                <td colspan="3" style="background-color: white">
                    <a href="#" style="padding-left: 300px">阳江业务管理平台</a>
                </td>
            </tr>
            <tr>
                <td style="width:120px">项目申报单位</td>
                <td style="width: 40%; background-color: white; padding-left: 130px">阳江公司</td>
                <td style="width:120px">联合申报单位</td>
                <td style="width: 40%; background-color: white; padding-left: 130px">XXX</td>
            </tr>

            <tr>
                <td style="width:120px">目的</td>
                <td style="width: 40%; background-color: white; padding-left: 130px">建设科管理系统</td>
                <td style="width:120px"></td>
                <td style="width: 40%; background-color: white; padding-left: 130px"></td>
            </tr>

        </table>
    </div>


    <div id="baseInformation1" class="mini-panel" margin-top="0px" title="与核电生产运营安全性, 可靠性, 经济的适应分析"
         iconCls="icon-downgrade"
         style="width:100%;height: 180px"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true"
         collapseOnTitleClick="true">

        <table style="width: 100%;height: 100%">
            <%--<tr>--%>
            <%--<td class="trTitle" colspan="4">与核电生产运营安全性, 可靠性, 经济的适应分析</td>--%>
            <%--</tr>--%>
            <tr>
                <td style="width:120px">安全性</td>
                <td style="width: 40%; background-color: white; padding-left: 130px">系统安全</td>
                <td style="width:120px">可靠性</td>
                <td style="width: 40%; background-color: white; padding-left: 130px">三重保障</td>
            </tr>
            <tr>
                <td style="width:120px">经济型</td>
                <td style="width: 40%; background-color: white; padding-left: 130px">提高办公效率</td>
                <td style="width:120px">其他</td>
                <td style="width: 40%; background-color: white; padding-left: 130px">2016建设需要</td>
            </tr>
        </table>
    </div>

    <div id="baseInformation2" class="mini-panel" margin-top="0px" title="审评信息"
         iconCls="icon-downgrade"
         style="width:100%;height: 180px"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true"
         collapseOnTitleClick="true">

        <table style="width: 100%;height: 100%">
            <%--<tr>--%>
            <%--<td class="trTitle" colspan="4">审评信息</td>--%>
            <%--</tr>--%>
            <tr>
                <td style="width:120px">审评结果</td>
                <td colspan="3"><input style="width: 100%;height: 90%" type="text" class="mini-textarea"/>
                </td>
            </tr>
            <tr>
                <td>立项报告书 <font color="red">※</font></td>
                <td id="upload">
                    <div style="width: 100%; background-color: white">
                        <input id="fileupload1" class="mini-htmlfile" name="Fdata" id="file1"
                               style="width:100%;"/>
                    </div>
                </td>
            </tr>

        </table>
    </div>


    <div id="baseInformation3" class="mini-panel" margin-top="0px" title="流程信息"
         iconCls="icon-downgrade"
         style="width:100%;height: 80px"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true"
         collapseOnTitleClick="true">

        <table style="width: 100%;height: 100%">


            <%--<tr>--%>
            <%--<td class="trTitle" colspan="4">流程信息</td>--%>
            <%--</tr>--%>
            <tr>
                <td style="width:120px">审批组长</td>
                <td>
                    <input style="width: 100%"
                           class="mini-buttonedit"
                           allowInput="false"
                           onbuttonclick="onPeopleButtonEdit"
                           name="sid" textName="sname"/>
                </td>
            </tr>

        </table>
    </div>

    <table>
        <tr>
            <td colspan="4" style="background-color: #e0e0e0">
                <a style="float: right; margin-right: 50px" onclick="agree()" class="mini-button"
                   iconCls="icon-ok">提交</a>
                <a style="float: right; margin-right: 50px" onclick="disagree()" class="mini-button"
                   iconCls="icon-no">驳回</a>
                <%--<input style="float: right; margin-right: 50px" type="button" value="提交">--%>
                <%--<input style="float: right; margin-right: 35px" type="button" value="驳回">--%>
            </td>
        </tr>

    </table>
    <%--</div>--%>
</div>
<%--</form>--%>

</body>
<script>

    mini.parse();

    function agree() {
        alert("通过")
    }

    function disagree() {
        alert("不通过")
    }

    function startUpload() {
        var fileupload = mini.get("fileupload1");

        fileupload.startUpload();
    }


    function onPeopleButtonEdit(e) {
        //加载mini组件 后面的get方法才好用
        var btnEdit = this;
        mini.open({
            url: "selectPeople",
            title: "选择学生",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                //if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        btnEdit.setValue(data.sid);
                        btnEdit.setText(data.sname);
                    }
                }

            }
        })
    }
</script>
</html>
