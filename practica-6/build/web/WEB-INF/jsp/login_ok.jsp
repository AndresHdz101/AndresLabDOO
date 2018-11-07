<%-- 
    Document   : login_ok
    Created on : Oct 21, 2018, 5:01:21 AM
    Author     : Lino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de sesión</title>
    </head>
    <body>
        <%
        
            /* LAS VARIABLES user Y contra CORRESPONDEN AL SEGUNDO FORMULARIO DONDE SE LE PIDE AL USUARIO INICAR SESION */
            String user = request.getParameter("txtNewUser");
            String contra = request.getParameter("txtNewPass");
            
            /* LAS VARIABLES user1 Y contra1 CORRESPONDEN AL PRIMER FORMULARIO DONDE SE LE PIDE AL USUARIO REGISTRARSE */
            String user1 = (String)session.getAttribute("usuario");
            String contra1 = (String)session.getAttribute("contra");
            /* COMO LAS VARIABLES SE RECOGEN DESDE PAGINAS ANTERIORES CON EL ATRIBUTO SESSION, ES NECESARIO PARSEARLO A STRING PARA PODER COMPARARLOS */
            
            
            if (((user.equals(user1)) && ((contra.equals(contra1))))) {
                /* SI LOS USUARIOS Y LAS CONTRASEÑAS SON IGUALES SUCEDE ESTO */
                out.println("<h1> Login correcto!... <br><br> Bienvenid@!: " + session.getAttribute("usuario"));
            } else {
                /* SI NO SE CUMPLE LA CONDICIÓN ANTERIOR, LANZAREMOS ESTE MENSAJE*/
                out.println("<H1>Las credenciales de registro no coinciden con las credenciales de login</H1>");
            }
        %>
    </body>
</html>
