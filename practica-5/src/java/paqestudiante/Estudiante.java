package paqestudiante;

public class Estudiante {
   private String nombre;
   private String carrera;
   private String fechanac;
   private String contra;
   private String correoe;

   public void setNombre(String nombre) {
      this.nombre = nombre;
   }
   public String getNombre() {
      return nombre;
   }
   public void setCarrera(String carrera) {
      this.carrera= carrera;
   }
   public String getCarrera() {
      return carrera;
   }
   public void setFechanac(String fechanac) {
      this.fechanac = fechanac;
   }
   public String getFechanac() {
      return fechanac;
   }
   public void setContra(String contra){
      this.contra = contra;
   }
   public String getContra(){
      return contra;
   }
   public void setCorreoe(String correoe){
      this.correoe = correoe;
   }
   public String getCorreoe(){
      return correoe;
   }
}