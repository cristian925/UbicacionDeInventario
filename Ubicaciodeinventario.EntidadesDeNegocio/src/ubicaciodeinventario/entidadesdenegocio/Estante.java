/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ubicaciodeinventario.entidadesdenegocio;

/**
 *
 * @author natalia
 */
public class Estante {
     private int id;
     private int idBodega;
     private String nombre;
     private int Top_aux;

    public Estante() {
    }

    public Estante(int id, int idBodega, String nombre) {
        this.id = id;
        this.idBodega = idBodega;
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdBodega() {
        return idBodega;
    }

    public void setIdBodega(int idBodega) {
        this.idBodega = idBodega;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getTop_aux() {
        return Top_aux;
    }

    public void setTop_aux(int Top_Aux) {
        this.Top_aux = Top_Aux;
    }

}
