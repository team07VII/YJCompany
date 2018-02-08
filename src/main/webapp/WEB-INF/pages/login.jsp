<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/5
  Time: 上午8:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
    <link href="/resources/css/style.css" rel='stylesheet' type='text/css' />
    <script src="/resources/js/jquery-3.2.1.js"></script>
    <script src="/resources/js/gt.js"></script>
    <style>
        /*body{*/
            /*position: absolute;*/
        /*}*/
        #div1 {

            color: #ffffff;
            height: 300px;
            width: 400px;
            background-color: rgba(68, 63, 63, 0.52);
            position: fixed;
            top: 230px;
            left: 480px;
        }

        /*input {*/
            /*width: 300px;*/
            /*height: 30px;*/
            /*padding-left: 0;*/
            /*color: #1c1c1c;*/
            /*border: none;*/
            /*font-size: 16px;*/
            /*font-weight: bold;*/
            /*line-height: 30px;*/
        /*}*/
        .inp {
            border: 1px solid #cccccc;
            border-radius: 2px;
            padding: 0 10px;
            width: 278px;
            height: 40px;
            font-size: 18px;
        }
        /*.btn {*/
            /*border: 1px solid #cccccc;*/
            /*border-radius: 2px;*/
            /*width: 100px;*/
            /*height: 40px;*/
            /*font-size: 16px;*/
            /*color: #666;*/
            /*cursor: pointer;*/
            /*background: white linear-gradient(180deg, #ffffff 0%, #f3f3f3 100%);*/
        /*}*/
        /*.btn:hover {*/
            /*background: white linear-gradient(0deg, #ffffff 0%, #f3f3f3 100%)*/
        /*}*/
        #captcha1,
        #captcha2 {
            width: 300px;
            display: inline-block;
        }
        .show {
            display: block;
        }
        .hide {
            display: none;
        }
        #notice1,
        #notice2 {
            color: red;
        }
        label {
            vertical-align: top;
            display: inline-block;
            width: 80px;
            text-align: right;
        }
        #wait1, #wait2 {
            text-align: left;
            color: #666;
            margin: 0;
        }
    </style>

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
    <form action="/home" method="post">
        <input type="text" class="text" name="username" id="username">
        <div class="key">
            <input type="password" name="password" id="password">
        </div>

    <div>
        <%--<label>完成验证：</label>--%>
        <div id="captcha1">
            <p id="wait1" class="show">正在加载验证码......</p>
        </div>
    </div>

    <br><br>

    <p id="notice1" class="hide">请先完成验证</p>

    <div id="message" style="width:160px; margin-left:88px; height:30px; color: red">${msg}</div>
        <div class="signin">
            <input type="submit" class="btn" id="submit1"  value="Login">
        </div>
    </form>

</div>


</body>

<script>

    var handler1 = function (captchaObj) {
        $("#submit1").click(function (e) {
            var result = captchaObj.getValidate();
            if (!result) {
                $("#notice1").show();
                setTimeout(function () {
                    $("#notice1").hide();
                }, 2000);
                e.preventDefault();
            }
        });
        // 将验证码加到id为captcha的元素里，同时会有三个input的值用于表单提交
        captchaObj.appendTo("#captcha1");
        captchaObj.onReady(function () {
            $("#wait1").hide();
        });
        // 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
    };
    $.ajax({
        url: "/startCaptcha?t=" + (new Date()).getTime(), // 加随机数防止缓存
        type: "get",
        dataType: "json",
        success: function (data) {
            // 调用 initGeetest 初始化参数
            // 参数1：配置参数
            // 参数2：回调，回调的第一个参数验证码对象，之后可以使用它调用相应的接口
            initGeetest({
                gt: data.gt,
                challenge: data.challenge,
                new_captcha: data.new_captcha, // 用于宕机时表示是新验证码的宕机
                offline: !data.success, // 表示用户后台检测极验服务器是否宕机，一般不需要关注
                product: "float", // 产品形式，包括：float，popup
                width: "100%"
                // 更多配置参数请参见：http://www.geetest.com/install/sections/idx-client-sdk.html#config
            }, handler1);
        }
    });


    function onLoginClick(e) {
        setTimeout(function () {
            $.post("findUser",
                    {username: $("#username").val(), password: $("#password").val()},
                    function (result) {

                        if (result.errorCode == 0) {
                            window.location = "home";
                        }else {
//                            window.location = "login";
                            $("#message").append(result.message);
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
