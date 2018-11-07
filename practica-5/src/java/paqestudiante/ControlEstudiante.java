/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package paqestudiante;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;

/**
 *
 * @author Lino
 */
@Controller
public class ControlEstudiante {
   @RequestMapping(value = "/estudiante", method = RequestMethod.GET)
   public ModelAndView student() {
      return new ModelAndView("estudiante", "comando", new Estudiante());
   }
   @RequestMapping(value = "/agregarEstudiante", method = RequestMethod.POST)
      public String addStudent(@ModelAttribute("SpringWeb")Estudiante estudiante, 
   
   ModelMap model) {
      model.addAttribute("nombre", estudiante.getNombre());
      model.addAttribute("carrera", estudiante.getCarrera());
      model.addAttribute("fechanac", estudiante.getFechanac());
      model.addAttribute("contra", estudiante.getContra());
      model.addAttribute("correoe", estudiante.getCorreoe());
      
      return "result";
   }
}
