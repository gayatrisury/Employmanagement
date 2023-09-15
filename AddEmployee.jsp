<%-- 
    Document   : Projecthome
    Created on : 24 Oct, 2022, 11:29:15 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
          h1{
              color:darkturquoise;
                text-align:center;
                font-size:25px;
                font-style:italic;
            }
            h2{
              color:#d5dd16;
                text-align:center;
                font-size:30px;
                font-style:italic;
            }
            </style>
        <link rel="stylesheet" href="mystyle.css">
    </head>
    <body bgcolor="skyblue">
    <center>
         <h1>JK Innovative </h1>
        <h2>EMPLOYEE REGISTRATION</h2>
        <form name="form" action="Register.jsp" onsubmit="return Valid()">
       
        <table border="0">
            <tbody>
                <tr>
                    <td>FIRST NAME:</td>
                    <td><input type="text" name="fname" value="" /></td>
                </tr>
                <tr>
                    <td>MIDDLE NAME:</td>
                    <td><input type="text" name="mname" value="" /></td>
                </tr>
                <tr>
                    <td>LAST NAME:</td>
                    <td><input type="text" name="lname" value="" /></td>
                </tr>
                <tr>
                    <td>EMPLOYEE ID:</td>
                    <td><input type="text" name="empid" value="" /></td>
                </tr>
                <tr>
                    <td>DEPARTMENT:</td>
                    <td><input type="text" name="dept" value="" /></td>
                </tr>
                <tr>
                    <td>POSITION:</td>
                    <td><input type="text" name="pos" value="" /></td>
                </tr>
                <tr>
                    <td>MONTHLY SALARY:</td>
                    <td><input type="text" name="salary" value="" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="SUBMIT" /></td>
                    <td><input type="reset" value="CANCLE" /></td>
                </tr>
            </tbody>
        </table>
        </form>
    </center>
    <script>
        function Valid()
        {
         var f=document.form.fname.value;
         if(f===null || f==="")
         {
             alert("Please enter your first name");
             return false;
         }
          var m=document.form.mname.value;
         if(m===null || m==="")
         {
             alert("Please enter your middle name");
             return false;
         }
          var l=document.form.lname.value;
         if(l===null || l==="")
         {
             alert("Please enter your last name");
             return false;
         }
          var eid=document.form.empid.value;
         if(isNaN(eid))
         {
             alert("Please enter valid employee id");
             return false;
         }
    var s=document.form.salary.value;
         if(s===null || s==="")
         {
             alert("Please enter your salary");
             return false;
         }
         if(isNaN(s))
         {
             alert("Please enter salary in number");
             return false;
         }
        }
        
        
        </script>
    </body>
</html>
