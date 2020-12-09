<%-- 
    Document   : RecoardData
    Created on : Apr 4, 2020, 9:39:14 PM
    Author     : Muskan Mittal
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
    <body>
        <%
         String full_name =request.getParameter("full_name");
    String age =request.getParameter("age");
    String work_type =request.getParameter("work_type");
    String password =request.getParameter("password");
     String confirm_password =request.getParameter("confirm_password");
    String gender =request.getParameter("gender");
    String work_exprince=request.getParameter("work_exprince");
    String email =request.getParameter("email");
    String mobile_no=request.getParameter("mobile_no");
    String adharcard_no=request.getParameter("adharcard_no");
   
        try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/maidsearch", "root", "root");
    Statement st=conn.createStatement();
    st.executeUpdate("insert into recoarddata(full_name,age,gender,email,work_type,work_exprince,mobile_no,adharcard_no,password,confirm_password)values('"+full_name+"','"+age+"','"+gender+"','"+email+"','"+work_type+"','"+work_exprince+"','"+mobile_no+"','"+adharcard_no+"','"+password+"','"+confirm_password+"')");
   out.println("data insert succesfully");
        }catch(Exception ex)
    {
    out.println(ex);
    }
        %>
        <a href="profile.jsp">check your profile</a>
    </body>
</html>
