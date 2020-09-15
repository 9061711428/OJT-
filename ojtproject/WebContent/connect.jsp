<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>create connection</title>
</head>
<body>
<%
try{
String connectionURL="jdbc:mysql://localhost:3306/ojt-database";
Connection connection=null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection =DriverManager.getConnection(connectionURL,"root","");
if(!connection.isClosed())
%>
<% out.println("success");
connection.close();
}
catch(Exception ex)
{
%>
<% 
 out.println("SQLException caught: " +ex.getMessage());
}
%>
</body>
</html>