<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String email=request.getParameter("email");
String password=request.getParameter("password");


   Class.forName("com.mysql.jdbc.Driver");
   Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/deeksha","root","root");
   String s="update registration set password=? where email=?";
   PreparedStatement p=cn.prepareStatement(s);

  
   p.setString(2,email);
   p.setString(1,password);
 
  int r=p.executeUpdate();
   if(r>0)
   {
	   response.sendRedirect("login.html");
	   
   }
 

%>

</body>
</html>