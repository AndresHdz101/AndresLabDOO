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
            /* LAS VARIABLES user1 Y contra1 CORRESPONDEN AL PRIMER FORMULARIO DONDE SE LE PIDE AL USUARIO REGISTRARSE */
            String user1 = (String)session.getAttribute("usuario");
            String contra1 = (String)session.getAttribute("contra");
            /* COMO LAS VARIABLES SE RECOGEN DESDE PAGINAS ANTERIORES CON EL ATRIBUTO SESSION, ES NECESARIO PARSEARLO A STRING PARA PODER COMPARARLOS */
                     
                /* SI LOS USUARIOS Y LAS CONTRASEÑAS SON IGUALES SUCEDE ESTO */
                out.println("<h1> Login correcto!... <br><br> Bienvenid@!: " + session.getAttribute("usuario"));
        %>
        
                    <%
                                     
                    if(request.getCookies() != null){
                        
                        Cookie[] guardados = request.getCookies();
                        
                        for(int i=0;i<guardados.length;i++){
                            
                            if(guardados[i].getName().equals("user")){
                                
                                out.println("</h1><h4>Usted solicitó guardar cookie para la sesión...<br><br>");
                                
                                out.println("Nombre: " + guardados[i].getName());
                                out.println("<br>Valor: " + guardados[i].getValue());
                                out.println("<br>Dominio: " + guardados[i].getDomain());
                                out.println("<br>Edad de la cookie: " + guardados[i].getMaxAge());
                                out.println("<br>Versión: " + guardados[i].getVersion() + "</h4>");
                                
                                
                                
                                out.println("<br><br>¿Desea matar la cookie?");
                                out.println("<form action='borrack.htm' METHOD='POST'>");
                                out.println("<input type='hidden' name='borrack' value='matarcookies'>");;
                                out.println("<input type='submit' value='Matar sesión'>");
                                out.println("</form>");
                            }
                            
                        }
                        
                    }

                                     %>
    </body>
</html>
