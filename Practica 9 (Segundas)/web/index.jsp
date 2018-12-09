<%-- 
    Document   : index
    Created on : 5/12/2018, 07:07:22 PM
    Author     : Andres
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
        
         String redirectURL = "view/alumnos.jsp";
         response.sendRedirect(redirectURL);
            
        %>
    </body>
</html>
