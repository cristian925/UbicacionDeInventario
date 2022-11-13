package ubicaciodeinventario.acecoadatos;


import java.time.LocalDate;
import java.util.ArrayList;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import ubicaciodeinventario.entidadesdenegocio.Bodega;


import org.junit.FixMethodOrder;
import org.junit.runners.MethodSorters;
import ubicaciodeinventario.entidadesdenegocio.Sucursal;

/**
 *
 * @author Dev3hc01
 */
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class BodegaDALIT {
    private static Bodega bodegaActual;
    public BodegaDALIT() {
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
        Bodega bodega = new Bodega();
        bodega.setNombre("Nombre UNIT TEST");
        bodega.setFechaRegistro(LocalDate.now());
        bodega.setEstatus(Bodega.EstatusBodega.INACTIVO);
        bodega.setDecripcion("TEST");
        Sucursal sucursalB = new Sucursal();
        sucursalB.setTop_Aux(1);
      //  bodega.setIdSucursal(SucursalDAL.buscar(sucursalB).get(0).getId);
       bodega.setIdSucursal(1);
        int expResult = 0;
        int result = BodegaDAL.crear(bodega);
        assertNotEquals(expResult, result); 
    }

    public int testIndividualQuerySelect(Bodega pBodega) throws Exception {
        ComunDB comundb = new ComunDB();
        ComunDB.UtilQuery pUtilQuery = comundb.new UtilQuery("",null, 0);
        BodegaDAL.querySelect(pBodega, pUtilQuery);
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
        Bodega bodega = new Bodega();
        bodega.setId(1);
        index++;
        assertTrue(testIndividualQuerySelect(bodega) == index);
        bodega.setNombre("TEST");
        index++;
        assertTrue(testIndividualQuerySelect(bodega) == index);
         bodega.setDecripcion("TEST");
        index++;
        assertTrue(testIndividualQuerySelect(bodega) == index);
       
    }

    /**
     * Testear el metodo de Buscar de la clase RolDAL
     * @throws java.lang.Exception
     */
    @Test
    public void test3Buscar() throws Exception {
        System.out.println("buscar");
        Bodega bodega = new Bodega();
        bodega.setNombre("Nombre UNIT TEST");
        bodega.setEstatus(Bodega.EstatusBodega.INACTIVO);
        bodega.setDecripcion("TEST");
        bodega.setTop_aux(10);
        ArrayList<Bodega> result = BodegaDAL.buscar(bodega);
       // assertTrue(result.size() > 0);
        bodegaActual = result.get(0);
    }
    /**
     * Testear el metodo de ObtenerPorId de la clase RolDAL
     * @throws java.lang.Exception
     */
    @Test
    public void test4obtenerPorId() throws Exception {
        System.out.println("obtenerPorId");
        Bodega result = BodegaDAL.obtenerPorId(bodegaActual);
        assertEquals(bodegaActual.getId(), result.getId());
    }

    /**
     * Testear el metodo de Modificar de la clase RolDAL
     * @throws java.lang.Exception
     */
    @Test
    public void test5Modificar() throws Exception {
        System.out.println("modificar");
        Bodega bodega = new Bodega();
        bodega.setId(bodegaActual.getId());
        bodega.setNombre("TEST UNIT BODEGA M");
         bodega.setDecripcion("hjhjhj");
        bodega.setEstatus(Bodega.EstatusBodega.ACTIVO);
        Sucursal sucursalB = new Sucursal();
        sucursalB.setTop_Aux(2);
       // bodega.setIdSucursal(SucursalDAL.buscar(sucursalB).get(1).getId());
        bodega.setIdSucursal(1);
        int expResult = 0;
        int result = BodegaDAL.modificar(bodega);
        assertNotEquals(expResult, result);
        Bodega sucursalUpdate = BodegaDAL.obtenerPorId(bodegaActual);
       assertTrue(sucursalUpdate.getNombre().equals(bodega.getNombre()));
    }
    
     /**
     * Testear el metodo de ObtenerTodos de la clase RolDAL
     * @throws java.lang.Exception
     */
    
    @Test
    public void test6ObtenerTodos() throws Exception {
        System.out.println("obtenerTodos");
        ArrayList<Bodega> result = BodegaDAL.obtenerTodos();
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
        int result = BodegaDAL.eliminar(bodegaActual);
        assertNotEquals(expResult, result);
        Bodega bodegaDelete = BodegaDAL.obtenerPorId(bodegaActual);
        assertTrue(bodegaDelete.getId() == 0);
    }
    
}