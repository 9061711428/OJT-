<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*"%>
<%@page import="java.net.URL"%>
 <!-- @page contentType="text/html" pageEncoding="UTF-8" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta charset="ISO-8859-1"> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>text load</title>


</head>
<body>
    <%
        String jspPath =  "C:\\Users\\sudheesh\\eclipse-workspace\\ojtproject\\WebContent\\uploadfiles\\day5.txt";
   
        BufferedReader reader = new BufferedReader(new FileReader(jspPath));
        File file = new File(jspPath);
        FileReader fr = new FileReader(file);
        //BufferedReader br = new InputStreamReader(new FileInputStream(txtFilePath));
        StringBuilder sb = new StringBuilder();
       	String line;
       // line = reader.readLine();
        while ((line=reader.readLine()) != null)
        {
     	//line = reader.readLine();
       out.println(sb.toString());
        System.out.println(line);
        }
        reader.close();
        fr.close();
    %>

<p><%=line %></p>
</body>
</html>