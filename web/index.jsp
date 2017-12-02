<%-- 
    Document   : index
    Author     : Anuj Kumar & Team
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype HTML>

<html>
    <head>
        <title>Home</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <script type="text/javascript" src="js/js-image-slider.js"></script>
    </head>
    
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html" style="color: #003101">
                        <h4>
                            <strong><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Census | India</strong><sup>&reg;</sup>
                        </h4>
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="About.html">About</a>
                        </li>
                        <li>
                            <a href="Register.jsp">Register</a>
                        </li>
                        <li>
                            <a href="Feedback.jsp">Feedback</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div id="left-pane">
            <div id="sliderFrame">
            	<div id="slider">
                    <img src="images/Census (1).jpg" alt="">
                    <img class="lazyImage" src="images/Census (2).jpg" alt="">
                    <img src="images/Census (3).jpg" alt="">
                    <img class="lazyImage" src="images/Census (4).jpg" alt="">
                </div>
            </div>
        </div>
        <div id="right-pane" style="color: #0C5A00">
            <div id="form-container">
                <br><br><br><br>
                <strong>log-in</strong> to <h3> India<sup>&reg;</sup></h3>
                <strong>
                    <form id="form-layout" name="login-form" action="LoginAction" method="post">
                        <br><br>
                        <%
                            String      UID = (String)session.getAttribute("UID");
                            String      CardNo = (String)session.getAttribute("CardNo");
                            String      RegNo = (String)session.getAttribute("loginID");
                            
                            session.setAttribute("UID", UID);
                            session.setAttribute("CardNo", CardNo);
                            session.setAttribute("RegNo", RegNo);
                        %>
                        Log-In ID:<input type="text" name="loginID" class="txt" placeholder="Enter your log-in ID" required>
                        <br><br>
                        Password:<input type="password" name="pass" class="txt" placeholder="Enter password" required>
                        <input type="submit" name="submit" id="submit" value="Log-In">
                        <br><br>
                    </form>
                    <a href="Register.jsp">New Registered</a>
                </strong>
            </div>
        </div>
        <footer id="footer">
            <div class="row">
                <div class="col-lg-12">
                    <center>Copyrights &COPY; <strong>Census | India</strong><sup>&REG;</sup> 2016-17</center>
                </div>
            </div>
        </footer>
    </body>
</html>