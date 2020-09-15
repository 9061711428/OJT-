<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>change password</title>
</head>
<body>
<%
String currentPassword =request.getParameter("current");
String Newpass=request.getParameter("newpass");
String conpass=request.getParameter("confirmpass");
String pass="";
String uname="";
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=null;
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ojt-database","root","");
Statement stn=con.createStatement();
ResultSet rs=stn.executeQuery("select * from register where password='"+currentPassword+"'");
while(rs.next()){
uname=rs.getString(3);
pass=rs.getString(4);
}// System.out.println(pass);
if((pass.equals(currentPassword)) && (Newpass.equals(conpass))){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update register set password='"+Newpass+"' where username='"+uname+"'");
response.sendRedirect("userpanel.html");
st1.close();
con.close();
}

}
catch(Exception e){
out.println(e);
}
%>




</body>
</html>