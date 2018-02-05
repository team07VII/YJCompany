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
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
    <link href="/resources/css/style.css" rel='stylesheet' type='text/css' />
    <script src="/resources/js/jquery-3.2.1.js"></script>

</head>
<body>
<script>$(document).ready(function(c) {
    $('.close').on('click', function(c){
        $('.login-form').fadeOut('slow', function(c){
            $('.login-form').remove();
        });
    });
});
</script>
<!--SIGN UP-->
<h1>阳江业务管理平台</h1>
<div class="login-form">
    <div class="close"> </div>
    <div class="head-info">
        <label class="lbl-1"> </label>
        <label class="lbl-2"> </label>
        <label class="lbl-3"> </label>
    </div>
    <div class="clear"> </div>
    <div class="avtar">
        <img src="/resources/images/avtar.png" />
    </div>
    <%--<form action="/home">--%>
        <input type="text" class="text" name="username" id="username">
        <div class="key">
            <input type="password" name="password" id="password">
        </div>
        <div class="signin">
            <input type="submit" value="Login" onclick="onLoginClick()">
        </div>
    <%--</form>--%>

</div>


</body>

<script>

//    var loginWindow = mini.get("loginWindow");
//    loginWindow.show();


    function onLoginClick(e) {

//        var row = mini.get(username).value;
//        alert(mini.get(username).value);

//        var form = new mini.Form("#loginWindow");

//        form.validate();
//        if (form.isValid() == false) return;

//        loginWindow.hide();
//        mini.loading("登录成功，马上转到系统...", "登录成功");
        setTimeout(function () {
            $.post("findUser",
                    {username: $("#username").val(), password: $("#password").val()},
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
