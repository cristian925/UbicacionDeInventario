/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package ubicaciodeinventario.acecoadatos;

import java.util.ArrayList;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import ubicaciodeinventario.entidadesdenegocio.Sucursal;

import org.junit.FixMethodOrder;
import org.junit.runners.MethodSorters;
/**
 *
 * @author Admin
 */
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class SucursalDALIT {
    private static Sucursal sucursalActual;
    public SucursalDALIT() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

     /**
     * Testear el metodo de Crear de la clase SucursalDAL
     * @throws java.lang.Exception
     */
    @Test
    public void test1Crear() throws Exception {
        System.out.println("crear");
        Sucursal sucursal = new Sucursal();
        sucursal.setNombre("Nombre UNIT TEST");
        sucursal.getTelefono();
        sucursal.setIdSucursal(SucursalDAL.buscar(sucursal).get(0).getIdSucursal());
        int expResult = 0;
        int result = SucursalDAL.crear(sucursal);
        assertNotEquals(expResult, result);
    }

    public int testIndividualQuerySelect(Sucursal pSucursal) throws Exception {
        ComunDB comundb = new ComunDB();
        ComunDB.UtilQuery pUtilQuery = comundb.new UtilQuery("",null, 0);
        SucursalDAL.querySelect(pSucursal, pUtilQuery);
        return pUtilQuery.getNumWhere();
    }
/**
     * Testear el metodo de QuerySelect de la clase RolDAL
     * @throws java.lang.Exception
     */
    @Test
    public void test2QuerySelect() throws Exception {
        System.out.println("querySelect");
        Sucursal pSucursal = new Sucursal();
        pSucursal.setIdSucursal(1);
        assertTrue(testIndividualQuerySelect(pSucursal) == 1);
        pSucursal.setNombre("TEST");
        assertTrue(testIndividualQuerySelect(pSucursal) == 2);
    }

    /**
     * Testear el metodo de Buscar de la clase SucursalDAL
     * @throws java.lang.Exception
     */
    @Test
    public void test3Buscar() throws Exception {
        System.out.println("buscar");
        Sucursal pSucursal = new Sucursal();
        
        ArrayList<Sucursal> result = SucursalDAL.buscar(pSucursal);
        assertTrue(result.size() > 0);
        sucursalActual = result.get(0);
    }
    /**
     * Testear el metodo de ObtenerPorId de la clase RolDAL
     * @throws java.lang.Exception
     */
    @Test
    public void test4obtenerPorId() throws Exception {
        System.out.println("obtenerPorId");
        Sucursal result = SucursalDAL.obtenerPorId(sucursalActual);
        assertEquals(sucursalActual.getIdSucursal(), result.getIdSucursal());
    }

    /**
     * Testear el metodo de Modificar de la clase RolDAL
     * @throws java.lang.Exception
     */
    @Test
    public void test5Modificar() throws Exception {
        System.out.println("modificar");
        Sucursal pSucursal = new Sucursal();
        pSucursal.setIdSucursal(sucursalActual.getIdSucursal());
        pSucursal.setNombre("TEST UNIT ROL M");
        int expResult = 0;
        int result = SucursalDAL.modificar(pSucursal);
        assertNotEquals(expResult, result);
        Sucursal sucursalUpdate = SucursalDAL.obtenerPorId(sucursalActual);
        assertTrue(sucursalUpdate.getNombre().equals(pSucursal.getNombre()));
    }
    
     /**
     * Testear el metodo de ObtenerTodos de la clase RolDAL
     * @throws java.lang.Exception
     */
    
    @Test
    public void test6ObtenerTodos() throws Exception {
        System.out.println("obtenerTodos");
        ArrayList<Sucursal> result = SucursalDAL.obtenerTodos();
        assertTrue(result.size() > 0);
    }

    /**
     * Testear el metodo de Eliminar de la clase RolDAL
     * @throws java.lang.Exception
     */
    @Test
    public void test7Eliminar() throws Exception {
        System.out.println("eliminar");
        int expResult = 0;
        int result = SucursalDAL.eliminar(sucursalActual);
        assertNotEquals(expResult, result);
        Sucursal sucursalDelete = SucursalDAL.obtenerPorId(sucursalActual);
        assertTrue(sucursalDelete.getIdSucursal() == 0);
    }
    
}