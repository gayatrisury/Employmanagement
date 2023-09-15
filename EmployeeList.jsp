<%-- 
    Document   : EmployeeList
    Created on : 26 Oct, 2022, 5:35:21 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
   <body>
   <center>
 <%@page import = "java.sql.*"%>
 <%
 
 try
 {
 ResultSet rs=null;
 Class.forName("com.mysql.jdbc.Driver");
 Connection con = 
DriverManager.getConnection("jdbc:mysql://localhost:3306/pmss","root","");
 Statement st = con.createStatement();
 String sql = "select * from employee ";
 rs=st.executeQuery(sql);
 %>
 <table border="1">
 
 <tbody style="color:wheat;font-size:20px;background:padding-box url(purple.jpg) aliceblue top;text-align:center">
 <tr style="color:paleturquoise;font-size:25px;">
 <td>firstname</td>
 <td>middlename</td>
 <td>lastname</td>
 <td>employeeid</td>
 <td>department</td>
 <td>position</td>
 <td>monthlysalary</td>
 <td>Action</td>
 <td>Action</td>
            <td>Action</td>               
                      </tr>
                      
                      <%
                          while(rs.next())
                          {
                              
                          
                          %>
                          <tr>
                              <td><%=rs.getString("firstname")%></td>
                              <td><%=rs.getString("mname")%></td>
                          <td><%=rs.getString("lname")%></td>
                          <td><%=rs.getString("employeeid")%></td>
                          <td><%=rs.getString("department")%></td>
                          <td><%=rs.getString("position")%></td>
                          <td><%=rs.getLong("monthlysalary")%></td>
                          <td><a href="delete.jsp?i=<%=rs.getString("employeeid")%>" style="color:#ff3333">Delete</a></td>
                          <td><a href="update.jsp?i=<%=rs.getString("employeeid")%>"style="color:#ccffcc">update</a></td>
                          <td><a href="view.jsp?i=<%=rs.getString("employeeid")%>"style="color:yellow">view</a></td></tr>
                                <%
                              }
con.close();
}
catch (Exception e)
{
e.printStackTrace();

}
%>
                          </center>
    </body>
</html>
