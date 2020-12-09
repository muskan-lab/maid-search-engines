<%-- 
    Document   : profile.jsp
    Created on : Apr 5, 2020, 12:36:10 PM
    Author     : Muskan Mittal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"  %>
 <%@include file="background.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>maid profile</title>
        <style>
            
.center {
  text-align: center;
  border: 3px solid green;
}
table {
  font-size: 40px;
}
 body {
  background-image: url("image/mittal.png");
   background-repeat: no-repeat;
  background-position: right top;
  background-size: 300px;
  background-attachment: fixed;
}


</style>
    </head>
    <body>
<!--    <center>
            <table>
                <td>
                    <tr>Name</tr>
                    <tr>age</tr>
                    <tr>email</tr>
                    <tr>work type</tr>
                    <tr>work expreince</tr>
                   <tr>work expreince</tr>
                    <tr>gender</tr>
                </td>-->
        <%
         try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/maidsearch", "root", "root");
    Statement st=conn.createStatement();
    String qry="select * from recoarddata";
    ResultSet rs=st.executeQuery(qry);
    while(rs.next())
    {
%>     
 <div class="center">
     <table>
<tr>
      <td>Name :</td>
      <td><%=rs.getString(1)%> </td><br>
</tr>
      
<tr>
      <td>age :</td>
      <td><%=rs.getString(2)%> </td><br>
</tr>
<tr>
    
       <td>email :</td>
       <td><%=rs.getString(4)%></td><br>
</tr>
<tr>
         <td>work type :</td>
         <td><%= rs.getString(5)%></td><br>
</tr>

      <tr> 
      <td>work experience :</td>
      <td><%=rs.getString(6)%></td><br>
</tr>
      <tr>    
      <td>Mobile no :</td>
      <td><%=rs.getString(7)%></td><br>
</tr>
      <tr> 
      <td> gender :</td>
      <td><%=rs.getString(3)%></td><br>
      
            </tr>




 </div>

<% }
%>
     </table>
<%  // out.println("data insert succesfully");
        }catch(Exception ex)
    {
    out.println(ex);
    }
        
        
        
        
        %>
        
        
        
    </center>
    </body>
</html>
