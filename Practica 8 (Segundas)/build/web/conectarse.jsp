<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Laboratorio de Diseño Orientado a Objetos</title>

    <!-- Bootstrap core CSS -->
    <link href="https://thejair1999.000webhostapp.com/andres-plantilla/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="https://thejair1999.000webhostapp.com/andres-plantilla/css/one-page-wonder.min.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Laboratorio de DOO</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="#"></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#"></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="masthead text-center text-white">
      <div class="masthead-content">
        <div class="container">
          <h1 class="masthead-heading mb-0">Práctica 8</h1>
          <h2 class="masthead-subheading mb-0">Uso de base de datos para registrar usuario y logearse.</h2>
          <a href="#registrarme" class="btn btn-primary btn-xl rounded-pill mt-5">Ver resultado</a>
        </div>
      </div>
      <div class="bg-circle-1 bg-circle"></div>
      <div class="bg-circle-2 bg-circle"></div>
      <div class="bg-circle-3 bg-circle"></div>
      <div class="bg-circle-4 bg-circle"></div>
    </header>
    <br>
    <section id="registrarme">
      <div class="container">
          <div align="center">
            <div class="p-4">
              <h2 class="display-5">Resultado de sus datos:</h2>
              <hr noshade>

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
                    out.println("<h3>Login OK!... <br><br> Bienvenid@!: " + usr + "</h3> <br> <a href='verusuarios.jsp'>Ver tabla usuarios</a>");
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
	          	  <hr noshade>
            </div>
          </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="py-5 bg-black">
      <div class="container">
        <p class="m-0 text-center text-white small">Copyright &copy; Andres Hernandez Yañez</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="https://thejair1999.000webhostapp.com/andres-plantilla/vendor/jquery/jquery.min.js"></script>
    <script src="https://thejair1999.000webhostapp.com/andres-plantilla/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>

