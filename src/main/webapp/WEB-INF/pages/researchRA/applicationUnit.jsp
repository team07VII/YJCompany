<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>项目申报单位</title>
    <title></title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="/resources/css/demo.css" rel="stylesheet" type="text/css" />
    <script src="/resources/scripts/boot.js" type="text/javascript"></script>

    <style type="text/css">
        body{
            margin:0;padding:0;border:0;width:100%;height:100%;overflow:hidden;
        }
    </style>
</head>
<body>

<div class="mini-toolbar" style="text-align:center;line-height:30px;" borderStyle="border:0;">
    <label >名称：</label>
    <input id="key" class="mini-textbox" style="width:150px;" onenter="onKeyEnter"/>
    <a class="mini-button" style="width:60px;" onclick="search()">查询</a>
</div>
<div class="mini-fit">

    <div id="grid1" class="mini-datagrid" style="width:100%;height:100%;"
         idField="id" allowResize="true"
         url="/researchRA/selectApplicationUnit"
         sizeList="[2,3,5,10]" pageSize="5"
         borderStyle="border-left:0;border-right:0;" onrowdblclick="onRowDblClick"
    >
        <div property="columns">
            <div type="indexcolumn" ></div>
            <div field="aid" width="120" headerAlign="center" allowSort="true">申报单位ID</div>
            <div field="aname" width="100%" headerAlign="center" allowSort="true">申报单位名称</div>
        </div>
    </div>

</div>
<div class="mini-toolbar" style="text-align:center;padding-top:8px;padding-bottom:8px;" borderStyle="border:0;">
    <a class="mini-button" style="width:60px;" onclick="onOk()">确定</a>
    <span style="display:inline-block;width:25px;"></span>
    <a class="mini-button" style="width:60px;" onclick="onCancel()">取消</a>
</div>
    <script>
        mini.parse();
        var datagrid = mini.get("grid1");
        datagrid.load();

        function GetData() {
            var row = datagrid.getSelected();
            return row;
        }

        /*查询*/
        function search() {
            var key = mini.get("key").getValue();
            datagrid.load({ aname: key });
        }
        function onKeyEnter(e) {
            search();
        }

        function onRowDblClick(e) {
            onOk();
        }
        //////////////////////////////////
        function CloseWindow(action) {
            if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
            else window.close();
        }

        function onOk() {
            CloseWindow("ok");
        }
        function onCancel() {
            CloseWindow("cancel");
        }
    </script>
</body>
</html>
