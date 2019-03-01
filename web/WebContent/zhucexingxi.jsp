<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册界面</title>
</head>
<body>
<%
String username1=new String(request.getParameter("user1").getBytes("ISO-8859-1"));
String password1=new String(request.getParameter("pass2").getBytes("ISO-8859-1"));
String number1=new String(request.getParameter("number1").getBytes("ISO-8859-1"));
String name1=new String(request.getParameter("name1").getBytes("ISO-8859-1"));
String sex1=new String(request.getParameter("sex1").getBytes("ISO-8859-1"));
String age1=new String(request.getParameter("age1").getBytes("ISO-8859-1"));

  Connection conn=null;
  Statement stmt=null;
  ResultSet rs=null;
  try{
  Class.forName("com.mysql.jdbc.Driver");
  }
  catch(ClassNotFoundException ce){
 out.print(ce);}
    try{
  conn=DriverManager.getConnection("jdbc:mysql://39.106.209.226/people","root","czy2131243");
  if(conn==null)
	  out.print("数据库连接失败！<br>");
 else
	  out.print("数据库连接成功<br>");
     
    
      
      String Sql="insert into user (username,password,number,name,sex,age) values('"+username1+"','"+password1+"','"+number1+"','"+name1+"','"+sex1+"','"+age1+"');";
      stmt=conn.createStatement();
      stmt.executeUpdate(Sql);
    rs=stmt.executeQuery("select * from user");
    stmt.close();
	conn.close(); 
    }
  catch(SQLException e){
  System.out.println(e.getMessage()); 
  }
    out.print("<a href='denglu.jsp'>登陆成功，点击返回</a>");
%>



</body>
</html>
