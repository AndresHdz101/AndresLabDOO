package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class clientes_005fenviar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("  <head>\n");
      out.write("\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    <title>Laboratorio de Diseño Orientado a Objetos</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core CSS -->\n");
      out.write("    <link href=\"https://thejair1999.000webhostapp.com/plantilla/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom fonts for this template -->\n");
      out.write("    <link href=\"https://thejair1999.000webhostapp.com/plantilla/vendor/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>\n");
      out.write("    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("    <!-- Custom styles for this template -->\n");
      out.write("    <link href=\"https://thejair1999.000webhostapp.com/plantilla/css/clean-blog.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Script para el datepicker -->\n");
      out.write("\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-1.12.4.js\"></script>\n");
      out.write("    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>\n");
      out.write("    <script>\n");
      out.write("      $( function() {\n");
      out.write("      $( \"#datepicker\" ).datepicker();\n");
      out.write("       } );\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("    <!--- Estilos para el botÃ³n de input --->\n");
      out.write("\n");
      out.write("    <style>\n");
      out.write("      .button {\n");
      out.write("      background-color: #4CAF50;\n");
      out.write("      border: none;\n");
      out.write("      color: white;\n");
      out.write("      padding: 15px 32px;\n");
      out.write("      text-align: center;\n");
      out.write("      text-decoration: none;\n");
      out.write("      display: inline-block;\n");
      out.write("      font-size: 16px;\n");
      out.write("      margin: 4px 2px;\n");
      out.write("      cursor: pointer;\n");
      out.write("      }\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("      .tg  {border-collapse:collapse;border-spacing:0;}\n");
      out.write("      .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}\n");
      out.write("      .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}\n");
      out.write("      .tg .tg-0lax{text-align:left;vertical-align:top}\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("\n");
      out.write("    <!-- Navigation -->\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-light fixed-top\" id=\"mainNav\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <a class=\"navbar-brand\" href=\"index.html\">Proyecto LDOO</a>\n");
      out.write("        <button class=\"navbar-toggler navbar-toggler-right\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("          Menu\n");
      out.write("          <i class=\"fa fa-bars\"></i>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("          <ul class=\"navbar-nav ml-auto\">\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"usuarios.jsp\">Tabla de usuarios</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"clientes.jsp\">Tabla de clientes</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"index.html\">Cerrar sesión</a>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <!-- Page Header -->\n");
      out.write("    <header class=\"masthead\" style=\"background-image: url('https://thejair1999.000webhostapp.com/plantilla/img/home-bg.jpg')\">\n");
      out.write("      <div class=\"overlay\"></div>\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-lg-8 col-md-10 mx-auto\">\n");
      out.write("            <div class=\"site-heading\">\n");
      out.write("              <h1>Laboratorio de Diseño Orientado a Objetos.</h1>\n");
      out.write("              <span class=\"subheading\">Proyecto final</span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <!-- Main Content -->\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-lg-8 col-md-10 mx-auto\">\n");
      out.write("          <div class=\"post-preview\" align=\"center\">\n");
      out.write("              <h2 class=\"post-title\">\n");
      out.write("                Tabla de usuarios:\n");
      out.write("              </h2>\n");
      out.write("          </div>\n");
      out.write("          <hr>\n");
      out.write("          <div align=\"center\">\n");
      out.write("\n");
      out.write("              ");

              
                  String cliente = request.getParameter("txtCliente");
                  String direccion = request.getParameter("txtDireccion");
                  String telefono = request.getParameter("txtTelefono");
                      try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testbd?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
                            Statement st = con.createStatement();
                            st.executeUpdate("INSERT INTO clientes (nombrecliente, telefono, direccion) VALUES ('"+ cliente +"','" + telefono + "','" + direccion + "')");
                            out.println("<h3>¡Cliente " + cliente + "!, se agregó correctamente!</h3>");
                        } catch(Exception e){
                            out.println("Error: " + e);
                        }
                  
              
      out.write("\n");
      out.write("              \n");
      out.write("            </div>        \n");
      out.write("        <div class=\"container\">          \n");
      out.write("            <div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\">\n");
      out.write("                <div class=\"modal-dialog\" role=\"document\" style=\"z-index: 9999; width: 450px\">\n");
      out.write("                    <div class=\"modal-content\">\n");
      out.write("                        <div class=\"modal-header\">                            \n");
      out.write("                            <h4 class=\"modal-title\" id=\"myModalLabel\">Agregar Registro</h4>\n");
      out.write("                        </div>\n");
      out.write("                    </div>                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>        \n");
      out.write("        <script src=\"js/jquery.js\" type=\"text/javascript\"></script>             \n");
      out.write("        <script src=\"js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("              \n");
      out.write("          </div>\n");
      out.write("          <hr>\n");
      out.write("          <!-- Pager -->\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <hr>\n");
      out.write("\n");
      out.write("    <!-- Footer -->\n");
      out.write("    <footer>\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-lg-8 col-md-10 mx-auto\">\n");
      out.write("            <ul class=\"list-inline text-center\">\n");
      out.write("              <li class=\"list-inline-item\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                  <span class=\"fa-stack fa-lg\">\n");
      out.write("                    <i class=\"fa fa-circle fa-stack-2x\"></i>\n");
      out.write("                    <i class=\"fa fa-twitter fa-stack-1x fa-inverse\"></i>\n");
      out.write("                  </span>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"list-inline-item\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                  <span class=\"fa-stack fa-lg\">\n");
      out.write("                    <i class=\"fa fa-circle fa-stack-2x\"></i>\n");
      out.write("                    <i class=\"fa fa-facebook fa-stack-1x fa-inverse\"></i>\n");
      out.write("                  </span>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"list-inline-item\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                  <span class=\"fa-stack fa-lg\">\n");
      out.write("                    <i class=\"fa fa-circle fa-stack-2x\"></i>\n");
      out.write("                    <i class=\"fa fa-github fa-stack-1x fa-inverse\"></i>\n");
      out.write("                  </span>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("            <p class=\"copyright text-muted\">Copyright &copy; LDOO 2018</p>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </footer>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core JavaScript -->\n");
      out.write("    <script src=\"https://thejair1999.000webhostapp.com/plantilla/vendor/jquery/jquery.min.js\"></script>\n");
      out.write("    <script src=\"https://thejair1999.000webhostapp.com/plantilla/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Custom scripts for this template -->\n");
      out.write("    <script src=\"https://thejair1999.000webhostapp.com/plantilla/js/clean-blog.min.js\"></script>\n");
      out.write("\n");
      out.write("  </body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
