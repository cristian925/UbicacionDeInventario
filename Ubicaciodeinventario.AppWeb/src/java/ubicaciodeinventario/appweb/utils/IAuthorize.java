 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package ubicaciodeinventario.appweb.utils;

import java.io.IOException;
import javax.servlet.ServletException;

/**
 * Esta interface la utilizaremos para usar una expresión Lambda, al momento de
 * autorizar un usuario en un servlet. Para conocer mas sobre el tema de
 * expresion Lambda en java
 * https://www.adictosaltrabajo.com/2015/12/04/expresiones-lambda-con-java-8/
 */
public interface IAuthorize {

    void authorize() throws ServletException, IOException;
}
