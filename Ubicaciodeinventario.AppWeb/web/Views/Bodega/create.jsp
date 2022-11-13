<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ubicaciodeinventario.entidadesdenegocio.Bodega"%>
<!DOCTYPE html>
<html>
    <head>        
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Crear Bodega</title>
    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />  
        <main class="container">   
            <h5>Crear Bodega</h5>
            <form action="Bodega" method="post" onsubmit="return  validarFormulario()">
                <input type="hidden" name="accion" value="<%=request.getAttribute("accion")%>">                
                <div class="row">
                    <div class="input-field col l4 s12">
                        <input  id="txtNombre" type="text" name="nombre" required class="validate" maxlength="30">
                        <label for="txtNombre">Nombre</label>
                    </div>                       
                      <div class="input-field col l4 s12">
                          <input  id="txtDescripcion" type="text" required name="descripcion">
                        <label for="txtDescripcion">Descripcion</label>
                    </div> 
                    <div class="input-field col l4 s12">   
                        <select id="slEstatus" name="estatus" class="validate">
                            <option value="0">SELECCIONAR</option>
                            <option value="<%=Bodega.EstatusBodega.ACTIVO%>">ACTIVO</option>
                            <option value="<%=Bodega.EstatusBodega.INACTIVO%>">INACTIVO</option>
                        </select>       
                        <label for="slEstatus">Estatus</label>
                        <span id="slEstatus_error" style="color:red" class="helper-text"></span>
                    </div>
                    <div class="input-field col l4 s12">   
                        <jsp:include page="/Views/Sucursal/select.jsp">                           
                            <jsp:param name="id" value="0" />  
                        </jsp:include>  
                        <span id="slSucursal_error" style="color:red" class="helper-text"></span>
                    </div>
                </div>

                <div class="row">
                    <div class="col l12 s12">
                        <button type="sutmit" class="waves-effect waves-light btn blue"><i class="material-icons right">save</i>Guardar</button>
                        <a href="Bodega" class="waves-effect waves-light btn blue"><i class="material-icons right">list</i>Cancelar</a>                          
                    </div>
                </div>
            </form>          
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />   
        <!--<script>
            function validarFormulario() {
                var result = true;
                var slEstatus = document.getElementById("slEstatus");
                var slEstatus_error = document.getElementById("slEstatus_error");
                var slRol = document.getElementById("slSucursal");
                var slRol_error = document.getElementById("slSucursal_error");
                if (txtPassword.value != txtConfirm_password.value) {
                    txtConfirm_password_error.innerHTML = "El password y confirmar password debe ser iguales";
                    result = false;
                } else {
                    txtConfirm_password_error.innerHTML = "";
                }
                if (slEstatus.value == 0) {
                    slEstatus_error.innerHTML = "El estatus es obligatorio";
                    result = false;
                } else {
                    slEstatus_error.innerHTML = "";
                }
                if (slSucursal.value == 0) {
                    slSucursal_error.innerHTML = "El Sucursal es obligatorio";
                    result = false;
                } else {
                    slSucursal _error.innerHTML = "";
                }

                return result;
            }
        </script>*/-->
    </body>
</html>

