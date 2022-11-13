/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ubicaciodeinventario.entidadesdenegocio;


import java.time.LocalDate;


/**
 *
 * @author MINEDUCYT
 */
public class Bodega {
      private int id;
    private int idSucursal;
    private String nombre;
    private LocalDate fechaRegistro;
    private byte estatus;
    private String descripcion;
    private Sucursal sucursal;
    private int top_aux;
    

    public Bodega() {
    }

    public Bodega(int id, int idSucursal, String nombre, LocalDate fechaRegistro, byte estatus,String descripcion) {
        this.id = id;
        this.idSucursal = idSucursal;
        this.nombre = nombre;
        this.fechaRegistro = fechaRegistro;
        this.estatus = estatus;
        this.descripcion = descripcion;
    }

    public Bodega(int i, int test_unit_bodega) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdSucursal() {
        return idSucursal;
    }

    public void setIdSucursal(int idSucursal) {
        this.idSucursal = idSucursal;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

     public LocalDate getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(LocalDate fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public byte getEstatus() {
        return estatus;
    }

    public void setEstatus(byte estatus) {
        this.estatus = estatus;
    }
    
    public String getDescripcion(){
        return descripcion;
    }
    
    public void setDecripcion(String decripcion){
        this.descripcion = decripcion;
    }
    
    
    public int getTop_aux() {
        return top_aux;
    }

    public void setTop_aux(int top_aux) {
        this.top_aux = top_aux;
    }

    public Sucursal getSucursal() {
        return sucursal;
    }

    public void setSucursal(Sucursal sucursal) {
        this.sucursal = sucursal;
    }

    public class EstatusBodega {

        public static final byte ACTIVO = 1;
        public static final byte INACTIVO = 2;
    }
    
}