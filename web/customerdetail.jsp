
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
    <body>
        <%
         String full_name =request.getParameter("full_name");
    String age =request.getParameter("age");
   String password =request.getParameter("password");
     String confirm_password =request.getParameter("confirm_password");
    String gender =request.getParameter("gender");
    String address =request.getParameter("address");
    String email =request.getParameter("email");
    String mobile_no=request.getParameter("mobileno");
    String adharcard_no=request.getParameter("adharcardno");
   
        try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/maidsearch", "root", "root");
    Statement st=conn.createStatement();
    st.executeUpdate("insert into customerdata(full_name,age,password,confirm_password,gender,address,email,mobile_no,adharcard_no)values('"+full_name+"','"+age+"','"+password+"','"+confirm_password+"','"+gender+"','"+address+"','"+email+"','"+mobile_no+"','"+adharcard_no+"')");
   out.println("customer register succesfully");
        }catch(Exception ex)
    {
    out.println(ex);
    }
        %>
        <a href="profile.jsp">maid profile</a>
    </body>
</html>
