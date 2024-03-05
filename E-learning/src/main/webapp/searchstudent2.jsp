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
	<table border="1">
		<tr>
			<td>Roll</td>
			<td>Name</td>
			<td>Course></td>
			<td>Place</td>
			
		</tr>
		
	<%
		String id=request.getParameter("id");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/deeksha","root","root");
	String s="select * from student where id="+id;
	PreparedStatement p=cn.prepareStatement(s);
	ResultSet r=p.executeQuery();
	while(r.next())
	{
		%>
			<tr>
			 	<td><%=r.getString("id") %> </td>
			 	<td><%=r.getString("name") %> </td>
			 	<td><%=r.getString("course") %> </td>
			 	<td><%=r.getString("place") %> </td>
		
			</tr>
		<%
	}
	%>
		
	</table>
	<button onclick="window.print()">Print Out</button>
	
</body>
</html>