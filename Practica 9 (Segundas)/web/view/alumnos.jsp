<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%
  HttpSession s = request.getSession();  
  ResultSet rs = null;
  String error = null;
  
  if(s.getAttribute("slista") != null){
      rs = (ResultSet)s.getAttribute("slista");
  }
  
  if(s.getAttribute("serror") != null){
      error = (String) s.getAttribute("serror");
  }
%>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Laboratorio de Diseño Orientado a Objetos</title>

    <!-- Bootstrap core CSS -->
    <link href="https://thejair1999.000webhostapp.com/andres-plantilla/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
      .tg  {border-collapse:collapse;border-spacing:0;}
      .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
      .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
      .tg .tg-lik7{background-color:#333333;color:#ffffff;text-align:left}
      .tg .tg-s268{text-align:left}
    </style>
    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="https://thejair1999.000webhostapp.com/andres-plantilla/css/one-page-wonder.min.css" rel="stylesheet">

  </head>
    <script languaje="javascript">
        function listado(){
            location.href="/Practica%209%20(Segundas)/AlumnosController";
        }
        </script>
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
          <h1 class="masthead-heading mb-0">Práctica 9</h1>
          <h2 class="masthead-subheading mb-0">Uso del patrón de diseño: Singleton.</h2>
          <a href="#registrarme" class="btn btn-primary btn-xl rounded-pill mt-5">Realizar prueba</a>
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
              <h2 class="display-5">Para revisar el funcionamiento correcto del FrameWork, por favor haga clic en "Ver Listado".</h2>
              <hr noshade>
              <br>
                      <h1>Listado de alumnos</h1>
        <br>
        <input type="submit" name="btnListado" id="btnListado" value="Listado" onClick="listado()">
        <br>
        <%if(rs!=null){%>
        <table class="tg">
            <tr>
              <th class="tg-lik7">Matricula</th>
              <th class="tg-lik7">Alumno</th>
              <th class="tg-lik7">Carrera</th>
            </tr>
            <% while(rs.next()){ %>
            <tr>
              <td class="tg-s268"><%=rs.getString(1)%></td>
              <td class="tg-s268"><%=rs.getString(2)%></td>
              <td class="tg-s268"><%=rs.getString(3)%></td>
            </tr>
            <%}%>
            <tr>
              <td class="tg-s268"></td>
              <td class="tg-s268"></td>
              <td class="tg-s268"></td>
            </tr>
          </table>
        <%}%>
        <div id="error"><strong><%=error%></strong></div>
              <br>
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