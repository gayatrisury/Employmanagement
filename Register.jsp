<%-- 
    Document   : Register
    Created on : 26 Oct, 2022, 5:12:07 AM
    Author     : Dell
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body style="background-color:brown; font-size:26px;color:#d5f2c1;">
        <%@page import="java.sql.*" %>
    <center>
        
        <%
            String f=request.getParameter("fname");
             String m=request.getParameter("mname");
              String l=request.getParameter("lname");
               String i=request.getParameter("empid");
                String d=request.getParameter("dept");
                 String p=request.getParameter("pos");
                  String s=request.getParameter("salary");
                  
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pmss","root","");
                Statement st= con.createStatement();
                String sq="insert into employee(firstname,mname,lname,employeeid,department,position,monthlysalary)values('"+f+"','"+m+"','"+l+"','"+i+"','"+d+"','"+p+"','"+s+"')";
                st.executeUpdate(sq);
                out.print("Employee Registered Successfully");
                con.close();
              
            }
            
            catch(Exception e){
                System.out.print(e);
            }
          
            
  
                
            
            %>
            <a href="EmployeeList.jsp"style="color:khaki">LIST</a>
           
                
                
                
          
    </center>
    </body>
</html>



