<%-- 
    Document   : borrack
    Created on : Nov 4, 2018, 6:21:29 AM
    Author     : Lino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar sesión y cookies</title>
    </head>
    <body>
        <%

            String respuesta;
            respuesta = request.getParameter("borrack");
            if(respuesta.equals("matarcookies")){
                
                        Cookie[] guardados = request.getCookies();
                        
                        int idsesion = 0;
                        String idusuario = null;
                        String idcontra = null;
                        
                        for(int i=0;i<guardados.length;i++){
                            
                            if(guardados[i].getName().equals("user")){
                                    guardados[i].setValue(null);                                    
                                    guardados[i].setMaxAge(0);
                                    response.addCookie(guardados[i]);
                                }                           
                            }
                        for(int i=0;i<guardados.length;i++){
                            if(guardados[i].getName().equals("pass")){
                                    guardados[i].setValue(null);                                    
                                    guardados[i].setMaxAge(0);
                                    response.addCookie(guardados[i]);
                                }                           
                            }

                    out.println("Las cookies de user y pass fueron borracos correctamente");
                    out.println("<a href='index.htm'>Regresar a la pagina anterior</a>");
            } else {
                out.println("Acceso Denegado.");
            }
            
        %>
    </body>
</html>
