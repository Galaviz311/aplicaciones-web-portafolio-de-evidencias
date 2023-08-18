<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.DriverManager, java.sql.Connection, java.sql.Statement"%>
<%@ include file = "../bdconexion/parametros.jsp"%>
<%!
Connection con_postgres, con_veterinaria;
String sql_bd = "create database veterinaria";

String sql_tabla_cliente = "create table cliente (id serial primary key, nombre character varying  (30) not null, edad integer not null, domicilio character varying(100) not null, telefono Character varying (10) not null)";
String sql_tabla_raza =  "create table raza (numero_raza integer primary key, nombre_perro character varying  (20) not null)";

String sql_tabla_sintomas =  "create table sintomas (numero_sintomas integer primary key, descripcion_sintomas character varying  (50) not null)";

 String url2 ="jdbc:postgresql://localhost:1025/veterinaria";
Statement crear_bd, crear_tablas;
%>

<center>
	<h2 style="color:blue;">creacion de bd veterinaria  y tres tablas </h2>
	<%
	try{
	Class.forName(driver);
    con_postgres = DriverManager.getConnection(url, user, password);
  crear_bd = con_postgres.createStatement(); 
  crear_bd.execute(sql_bd); 
  con_veterinaria = DriverManager.getConnection(url2, user, password);
  crear_tablas = con_veterinaria.createStatement();
  crear_tablas.execute(sql_tabla_cliente);
   crear_tablas.execute(sql_tabla_raza);
    crear_tablas.execute(sql_tabla_sintomas);

%>
<h3 style="color: green;">se creo bd y sus tres tablas </h3>
<%
}catch(Exception e){
	%>
	<h3 style="color: green;"><%=e.getMessage()%></h3>
	<%
}finally{
	crear_bd.close();
	con_postgres.close();
	crear_tablas.close();
	con_veterinaria.close();
}

%>
<a href="index.jsp">Regresar</a>
</center>