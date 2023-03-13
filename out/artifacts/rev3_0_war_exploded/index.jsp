<%--
  Created by IntelliJ IDEA.
  User: YUMTY
  Date: 2022/5/26
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>欢迎登录</title>
  <title>欢迎</title>
  <link href="css/login.css" rel="stylesheet">
</head>
<body>
<div id="loginDiv">
  <form action="/rev3_0_war_exploded/LoginServlet" method="post" id="form">
    <h1 id="loginMsg">LOGIN IN</h1>
    <p>Username： <input type="text" name="username" id="username"/></p>
    <p>Password： <input type="password" name="password" id="password"/></p>

    <div id="subDiv">
      <input value="login up" type="submit" class="button">
      <input value="reset" type="reset" class="button">
      <a href="register.jsp">没有账号？点击注册</a>
    </div>
  </form>
</div>
</body>
</html>

