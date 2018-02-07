<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/7
  Time: 上午9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>财务部审批</title>
    <link rel="stylesheet" href="/resources/css/demo.css">

    <script src="/resources/scripts/boot.js" type="text/javascript"></script>
    <script src="/resources/scripts/thirdparty/swfupload/swfupload.js" type="text/javascript"></script>
    <script src="/resources/js/ajaxfileupload.js" type="text/javascript"></script>
    <link href="/resources/scripts/miniui/themes/blue/skin.css" rel="stylesheet" type="text/css"/>
    <style>
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
<body>
<div style="width: 100%">
    <div id="baseInformation" class="mini-panel" margin-top="0px" title="项目基本信息" iconCls="icon-downgrade"
         style="width:100%;height: 240px"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">

        <table style="width: 100%;height: 100%">

            <tr>
                <td style="width:120px">项目名称</td>
                <td colspan="3" style="background-color: white">
                    <a href="#" style="padding-left: 300px">业务流程管理平台</a>
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


    <div id="baseInformation2" class="mini-panel" margin-top="0px" title="工程师评审意见"
         iconCls="icon-downgrade"
         style="width:100%;height: 180px"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true"
         collapseOnTitleClick="true">
        <table style="width: 100%;height: 100%">
            <tr>
                <td style="width:120px">审评结果</td>
                <td colspan="3"><input style="width: 100%;height: 80%" type="text" class="mini-textarea"/>
                </td>
            </tr>
            <tr>
                <td>立项报告书 <font color="red">※</font></td>
                <td id="upload">
                    <a href="#">立项报告书</a>
                    <%--<div style="width: 100%; background-color: white">--%>
                    <%--<input id="fileupload1" class="mini-htmlfile" name="Fdata" id="file1"--%>
                    <%--style="width:93%;"/>--%>
                    <%--</div>--%>
                </td>
            </tr>
        </table>
    </div>


    <div id="baseInformation3" class="mini-panel" margin-top="0px" title="计划可行性分析意见"
         iconCls="icon-downgrade"
         style="width:100%;height: 360px"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true"
         collapseOnTitleClick="true">
        <table style="width: 100%;height: 100%">
            <tr>
                <td style="width:120px">对阳江公司科技发展规划的符合性审定</td>
                <td colspan="3"><input style="width: 100%; height: 80px" type="text" class="mini-textarea"/>
                </td>
            </tr>
            <tr>
                <td style="width:120px">对项目成果的影院领域和价值</td>
                <td colspan="3"><input style="width: 100%; height: 80px" type="text" class="mini-textarea"/>
                </td>
            </tr>
            <tr>
                <td style="width:120px">总体评价</td>
                <td colspan="3"><input style="width: 100%; height: 80px" type="text" class="mini-textarea"/>
                </td>
            </tr>
        </table>
    </div>

    <div id="baseInformation4" class="mini-panel" margin-top="0px" title="操作信息"
         iconCls="icon-downgrade"
         style="width:100%;height: 240px"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true"
         collapseOnTitleClick="true">
        <table style="width: 100%;height: 100%">
            <tr>
                <td style="width:120px">要求</td>
                <td colspan="3"><input style="width: 100%; height: 80px" type="text" class="mini-textarea"/>
                </td>
            </tr>
            <tr>
                <td style="width:120px">建议</td>
                <td colspan="3"><input style="width: 100%; height: 80px" type="text" class="mini-textarea"/>
                </td>
            </tr>
        </table>
    </div>

    <table>
        <tr>
            <td colspan="4" style="background-color: #e0e0e0">
                <a style="float: right; margin-right: 50px" onclick="agree()" class="mini-button"
                   iconCls="icon-ok">推荐</a>
                <a style="float: right; margin-right: 50px" onclick="disagree()" class="mini-button"
                   iconCls="icon-no">不推荐</a>
            </td>
        </tr>
    </table>
</div>
</body>
<script>

    mini.parse();

    function agree() {
        alert("通过")
    }

    function disagree() {
        alert("不通过")
    }


</script>
</html>
