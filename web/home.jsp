<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>
<style>
table#nat{
	width: 50%;
	background-color: #c48ec5;
}
</style>
</head>
<body>  
<% 
	 String full_name =request.getParameter(" full_name");
    String dob =request.getParameter("dob");
    String work_type =request.getParameter("worktype");
    String password =request.getParameter("password");
    String confirm_password =request.getParameter("cpassword");
    String gender =request.getParameter("gender");
    String work_exprince=request.getParameter("workexprince");
    String email =request.getParameter("email");
    String mobile_no=request.getParameter("mobileno");
    String adharcard_no=request.getParameter("adharcardno");
%>
<table id ="nat">
<tr>
	<td>Full Name</td>
	<td><%= full_name %></td>
</tr>
<tr>
	<td>User Name</td>
	<td><%= dob %></td>
</tr>
<tr>
	<td>Address</td>
	<td><%= mobile_no %></td>
</tr>
<tr>
	<td>Age</td>
	<td><%= gender %></td>
</tr>
<tr>
	<td>Qualification</td>
	<td><%= adharcard_no %></td>
</tr>
<tr>
	<td>Percentage</td>
	<td><%= work_type %></td>
</tr>
<tr>
	<td>Work Experience</td>
	<td><%= work_exprince %></td>
</tr>
</table>
<br>
use " <i> select * from datainsert; </i> " in mysql client to verify it.
</body>
</html>