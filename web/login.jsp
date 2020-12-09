<%-- 
    Document   : login
    Created on : Apr 5, 2020, 1:46:30 PM
    Author     : Muskan Mittal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

	
	<style>
		body {
			margin: 0;
			padding: 0;
			font-family: sans-serif;
		}
		.container {
			margin: 0 auto;
			width: 80%;
		}
		
		.navbar {
			position: fixed;
			/*height: 80px;*/
			width: 100%;
			background-color: rgba(0,0,0,0.5);
			z-index: 10;
			display: flex;
			
		}
		.navbar .nav-content {
			display: flex;
			width: 100%;
			justify-content: space-between;
			align-items: center;
		}
		.navbar .left {
			color: white;
		}
		.navbar .right{
			display: flex;
		}

		.navbar .right ul {
			display: flex;
			list-style: none;
		}
		.navbar .right ul li{
			margin: 0.2rem 0.8rem;
		}
		.navbar .right ul li a {
			text-decoration: none;
			color: white;
			font-size: 16px;
		}

			.navbar .right ul li a:hover
			{
			padding: 10px 5px;
			background-color: white;
			color: black;
			font-weight: bold;
			}
		/* login section */
		.loginSection {
			height: 100%;
			width: 100%;
			position: fixed;
			top:0;
			left: 0;
			background-image: url("https://cdn.pixabay.com/photo/2017/09/29/15/39/cleanliness-2799464_1280.jpg");
		  	background-position: center;
		  	background-repeat: no-repeat;
		  	background-size: cover;
		  	background-origin: inherit;
		  	z-index: 1;
		}
		.loginSection .login-box {
			position: fixed;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			width: 50%;
			height: 450px;
			text-align: center;
			text-anchor: middle;
			border-radius: 20px;
			background-color: rgba(0,0,0,0.5);
		}
		.loginSection .login-box input{

			height: 60px;
			width: 300px;
			font-size: 16px;
			padding: 0 10px;
			border-radius: 12px;
			background-color: transparent;
		}


		.loginSection .login-box input:hover
		{
			color: black;
		}

		.loginSection .login-box ::placeholder
		{
			color:white;
		}

		/*.loginSection .login-box ::placeholder:hover
		{
			color: black;
		}
*/

		.loginSection .login-box button{
			height: 40px;
			/*width: 70px;*/
			padding: 0 10px;
			font-size: 16px;
			border: 1px solid white;
			border-radius: 10px;
			background-color: rgba(0,0,0,0.7);
			color: white;
			padding: 0.2rem 1.8em;
			font-weight: 600;
		}
		.loginSection .login-box button:hover{
			background-color:white;
			color:black;
		}

	</style>
<title>MSE</title>

<body>
	<nav class="navbar">
		<div class="container">
			<div class="nav-content">
				<div class="left">
					<h2>MaidSearchEngine</h2>
				</div>
				<div class="right">
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">Provider</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Feedback</a></li>
						<li><a href="#">Contact</a></li>
						
					</ul>	
				</div>
			</div>
		<div>
	</nav>
	<div class="loginSection">
		<div class="login-box">
			
			<br/><br/><br/><b/><br/><br/>
                        <form action="loginforms.jsp" method="post"  >
			<input type="text" placeholder="Email.."><br/><br/>
			<input type="Password" placeholder="Password.."><br/><br/>
                         <input style="font-size: 25px; background-color: activeborder; border-style: solid; width: 110px; border-radius: 10px; border-color: black;" type="submit" value="Login"/>
                        <!--<input type="submit" value="Login" style="hegiht:100px ;width:100px; left:250;top:250;">-->
			<a href="#"><font color="black">Forgot Password</font></a>
                        </from>
		</div>	
	</div>
    </body>
</html>
