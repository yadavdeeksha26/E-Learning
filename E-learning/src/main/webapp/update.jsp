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
		String course=request.getParameter("course");
		String place=request.getParameter("place");
	
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/deeksha","root","root");
		String s="update student set id=?,name=?, course=?, place=? where id="+id;
		PreparedStatement p=cn.prepareStatement(s);
		
		p.setString(1,id);
		p.setString(2,name);
		p.setString(3,course);
		p.setString(4,place);
		
	
		int i=p.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("searchstudent.html");
		}
	%>
</body>
</html>