<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆界面</title>
</head>
<body>
<style>
        .tabelstyle
        {
            
            position: absolute;
            left: 40%;
            top: 40%
        }
        h1{
            position: absolute;
            left: 46%;
             top: 30%
        }
        body{
        background-image:url(back.jpg);
        background-repeat: no-repeat;
        background-attachment:fixed;
        background-position:center;
        background-size:100%,50%;
        }
    </style>
</head>
<body>
    <h1>用户登录</h1>
    <table class="tabelstyle" border="1">
       <form action="yanzheng.jsp">
            <tr>
                <td style="width: 150px;">用户名</td>
                <td><input type="text" name="user" value=""></td>
            </tr>
            <tr>
                <td style="width: 150px;">密码</td>
                <td><input type="password" name="pass1" value=""></td>
            </tr>
            
            <tr>
                <td colspan="2" align="center"><button id="button2" type="submit">登陆</button></form><form action="zhuce.jsp"><button id="button3" href="zhuce.jsp">注册</button></form></td>
            </tr>
       
</body>
</html>