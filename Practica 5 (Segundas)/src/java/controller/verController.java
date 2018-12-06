/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.Estudiante;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Andres Hernandez Yanez
 */
@Controller
@RequestMapping("/registrarse.htm")
public class verController {
    
    //Siempre debe retornar un String
    
    @RequestMapping(method = RequestMethod.GET)
    public String otroMetodo(Model m){
        return "index";
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public String recibir(@RequestParam("txtNombre") String nombre, @RequestParam("txtMateria") String materia, @RequestParam("txtIngreso") String ingreso, @RequestParam("txtContra") String contra, @RequestParam("txtCorreo") String correoe, Model m){
        if ((nombre.trim().equals("")) || (ingreso.trim().equals("")) || (contra.trim().equals("")) || (correoe.trim().equals(""))){
      
            return "index_1";
        } 
        else {
            
            Estudiante estudiante = new Estudiante(nombre, materia, ingreso, contra, correoe);
            
            m.addAttribute("estudiante", estudiante);
            return "listo";
        }
        
        
    }
    
}
