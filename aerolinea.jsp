<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.DriverManager, java.sql.Connection, java.sql.Statement"%>
<%@ include file = "../bdconexion/parametros.jsp"%>
<%!
Connection con_postgres, con_aerolinea;
String sql_bd = "create database aerolinea";

String sql_tabla_cliente = "create table cliente (id serial primary key, nombre character varying  (30) not null, edad integer not null, domicilio character varying(100) not null, telefono Character varying (10) not null)";
String sql_tabla_vuelo =  "create table vuelo (numero_vuelo integer primary key, origen character varying  (20) not null, destino character varying (20)  not null, hora_salida time with  time zone not null, avion Character varying (10) not null)";

 String url2 ="jdbc:postgresql://localhost:1025/aerolinea";
Statement crear_bd, crear_tablas;
%>

<center>
    <h2 style="color:blue;">creacion de bd aerolinea y tablas cliente y vuelo</h2>
    <%
    try{
    Class.forName(driver);
    con_postgres = DriverManager.getConnection(url, user, password);
  crear_bd = con_postgres.createStatement(); 
  crear_bd.execute(sql_bd); 
  con_aerolinea = DriverManager.getConnection(url2, user, password);
  crear_tablas = con_aerolinea.createStatement();
  crear_tablas.execute(sql_tabla_cliente);
   crear_tablas.execute(sql_tabla_vuelo);
%>
<h3 style="color: green;">se crearon las tablas bd y sus tablas </h3>
<%
}catch(Exception e){
    %>
    <h3 style="color: green;"><%=e.getMessage()%></h3>
    <%
}finally{
    crear_bd.close();
    con_postgres.close();
    crear_tablas.close();
    con_aerolinea.close();
}

%>
<a href="index.jsp">Regresar</a>
</center>