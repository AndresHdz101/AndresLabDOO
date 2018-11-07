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
            <form method="POST">
                <input type="hidden" name="txtUser" value="<% out.print(user1); %>">
                <input type="hidden" name="txtPass" value="<% out.print(contra1); %>">
                Usuario: <br> <input type="text" name="txtNewUser" value="<%
                                     
                    if(request.getCookies() != null){
                        
                        Cookie[] guardados = request.getCookies();
                        
                        for(int i=0;i<guardados.length;i++){
                            
                            if(guardados[i].getName().equals("user")){
                                
                                out.print(guardados[i].getValue());
                                
                            }
                            
                        }
                        
                    }

                                     %>"><br>
                Contraseña: <br> <input type="password" name="txtNewPass" value="<%
                                     
                    if(request.getCookies() != null){
                        
                        Cookie[] guardados = request.getCookies();
                        
                        for(int i=0;i<guardados.length;i++){
                            
                            if(guardados[i].getName().equals("pass")){
                                
                                out.print(guardados[i].getValue());
                                
                            }
                            
                        }
                        
                    }

                                     %>"><br>
                <input type="checkbox" name="ok" value="recordar"> Recordar mi usuario <br>
                <input type="submit" name="boton" value="Iniciar sesión"><br>
            </form>
        </div>
    </body>
</html>

<%
    
if(request.getParameter("boton") != null){
    
    String txtusr, txtpass;
    
    txtusr = request.getParameter("txtNewUser");
    txtpass = request.getParameter("txtNewPass");
    
    if(txtusr.equals(request.getParameter("txtUser")) && txtpass.equals(request.getParameter("txtPass"))){
        
        if(request.getParameter("ok") == null){
            
            response.sendRedirect("login_ok.htm");
            
        } else {
            
            Cookie valor_ck = new Cookie("user", txtusr);
            valor_ck.setMaxAge(60*60*24);
            response.addCookie(valor_ck);
            
            Cookie valor_ckp = new Cookie("pass", txtpass);
            valor_ckp.setMaxAge(60*60*24);
            response.addCookie(valor_ckp);
            response.sendRedirect("login_ok.htm");
        }
        
    } else if(txtusr != request.getParameter("txtUser") && txtpass != request.getParameter("txtPass")){
        
        response.sendRedirect("error_login.htm");
        
    }
    
}

%>