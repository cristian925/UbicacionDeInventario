/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package ubicaciodeinventario.acecoadatos;

import java.sql.ResultSet;
import java.util.ArrayList;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import ubicaciodeinventario.entidadesdenegocio.Estante;

import org.junit.FixMethodOrder;
import org.junit.runners.MethodSorters;
import ubicaciodeinventario.entidadesdenegocio.Bodega;
/**
 *
 * @author Dev3hc01
 */
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class EstanteDALIT {
    private static Estante estanteActual;
    public EstanteDALIT() {
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
     * Testear el metodo de Crear de la clase RolDAL
     * @throws java.lang.Exception
     */
    @Test
  public void test1Crear() throws Exception {
        System.out.println("crear");
        Estante estante = new Estante();
        estante.setNombre("Nombre UNIT TEST");
        Bodega bodega = new Bodega();
        bodega.setTop_aux(1);
      //  bodega.setIdSucursal(SucursalDAL.buscar(sucursalB).get(0).getId);
       estante.setIdBodega(1);
        int expResult = 0;
        int result = EstanteDAL.crear(estante);
        assertNotEquals(expResult, result); 
    }

    public int testIndividualQuerySelect(Estante pEstante) throws Exception {
        ComunDB comundb = new ComunDB();
        ComunDB.UtilQuery pUtilQuery = comundb.new UtilQuery("",null, 0);
        EstanteDAL.querySelect(pEstante, pUtilQuery);
        return pUtilQuery.getNumWhere();
    }
/**
     * Testear el metodo de QuerySelect de la clase RolDAL
     * @throws java.lang.Exception
     */
    @Test
   public void test2QuerySelect() throws Exception {
        System.out.println("querySelect");
        int index = 0;
       Estante estante = new Estante();
        estante.setId(1);
        index++;
        assertTrue(testIndividualQuerySelect(estante) == index);
        estante.setNombre("TEST");
        index++;
       assertTrue(testIndividualQuerySelect(estante) == index);
       
    }

    /**
     * Testear el metodo de Buscar de la clase RolDAL
     * @throws java.lang.Exception
     */
    @Test
    public void test3Buscar() throws Exception {
        System.out.println("buscar");
        Estante estante = new Estante();
        estante.setNombre("Nombre UNIT TEST");
        estante.setTop_aux(10);
        ArrayList<Estante> result = EstanteDAL.buscar(estante);
       // assertTrue(result.size() > 0);
        estanteActual = result.get(0);
    }
    /**
     * Testear el metodo de ObtenerPorId de la clase RolDAL
     * @throws java.lang.Exception
     */
    @Test
    public void test4obtenerPorId() throws Exception {
        System.out.println("obtenerPorId");
        Estante result = EstanteDAL.obtenerPorId(estanteActual);
        assertEquals(estanteActual.getId(), result.getId());
    }

    /**
     * Testear el metodo de Modificar de la clase RolDAL
     * @throws java.lang.Exception
     */
    @Test
    public void test5Modificar() throws Exception {
        System.out.println("modificar");
        Estante estante = new Estante();
        estante.setId(estanteActual.getId());
        estante.setNombre("TEST UNIT ESTANTE M");
        Bodega bodega = new Bodega();
        bodega.setTop_aux(2);
       // bodega.setIdSucursal(SucursalDAL.buscar(sucursalB).get(1).getId());
        estante.setIdBodega(1);
        int expResult = 0;
        int result = EstanteDAL.modificar(estante);
        assertNotEquals(expResult, result);
       Estante bodegaUpdate = EstanteDAL.obtenerPorId(estanteActual);
       assertTrue(bodegaUpdate.getNombre().equals(estante.getNombre()));
    }
    
     /**
     * Testear el metodo de ObtenerTodos de la clase RolDAL
     * @throws java.lang.Exception
     */
    
    @Test
    public void test6ObtenerTodos() throws Exception {
        System.out.println("obtenerTodos");
        ArrayList<Estante> result = EstanteDAL.obtenerTodos();
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
        int result = EstanteDAL.eliminar(estanteActual);
        assertNotEquals(expResult, result);
        Estante estanteDelete = EstanteDAL.obtenerPorId(estanteActual);
        assertTrue(estanteDelete.getId() == 0);
    }
    
}