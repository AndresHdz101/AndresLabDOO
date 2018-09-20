<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>

    <title>Práctica 1 - LDOO</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/creative.min.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Practica 1</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">Registrar Datos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">Llenar datos</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="masthead text-center text-white d-flex">
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-10 mx-auto">
            <h1 class="text-uppercase">
              <strong>Práctica 1 - Lab de Doo</strong>
            </h1>
            <hr>
          </div>
          <div class="col-lg-8 mx-auto">
            <p class="text-faded mb-5">Carlos Andrés Hernández Yañez</p>
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Comenzar</a>
          </div>
        </div>
      </div>
    </header>
    
    

    <section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading text-white">Registro de datos</h2>
            <hr class="light my-4">
            <p class="text-faded mb-4">Por favor llene los siguientes datos a continuación.</p>
            <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Llenar datos</a>
          </div>
        </div>
      </div>
    </section>

    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Datos a llenar:</h2>
            <hr class="my-4">
          </div>
        </div>
      </div>
      <div align="center">
          <form action="Datos_1.jsp" method="post">
              <br> Nombre:<br><input type="text" name="nombre">
              <br><br>
              Materia:<br><select name = "materias">
                <option value="Programacion 1">Programacion 1</option>
                <option value="Base de Datos">Base de Datos</option>
                <option value="Diseño Orientado a Objetos">Diseño Orientado a Objetos</option>
                <option value="Cultura de Calidad">Cultura de Calidad</option>
              </select>
              <br><br>
              Fecha de ingreso:<br><input type="date" name="ingreso">
              <br><br>
              Contraseña:<br><input type="password" name="contra">
              <br><br>
              Correo electrónico:<br><input type="email" name="correo">
              <br><br>
              <input type="submit" value ="Enviar datos" >
             </form>
              Tabla:<br><br>
              <table class="tg">
                <tr>
                  <th class="tg-0lax">Materia</th>
                  <th class="tg-0lax">Dias</th>
                  <th class="tg-0lax">Hora</th>
                  <th class="tg-0lax">Maestro</th>
                  <th class="tg-0lax">Carrera</th>
                </tr>
                <tr>
                  <td class="tg-0lax">Programacion1</td>
                  <td class="tg-0lax">Lunes, Miercoles</td>
                  <td class="tg-0lax">07:00 - 08:00</td>
                  <td class="tg-0lax">Rogelio Cruz</td>
                  <td class="tg-0lax">LSTI</td>
                </tr>
                <tr>
                  <td class="tg-0lax">Base de Datos</td>
                  <td class="tg-0lax">Martes, Jueves</td>
                  <td class="tg-0lax">10:00 - 12:00</td>
                  <td class="tg-0lax">Estela Alvarado</td>
                  <td class="tg-0lax">LSTI</td>
                </tr>
                <tr>
                  <td class="tg-0lax">Diseño Orientado a Objetos</td>
                  <td class="tg-0lax">Viernes</td>
                  <td class="tg-0lax">07:00 - 08:00</td>
                  <td class="tg-0lax">Sergio Castañeda</td>
                  <td class="tg-0lax">LSTI</td>
                </tr>
                <tr>
                  <td class="tg-0lax">Cultura de Calidad</td>
                  <td class="tg-0lax">Viernes</td>
                  <td class="tg-0lax">08:00 - 09:00</td>
                  <td class="tg-0lax">Idali Baltazar</td>
                  <td class="tg-0lax">LSTI</td>
                </tr>
              </table>
              <br><br>
              Imagen:<br><img src="http://vicerrectorado.pucp.edu.pe/administrativo/wp-content/uploads/2013/11/DIRINFO013-web-574x324.jpg">
              <br><br>
              
              Parrafo:<br><p>La seguridad informática, también conocida como ciberseguridad o seguridad de tecnologías de la información, es el área relacionada con la informática y la telemática que se enfoca en la protección de la infraestructura computacional y todo lo relacionado con esta y, especialmente, la información contenida en una computadora o circulante a través de las redes de computadoras.1​ Para ello existen una serie de estándares, protocolos, métodos, reglas, herramientas y leyes concebidas para minimizar los posibles riesgos a la infraestructura o a la información. La ciberseguridad comprende software (bases de datos, metadatos, archivos), hardware, redes de computadoras y todo lo que la organización valore y signifique un riesgo si esta información confidencial llega a manos de otras personas, convirtiéndose, por ejemplo, en información privilegiada.</p>
          <br><br>
          Botones:<br><input type="submit" value="Enviar datos"><input type="submit" value="Reiniciar datos"><input type="submit" value="Cancelar">
               <br><br>
               Video YouTube:<br>
               <iframe width="560" height="315" src="https://www.youtube.com/embed/bAxokC7vvjQ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
          
      </div>
    </section>

    <section class="p-0" id="portfolio">
      <div class="container-fluid p-0">
        <div class="row no-gutters popup-gallery">
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/3.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/3.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/4.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/4.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/5.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/5.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/6.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/6.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>

    <section class="bg-dark text-white">
      <div class="container text-center">
        <h2 class="mb-4">Free Download at Start Bootstrap!</h2>
        <a class="btn btn-light btn-xl sr-button" href="http://startbootstrap.com/template-overviews/creative/">Download Now!</a>
      </div>
    </section>

    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading">Let's Get In Touch!</h2>
            <hr class="my-4">
            <p class="mb-5">Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 ml-auto text-center">
            <i class="fa fa-phone fa-3x mb-3 sr-contact"></i>
            <p>123-456-6789</p>
          </div>
          <div class="col-lg-4 mr-auto text-center">
            <i class="fa fa-envelope-o fa-3x mb-3 sr-contact"></i>
            <p>
              <a href="mailto:your-email@your-domain.com">feedback@startbootstrap.com</a>
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/creative.min.js"></script>

  </body>

</html>
