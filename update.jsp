<%-- 
    Document   : update
    Created on : 27 Nov, 2022, 8:41:28 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background:gainsboro; color:darkmagenta;font-size:25px;font-style:italic;bookmark-label:yes">
        <%@page import = "java.sql.*"%>
 <%
     String id=request.getParameter("i");

 try
 {
     ResultSet rs=null;
 
 Class.forName("com.mysql.jdbc.Driver");
  Connection con=
DriverManager.getConnection("jdbc:mysql://localhost:3306/pmss","root","");
 

Statement st= con.createStatement();
 String sql = "select * from employee where employeeid="+id; 

 rs=st.executeQuery(sql);
 %>
   <%
          while(rs.next()){
              
          %>
    <center>
          <form action="updateinfo.jsp">
              firstName:<input type="text" name="fname" value="<%=rs.getString("firstname")%>" /><br>
              mname:<input type="text" name="mname" value="<%=rs.getString("mname")%>" /><br>
              lname:<input type="text" name="lname" value="<%=rs.getString("lname")%>"/><br>
             <input type="hidden" name="id1" value="<%=rs.getString("employeeid")%>" />
             Employeeid:<input type="text" name="id2" value="<%=rs.getString("employeeid")%>" /><br>
              Department:<input type="text" name="d" value="<%=rs.getString("department")%>" /><br>
              position:<input type="text" name="p" value="<%=rs.getString("position")%>" /><br>
              salary:<input type="text" name="s" value="<%=rs.getString("monthlysalary")%>" /><br>
              <input type="submit" value="update" />
               
             
              
          </form>
    </center>
<%
 }
 con.close();
}
catch (Exception e)
{
e.printStackTrace();

}
%>
    </body>
</html>
