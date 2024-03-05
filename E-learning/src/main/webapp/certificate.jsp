<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
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
String s="select * from student where id="+id;
PreparedStatement p=cn.prepareStatement(s);
ResultSet r=p.executeQuery();
while(r.next())
{
	%>
	<html>
	<body>
	<center>
	<h1> E-Learning</h1>
	<font size="7"><h2 style="color:light blue;"><u><i> Certificate of Completion</i></u></h2></font>
	<font size:15>
	<p> Awarded to <b> <%=r.getString("name")%></b> for successfully
	completing  <%=r.getString("course")%> course from e-learning platform.</p><br>
	<br>
	</font>
	</center>
	<pre> <font size="8"> With Regards</font></pre>
	</body>
	</html>
	
	
	
	<% 
}
%>

</body>
</html>