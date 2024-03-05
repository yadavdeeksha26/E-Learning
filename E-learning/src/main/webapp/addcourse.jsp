
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
String id=request.getParameter("id");
String name=request.getParameter("name");
String duration=request.getParameter("duration");
String fee=request.getParameter("fee");
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/deeksha","root","root");
String s="insert into course values(?,?,?,?)";
PreparedStatement p=cn.prepareStatement(s);
p.setString(1,id);
p.setString(2,name);
p.setString(3,duration);
p.setString(4,fee);
int i=p.executeUpdate();
if(i>0)
{
	response.sendRedirect("success.html");
	
}

%>

</body>
</html>