<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/1/18
  Time: 下午7:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/demo.css">

    <script src="/resources/scripts/boot.js" type="text/javascript"></script>
    <script src="/resources/swfupload/swfupload.js" type="text/javascript"></script>
    <script src="/resources/js/ajaxfileupload.js" type="text/javascript"></script>
    <script src="/resources/js/jquery.cookie.js" type="text/javascript"></script>

    <style type="text/css">
        .table1 {
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

            background: url(/resources/images/tr-bkground1.png) repeat-x 0 ;
            color: #427dc0;
        }

        input {
            height: 20px;
            text-align: center;
            vertical-align: text-bottom;
        }

        html body .user_add .mini-buttonedit-icon {
            background: url(/resources/scripts/miniui/res/images/user_add.png) no-repeat 50% 50%;
        }
    </style>
</head>
<body>

<form id="form" action="/researchRA/insert">
    <div id="tabs1" style="width: 100%;height: 100%;border: 1px solid gainsboro" class="mini-tabs"
         activeIndex="0"
         plain="false">
        <%--基本信息TAB--%>
        <div title="项目基本信息" >
            <table cellpadding="1" cellspacing="2" class="table1">
                <tr>
                    <td class="trTitle" colspan="4" style="color:rgb(38,64,140);" ><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-downgrade">项目基本信息</div></td>
                </tr>
                <tr>
                    <td style="width:120px">项目名称 <font color="red">※</font></td>
                    <td><input style="width: 100%" class="mini-textarea" required="true" name="projName"/></td>
                </tr>
                <tr>
                    <td style="width:120px">项目申报单位 <font color="red">※</font></td>
                    <td><input id="btnEdit2" style="width: 100%"
                               class="mini-buttonedit user_add"
                               allowInput="false"
                               onbuttonclick="onApplicationUnit"
                               name="aid" textName="aname" required="true"/>
                    </td>
                    <td style="width:120px">联合申报单位 <font color="red">※</font></td>
                    <td><input id="btnEdit3" style="width: 100%"
                               class="mini-buttonedit user_add"
                               allowInput="false"
                               onbuttonclick="onCombineUnit"
                               name="aid" textName="aname" required="true"/>
                    </td>
                </tr>
                <tr>
                    <td style="width:120px">目的 <font color="red">※</font></td>
                    <td colspan="3"><input name="purpose" style="width: 100%" class="mini-textarea" required="true"/></td>
                </tr>
                <tr>
                    <td class="trTitle" colspan="4" style="color:rgb(38,64,140);" ><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-downgrade">与核电生产运营安全性,可靠性,经济的适应分析</div></td>
                </tr>
                <tr>
                    <td style="width:120px">安全性</td>
                    <td><input name="safeDesc" style="width: 100%" class="mini-textarea" required="true"/></td>
                    <td style="width:120px">可靠性</td>
                    <td><input name="reliableDesc" style="width: 100%" class="mini-textarea" required="true"/></td>
                </tr>
                <tr>
                    <td style="width:120px">经济性</td>
                    <td><input style="width: 100%" class="mini-textarea" required="true"/></td>
                    <td style="width:120px">其他</td>
                    <td><input style="width: 100%" class="mini-textarea" required="true"/></td>
                </tr>
                <tr>
                    <td class="trTitle" colspan="4" style="color:rgb(38,64,140);" ><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-downgrade">其他信息</div></td>
                </tr>
                <tr>
                    <td style="width:120px">成果应用</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea" required="true"/></td>
                </tr>
                <tr>
                    <td style="width:120px">实际用户</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea" required="true"/></td>
                </tr>
                <tr>
                    <td style="width:120px">潜在用户</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea" required="true"/></td>
                </tr>
                <tr>
                    <td style="width:120px">项目完成周期</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea" vtype="int" required="true"/></td>
                </tr>
                <tr>
                    <td style="width:120px">项目内容路径简介</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea" required="true"/></td>
                </tr>
                <tr>
                    <td class="trTitle" colspan="4" style="color:rgb(38,64,140);" ><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-downgrade">预算信息</div></td>
                </tr>
                <tr>
                    <td style="width:120px">总预算 <font color="red">※</font></td>
                    <td><input style="width: 100%;" type="text" class="mini-textarea" vtype="float" required="true"/></td>
                    <td style="width:120px">公司经费</td>
                    <td><input style="width: 100%" class="mini-textarea" vtype="float" required="true"/></td>
                </tr>
                <tr>
                    <td style="width:120px">外部支持经费</td>
                    <td><input style="width: 100%" class="mini-textarea" vtype="float" required="true"/></td>
                    <td style="width:120px">国家经费</td>
                    <td><input style="width: 100%" class="mini-textarea" vtype="float" required="true"/></td>
                </tr>

            </table>
        </div>
        <%--其他信息TAB--%>
        <div title="项目其他信息">
            <table cellpadding="1" cellspacing="2" class="table1">
                <tr>
                    <td class="trTitle" colspan="4" style="color:rgb(38,64,140);" ><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-downgrade">技术第一负责人信息</div></td>
                </tr>
                <tr>
                    <td style="width: 100px">姓名、专业经历和能力简述</td>
                    <td><input style="width: 100%;" class="mini-textarea" required="true"/></td>
                </tr>
                <tr>
                    <td class="trTitle" colspan="4" style="color:rgb(38,64,140);" ><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-downgrade">产品信息</div></td>
                </tr>
                <tr>
                    <td>产品形式</td>
                    <td>
                        <%--<div id="cbl1" class="mini-checkboxlist"--%>
                        <%--textField="text" valueField="id"--%>
                        <%--data="[--%>
                        <%--{'id':'10001','text':'专题报告'},--%>
                        <%--{'id':'10002','text':'技术方案'},--%>
                        <%--{'id':'10003','text':'技术标准'},--%>
                        <%--{'id':'10004','text':'硬件产品'},--%>
                        <%--{'id':'10005','text':'生产性文件'},--%>
                        <%--{'id':'10006','text':'设计文件'},--%>
                        <%--{'id':'10007','text':'计算机软件'},--%>
                        <%--{'id':'10008','text':'其他_____'},]">--%>
                        <%--</div>--%>
                        <div style="horiz-align: center">
                            <input type="checkbox">专题报告
                            <input type="checkbox">技术方案
                            <input type="checkbox">技术标准
                            <input type="checkbox">硬件产品
                            <input type="checkbox">生产性文件
                            <input type="checkbox">设计文件
                            <input type="checkbox">计算机软件
                            <input type="checkbox" onclick="energyTypeCheck(this);">其他
                            <input style="display:none; height: 120%; float: right" name="energyType" type="text" id="Checkbox5"/>
                        </div>
                    </td>


                </tr>
                <tr>
                    <td>预计产权说明</td>
                    <td><input style="width: 100%; " class="mini-textarea" required="true"/></td>
                </tr>
                <tr>
                    <td>经济效益</td>
                    <td><input style="width: 100%; " class="mini-textarea" required="true"/></td>
                </tr>
                <tr>
                    <td>固定资产</td>
                    <td><input style="width: 100%; " class="mini-textarea" required="true"/></td>
                </tr>
                <tr>
                    <td>验收标准</td>
                    <td><input style="width: 100%; " class="mini-textarea" required="true"/></td>
                </tr>
                <tr>
                    <td class="trTitle" colspan="4" style="color:rgb(38,64,140);" ><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-downgrade">附件信息</div></td>
                </tr>
                <tr>
                    <td>立项报告书 <font color="red">※</font></td>
                    <td id="upload">
                        <div>
                            <input class="mini-htmlfile" name="Fdata" id="file1" style="width:93%;" required="true" buttonText="Browse"/>
                            <input style="float: right" type="button" value="上传" onclick="ajaxFileUpload()"/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="trTitle" colspan="4" style="color:rgb(38,64,140);" ><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-downgrade">流程信息</div></td>
                </tr>
                <tr>
                    <td style="width: 100px">审批(部门经理) <font color="red">※</font></td>
                    <td>
                        <input id="btnEdit1" style="width: 100%"
                               class="mini-buttonedit user_add"
                               onbuttonclick="onDepartmentanager"
                               allowInput="false"
                               name="sid" textName="sname" required="true"/>
                    </td>
                </tr>
                <tr>
                    <td class="trTitle" style="width: 100%;text-align: center" colspan="4">
                        <input type="submit" onclick="submitForm()" value="提交">
                        <input type="reset" value="重置">
                    </td>
                </tr>

            </table>
        </div>
    </div>
