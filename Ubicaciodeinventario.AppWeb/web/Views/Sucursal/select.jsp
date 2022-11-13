
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ubicaciodeinventario.entidadesdenegocio.Sucursal"%>
<%@page import="ubicaciodeinventario.acecoadatos.SucursalDAL"%>
<%@page import="java.util.ArrayList"%>
<% ArrayList<Sucursal> sucursals = SucursalDAL.obtenerTodos();
    int id = Integer.parseInt(request.getParameter("id"));
%>
<select id="slSucursal" name="idSucursal">
    <option <%=(id == 0) ? "selected" : ""%>  value="0">SELECCIONAR</option>
    <% for (Sucursal sucursal : sucursals) {%>
    <option <%=(id == sucursal.getId()) ? "selected" : ""%>  value="<%=sucursal.getId()%>"><%= sucursal.getNombre()%></option>
    <%}%>
</select>
<label for="idSucursal">Sucursal</label>

