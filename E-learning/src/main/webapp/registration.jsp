<%@page import="java.sql.*" %>
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

String fname=request.getParameter("fname");
String mname=request.getParameter("mname");
String lname=request.getParameter("lname");
String Course=request.getParameter("course");
String gender=request.getParameter("gender");
String phone=request.getParameter("phone");
String currentaddress=request.getParameter("address");
String email=request.getParameter("email");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/deeksha","root","root");
String s="insert into registration values(?,?,?,?,?,?,?,?,?)";
PreparedStatement p=cn.prepareStatement(s);
p.setString(1,fname);
p.setString(2,mname);
p.setString(3,lname);
p.setString(4,Course);
p.setString(5,gender);
p.setString(6,phone);
p.setString(7,currentaddress);
p.setString(8,email);
p.setString(9,password);
int i=p.executeUpdate();
if (i>0)
{
	response.sendRedirect("login.html");
}







%>
</body>
</html>