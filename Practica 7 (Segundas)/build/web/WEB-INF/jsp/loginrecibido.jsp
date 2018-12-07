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
          <h1 class="masthead-heading mb-0">Práctica 7</h1>
          <h2 class="masthead-subheading mb-0">Uso de cookies para registrar usuario, iniciar sesión y guardar la cookie con su valor.</h2>
          <a href="#registrarme" class="btn btn-primary btn-xl rounded-pill mt-5">Ver mis datos</a>
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
              <h2 class="display-5">Login recibido correctamente</h2>
              <hr noshade>

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
                                out.println("<form action='matarcookie.htm' METHOD='POST'>");
                                out.println("<input type='hidden' name='borrack' value='matarcookies'>");;
                                out.println("<input type='submit' value='Matar sesión'>");
                                out.println("</form>");
                            }
                            
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


