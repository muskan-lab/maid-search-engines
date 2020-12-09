<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
	
	<style>
		body {
			margin: 0;
			padding: 0;
			font-family: sans-serif;
			font-size: 16px;
			font-weight: bold;
			font-family: sans-serif;
			color: black;
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
		  	/*filter: blur(8px);*/
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

		.loginSection .login-box ::placeholder
		{
			color:white;
		}


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
			background-color: white;
			color: black;
		}

	</style>
<title>MSE</title>
</head>

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
			<!-- 
			<h1><font color="white"> MSE Login</font></h1> -->
			<br/><br/><br/>
<!--                       
			<p>Fullname:</p>
                        <input type="text" size="50" placeholder="FirstName..">
			<input type="text" size="50" placeholder="LastName.."><br/>
			<p>contact and email:</p>
			<input type="text" placeholder="Contact Number.."><br/>
			<input type="text" placeholder="email">
                        <p>password:</p>
			<input type="password" placeholder="New Password.."><br/>
                        <input type="password" placeholder="confirm password"><br/><br/>
                        -->
                
            
                         <form action="Registerasmaid.jsp">
                            
                             <p>  <input type ="submit" value="Register as maid"></p>
                        </form>
                        
                          <form action="registerascustomer.jsp">
                            
                               <input type ="submit" value="Register as customer">
			<!--<button type="button">Register as Customer</button><br/><br/>-->
            
		</div>	
	</div>
</body>
</html>

