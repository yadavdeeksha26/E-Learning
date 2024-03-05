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
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/deeksha","root","root");
	String s="delete from student where id="+id;
	PreparedStatement p=cn.prepareStatement(s);
	int i=p.executeUpdate(s);
	if(i>0)
	{
		response.sendRedirect("success.html");
	}
	%>
	
		
</body>
</html>