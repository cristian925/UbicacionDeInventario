<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ubicaciodeinventario.appweb.utils.*"%>
<nav>
    <div class="nav-wrapper blue">
        <a href="Home" class="brand-logo">UbicacionDeInventario</a>
        <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>       
        <ul class="right hide-on-med-and-down">  
            <% if (SessionUser.isAuth(request)) {  %>
            <li><a href="Home">Inicio</a></li>
            <li><a href="Usuario">Usuario</a></li>
            <li><a href="Rol">Rol</a></li>
            <li><a href="Sucursal">Sucursal</a></li>
            <li><a href="Bodega">Bodega</a></li>
            <li><a href="Sucursal">Estante</a></li>
             <li><a href="Usuario?accion=cambiarpass">Cambiar password</a></li>
            <li><a href="Usuario?accion=login">Cerrar sesión</a></li>
            
            <%}%>
        </ul>
    </div>
</nav>

<ul class="sidenav" id="mobile-demo">
     <% if (SessionUser.isAuth(request)) {  %>
    <li><a href="Home">Inicio</a></li>
    <li><a href="Usuario">Usuario</a></li>
    <li><a href="Rol">Rol</a></li>
     <li><a href="Sucursal">Sucursal</a></li>
            <li><a href="Bodega">Bodega</a></li>
            <li><a href="Sucursal">Estante</a></li>
             <li><a href="Usuario?accion=cambiarpass">Cambiar password</a></li>
            <li><a href="Usuario?accion=login">Cerrar sesión</a></li>
     <%}%>
</ul>
