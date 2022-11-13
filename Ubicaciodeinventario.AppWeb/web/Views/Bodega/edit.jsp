<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ubicaciodeinventario.entidadesdenegocio.Bodega"%>
<% Bodega bodega = (Bodega) request.getAttribute("bodega");%>
<!DOCTYPE html>
<html>
    <head>        
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Editar Bodega</title>
    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />  
        <main class="container">   
            <h5>Editar Bodega</h5>
            <form action="Bodega" method="post" onsubmit="return  validarFormulario()">
                <input type="hidden" name="accion" value="<%=request.getAttribute("accion")%>"> 
                <input type="hidden" name="id" value="<%=bodega.getId()%>">  
                <div class="row">
                    <div class="input-field col l4 s12">
                        <input  id="txtNombre" type="text" name="nombre" value="<%=bodega.getNombre()%>" required class="validate" maxlength="30">
                        <label for="txtNombre">Nombre</label>
                    </div>                       
                    <div class="input-field col l4 s12">
                        <input  id="txtDescripcion" type="text" name="descripcion" value="<%=bodega.getDescripcion()%>" required class="validate" maxlength="30">
                        <label for="txtDescripcion">Descripcion</label>
                    </div>                     
                    <div class="input-field col l4 s12">   
                        <select id="slEstatus" name="estatus" class="validate">
                            <option value="0" <%=(bodega.getEstatus() == 10) ? "selected" : ""%>>SELECCIONAR</option>
                            <option value="<%=Bodega.EstatusBodega.ACTIVO%>"  <%=(bodega.getEstatus() == Bodega.EstatusBodega.ACTIVO) ? "selected" : ""%>>ACTIVO</option>
                            <option value="<%=Bodega.EstatusBodega.INACTIVO%>"  <%=(bodega.getEstatus() == Bodega.EstatusBodega.INACTIVO) ? "selected" : ""%>>INACTIVO</option>
                        </select>       
                        <label for="slEstatus">Estatus</label>
                        <span id="slEstatus_error" style="color:red" class="helper-text"></span>
                    </div>
                    <div class="input-field col l4 s12">   
                        <jsp:include page="/Views/Sucursal/select.jsp">                           
                            <jsp:param name="id" value="<%=bodega.getIdSucursal() %>" />  
                        </jsp:include>  
                        <span id="slSucursal_error_error" style="color:red" class="helper-text"></span>
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
     
    </body>
</html>
