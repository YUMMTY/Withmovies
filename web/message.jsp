<%--
  Created by IntelliJ IDEA.
  User: YUMTY
  Date: 2022/5/22
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<%@ page import="java.util.ArrayList" contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>留言板</title>
    <link href="css/register.css" rel="stylesheet">
</head>


<form action="ShowContent.jsp" method="post">
<div>
    <label>留言人&emsp;：</label>
    <input type="text" id="aaa" width="300px" name="username">message.jsp
</div>
<br>
<div>
    <label>留言内容：</label>
    <textarea  id="textarea" rows="15" cols="60" name="charContent" placeholder="&emsp;请输入内容..."></textarea>
</div>
<br><br>
<div>
    <button id="btn">签写留言</button>
    <input type="reset" value="重置">
</div>
<hr width="50%" align="left">
<ul style="list-style-type:none;padding:0; margin:0;">
    <li class="li_dd"></li>
</ul>
</form>
</body>

</html>
