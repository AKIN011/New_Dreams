<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Historial de Pagos</title>
    <style></style>
</head>
<body>
    <h2>Historial de Pagos</h2>
    <!--Container Main start-->
        <div class="container mt-5">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <table id="Table" class="table display">
                        <thead>
                            <tr>
                                <th scope="col">Referente</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellido</th>
                                <th scope="col">Fecha</th>
                                <th scope="col">Valor</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="Eventos" items="${evento}">
                                <tr>
                                    <td>${Eventos[0]}</td>
                                    <td>${Eventos[1]} ${Eventos[2]}</td>
                                    <td>${Eventos[3]}</td>
                                    <td>${Eventos[4]}</td>
                                    <td><a href="EventoServlet?menu=detalleEvento&idEvento=${Eventos[0]}"><button>detalle</button></a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
</body>
</html>
