<%@ page import="java.sql.*"%>

<%
    String accion = request.getParameter("boton");
    String usr = request.getParameter("txtUser");
    String pass = request.getParameter("txtPass");
    if (accion.equals("Iniciar sesion")){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testbd?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM usuarios WHERE usuario = '" + usr + "' AND contra = '" + pass + "'" );   
                if(rs.next()){
                    out.println("<h3>Login OK!... <br><br> Bienvenid@!: " + usr + "</h3> <br> <a href='usuarios.jsp'>Ver tabla usuarios</a>");
                } else {
                    out.println("<h3>¡Error!<br><br>Por favor, valide que el usuario exista o haya ingresado sus credenciales correctamente</h3>");
                }
            } catch(Exception e){
                out.println("Se ha producido un error en: <br><br>" + e);
                }
    } else if(accion.equals("Registrarse")){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testbd?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
            Statement st = con.createStatement();
            st.executeUpdate("INSERT INTO usuarios (usuario, contra) VALUES ('"+ usr +"','" + pass +"')");
            out.println("<h3>¡Hola " + usr + "!, tu usuario ha sido agregado correctamente</h3>");
        } catch(Exception e){
            out.println("Error: " + e);
        }
    }
%>