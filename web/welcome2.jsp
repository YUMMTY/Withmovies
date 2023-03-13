<%--
  Created by IntelliJ IDEA.
  User: YUMTY
  Date: 2022/5/22
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>welcome</title>
    <link href="css/login.css" rel="stylesheet">
</head>
<body>
<jsp:useBean id="counter" scope="application" class="Counter"/>
<div id="loginDiv">
    <form action="menu.jsp" >
        <h3 id="countMsg" >欢迎第<jsp:getProperty name="counter" property="count"/>次访问本网站</h3>
        <p>当前访问时间是：<%@include file="timeInfo.jsp"%></p>
        <div id="enterDiv">
            <input type="submit" value="进入网站" id="log_btn" >
        </div>
    </form>
</div>
</body>
</html>
