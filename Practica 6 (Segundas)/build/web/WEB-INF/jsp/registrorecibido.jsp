<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Laboratorio de Dise�o Orientado a Objetos</title>

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
          <h1 class="masthead-heading mb-0">Pr�ctica 6</h1>
          <h2 class="masthead-subheading mb-0">Uso de "Session Tracking" para registrar un nuevo usuario y logearse</h2>
          <a href="#registrarme" class="btn btn-primary btn-xl rounded-pill mt-5">Ver mi resultado</a>
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
              <h2 class="display-5">Usuario registrado correctamente, por favor acceda con sus credenciales.</h2>
              <hr noshade>
            <%
                
               String user1 = request.getParameter("txtUser");
               String contra1 = request.getParameter("txtPass");
               
               session.setAttribute("usuario", user1);
               session.setAttribute("contra", contra1);

            %>
                
            <form action="loginrecibido.htm" method="POST">
                Usuario: <br> <input type="text" name="txtNewUser"><br>
                Contrase�a: <br> <input type="password" name="txtNewPass"><br>
                <input type="submit" value="Iniciar sesi�n"><br>
            </form>
	          	  <hr noshade>
            </div>
          </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="py-5 bg-black">
      <div class="container">
        <p class="m-0 text-center text-white small">Copyright &copy; Andres Hernandez Ya�ez</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="https://thejair1999.000webhostapp.com/andres-plantilla/vendor/jquery/jquery.min.js"></script>
    <script src="https://thejair1999.000webhostapp.com/andres-plantilla/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>