</form>

<script type="text/javascript">
    mini.parse();
    //审批(部门经理)弹出框的点击事件
    function onApplicationUnit(e) {
        //加载mini组件 后面的get方法才好用
        var btnEdit = this;
        mini.open({
            url: "/researchRA/applicationUnit",
            title: "选择项目申报单位",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                //if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        btnEdit.setValue(data.aid);
                        btnEdit.setText(data.aname);
                    }
                }

            }
        })
    }
    function onCombineUnit(e) {
        //加载mini组件 后面的get方法才好用
        var btnEdit = this;
        mini.open({
            url: "/researchRA/CombineUnit",
            title: "选择联合申报单位",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                //if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        btnEdit.setValue(data.aid);
                        btnEdit.setText(data.aname);
                    }
                }

            }
        })
    }

    function onDepartmentanager(e) {
        //加载mini组件 后面的get方法才好用
        var btnEdit = this;
        mini.open({
            url: "/researchRA/departmentManager",
            title: "选择部门经理",
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


    function energyTypeCheck (chk) {
        var Checkbox5 = document.getElementById('Checkbox5');
        if (chk.checked) {
            Checkbox5.style.display = 'block';
        } else {
            Checkbox5.style.display = 'none';
        }
    }



    //    //先找到tab组件
    //    var tabs = mini.get("tabs1");
    //    //给tab组件加入监听事件,tab切换前保存数据
    //    tabs.on("beforeactivechanged",function (e) {
    //
    //        var tabs = e.sender();
    //        var iframe = tabs.getTabIFrameEl(tabs.getTab(0));
    //        var data = iframe.contentWindow.getForm();
    //
    //        $.cookie("form",data);
    //
    //        //将第一个tab中数据保存到cookie中
    //
    //    });
    function getForm() {
        var form = new mini.Form("#form");
        var data = form.getData();
        var s = mini.encode(data);
        return s;
    }

    function submitForm() {
        /**
         * 1.获得基本信息tab中的数据,cookies取
         * 2.获得当前其他信息tab中的数据,直接获取当前表单
         * 3.将数据传递给后台
         */
        var data = getForm();
        $("#form").val(data);

        $.ajaxFileUpload({
            url:"fileUploac.action",
            fileElementId:"${"upload"}",
            success:function (d) {

            }

        })
    }

</script>
</body>
</html>
