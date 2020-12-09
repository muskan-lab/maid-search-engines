
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="style.css">	
	<title>MSE</title>
</head>
<body>
    <body class="wrapper">
    <center>
        <div class="main">
            <div class="background" id="background">
                <%@include file="background.jsp" %>
            </div>
    
<nav class="navbar">
		<div class="container">
			<div class="nav-content">
				<div class="left">
					<h2>MaidSearchEngine</h2>
				</div>
				<div class="right">
					<ul>
						
						<li><a href="profile.jsp">Home</a></li>
						<li><a href="#">Provider</a></li>
						<li><a href="aboutus.jsp">About</a></li>
                                                <li><a href="service.jsp">Services</a></li>
                                               
						<li><a href="#">Feedback</a></li>
						<li><a href="#">Contact</a></li>
					</ul>	
				</div>
			</div>
		<div>
	</nav>
<!--     <div class="contents">
                    <div class="login">
                        <div style="color: blue; font-size: 30px;background-color: activecaption; margin-bottom: 10px; "><b>Admin Login</b></div>
                        <form action="adminlogin" method="post">
                        <table>
                            <tr><td>Admin User Name:</td></tr>
                            <tr><td><input type="text" name="uname" placeholder="User Name" autocomplete="on"/></td></tr>
                            <tr><td>Password:</td></tr>
                            <tr><td><input type="password" name="password" placeholder="Password"/></td></tr>
                        </table>
                            <br/>
                            <input style="font-size: 25px; background-color: aqua; border-style: solid; width: 110px; border-radius: 10px; border-color: red;" type="submit" value="Login"/>
                        </form>
                    </div>
                </div>-->
	<div class="loginSection">-->
		<div class="login-box">
			<br/><br/><br/><br/><br/><br/><br/><br/>
                        
                        <form action="login.jsp">
                            
                            <input type ="submit" value="Login">
                        </form>
                        
                          <form action="register.jsp">
                            
                            <input type ="submit" value="register">
                        </form>
			<!--<button type="button" onclick="login.jsp;" >Login</a></button>-->
			<!--<button type="button" onclick="window.location.href='file:///D:/Sublime%20Text%203/signup.html';">Register</button>-->
		</div>
	</div>

</body>
</html