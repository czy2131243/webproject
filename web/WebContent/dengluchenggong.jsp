<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd 

">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据展示</title>
<style>
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
<div>
<h1 style="text/css">
这是所有注册信息，但不能修改！
</h1>
</div>
<%
int pagesize=5;
Connection conn=null;
Statement stmt=null;
ResultSet rs=null;
String str="jdbc:mysql://39.106.209.226/people";
String user="root";
String ps="czy2131243";
String sql="select  *  from user";
int p=1;
if(request.getParameter("p")==null||request.getParameter("p").equals(""))
{
	p=1;
}
else{
	p=Integer.parseInt(request.getParameter("p"));
}
try{
Class.forName("com.mysql.jdbc.Driver");
}
catch(ClassNotFoundException e)
{
	out.print(e);
}
try{
conn=DriverManager.getConnection(str,user,ps);
 if(conn!=null)
 	System.out.print("数据库连接成功<br>");
 else
	  out.print("数据库连接成功<br>");
    
stmt=conn.createStatement();
stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
rs =stmt.executeQuery(sql);
%>

<table border=1 width="100%" frame=hsides align="center">
<tr>
<th align="left">用户名</th>
<th align="left">学号</th>
<th align="left">姓名</th>
<th align="left">性别</th>
<th align="left">年龄</th>
</tr>
<%
if(p>5)
	p=5;
rs.absolute((p-1)*pagesize+1);
for(int i=0;i<pagesize;i++)
{
	out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td></tr>");
	
	rs.next();
}

conn.close();
}
catch(SQLException e)
{
	/* out.print(e); */
}


%>
</table>
<hr>
<form action="dengluchenggong.jsp">
当前为<%out.print(p+"/"+pagesize);%>页<br>
<input type="text" name="p">
<input type="submit" name="p" value="提交">
</form>
</body>
</html>
