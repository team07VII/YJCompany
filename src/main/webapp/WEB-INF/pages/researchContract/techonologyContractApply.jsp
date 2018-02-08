<%--
  Created by IntelliJ IDEA.
  User: simone
  Date: 2018/2/5
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>techonologyContractApply</title>
    <link rel="stylesheet" href="/resources/css/demo.css">

    <script src="/resources/scripts/boot.js" type="text/javascript"></script>
    <script src="/resources/scripts/thirdparty/swfupload/swfupload.js" type="text/javascript"></script>
    <script src="/resources/js/ajaxfileupload.js" type="text/javascript"></script>
    <style type="text/css">
        .header {
            background: url(/resources/images/tr-bkground1.png) repeat-x 0 ;
            font-family: "Heiti SC";
            padding: 5px;
        }

        table {
            width: 100%;
            height: auto;
            /*border: 0px solid #ffffff;*/
            border: 1px solid gainsboro;
            padding: 1px;
        }

        td {

            border: 1px solid RGB(214, 230, 217);
            border-collapse: collapse;
            padding: 2px;
            background-color: RGB(239, 248, 254);;

            padding: 3px;
            height: 25px;
        }

        .td1 {
            width: 10%;
            text-align: right;
        }

        .td2 {
            width: 40%;
            background-color: white;
        }
    </style>
</head>
<body>
<form action="" id="form1">
    <table class="form-table" id="formtable" border="0" cellpadding="1" cellspacing="2">
        <%----%>
        <tr>
            <td style="color:rgb(38,64,140)"; colspan="4" class="header"><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-goto"></div><strong>当前位置: 科研项目申报 >> 科研项目合同申请表</strong></td>
        </tr>
            <tr>
                <td style="color:rgb(38,64,140);" colspan="4" class="header"><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-downgrade"></div><strong>申请信息</strong></td>
            </tr>

            <tr width="100%">
                <td class="td1"><label>合同名称<span style="color: red">※</span></label></td>
                <%--必填项 填写实际合同的名称 required="true"--%>
                <td class="td2"><input required="true" class="mini-textbox" width="100%" type="text"
                                       name="contractName"></td>
                <td class="td1"><label>合同编号<span style="color: red">※</span></label></td>
                <td class="td2"><input required="true" class="mini-textbox" width="100%" type="text" name="contractNo">
                </td>
            </tr>
            <tr>
                <td class="td1">合同对方信息<span style="color:red;">※</span></td>
                <td class="td2">
                    <%--填写实际对方信息--%>
                    <input required="true" class="mini-textbox" width="100%" name="oppDesc"/>
                </td>
            </tr>
            <tr width="100%">
                <td class="td1"><label>合同起日期<span style="color: red">※</span></label></td>
                <td class="td2"><input required="true" class="mini-datepicker" width="100%" name="contractBeginDate">
                </td>
                <td class="td1"><label>合同止日期<span style="color: red">※</span></label></td>
                <td class="td2"><input required="true" class="mini-datepicker" width="100%" name="contractEndDate"></td>
            </tr>

        <%----%>
        <tr>
            <td height="26px" style="color:rgb(38,64,140);" colspan="4" class="header"><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-downgrade"></div><strong>合同经费信息</strong></td>
        </tr>
        <%--未找到字段--%>
        <tr>
            <td class="td1" iconCls="icon-collapse">总费用</td>
            <td class="td2">
                <%--必填项、数字（保留2位小数,单位万元)--%>
                <input required="true" vtype=“float" class="mini-textbox" width="100%" name=""/>
            </td>
            <td class="td1">对方拨付</td>
            <td class="td2">
                <input required="true" vtype=“float" class="mini-textbox" width="100%" name=""/>
            </td>
        </tr>
        <tr>
            <td class="td1">公司自筹</td>
            <td class="td2">
                <input required="true" vtype=“float" class="mini-textbox" width="100%" name=""/>
            </td>
        </tr>

        <tr>
            <td height="26px" style="color:rgb(38,64,140);" colspan="4" class="header"><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-downgrade"></div><strong>项目成果分配</strong></td>
        </tr>
        <tr>
            <%--checkboxlist至少选择一项--%>
            <td class="td1">产品形式</td>
            <td colspan="3" width="1000px" style="background: white">
                <div id="cbl1" style="width:100%;"
                     name="projType"
                     class="mini-checkboxlist"
                     textField="text" valueField="id">
                </div>
            </td>
        </tr>

        <tr>
            <td class="td1">形成的知识产权及分配方式</td>
            <td colspan="3">
                <input class="mini-textarea" width="100%" value="10" name="rightDesc"/>
            </td>
        </tr>
        <tr>
            <td class="td1">直接经济效益及分配方式</td>
            <td colspan="3">
                <input class="mini-textarea" width="100%" name="benefitsDesc"/>
            </td>
        </tr>
        <tr>
            <td class="td1">形成的固定资产及分配方式</td>
            <td colspan="3">
                <input class="mini-textarea" width="100%" name="fixedAssets"/>
            </td>
        </tr>
        <tr>
            <td class="td1">合同运作形式简介</td>
            <td colspan="3">
                <input class="mini-textarea" width="100%" name=""/>
            </td>
        </tr>
        <tr>
            <td class="td1">运作说明</td>
            <td class="righttd" id="upload">
                <input class="mini-htmlfile" name="contractRunDesc" buttonText="Browse"
                       id="file1" style="width:100%;"/>
                <%--两个隐藏组件包含两个表单中的数据--%>
                <input id="base" type="hidden" name="base">
                <input id="other" type="hidden" name="other">
            </td>
        </tr>
        <%----%>
        <tr>
            <td height="26px" style="color:rgb(38,64,140);" colspan="4" class="header"><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-downgrade"></div><strong>预算信息</strong></td>
        </tr>
        <tr>
            <td class="td1">总预算</td>
            <td class="td2">
                <input class="mini-textbox" width="100%" value="1200.00" name="totalBudget"/>
            </td>
            <td class="td1">公司经费</td>
            <td class="td2">
                <input class="mini-textbox" width="100%" name=""/>
            </td>
        </tr>
        <tr>
            <td class="td1">外部支持经费</td>
            <td class="td2">
                <input class="mini-textbox" width="100%" name=""/>
            </td>
            <td class="td1">国家经费</td>
            <td class="td2">
                <input class="mini-textbox" width="100%" name=""/>
            </td>
        </tr>
        <%----%>
        <tr>
            <td height="26px" style="color:rgb(38,64,140);" colspan="4" class="header"><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-downgrade"></div><strong>流程信息 </strong></td>
        </tr>
        <tr>
            <%--人员卫星库选人控件，可多选--%>
            <td class="td1">技术部经理</td>
            <td class="td2">
                <input class="mini-textbox" width="100%" name="CONTRACT_SIGNTORY">
            <td><a class="mini-button" iconCls="icon-user"></a></td>
            </td>

        </tr>
        <%----%>
        <tr>
            <td colspan="4" style="text-align: right">
                <a class="mini-button" iconCls="icon-collapse" onclick="submit88()">提交</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            </td>
            <td></td>
        </tr>
    </table>

