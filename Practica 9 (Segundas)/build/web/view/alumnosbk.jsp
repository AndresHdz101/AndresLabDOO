
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumnos</title>
        <style type="text/css">
            .tg  {border-collapse:collapse;border-spacing:0;}
            .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
            .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
            .tg .tg-lik7{background-color:#333333;color:#ffffff;text-align:left}
            .tg .tg-s268{text-align:left}
        </style>
    </head>
    <script languaje="javascript">
        function listado(){
            location.href="/Practica%209%20(Segundas)/view/AlumnosController";
        }
        </script>
    <body>
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
</html>
