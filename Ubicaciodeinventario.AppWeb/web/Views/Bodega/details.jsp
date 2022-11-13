<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ubicaciodeinventario.entidadesdenegocio.Bodega"%>
<% Bodega bodega = (Bodega) request.getAttribute("bodega");%>
<!DOCTYPE html>
<html>
    <head>        
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Detalle de Bodega</title>
    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />  
        <main class="container">   
            <h5>Detalle de Bodega</h5>
             <div class="row">
                    <div class="input-field col l4 s12">
                        <input  id="txtNombre" type="text" value="<%=bodega.getNombre()%>" disabled>
                        <label for="txtNombre">Nombre</label>
                    </div>                       
                    <div class="input-field col l4 s12">
                        <input  id="txtDecripcion" type="text" value="<%=bodega.getDescripcion()%>" disabled>
                        <label for="txtDescripcion">Descripcion</label>
                                     
                    <div class="input-field col l4 s12">   
                        <select id="slEstatus" name="estatus" disabled>
                            <option value="0" <%=(bodega.getEstatus() == 10) ? "selected" : ""%>>SELECCIONAR</option>
                            <option value="<%=Bodega.EstatusBodega.ACTIVO%>"  <%=(bodega.getEstatus() == Bodega.EstatusBodega.ACTIVO) ? "selected" : ""%>>ACTIVO</option>
                            <option value="<%=Bodega.EstatusBodega.INACTIVO%>"  <%=(bodega.getEstatus() == Bodega.EstatusBodega.INACTIVO) ? "selected" : ""%>>INACTIVO</option>
                        </select>       
                        <label for="slEstatus">Estatus</label>                       
                    </div>
                    
                </div>

                <div class="row">
                    <div class="col l12 s12">
                         <a href="Bodega?accion=edit&id=<%=bodega.getId()%>" class="waves-effect waves-light btn blue"><i class="material-icons right">edit</i>Ir modificar</a>            
                        <a href="Bodega" class="waves-effect waves-light btn blue"><i class="material-icons right">list</i>Cancelar</a>                          
                    </div>
                </div>          
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />         
    </body>
</html>

