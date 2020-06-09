<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Inicio</title>
    <style>
        .container {
            margin-top: 2cm;
        }
        
        #interno {
            background-color: #f2f2f2;
            width: 80%;
            height: 20cm;
            margin: auto;
            border-radius: 10px 10px 10px 10px;
            box-shadow: 10px 10px 10px 0px rgba(0, 0, 0, 0.6);
        }
        
        .container #interno #titulo h1 {
            padding-top: 1cm;
            text-align: center;
            padding-bottom: 1cm;
        }
        
        .container #interno #boton a {
            display: block;
            justify-content: center;
            margin-bottom: 1cm;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <div id="interno">
            <div id="titulo">
                <h1>Productos</h1>
            </div>
            <div id="boton">
                <a href="Controlador?accion=new" class="btn btn-primary">
                    Agregar Nuevo Producto
                </a>
            </div>
            <div id="tabla">
                <table class="table">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Descripcon</th>
                            <th scope="col">Stock</th>
                            <th scope="col">Acciones</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="pr" items="${productos}">
                            <tr>
                                <th scope="row">${pr.getId()}</th>
                                <td>${pr.getDesc()}</td>
                                <td>${pr.getStock()}</td>
                                <td>
                                    <a href="Controlador?accion=edit&id=${pr.getId()}">Editar</a>
                                </td>
                                <td>
                                    <a href="Controlador?accion=delet&id=${pr.getId()}" onclick="return(confirm('Esta seguro de eliminar ?'))">Eliminar</a>
                                </td>

                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="container">

        <div>
            <div>


                <div>

                </div>


            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>

</html>