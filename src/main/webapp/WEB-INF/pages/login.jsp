<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/5
  Time: 上午8:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>阳江业务首页</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="/resources/css/demo.css">
    <script src="/resources/scripts/boot.js" type="text/javascript"></script>
    <script src="/resources/js/jquery-3.2.1.js"></script>
    <style>
        body{
            background-image: url("/resources/images/login.jpg");
            background-repeat:no-repeat;
            background-position-y: 165px;
        }
    </style>
</head>
<body>

<%--<form action="/home" method="post">--%>
<%--<input type="text" name="username"/>--%>
<%--<input type="password" name="password"/>--%>
<%--<input type="submit" value="登录">--%>
<%--</form>--%>

<div id="loginWindow" title="用户登录" style="width:280px;height:165px; margin-left: 700px; margin-top: 300px"
     showModal="true" showCloseButton="false">

    <div id="loginForm" style="padding:15px;padding-top:10px;">
        <table>
            <tr>
                <td style="width:60px;">帐号：</td>
                <td>
                    <input id="username" name="username" vtype="rangeChar:6,20"
                           class="mini-textbox" required="true" style="width:150px;"/>
                </td>
            </tr>
            <tr>
                <td style="width:60px;">密码：</td>
                <td>
                    <input id="pwd" name="pwd" vtype="rangeChar:6,20"
                           class="mini-password" required="true" style="width:150px;"
                           onenter="onLoginClick"/>
                    <%--&nbsp;&nbsp;<a href="#">忘记密码?</a>--%>
                </td>
            </tr>
            <tr>
                <td></td>
                <td style="padding-top:5px;">
                    <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a onclick="onLoginClick()" class="mini-button" style="width:60px;">登录</a>
                    <%--<a onclick="onResetClick" class="mini-button" style="width:60px;">重置</a>--%>
                </td>
            </tr>
        </table>
    </div>

</div>

<%--<input id="PlanTypeId" name="PlanTypeId" class="mini-combobox comboboxWidth" style="width: 130px" valuefield="Key" textfield="Value" onblur="checkComboboxblur('PlanTypeId')" allowinput="true" valuefromselect="true" required="true" />--%>

</body>

<script>

    mini.parse();

    var loginWindow = mini.get("loginWindow");
    loginWindow.show();


    function onLoginClick(e) {

//        var row = mini.get(username).value;
//        alert(mini.get(username).value);

        var form = new mini.Form("#loginWindow");

        form.validate();
        if (form.isValid() == false) return;

        loginWindow.hide();
        mini.loading("登录成功，马上转到系统...", "登录成功");
        setTimeout(function () {
            $.post("findUser",
                    {username: mini.get(username).value, password: mini.get(pwd).value},
                    function (result) {

                        if (result.errorCode == 0) {
                            window.location = "home";
                        }else {
                            window.location = "login"
                        }

                    }
            );
        }, 1500);
    }

    //    function onResetClick(e) {
    //        var form = new mini.Form("#loginWindow");
    //        form.clear();
    //    }
    /////////////////////////////////////
    //    function isEmail(s) {
    //        if (s.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
    //            return true;
    //        else
    //            return false;
    //    }

    function onUserNameValidation(e) {
        if (e.isValid) {
            if (isEmail(e.value) == false) {
                e.errorText = "必须输入用户名";
                e.isValid = false;
            }
        }
    }
    function onPwdValidation(e) {
        if (e.isValid) {
            if (e.value.length < 5) {
                e.errorText = "密码不能少于5个字符";
                e.isValid = false;
            }
        }
    }


</script>

</html>
