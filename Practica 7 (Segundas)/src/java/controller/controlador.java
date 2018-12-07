/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.Usuario;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Andres Hernandez Yañez
 */
@Controller
@RequestMapping("/registro.htm")
public class controlador {
      //Siempre debe retornar un String
    
    @RequestMapping(method = RequestMethod.GET)
    public String otroMetodo(Model m){
        String a = "Usted intentó modificar el parámetro POST a GET. Por nivel de seguridad, no está permitido.";
        m.addAttribute("err", a);
        return "error";
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public String recibir(@RequestParam("txtUser") String user, @RequestParam("txtPass") String contra, Model m){
        if ((user.trim().equals("")) && (contra.trim().equals(""))){
            String a = "Usted dejó los espacios en blanco, por favor llene los campos correctamente";
            m.addAttribute("err", a);
            return "error";
        } else if ((user.trim().equals("")) && (contra.trim() != null)) {
            
            String a = "Usted solamente llenó el campo de Contraseña, por favor introduzca tambien el campo de usuario";
            m.addAttribute("err", a);
            return "error";
            
        } else if ((user.trim() != null) && (contra.trim().equals(""))) {
            
            String a = "Usted solamente llenó el campo de usuario, por favor introduzca tambien el campo de contraseña";
            m.addAttribute("err", a);
            return "error";            
            
        } else {
            
            Usuario usuario = new Usuario(user, contra);
            m.addAttribute("usuario", usuario);
            return "registrorecibido";
        }
    }
   }
