<%-- 
    Document   : Datos_1
    Created on : 19/09/2018, 06:58:30 PM
    Author     : LSTI204_C3
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

        String nombre = request.getParameter("nombre");
        String materias = request.getParameter("materias");
        String ingreso = request.getParameter("ingreso");
        String password= request.getParameter("contra");
        String correo = request.getParameter("correo");
        
        out.println("Tu nombre es: " + nombre);
        out.println("Tu materia es: "+ materias);
        out.println("Tu fecha de ingreso fue el: "+ ingreso);
        out.println("Tu correo es: "+ correo);
        %>
                      %>
    </body>
</html>
