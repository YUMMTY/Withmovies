<%@ page import="java.sql.*" %>
<%--
  Created by IntelliJ IDEA.
  User: YUMTY
  Date: 2022/5/22
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎入驻...</title>
    <link href="css/register.css" rel="stylesheet">
</head>
<body>
<div class="form-div">
    <div id="reg-content">
        <h1 id="reg_title">欢迎注册</h1>
        <span>已有账号？</span><a href="index.jsp">登录</a>
    </div>

    <form id="reg-form" method="post" action="welcome1.jsp" >
        <table>

            <tr>
                <td>用户名</td>
                <td class="inputs">
                    <input name="username" type="text" id="username">
                    <br>
                    <span id="username_err" class="err_msg" style="display:none">用户名不太受欢迎</span>
                </td>
            </tr>

            <tr>
                <td>密码</td>
                <td class="inputs">
                    <input name="password" type="password" id="password">
                    <br>
                    <span id="password_err" class="err_msg" style="display:none">密码格式有误</span>
                </td>
            </tr>

            <tr>
                <td>手机号</td>
                <td class="inputs">
                    <input name="tel" type="text" id="tel">
                    <br>
                    <span id="tel_err" class="err_msg" style="display:none">手机号格式有误</span>
                </td>
            </tr>

            <tr>
                <td>邮箱</td>
                <td class="inputs">
                    <input name="email" type="email" id="email">
                    <br>

                </td>

            </tr>

        </table>

        <div class="buttons">
            <input value="注 册" type="submit"  id="reg_btn">
            <input value="重 置" type="reset" id="reg1_btn">
        </div>

        <br class="clear">

    </form>
</div>

<script>
    //1.验证用户名是否符合规则
    //获取用户名的输入框
    var usernameInput = document.getElementById("username");
    //绑定onblur事件 失去焦点
    usernameInput.onblur = checkUsername;

    function checkUsername(){
        //获取用户输入的用户名
        var username = usernameInput.value.trim();   //用trim()方法排除空白
        //判断用户名是否符合规则：长度5~12位
        var flag=username.length>=5 && username.length<= 12;
        if(flag){
            //符合
            document.getElementById("username_err").style.display='none';

        }else{
            //不符合
            document.getElementById("username_err").style.display='';
        }
        return flag;
    }


    //2.验证密码是否符合规则
    //获取密码的输入框
    var passwordInput = document.getElementById("password");
    //绑定onblur事件 失去焦点
    passwordInput.onblur = checkPassword;
    function checkPassword(){
        //获取用户输入的密码
        var password = passwordInput.value.trim();   //用trim()方法排除空白
        //判断密码是否符合规则：长度6~12位
        var flag=password.length>=6 && password.length<= 12;
        if(flag){
            //符合
            document.getElementById("password_err").style.display='none';
        }else{
            //不符合
            document.getElementById("password_err").style.display='';
        }
        return flag;
    }


    //3.验证手机号是否符合规则
    //获取手机号的输入框
    var telInput = document.getElementById("tel");
    //绑定onblur事件 失去焦点
    telInput.onblur = checkTel;
    function checkTel(){
        //获取用户输入的手机号
        var tel = telInput.value.trim();   //用trim()方法排除空白
        //判断手机号是否符合规则：长度11位
        var flag=tel.length;
        if(flag){
            //符合
            document.getElementById("tel_err").style.display='none';
        }else{
            //不符合
            document.getElementById("tel_err").style.display='';
        }
        return flag;
    }


    //表单验证
    //1.获取表单对象
    var regForm = document.getElementById("reg-form");

    //2.绑定一个onsubmit事件
    regForm.onsubmit = function () {
        //挨个判断
        var flag = checkUsername() && checkPassword() && checkTel();
        return flag;
    }

</script>
</body>
</html>
