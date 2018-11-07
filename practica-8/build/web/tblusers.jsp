<%-- 
    Document   : tblusers
    Created on : Nov 7, 2018, 1:15:49 AM
    Author     : Lino
--%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <br>
            <body>
        <h1>Resultado de la tabla usuarios:</h1>
        <br>
            <%
            
            PreparedStatement selectUsuarios = null;
            ResultSet rs = null;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testbd?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
            selectUsuarios = con.prepareStatement("SELECT * FROM usuarios");
            rs = selectUsuarios.executeQuery();

            %>
            
            <table>
                <tr>
                    <th>Usuario</th>
                    <th>Contraseña</th>
                </tr>
                <%
                    while(rs.next()){
                %>
                <tr>
                    <th><%= rs.getString("usuario")%></th>
                    <th><%= rs.getString("contra")%></th>
                </tr>
            </table>
    </body>
    </body>
</html>
