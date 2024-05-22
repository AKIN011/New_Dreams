<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body id="body-pd">
        <!--Container Main start-->
        <div class="block-heading">
            <h2>Pagos</h2>
        </div><br>
        <div class="container mt-5">
            <div class="row">
                <div class="col-lg-10 col-md-10">
                    <table id="Table" class="table display">
                        <thead>
                            <tr>
                                <th scope="col">Numero de pago</th>
                                <th scope="col">Nombres cliente</th>
                                <th scope="col">Apellidos cliente</th>
                                <th scope="col">Fecha</th>
                                <th scope="col">Valor</th>

                            </tr>
                        </thead>
                        <%--<tbody>
                        <c:forEach var="Eventos" items="${evento}">
                            <tr>
                                <td>${Eventos[0]}</td>
                                <td>${Eventos[1]} ${Eventos[2]}</td>
                                <td>${Eventos[3]}</td>
                                <td>${Eventos[4]}</td>
                                <td><a href="EventoServlet?menu=detalleEvento&idEvento=${Eventos[0]}"><button>detalle</button></a></td>
                            </tr>
                        </c:forEach>
</tbody>--%>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