</form>

<script type="text/javascript">
    mini.parse();

    var cbl1 = mini.get("cbl1");
    var arr = [
        {"id": "cb01", "text": "专题报告"},
        {"id": "cb02", "text": "技术方案"},
        {"id": "cb03", "text": "技术标准"},
        {"id": "cb04", "text": "硬件产品"},
        {"id": "cb05", "text": "生产性文件"},
        {"id": "cb06", "text": "设计文件"},
        {"id": "cb07", "text": "计算机软件"},
        {"id": "cb08", "text": "其他"}
    ];
    cbl1.setData(arr);
    if (arr.indexOf(7).checked) {
        alert(aaaaa);
    }

//    $("#cbl1").append(
//        "<input type='text' name='oth' id='oth1' " +
//        "value='默认值' disabled='disabled' inline='true'>");


    function getForm() {
        var form = new mini.Form("#form2");
        var data = form.getData();
        var s = mini.encode(data);
        return s;
    }

    /*点击提交按钮触发的事件*/
    function submitForm() {
        /*1.获得基本信息tab表单中的数据 cookies取*/
        var base = $.cookie("form1");

        /*2.获得当前其他信息tab表单中的数据 直接获取当前表单*/
        var other = getForm();

        console.log(base + "--" + other);

        /*3.将数据传递给后台*/
        /*3.1 给两个隐藏input设置数据*/
        $("#base").val(base);
        $("#other").val(other);

        /*3.2 通过ajax上传文件、数据*/
        $.ajaxFileUpload({
            url: "fileUpload.action",
            fileElementId: $("#upload"), /*文件上传的id域*/
            success: function (data) {
                console.log(data);
            }
        })

    }

    function onClazzButtonEdit(e) {
        var btnEdit = this;
        mini.open({
            url: "/page/select_clazz_gridwindow.jsp",
            title: "选择班级列表",
            width: '80%',
            height: '80%',
            showMaxButton: true,
            ondestroy: function (action) {
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        console.log(data.cid + "--" + data.cname);
                        btnEdit.setValue(data.cid);
                        btnEdit.setText(data.cname);
                    }
                }
            }
        });

    }
    function onStudentButtonEdit(e) {
        var btnEdit = this;
        mini.open({
            url: "/page/select_student_gridwindow.jsp",
            title: "选择学生列表",
            width: '80%',
            height: '80%',
            showMaxButton: true,
            ondestroy: function (action) {
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        console.log(data.sid + "--" + data.sname);
                        btnEdit.setValue(data.sid);
                        btnEdit.setText(data.sname);
                    }
                }
            }
        });

    }

</script>
</body>
</html>
