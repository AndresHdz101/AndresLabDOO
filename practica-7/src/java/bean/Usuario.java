/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Lino
 */
public class Usuario {
    private String user;
    private String contra;

    public Usuario(String user, String contra) {
        this.user = user;
        this.contra = contra;
    }

    public Usuario() {
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
   
}
