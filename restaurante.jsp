<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.DriverManager, java.sql.Connection, java.sql.Statement"%>
<%@ include file = "../bdconexion/parametros.jsp"%>
<%!
Connection con_postgres, con_restaurante;
String sql_bd = "create database restaurante";

String sql_tabla_cliente = "create table cliente (id serial primary key, nombre character varying  (30) not null, edad integer not null, domicilio character varying(100) not null, telefono Character varying (10) not null)";
String sql_tabla_platillo =  "create table platillo (numero_platillo integer primary key, nombre_platillo character varying  (20) not null)";

String sql_tabla_mesero =  "create table mesero (numero_mesero integer primary key, nombre character varying  (50) not null)";

String sql_tabla_cuenta =  "create table cuenta (numero_cuenya integer primary key, cuenta float not null)";


 String url2 ="jdbc:postgresql://localhost:1025/restaurante";
Statement crear_bd, crear_tablas;
%>

<center>
	<h2 style="color:blue;">creacion de bd restaurante  y cuatro tablas </h2>
	<%
	try{
	Class.forName(driver);
    con_postgres = DriverManager.getConnection(url, user, password);
  crear_bd = con_postgres.createStatement(); 
  crear_bd.execute(sql_bd); 
  con_restaurante = DriverManager.getConnection(url2, user, password);
  crear_tablas = con_restaurante.createStatement();
  crear_tablas.execute(sql_tabla_cliente);
   crear_tablas.execute(sql_tabla_platillo);
    crear_tablas.execute(sql_tabla_mesero);
     crear_tablas.execute(sql_tabla_cuenta);

%>
<h3 style="color: green;">se creo bd y sus cuatro tablas </h3>
<%
}catch(Exception e){
	%>
	<h3 style="color: green;"><%=e.getMessage()%></h3>
	<%
}finally{
	crear_bd.close();
	con_postgres.close();
	crear_tablas.close();
	con_restaurante.close();
}

%>
<a href="index.jsp">Regresar</a>
</center>