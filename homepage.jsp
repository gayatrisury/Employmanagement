<%-- 
    Document   : homepage
    Created on : 17 Nov, 2022, 7:20:57 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String u=request.getParameter("name");
            String p=request.getParameter("password");
            if(u.equalsIgnoreCase("gks")&&p.equals("654321"))
            {
                response.sendRedirect("AddEmployee.jsp");
            }
            else
            {
                response.sendRedirect("invalid.jsp");
            }
           
            %>
    </body>
</html>
