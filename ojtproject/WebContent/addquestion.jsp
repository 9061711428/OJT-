<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*"%>
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
                <a href="adminpanel.html">Adminpanel</a>
                <a href="viewreport.jsp">Test Report</a>
                <a href="#">Logout</a>
            </nav>
        </div>
    </header>
    <section class="banner-container">
        <div class="container">
            <div class="add-question-sec">
                <h1>Add Questions</h1>
                <div class="file-sec">
                    <form action="FileUploadHandler" method="post" enctype = "multipart/form-data">
                                  
                        Enter file name :&nbsp;&nbsp;<input type="text" name="file_name"><br>
                        <input type="file" id="myFile" name="file2" size = "50" style="width:190px" height="400px">
                        <input type="submit" value="upload" />
                    </form> 
                                 
              </div>
                
                 <%
                      String file_name=request.getParameter("filename");
 					if(file_name!=null){
					 out.println(file_name+" File uploaded successfully");
					 }
					 %>
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