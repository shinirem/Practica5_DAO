<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Inicio</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <style>
        .container {
            margin-top: 2cm;
        }
        
        .interno {
            background-color: #f2f2f2;
            width: 40%;
            height: 10cm;
            margin: auto;
            border-radius: 10px 10px 10px 10px;
            box-shadow: 10px 10px 10px 0px rgba(0, 0, 0, 0.6);
        }
        
        .container .interno #titulo h1 {
            padding-top: 1cm;
            text-align: center;
            padding-bottom: 1cm;
        }
        
        #tabla {
            margin: auto;
        }
        
        #submit {
            display: block;
            margin: auto;
            margin-top: 1cm;
        }
    </style>
</head>

<body>

    <div class="container">
        <div class="interno">
            <div id="titulo">
                <h1>Registrar Nuevo Producto</h1>
            </div>
            <form action="Controlador" method="POST">
                <div>
                    <table id="tabla">
                        <tr>
                            <td>Descripcion</td>
                            <td><input type="text" name="desc" class="form-control" id=""></td>
                        </tr>
                        <tr>
                            <td>Stock</td>
                            <td><input type="number" name="stock" class="form-control" max="1000" min="1"></td>
                        </tr>
                        <input type="hidden" name="accion" value="add">
                        <tr>
                            <td></td>
                            <td><input id="submit" type="submit" class="btn btn-primary" value="Enviar"></input>
                            </td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>

    <!-- JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>

</html>