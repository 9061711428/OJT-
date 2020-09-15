<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Quiz</title>
    <link rel="stylesheet" href="css\style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>


<header>
        <div class="container">
            <div id="logo"> <img src="images\img_1.PNG"> <a href="#" id="logo_a">Upskilly</a>
            </div>
            <nav>
             <a href="index.html">Home</a>
                <a href="adminpanel.html">Admin Panel</a>
                <a href="index.html">Logout</a>
            </nav>
        </div>
    </header>
    <section class="banner-container">
        <div class="container">
            <div class="test-exam">
            <div class="full">
            <div class="one">
                <table border="1">

                    <tr>
                        <th>Name &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </th>
                        <th>Subject &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                        <th>Mark &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</th>
                       
                    </tr>
                    
                    <%
Class.forName("com.mysql.jdbc.Driver");
Connection con=null;
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ojt-database","root","");
Statement stn=con.createStatement();
String sql="SELECT thisUser,subject,mark from marks";
//stn.execute(str1);
ResultSet resultSet = stn.executeQuery(sql);
int c=0;
while(resultSet.next()){
 //c++;	
//response.sendRedirect("adminpanel.html");
%>
                    <tr>
                        <td><%=resultSet.getString("thisUser") %></td>
                        <td><%=resultSet.getString("subject") %></td>
                        <td><%=resultSet.getString("mark") %></td>

                    </tr>
                   
                   
                    <%
}
%>

                </table>
                </div>
              


                
                 
                 </div>
            </div>
        </div>
    </section>
    <footer>
        <div class="footer-sec">
            <div id="foot-sec-1">
                <ul>
                    <li>
                        <h3><img src="images\img_1.PNG"> Upskilly</h3>
                    </li>
                </ul>
            </div>
            <div class="footer-sec">
                <div id="foot-sec-1">
                    <ul>
                        <li>
                            <h3> Solutions</h3>
                        </li>
                        <li>
                            <hr>
                        </li>
                        <li>Sales Capability Development</li>
                        <li>Content development</li>

                    </ul>
                </div>
            </div>
            <div class="footer-sec">
                <div id="foot-sec-1">
                    <ul>
                        <li>
                            <h3>Company</h3>
                        </li>
                        <li>
                            <hr>
                        </li>
                        <li>Contact Us</li>
                        <li>Privacy</li>

                    </ul>
                </div>
            </div>
            <div class="footer-sec"></div>
            <div id="foot-sec-1">
                <ul>
                    <li>
                        <h3>Connect</h3>
                    </li>
                    <li>
                        <hr>
                    </li>
                    <li><i class="fa fa-twitter-square" aria-hidden="true"></i>&nbsp&nbsp<i
                            class="fa fa-linkedin-square" aria-hidden="true"></i>&nbsp&nbsp<i
                            class="fa fa-facebook-square" aria-hidden="true"></i></li>
                </ul>
            </div>
        </div>
        </div>
        <div class="bottom-sec">
            <h6>Copyright<span> Upskilly LLC Pvt.Ltd</span>. All rights reserved</h6>
        </div>
    </footer>

</body>
</html>