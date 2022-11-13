<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ubicaciodeinventario.appweb.utils.*"%>
<% if (SessionUser.isAuth(request) == false) {
         response.sendRedirect("Usuario?accion=login");
    }
%>
<!DOCTYPE html>
<html>
    <head>        
         <jsp:include page="/Views/Shared/title.jsp" />
        <title>Home</title>

    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />  
        <main class="container"> 
            <div class="row">
                <div class="col l12 s12">
                    <h1>Bienvenidos</h1> 
                    <span>Al sistema para un inventario </span> 
                </div>
                
                 <div>
                    <image src="https://img.freepik.com/vector-gratis/ilustracion-concepto-hoja-calculo_114360-736.jpg?w=740&t=st=1662160948~exp=1662161548~hmac=a483c0b42c380a066329e80d5e0cc7888ab63ff50f0e00bec3195288206b9818" alt="alt"/>
                </div>
            </div>       
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />      
    </body>
</html>