<%-- 
    Document   : view
    Created on : 4 Dec, 2022, 10:23:37 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <center>
  <body style="background-color:lemonchiffon">
 <%@page import = "java.sql.*"%>
 <center>
 <%
 String i=request.getParameter("i");
 try
 {
 ResultSet rs=null;
 Class.forName("com.mysql.jdbc.Driver");
 Connection con = 
DriverManager.getConnection("jdbc:mysql://localhost:3306/pmss","root","");
 Statement st = con.createStatement();
 String sql = "select * from employee where employeeid="+i;
 rs=st.executeQuery(sql);
 %>
 <h1 style="color:#00cc99">Employee Registration List</h1><br>
  <table border="0">
      <tbody style="color:#006666;font-size:25px;text-align:center">
 <tr>
                      
                      <%
                          while(rs.next())
                          {
                              
                          
                          %>
                          <tr>
                              <td>Firstname:</td>
                              <td style="color:#ff0099"><%=rs.getString("firstname")%></td></tr>
                          <tr><td>Middlename:</td>
                              <td style="color:#ff0099"><%=rs.getString("mname")%></td></tr>
                          <tr><td>Lastname:</td>
                              <td style="color:#ff0099"><%=rs.getString("lname")%></td></tr>
                          <tr><td>Employeeid:</td>
                              <td style="color:#ff0099"><%=rs.getString("employeeid")%></td></tr>
                          <tr> <td>Department:</td>
                              <td style="color:#ff0099"><%=rs.getString("department")%></td></tr>
                          <tr><td>Position:</td>
                              <td style="color:#ff0099"><%=rs.getString("position")%></td></tr>
                          <tr><td>Monthlysalary:</td>
                              <td style="color:#ff0099"><%=rs.getLong("monthlysalary")%></td>
                          </tr>     
 
 <%
 }
 con.close();
 }
 catch(Exception e)
 {
 System.out.println(e);
 }
 
 %>
 </body>
 </center>
</html>
