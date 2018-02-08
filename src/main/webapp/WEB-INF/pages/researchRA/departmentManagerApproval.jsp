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
    </style>
</head>
<body>

<form id="form">
    <div id="tabs1" style="width: 100%;height: 100%;border: 1px solid gainsboro" class="mini-tabs"
         activeIndex="0"
         plain="false">
        <%--基本信息TAB--%>
        <div title="项目基本信息" >
            <table cellpadding="1" cellspacing="2" class="table1">
                <tr>
                    <td class="trTitle" colspan="4">项目名称</td>
                </tr>
                <tr>
                    <td style="width:120px">项目名称 </td>
                    <td><input style="width: 100%" class="mini-textarea" /></td>
                </tr>
                <tr>
                    <td style="width:120px">项目申报单位 </td>
                    <td><input id="btnEdit2" style="width: 100%"
                               class="mini-textarea"

                               name="cid" textName="cname" />
                    </td>
                    <td style="width:120px">联合申报单位</td>
                    <td><input id="btnEdit3" style="width: 100%"
                               class="mini-textarea"

                               name="cid" textName="cname" />
                    </td>
                </tr>
                <tr>
                    <td style="width:120px">目的 </td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea" /></td>
                </tr>
                <tr>
                    <td class="trTitle" colspan="4" style="width:100px">与核电生产运营安全性、可靠性、经济的适应分析</td>
                </tr>
                <tr>
                    <td style="width:120px">安全性</td>
                    <td><input style="width: 100%" class="mini-textarea" /></td>
                    <td style="width:120px">可靠性</td>
                    <td><input style="width: 100%" class="mini-textarea" /></td>
                </tr>
                <tr>
                    <td style="width:120px">经济性</td>
                    <td><input style="width: 100%" class="mini-textarea"/></td>
                    <td style="width:120px">其他</td>
                    <td><input style="width: 100%" class="mini-textarea" /></td>
                </tr>
                <tr>
                    <td class="trTitle" colspan="4">审批意见</td>
                </tr>
                <tr>
                    <td style="width:120px">审批意见</td>
                    <td >
                        <div id="listbox1" class="mini-listbox" onvaluechanged="remove1()" style="width:350px;height:150px;"
                             multiSelect="false" >
                        </div>
                    </td>
                    <td style="width:120px">常用词条</td>
                    <td>

                        <div id="listbox2" class="mini-listbox" multiSelect="false" onvaluechanged="add()" style="width:350px;height:150px;"
                             textField="text"
                             url="/resources/text/listboxText.txt">

                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="trTitle" style="width: 100%;text-align: center" colspan="4">
                        <input type="submit" onclick="submitForm()" value="通过">
                        <input type="reset" value="驳回">
                    </td>
                </tr>


            </table>
        </div>

    </div>
</form>

<script type="text/javascript">
    mini.parse();

    var listbox1 = mini.get("listbox1");
    var listbox2 = mini.get("listbox2");

    function add() {

        var items = listbox2.getSelecteds();
        console.log(items);
        listbox2.removeItems(items);
        listbox1.addItems(items);
        listbox2.readOnly=true;
    }
    function remove1() {
        var items = listbox1.getSelecteds();
        console.log(items);
        listbox1.removeItems(items);
        listbox2.addItems(items);
        listbox2.readOnly=false;




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
                        btnEdit.setValue(data.sid);
                        btnEdit.setText(data.sname);
                    }
                }

            }
        })
    }






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
