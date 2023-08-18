<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Creación de Base de Datos y Tablas</title>
</head>
<body>

    <h1>Resultado de Creación de Base de Datos y Tablas</h1>
    <% 
        String nombreBD = request.getParameter("nombre_bd");
        String codigoSQL = request.getParameter("codigo_sql");
        String url = "jdbc:postgresql://node148160-portafolio-aplicacionesweb.jelastic.saveincloud.net:5432/"; // Ajustar la URL de conexión según tu configuración
        String usuario = "webadmin"; // Ajustar el nombre de usuario de tu PostgreSQL
        String password = "LLBvcy91541"; // Ajustar la contraseña de tu PostgreSQL

        try {
            // Establecer conexión a PostgreSQL
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(url, usuario, password);

            // Crear la Base de Datos
            String crearBD = "CREATE DATABASE " + nombreBD;
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(crearBD);
            stmt.close();
            conn.close();

            // Establecer conexión a la Base de Datos recién creada
            url += nombreBD;
            conn = DriverManager.getConnection(url, usuario, password);

            // Ejecutar el código SQL para crear las tablas
            Statement createTablesStmt = conn.createStatement();
            String[] sentencias = codigoSQL.split(";");
            for (String sentencia : sentencias) {
                if (sentencia.trim().length() > 0) {
                    createTablesStmt.executeUpdate(sentencia);
                }
            }
            createTablesStmt.close();
            conn.close();
            out.println("<p>La Base de Datos y las tablas han sido creadas correctamente.</p>");

        } catch (Exception e) {
            out.println("<p>Error al crear la Base de Datos o las tablas: " + e.getMessage() + "</p>");
            e.printStackTrace();
        }
    %>
    <p><a href="bdtablas-solicitar.jsp">Volver</a></p>
</body>
</html>