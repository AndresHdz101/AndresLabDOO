<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>

  <head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">


    <title>Laboratorio de Diseño Orientado a Objetos</title>

    <!-- Bootstrap core CSS -->
    <link href="https://thejair1999.000webhostapp.com/plantilla/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://thejair1999.000webhostapp.com/plantilla/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="https://thejair1999.000webhostapp.com/plantilla/css/clean-blog.min.css" rel="stylesheet">

    <!-- Script para el datepicker -->

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
      $( function() {
      $( "#datepicker" ).datepicker();
       } );
    </script>

    <!--- Estilos para el botÃ³n de input --->

    <style>
      .button {
      background-color: #4CAF50;
      border: none;
      color: white;
      padding: 15px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 4px 2px;
      cursor: pointer;
      }
</style>

<style>
      .tg  {border-collapse:collapse;border-spacing:0;}
      .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
      .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
      .tg .tg-0lax{text-align:left;vertical-align:top}

    </style>

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand" href="index.html">Proyecto LDOO</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="usuarios.jsp">Tabla de usuarios</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="clientes.jsp">Tabla de clientes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.html">Cerrar sesión</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Header -->
    <header class="masthead" style="background-image: url('https://thejair1999.000webhostapp.com/plantilla/img/home-bg.jpg')">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="site-heading">
              <h1>Laboratorio de Diseño Orientado a Objetos.</h1>
              <span class="subheading">Proyecto final</span>
            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- Main Content -->
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-preview" align="center">
              <h2 class="post-title">
                Resultado del login:
              </h2>
          </div>
          <hr>
          <div align="center">

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
              
          </div>
          <hr>
          <!-- Pager -->
        </div>
      </div>
    </div>

    <hr>

    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <ul class="list-inline text-center">
              <li class="list-inline-item">
                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
            </ul>
            <p class="copyright text-muted">Copyright &copy; LDOO 2018</p>
          </div>
        </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="https://thejair1999.000webhostapp.com/plantilla/vendor/jquery/jquery.min.js"></script>
    <script src="https://thejair1999.000webhostapp.com/plantilla/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="https://thejair1999.000webhostapp.com/plantilla/js/clean-blog.min.js"></script>

  </body>

</html>
