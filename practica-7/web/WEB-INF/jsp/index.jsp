<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practica 7 - Lab Diseño Orientado a Objetos</title>
    </head>

    <body>
        <div align="center">
            <h1> Por favor, regístrese para iniciar sesión. </h1>
           
            <%
                                     
                    if(request.getCookies() != null){
                        
                        Cookie[] guardados = request.getCookies();
                        
                        int idsesion = 0;
                        String idusuario = null;
                        String idcontra = null;
                        
                        for(int i=0;i<guardados.length;i++){
                            
                            if(guardados[i].getName().equals("user")){
                                    idsesion = idsesion + 1;
                                    idusuario = guardados[i].getValue();
                                }                           
                            }
                        for(int i=0;i<guardados.length;i++){
                            if(guardados[i].getName().equals("user")){
                                    idsesion = idsesion + 1;
                                    idcontra = guardados[i].getValue();
                                }                           
                            }
                        
                        if(idsesion == 2){
                            out.println("Usted ya cuenta con un usuario registrado previamente...");
                            out.println("<form action='registro.htm' METHOD='POST'>");
                            out.println("<input type='hidden' name='txtUser' value='" + idusuario + "'>");
                            out.println("<input type='hidden' name='txtPass' value='" + idcontra + "'>");
                            out.println("<input type='submit' value='Recuperar sesión'>");
                            out.println("</form>");
                            out.println("<br><form action='borrack.htm' METHOD='POST'>");
                            out.println("<input type='hidden' name='borrack' value='matarcookies'>");;
                            out.println("<input type='submit' value='Matar sesión'>");
                            out.println("</form>");
                        }
                        
                        }

                                     %>
            
            <form action="registro.htm" method="POST">
                Usuario: <br> <input type="text" name="txtUser"><br>
                Contraseña: <br> <input type="password" name="txtPass"><br>
                <input type="submit" value="Registrarse"><br>
            </form>
        </div>
    </body>
</html>
