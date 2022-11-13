<%-- 
    Document   : deletejsp
    Created on : 22 ago 2022, 14:35:03
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ubicaciodeinventario.entidadesdenegocio.Sucursal"%>
<% Sucursal sucursal = (Sucursal) request.getAttribute("sucursal");%>
<!DOCTYPE html>
<html>
    <head>        
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Eliminar Sucursal</title>
    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />  
        <main class="container">   
            <h5>Eliminar Sucursal</h5>          
            <form action="Rol" method="post">
                <input type="hidden" name="accion" value="<%=request.getAttribute("accion")%>">   
                <input type="hidden" name="id" value="<%=sucursal.getId()%>">   
                <div class="row">
                    <div class="input-field col l4 s12">
                    <input disabled  id="txtNombre" type="text" value="<%=sucursal.getNombre()%>">
                    <label for="txtNombre">Nombre</label>
                </div>                                        
                </div>
                    
                     <div class="row">
                    <div class="input-field col l4 s12">
                    <input disabled  id="txtTelefono" type="text" value="<%=sucursal.getTelefono()%>">
                    <label for="txtNombre">Telefono</label>
                </div>                                        
                </div>
                <div class="row">
                    <div class="col l12 s12">
                        <button type="sutmit" class="waves-effect waves-light btn blue"><i class="material-icons right">delete</i>Eliminar</button>
                        <a href="Sucursal" class="waves-effect waves-light btn blue"><i class="material-icons right">list</i>Cancelar</a>                          
                    </div>
                </div>
            </form>          
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />      
    </body>
</html>
