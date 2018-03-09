<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/3/9
  Time: 下午2:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>email</title>
</head>
<body>

<p style="padding-top: 250px; padding-left: 450px">请输入你的邮箱并进行找回</p>

<div style="padding-top: 50px; padding-left: 500px">
    <form action="/findToEmail">
        <input type="text" name="email">
        <input type="submit" value="提交">
    </form>
</div>
<h5 style="padding-top: 50px; padding-left: 450px">由于投资方跑路了, 资金有限, 此页面极度简陋, 请不要介意</h5>
<h5 style="background-color: #000000; padding-left: 500px">不服就别用</h5>
</body>
</html>
