<%-- 
    Document   : registro_ok
    Created on : Oct 21, 2018, 3:41:38 AM
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
        <div align="center">
            <h1>Gracias por registrarse. A continuación inicie sesión con su nuevo usuario creado:</h1>
            <br>
            
            
            <%
                
               String user1 = request.getParameter("txtUser");
               String contra1 = request.getParameter("txtPass");
               
               session.setAttribute("usuario", user1);
               session.setAttribute("contra", contra1);

            %>
                
            <form action="login_ok.htm" method="POST">
                Usuario: <br> <input type="text" name="txtNewUser"><br>
                Contraseña: <br> <input type="password" name="txtNewPass"><br>
                <input type="submit" value="Iniciar sesión"><br>
            </form>
        </div>
    </body>
</html>
