<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                        <tbody>
                            <c:forEach var="Pago" items="${Pagos}">
                                <tr>
                                    <td>${Pago[1]}</td>
                                    <td>${Pago[2]}</td>
                                    <td>${Pago[3]}</td>
                                    <td>${Pago[4]}</td>
                                    <td>${Pago[5]}</td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                </div>
                <div class="form-group col-lg-6 col-md-6">
                    <a href="PagoServlet?menu=listaPagos&idEvento=${Detalle[4]}&idCliente=${Detalle[11]}"><button type="button" class="btn btn-primary btn-block">Registrar comprobante</button></a>
                </div>
                <div class="form-group col-lg-6 col-md-6">
                    <a href="PrincipalServlet?menu=Eventos&accion=listar"><button type="button" class="btn btn-primary btn-block">Atras</button></a>
                </div>
            </div>
        </div>
    </body>
</html>
