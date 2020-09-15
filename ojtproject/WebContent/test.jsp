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
<link rel="stylesheet" href="css\style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

    <header>
        <div class="container">
            <div id="logo"> <img src="images\img_1.PNG"> <a href="#" id="logo_a">Upskilly</a>
            </div>
            <nav>
                <a href="#">Take Test</a>
                <a href="#">Test Report</a>
                <a href="#">Logout</a>
            </nav>
        </div>
    </header>
    <section class="banner-container">
        <div class="container-test">
            <div class="test-section">
                <div id="subject">
                    <span id="heads">Online Test</span><br><br>
                    Subject:<label for="subjects">
                        Quantitative Aptitude
                    </label>
                </div>
                <div>
                    <h3></h3>
                    <div class="count">
                      <div id="timer"></div>
                    </div>
                </div>
                  <script >
                    var h3 = document.getElementsByTagName("h3");
                h3[0].innerHTML = "Time Duration :";
                
                var sec         = 1800,
                    countDiv    = document.getElementById("timer"),
                    secpass,
                    countDown   = setInterval(function () {
                        'use strict';
                        
                        secpass();
                    }, 1000);
                
                function secpass() {
                    'use strict';
                    
                    var min     = Math.floor(sec / 60),
                        remSec  = sec % 60;
                    
                    if (remSec < 10) {
                        
                        remSec = '0' + remSec;
                    
                    }
                    if (min < 10) {
                        
                        min = '0' + min;
                    
                    }
                    countDiv.innerHTML = min + ":" + remSec+" "+"Min";
                    
                    if (sec > 0) {
                        
                        sec = sec - 1;
                        
                    } else {
                        
                        clearInterval(countDown);
                        
                        alert("Time Expired..");
                        //countDiv.innerHTML = 'Time Expired..';
                        
                    }
                }
                </script>
                <!--<div class="count" id="time">
                   &nbsp:&nbsp;<label></label>
                </div>-->
              
                <form action="test.jsp">
                    <div class="test-instruction-one">
                    
                      <%
        String jspPath =  "C:\\Users\\sudheesh\\eclipse-workspace\\ojtproject\\WebContent\\uploadfiles\\day5.txt";
   
        BufferedReader reader = new BufferedReader(new FileReader(jspPath));
        File file = new File(jspPath);
        FileReader fr = new FileReader(file);
        //BufferedReader br = new InputStreamReader(new FileInputStream(txtFilePath));
        StringBuilder sb = new StringBuilder();
        String line;
       line = reader.readLine();
     
        while ((line=reader.readLine()) != null)
        {
        	 %> 
                    
                        <label for="questions"><p><%out.println(line);%></p>
                        <%  }
        reader.close();
        fr.close();
    %>
         
                        <div class="main-option">
                            <div class="sub-option1">
                                 <input type="radio" name="options" value="op1">
       							 <label for="op1">op1</label><br></div>
                            <div class="sub-option2">
                                <input type="radio" name="options" value="op2">
       							 <label for="op2">op2</label><br></div>
                           <div class="sub-option3">
                                 <input type="radio" name="options" value="op3">
       							 <label for="op3">op3</label><br></div>

                            <div class="sub-option4"> <input type="radio" name="options" value="op4">
       							 <label for="op4">op4</label><br>
                            </div>
                        </div>
                        <div class="btn-qn">
                            <input type="submit" class="prev-qn-one" value="Previous">
                            <input type="submit" class="refresh-qn-one" value="Refresh">
                            <input type="submit" class="next-qn-one" value="Next">
                        </div>
                    </div>
                </form>
                <button id="end-test"><a href="testscore.html">Submit Test</a></button>
            </div>
        </div>
    </section>

    <!-- footer -->
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