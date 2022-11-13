<%@page import="ubicaciodeinventario.acecoadatos.EstanteDAL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ubicaciodeinventario.entidadesdenegocio.Estante"%>
<%@page import="ubicaciodeinventario.acecoadatos.EstanteDAL"%>
<%@page import="java.util.ArrayList"%>
<% ArrayList<Estante> estantes = EstanteDAL.obtenerTodos();
    int id = Integer.parseInt(request.getParameter("id"));
%>
<select id="slEstante" name="idEstante">
    <option <%=(id == 0) ? "selected" : ""%>  value="0">SELECCIONAR</option>
    <% for (Estante estante : estantes) {%>
    <option <%=(id == estante.getId()) ? "selected" : ""%>  value="<%=estante.getId()%>"><%= estante.getNombre()%></option>
    <%}%>
</select>
<label for="idEstante">Estante</label>}