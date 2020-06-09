<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <style>
        .container {
            margin-top: 2.5cm;
        }
        
        #contenido {
            width: 40%;
            height: 10cm;
            background-color: #f2f2f2;
            margin: auto;
            border-radius: 10px 10px 10px 10px;
            box-shadow: 10px 10px 10px 0px rgba(0, 0, 0, 0.4);
        }
        
        #contenido h1 {
            text-align: center;
            padding-top: 1cm;
            margin-bottom: 2cm;
        }
        
        #table {
            margin: auto;
        }
        
        #submit {
            display: block;
            margin: auto;
            margin-top: 1cm;
        }
    </style>
    <title>Inicio</title>
</head>

<body>
    <div class="container">
        <div id=contenido>
            <h1>Editar Producto</h1>
            <div id="formLogin"></div>
            <form action="Controlador" method="POST">
                <table id="table">
                    <tr>
                        <td><label for="exampleInputEmail1">Descripcion</label></td>
                        <td><input class="form-control" type="text" name="desc" value="${producto.getDesc()}"></td>
                    </tr>
                    <tr>
                        <td><label for="">Stock</label></td>
                        <td><input class="form-control" type="number" name="stock" max="1000" min="1" value="${producto.getStock()}"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input id="submit" class="btn btn-success" type="submit" value="Enviar"></input>
                        </td>
                    </tr>
                    <input type="hidden" name="id" value="${producto.getId()}">
                    <input type="hidden" name="accion" value="update">
                </table>
            </form>
        </div>
    </div>
    </div>

    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>

</html>
