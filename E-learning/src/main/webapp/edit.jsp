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
 <link rel="stylesheet" type="text/css" href="updaterecord.css">
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
			<html>
				<body>
				<h1>Update Student Details</h1>
					<form action="update.jsp">
						<table>
							<tr>
								<td></td><td><input type="hidden" name="id" value=<%= r.getString("id") %>></td>
							</tr>
							<tr>
								<td>Name</td><td><input type="text" name="name" value=<%=r.getString("name") %>></td>
							</tr>
							<tr>
								<td>Course</td><td><input type="text" name="course" value=<%=r.getString("course") %>></td>
							</tr>
							<tr>
								<td>Place</td><td><input type="text" name="place" value=<%=r.getString("place") %>></td>
							</tr>
								<td></td><td><input type="submit" value="Update Data"></td>
							</tr>
						</table>
					</form>
				</body>
			</html>
		<%
	}
	%>
</body>
</html>