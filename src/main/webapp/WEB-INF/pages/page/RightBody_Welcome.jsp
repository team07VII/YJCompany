<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/1/19
  Time: 上午10:39
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="/resources/css/demo.css">

    <script src="/resources/scripts/boot.js" type="text/javascript"></script>
    <script src="/resources/scripts/thirdparty/swfupload/swfupload.js" type="text/javascript"></script>
    <script src="/resources/js/ajaxfileupload.js" type="text/javascript"></script>
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
            background-color: RGB(239, 248, 254);
            padding: 3px;
            height: 25px;
        }
        .header {
            background: url(/resources/images/tr-bkground1.png) repeat-x 0  ;
            font-family: "Heiti SC";
            padding: 3px;
        }

    </style>
</head>
<body>
<div id="tabs1" class="mini-tabs" activeIndex="0" style="width:100%;height:100%;">
    <%--plain="false"--%>
    <div title="待办任务" >
        <table>
            <tr>
                <td style="color:rgb(38,64,140)"; colspan="4" class="header"><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-goto"></div><strong>当前位置: 个人工作平台 >> 待办任务</strong></td>
            </tr>
            <tr>
                <td>
                    <%--<div id="layout1" class="mini-layout" style="width:100%; height: 150px;" borderStyle="border:solid 1px #aaa;">--%>
                        <div title="查询条件"  class="mini-panel" margin-top="0px" margin-left="0px" iconCls="icon-downgrade"
                             style="width:100%;height: 200px;background: url(/resources/images/tr-bkground1.png) repeat-x 0;"
                             showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
                            <table>
                                <tr>
                                    <td style="width:80px">申请时间</td>
                                    <td>
                                        <%--<input id="date2" style="width: 200%" class="mini-datepicker"/>--%>
                                        <input property="editor" class="mini-datepicker" style="width:100%;"/>
                                    </td>
                                    <%--<td style="width: 20%"></td>--%>
                                    <%--<td style="width:80px">流程名称</td>--%>
                                    <%--<td>--%>
                                        <%--<input style="width:100%;"class="mini-buttonedit"--%>
                                               <%--allowInput="false"--%>
                                               <%--onbuttonclick="onStudentButtonEdit"--%>
                                               <%--name="sid" textName="sname"/>--%>
                                    <%--</td>--%>
                                    <td style="width: 20%"></td>
                                    <td style="width:80px">关键字</td>
                                    <td>
                                        <input style="width: 100%"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:80px">申请人</td>
                                    <td>
                                        <input style="width: 100%"
                                               class="mini-buttonedit"
                                               allowInput="false"
                                               onbuttonclick="onPeopleButtonEdit"
                                               name="staffId" textName="staffName"/>
                                    </td>
                                    <td style="width: 20%"></td>
                                    <td style="width:80px">所属部门</td>
                                    <td>
                                    <input style="width:100%;"class="mini-buttonedit"
                                    allowInput="false"
                                    onbuttonclick="onApplicationUnit"
                                    name="appOrgNo" textName="appOrgOame"/>
                                    </td>


                                </tr>
                                <%--<tr>--%>
                                    <%--<td style="width:80px">所属部门</td>--%>
                                    <%--<td>--%>
                                        <%--<input style="width: 100%"/>--%>
                                    <%--</td>--%>
                                    <%--<td style="width: 20%"></td>--%>
                                <%--</tr>--%>
                            </table>
                        </div>
                    <%--</div>--%>
                </td>
            </tr>
            <tr>
                <td>
                    <button style="float: right">查询</button>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="listbox2" class="mini-listbox" style="width:100%;"
                         value="cn" onvaluechanged="onListBoxValueChanged"
                         url="/researchRA/selectAllPersonalCenter" showCheckBox="true" multiSelect="true" >
                        <div property="columns">
                            <div header="流程编号" field="processId"></div>
                            <div header="流程名称" field="processName"></div>
                            <div header="所属部门" field="departmentName"></div>
                            <div header="当前环节" field="currentLink"></div>
                            <div header="提报人" field="applyName"></div>
                            <div header="提报时间" field="applyTime"></div>
                            <div header="操作" field="ctrl"></div>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="mini-pager" style="width:100%;background:#f0f3f7;border:solid 1px #ccc;    "
                         totalCount="${session.pageBean.totalPage}" onpagechanged="onPageChanged" sizeList="[5,10,20,100]"
                         showPageSize="true" showPageIndex="true" showPageInfo="true"
                         buttons="#buttons">
                    </div>
                </td>
            </tr>
        </table>
    </div>
        <div title="已办任务">
            <table>
                <tr>
                    <td style="color:rgb(38,64,140)"; colspan="4" class="header"><div class="mini-button" style="background: inherit;border: 0px" iconCls="icon-goto"></div><strong>当前位置: 个人工作平台 >> 已办任务</strong></td>
                </tr>
                <tr>
                    <td>
                        <%--<div id="layout1" class="mini-layout" style="width:100%; height: 150px;" borderStyle="border:solid 1px #aaa;">--%>
                        <div title="查询条件"  class="mini-panel" margin-top="0px" margin-left="0px" iconCls="icon-downgrade"
                             style="width:100%;height: 200px;background: url(/resources/images/tr-bkground1.png) repeat-x 0;"
                             showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
                            <table>
                                <tr>
                                    <td style="width:80px">申请时间</td>
                                    <td>
                                        <%--<input id="date2" style="width: 200%" class="mini-datepicker"/>--%>
                                        <input property="editor" class="mini-datepicker" style="width:100%;"/>
                                    </td>
                                    <td style="width: 20%"></td>
                                    <td style="width:80px">流程名称</td>
                                    <td>
                                        <input style="width:100%;"class="mini-buttonedit"
                                               allowInput="false"
                                               onbuttonclick="onPeopleButtonEdit"
                                               name="sid" textName="sname"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:80px">申请人</td>
                                    <td>
                                        <input style="width: 100%"
                                               class="mini-buttonedit"
                                               allowInput="false"
                                               onbuttonclick="onPeopleButtonEdit"
                                               name="sid" textName="sname"/>
                                    </td>
                                    <td style="width: 20%"></td>
                                    <td style="width:80px">关键字</td>
                                    <td>
                                        <input style="width: 100%"/>
                                    </td>

                                </tr>
                                <tr>
                                    <td style="width:80px">所属部门</td>
                                    <td>
                                        <input style="width: 100%"/>
                                    </td>
                                    <td style="width: 20%"></td>
                                </tr>
                            </table>
                        </div>
                        <%--</div>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <button style="float: right">查询</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div id="listbox3" class="mini-listbox" style="width:100%;"
                             value="cn" onvaluechanged="onListBoxValueChanged"
                             url="/resources/text/countrys.txt" showCheckBox="true" multiSelect="true" >
                            <div property="columns">
                                <div header="流程编号" field="id"></div>
                                <div header="流程名称" field="name"></div>
                                <div header="所属部门" field="dep"></div>
                                <div header="当前环节" field="step"></div>
                                <div header="提报人" field="person"></div>
                                <div header="提报时间" field="time"></div>
                                <div header="操作" field="ctrl"></div>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="mini-pager" style="width:100%;background:#f0f3f7;border:solid 1px #ccc;    "
                             totalCount="${session.pageBean.totalPage}" onpagechanged="onPageChanged" sizeList="[5,10,20,100]"
                             showPageSize="true" showPageIndex="true" showPageInfo="true"
                             buttons="#buttons">
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
<script type="text/javascript">

    mini.parse();



//    function onTabPositionChange(value) {
//        var tabs = mini.get("tabs1");
//        tabs.setTabPosition(value);
//    }
//
//    function onTabAlignChange(value) {
//        var tabs = mini.get("tabs1");
//        tabs.setTabAlign(value);
//    }

//    function onClazzButtonEdit(e) {
//        //加载mini组件 后面的get方法才好用
//        var btnEdit = this;
//        mini.open({
//            url: "page/SelectGridWindow.html",
//            title: "选择班级",
//            width: 650,
//            height: 380,
//            ondestroy: function (action) {
//                //if (action == "close") return false;
//                if (action == "ok") {
//                    var iframe = this.getIFrameEl();
//                    var data = iframe.contentWindow.GetData();
//                    data = mini.clone(data);    //必须
//                    if (data) {
//                        btnEdit.setValue(data.cid);
//                        btnEdit.setText(data.cname);
//                    }
//                }
//
//            }
//        })
//    }

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
                        btnEdit.setValue(data.staffId);
                        btnEdit.setText(data.staffName);
                    }
                }

            }
        })
    }




</script>
</body>
</html>