<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String sub_id=request.getParameter("sub_id");
String subject_type=request.getParameter("subject_type");
String duration=request.getParameter("duration");
Class.forName("com.mysql.jdbc.Driver");
Connection con=null;
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ojt-database","root","");
Statement stn=con.createStatement();
String str1="INSERT INTO subject_category VALUES('"+sub_id+"','"+subject_type+"','"+duration+"')";
stn.execute(str1);
response.sendRedirect("adminpanel.html");
%>
</body>
</html>