<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ubicaciodeinventario.entidadesdenegocio.Bodega"%>
<%@page import="ubicaciodeinventario.entidadesdenegocio.Sucursal"%>
<%@page import="java.util.ArrayList"%>
<% ArrayList<Bodega> bodegas = (ArrayList<Bodega>) request.getAttribute("bodegas");
    int numPage = 1;
    int numReg = 10;
    int countReg = 0;
    if (bodegas == null) {
        bodegas = new ArrayList();
    } else if (bodegas.size() > numReg) {
        double divNumPage = (double) bodegas.size() / (double) numReg;
        numPage = (int) Math.ceil(divNumPage);
    }
    String strTop_aux = request.getParameter("top_aux");
    int top_aux = 10;
    if (strTop_aux != null && strTop_aux.trim().length() > 0) {
        top_aux = Integer.parseInt(strTop_aux);
    }
%>
<!DOCTYPE html>
<html>
    <head>        
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Buscar Bodega</title>

    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />  
        <main class="container">   
            <h5>Buscar Bodega</h5>
            <form action="Bodega" method="post">
                <input type="hidden" name="accion" value="<%=request.getAttribute("accion")%>"> 
                <div class="row">
                    <div class="input-field col l4 s12">
                        <input  id="txtNombre" type="text" name="nombre">
                        <label for="txtNombre">Nombre</label>
                    </div>  
                     <div class="input-field col l4 s12">
                        <input  id="txtDescripcion" type="text" required name="descipcion">
                        <label for="txtDescripcion">Descripcion</label>
                    </div>  
                    <div class="input-field col l4 s12">   
                        <select id="slEstatus" name="estatus">
                            <option value="0">SELECCIONAR</option>
                            <option value="<%=Bodega.EstatusBodega.ACTIVO%>">ACTIVO</option>
                            <option value="<%=Bodega.EstatusBodega.INACTIVO%>">INACTIVO</option>
                        </select>       
                        <label for="slEstatus">Estatus</label>
                    </div>
                    <div class="input-field col l4 s12">   
                        <jsp:include page="/Views/Sucursal/select.jsp">                           
                            <jsp:param name="id" value="0" />  
                        </jsp:include>                        
                    </div>
                    <div class="input-field col l4 s12">   
                        <jsp:include page="/Views/Shared/selectTop.jsp">
                            <jsp:param name="top_aux" value="<%=top_aux%>" />                        
                        </jsp:include>                        
                    </div> 
                </div>
                <div class="row">
                    <div class="col l12 s12">
                        <button type="sutmit" class="waves-effect waves-light btn blue"><i class="material-icons right">search</i>Buscar</button>
                        <a href="Bodega?accion=create" class="waves-effect waves-light btn blue"><i class="material-icons right">add</i>Crear</a>                          
                    </div>
                </div>
            </form>

            <div class="row">
                <div class="col l12 s12">
                    <div style="overflow: auto">
                        <table class="paginationjs">
                            <thead>
                                <tr>                                     
                                    <th>Nombre</th> 
                                    <th>Descripcion</th>
                                    <th>Estatus</th>
                                    
                                    <th>Fecha registro</th>  
                                     <th>Acciones</th>
                                </tr>
                            </thead>                       
                            <tbody>                           
                                <% for (Bodega bodega : bodegas) {
                                        int tempNumPage = numPage;
                                        if (numPage > 1) {
                                            countReg++;
                                            double divTempNumPage = (double) countReg / (double) numReg;
                                            tempNumPage = (int) Math.ceil(divTempNumPage);
                                        }
                                        String estatus = "";
                                        switch (bodega.getEstatus()) {
                                            case Bodega.EstatusBodega.ACTIVO:
                                                estatus = "ACTIVO";
                                                break;
                                                case Bodega.EstatusBodega.INACTIVO:
                                                estatus = "INACTIVO";
                                                break;
                                            default:
                                                estatus = "";
                                        }
                                %>
                                <tr data-page="<%= tempNumPage%>">                                    
                                    <td><%=bodega.getNombre()%></td>   
                                    <td><%=bodega.getDescripcion()%></td> 
                                    <td><%=estatus%></td>
                                   
                                    <td><%=bodega.getFechaRegistro()%></td> 
                                    <td>
                                        <div style="display:flex">
                                             <a href="Bodega?accion=edit&id=<%=bodega.getId()%>" title="Modificar" class="waves-effect waves-light btn green">
                                            <i class="material-icons">edit</i>
                                        </a>
                                        <a href="Bodega?accion=details&id=<%=bodega.getId()%>" title="Ver" class="waves-effect waves-light btn blue">
                                            <i class="material-icons">description</i>
                                        </a>
                                        <a href="Bodega?accion=delete&id=<%=bodega.getId()%>" title="Eliminar" class="waves-effect waves-light btn red">
                                            <i class="material-icons">delete</i>
                                        </a>    
                                        </div>                                                                    
                                    </td>                                   
                                </tr>
                                <%}%>                                                       
                            </tbody>
                        </table>
                    </div>                  
                </div>
            </div>             
            <div class="row">
                <div class="col l12 s12">
                    <jsp:include page="/Views/Shared/paginacion.jsp">
                        <jsp:param name="numPage" value="<%= numPage%>" />                        
                    </jsp:include>
                </div>
            </div>
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />      
    </body>
</html>

