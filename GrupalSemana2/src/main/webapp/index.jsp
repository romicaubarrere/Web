<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ingreso de Persona</title>
    <style>
        .error-message {
            color: red;
        }
    </style>
</head>
<body>
    <h1>Ingreso de Persona</h1>
    <!-- mje de error -->
    <% 
    String errorMessage = (String) request.getAttribute("mensajeError");
    if (errorMessage != null && !errorMessage.trim().isEmpty()) {
        out.print("<div class='error-message'>" + errorMessage + "</div>");
    }
    %>
    <!-- formulario -->
    <form action="validar" method="post">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre"><br/>

        <label for="edad">Edad:</label>
        <input type="number" id="edad" name="edad" ><br/>

        <label for="direccion">Dirección:</label>
        <input type="text" id="direccion" name="direccion" ><br/>

        <label for="telefono">Teléfono:</label>
        <input type="tel" id="telefono" name="telefono" ><br/>

        <input type="submit" value="Enviar">
    </form>
</body>
</html>
