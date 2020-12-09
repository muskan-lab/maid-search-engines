<%-- 
    Document   : registerascustomer
    Created on : Mar 17, 2020, 2:16:59 PM
    Author     : Muskan Mittal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style type="text/css">
		body
		{
			margin: 0;
			padding :0;
			font-family: sans-serif;
		}
/*LOGIN SECTION*/
		.loginSection 
			{
			height: 100%;
			width: 100%;
			position: fixed;
			top:0;
			left: 0;
			background-image: url("https://cdn.pixabay.com/photo/2017/09/29/15/39/cleanliness-2799464_1280.jpg");
			filter: blur(5px);
		  	background-position: center;
		  	background-repeat: no-repeat;
		  	background-size: cover;
		  	background-origin: inherit;
			}
/*LOGIN BOX*/
			.login-box 
			{
			position: fixed;
			top:50%;
			left: 50%;
			padding-top:10px; 
			padding-left: 15px;
			transform: translate(-50%, -50%);
			width: 700px;
			height: 700px;
			border-radius: 20px;
			background-color:rgba(0,0,0,0.7);
			z-index: 2;
			}
			.login-box button
			{
			height: 250px;
			width: 250px;
			padding: 0 10px;
			font-size: 16px;
			border: transparent;
			background-color: rgba(51,141,176,1);
			color: white;
			padding: 0.2rem 1.8em;
			font-weight: 600;
			cursor: pointer;
			}
			.login-box button:hover
			{
			background-color:hsl(183,100%,50%);
			color: black;
			}

/*PARAGRAPH*/
			p
			{
				color: white;
				font-family: sans-serif;
				font-weight: bold;
			}
/*DROPDOWN*/
			.dropbtn
			{
				background-color: pink;
			}
			.dropdown
			{
				position: relative;
				display: inline-block;
			}
			.dropdown-content
			{
				display: none;
				position: absolute;
			}
			.dropdown-content a
			{
				display: block;
				color: black;
				padding: 12px 16px;
				text-decoration: none;
			}
			.dropdown-content a:hover
			{
				background-color: pink;
				color: white;
			}
			.dropdown:hover .dropbtn
			{
				background-color: white;
			}			
			.dropdown:hover .dropdown-content
			{
				display: block;
			}
/*CUSTOM SELECT*/
			.custom-select {
  			position: relative;
 			 font-family: Arial;
				}

.custom-select select {
  display: none; /*hide original SELECT element:*/
}

.select-selected {
  background-color: DodgerBlue;
}

/*style the arrow inside the select element:*/
.select-selected:after {
  position: absolute;
  content: "";
  top: 14px;
  right: 10px;
  width: 0;
  height: 0;
  border: 6px solid transparent;
  border-color: #fff transparent transparent transparent;
}

/*point the arrow upwards when the select box is open (active):*/
.select-selected.select-arrow-active:after {
  border-color: transparent transparent #fff transparent;
  top: 7px;
}

/*style the items (options), including the selected item:*/
.select-items div,.select-selected {
  color: #ffffff;
  padding: 8px 16px;
  border: 1px solid transparent;
  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
  cursor: pointer;
  user-select: none;
}

/*style items (options):*/
.select-items {
  position: absolute;
  background-color: DodgerBlue;
  top: 100%;
  left: 0;
  right: 0;
  z-index: 99;
}

/*hide the items when the select box is closed:*/
.select-hide {
  display: none;
}

.select-items div:hover, .same-as-selected {
  background-color: rgba(0, 0, 0, 0.1);
}
input
{
	height: 20px;
	width: 500px;
	padding: 10px;
	border-bottom: solid;
	border-bottom: currentColor;
	font-size: 20px;
}

	</style>
	<title>RegisterAsCustomer</title>
</head>
<body>
     <div class="main">
            <div class="background" id="background">
                <%@include file="background.jsp" %>
            </div>
     </div>
    
	<div class="loginSection"></div>
		<div class="login-box">
			<p>Register as customer:</p>
<!--				<div class="custom-select" style="width: 200px" >
					<select>
						<option value="0">Gender</option>
						<option value="1">Male</option>
						<option value="2">Female</option>
					</select>
				</div>-->
				<script>
				var x, i, j, selElmnt, a, b, c;
				x = document.getElementsByClassName("custom-select");
				for (i = 0; i < x.length; i++) {
  				selElmnt = x[i].getElementsByTagName("select")[0];
  				a = document.createElement("DIV");
  				a.setAttribute("class", "select-selected");
  				a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
 			 	x[i].appendChild(a);
  				b = document.createElement("DIV");
  				b.setAttribute("class", "select-items select-hide");
  				for (j = 1; j < selElmnt.length; j++) {
    			c = document.createElement("DIV");
    			c.innerHTML = selElmnt.options[j].innerHTML;
   				c.addEventListener("click", function(e) {
        		var y, i, k, s, h;
        		s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        		h = this.parentNode.previousSibling;
        		for (i = 0; i < s.length; i++) {
          		if (s.options[i].innerHTML == this.innerHTML) {
            	s.selectedIndex = i;
            	h.innerHTML = this.innerHTML;
            	y = this.parentNode.getElementsByClassName("same-as-selected");
            	for (k = 0; k < y.length; k++) {
              	y[k].removeAttribute("class");
            	}
            	this.setAttribute("class", "same-as-selected");
            	break;
          		}
        		}
        		h.click();
    			});
    			b.appendChild(c);
  				}
  				x[i].appendChild(b);
  				a.addEventListener("click", function(e) {
      			e.stopPropagation();
      			closeAllSelect(this);
      			this.nextSibling.classList.toggle("select-hide");
      			this.classList.toggle("select-arrow-active");
    			});
				}
				function closeAllSelect(elmnt) {
  				var x, y, i, arrNo = [];
  				x = document.getElementsByClassName("select-items");
   				y = document.getElementsByClassName("select-selected");
  				for (i = 0; i < y.length; i++) {
    			if (elmnt == y[i]) {
      			arrNo.push(i)
    			} else {
      			y[i].classList.remove("select-arrow-active");
    			}
  				}
  				for (i = 0; i < x.length; i++) {
    			if (arrNo.indexOf(i)) {
      			x[i].classList.add("select-hide");
    			}
  				}
				}
				document.addEventListener("click", closeAllSelect);
				</script>
                                 <form action="customerdetail.jsp" method="post" >
			
		
                        <input type="text" name="full_name"  placeholder="fullname"><br><br>
			<!--<input type="text" size="50" placeholder="LastName.."><br/>-->
                        <input type="text" name="age" placeholder="age"><br><br>
                        
                         <input type="text" name="gender" placeholder="gender"><br><br>
                        <input type="text" name="mobile_no" placeholder="Contact Number.."><br><br>                     
                        <input type="text" name="email" placeholder="email"><br><br>
                         <input type="text" name="address" placeholder="address"><br><br>
                        <input type="password" name="password" placeholder="New Password.."><br><br>
                        <input type="password" name="confirm_password" placeholder="confirm password"><br/><br/>
                         <input type="text" name ="adharcard_no" placeholder="adharcard no."><br/><br/>
                        
                       <input style="font-size: 25px; background-color: activeborder; border-style: solid; height: 50px; width: 150px; border-radius: 10px; border-color: black;" type="submit" value="NEXT"/>
                                 </form>
			
		</div>
	</div>
	
	
	

</body>
</html>
