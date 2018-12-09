/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ds;
import java.sql.*;

/**
 *
 * @author Carlos Andres Hernandez Yañez
 */
public class GestionBD {
    public static GestionBD instancia=null;
    public Connection cn = null;
    public Statement cmd = null;
    
    public static GestionBD getInstancia() throws Exception{
        if(instancia == null){
            instancia = new GestionBD();
        }
        return instancia;
    }
    
    public GestionBD() throws Exception{
        // Comenzar a registrar el JDBC con mysql
        String usuario = "root";
        String contra = "";
        String url = "jdbc:mysql://localhost:3306/ldoosg?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        // Probar la conexión MYSQL
        Class.forName("com.mysql.jdbc.Driver");
        cn = DriverManager.getConnection(url,usuario,contra);
    }
    
    public ResultSet ejecutarConsulta(String sql) throws Exception{
        cmd = cn.createStatement();
        ResultSet rs = cmd.executeQuery(sql);
        return rs;
    }
    
    public void ejecutarActualizacion(String sql) throws Exception{
        cmd = cn.createStatement();
        cmd.executeUpdate(sql);
    }
}
