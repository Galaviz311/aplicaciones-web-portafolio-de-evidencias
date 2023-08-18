<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Solicitud de creacion de Base de Datos y Tablas</title>
</head>
<body>
    <center>
    <h1>Creacion de Base de Datos y Tablas</h1>
    <form action="bdtablas-crear.jsp" method="post">
        <label for="nombre_bd">Nombre de la Base de Datos:</label>
        <input type="text" name="nombre_bd" required><br>
        <br><br>
        <label for="codigo_sql">Codigo SQL para crear tablas:</label>
        <textarea name="codigo_sql" rows="6" cols="50" required></textarea><br>
        <input type="submit" value="Crear Base de Datos y Tablas">
    </form>
    <a href="index.jsp">Regresar</a>
    </center>
</body>
</html>
