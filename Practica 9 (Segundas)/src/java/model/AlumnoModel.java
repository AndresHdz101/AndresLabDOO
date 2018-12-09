/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import ds.*;
import java.sql.*;
/**
 *
 * @author Carlos Andres Hernandez Yañez
 */
public class AlumnoModel {
    public ResultSet verListado() throws Exception{
        String sql = "SELECT * FROM alumnos";
        GestionBD gbd = GestionBD.getInstancia();
        ResultSet rs = gbd.ejecutarConsulta(sql);
        return rs;
    }
}
