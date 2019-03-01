<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证信息</title>
</head>
<body>
<%
String yhm1=request.getParameter("user");
String mima1=request.getParameter("pass1");

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
    
   stmt=conn.createStatement();
  rs=stmt.executeQuery("select * from people.user");
  int flag=0;
  while(rs.next()){
  if(rs.getString("username").equals(yhm1)&&rs.getString("password").equals(mima1))
  {
	  
	  flag=1;
	  out.print("登录成功！");
	  out.print("<a href='dengluchenggong.jsp'>点击跳转</a>");
	  break;
  }
     }
  if(flag==0)
	  out.print("登录失败，请注册！<a href='zhuce.jsp'>点击此处可注册</a>");
      
  
  stmt.close();
	conn.close(); 
    } 
  catch(SQLException e){
  System.out.println(e.getMessage()); 
  }
 

%>



</body>
</html>
