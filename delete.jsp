<%-- 
    Document   : delete
    Created on : 27 Nov, 2022, 7:10:55 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="color:paleturquoise;background-color:indigo;font-size:40px ">
    <center>
        <%@page import = "java.sql.*"%>
 <%
     String id=request.getParameter("i");
 
 try
 {
 
 Class.forName("com.mysql.jdbc.Driver");
 Statement st=null;
 Connection con=
DriverManager.getConnection("jdbc:mysql://localhost:3306/pmss","root","");
 st= con.createStatement();
 String sql = "delete from employee where employeeid="+id; 
 st.executeUpdate(sql);
 out.print("Data deleted Successfully..!"+"<br>");

 
 con.close();
}
catch (Exception e)
{
e.printStackTrace();

}
%>
<a href="EmployeeList.jsp"style="color:khaki">Back to Table</a>
    </center>
    </body>
</html>

    