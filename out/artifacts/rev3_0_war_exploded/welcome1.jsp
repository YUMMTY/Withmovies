<%--
  Created by IntelliJ IDEA.
  User: YUMTY
  Date: 2022/5/22
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>welcome</title>
    <link href="css/login.css" rel="stylesheet">
</head>
<body>
<div id="text"></div>
<script>
    var divtyping=document.getElementById('text')
    var i=0,timer=0,str='登录成功！';
    function typing() {
        if(i<=str.length){
            divtyping.innerHTML=str.slice(0,++i)+'_';
            timer=setTimeout(typing,200);
        }
        else{
            divtyping.innerHTML=str;
            clearTimeout(timer);
        }
    }
    typing();
</script>
<jsp:include page="welcome2.jsp" flush="true"/>

</body>
</html>
