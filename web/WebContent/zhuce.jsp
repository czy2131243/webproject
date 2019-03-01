<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册界面</title>
</head>
<body>
<style>
       .tabelstyle
        {
            
            position: absolute;
            left: 37%;
            top: 30%
        }
        h1{
            position: absolute;
            left: 48%;
            top: 20%
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
    <h1>注册</h1>
    <table class="tabelstyle" border="1">
       <form action="zhucexingxi.jsp">
            <tr>
                <td style="width: 150px;">用户名</td>
                <td><input type="text" name="user1" value=""></td>
            </tr>
            <tr>
                <td style="width: 150px;">密码</td>
                <td><input type="password" name="pass2" value=""></td>
            </tr>
            <tr>
                <td style="width: 150px;">确认密码</td>
                <td><input type="password" name="pass3"></td>
            </tr>
            <tr>
                <td style="width: 150px;">学号</td>
                <td><input type="text" name="number1"></td>
            </tr>
            <tr>
                <td style="width: 150px;">名字</td>
                <td><input type="text" name="name1"></td>
            </tr>
            <tr>
                <td style="width: 150px;">性别</td>
                <td><input type="text" name="sex1"></td>
            </tr>
            <tr>
                <td style="width: 150px;">年龄</td>
                <td><input type="text" name="age1"></td>
            </tr>
            <tr>
                <td>验证码
                    <span id="span1"></span>
                </td>
                <td><input type="text" id="yanzheng"><button id="button1">看不清请重新按</button></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><button id="button2" type="submit" onclick="userthing();passwordthing();yanzhengma1()">提交</button><button id="button3" type="reset" >重置</button></td>
            </tr>
       </form>
    </table>
    <script>
        
        function userthing()
        {
            var u;
            u=document.getElementById("user");
            if(u.value=="")
            {
                alert("用户名不能为空");
            }
        }
        function passwordthing()
        {
           var p1,p2;
           p1=document.getElementById("pass1");
           p2=document.getElementById("pass2");
           if(p1.value!=p2.value)
           {
               alert("两次密码不一致");
           } 
        }
        var num;
        function yanzhengma()
        {
            var s;
            s=1000+Math.floor(Math.random()*9000);
            return s;
        }
        function yanzhengma1()
        {
            var num1;
            num1=document.getElementById("yanzheng");
            if(parseInt(num1.value)!=num)
            {
                alert("验证码错误")
            }
        }
        num=yanzhengma();
        document.getElementById("span1").innerHTML=num;  
    </script>
</body>
</html>