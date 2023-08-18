<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.DriverManager, java.sql.Connection, java.sql.Statement"%>

<%@ include file = "../bdconexion/parametros.jsp"%>

<%!
Connection connect;
Statement crearbd;
String sql = "create database hotel";
%>

<center>
    <h2 style="color:blue;">creacion de bd hotel</h2>
    <%
    try{
    Class.forName(driver);
  connect = DriverManager.getConnection(url, user, password);
  crearbd = connect.createStatement(); //la sentencia va hacer implemetada por el super usuario SQL
  crearbd.execute(sql); //se ejecuta la sentencia  sql


%>
<h3 style="color: green;">creacionexitosa de la bd hotel</h3>
<%
}catch(Exception x){
    %>
    <h3 style="color: green;"><%=x.getMessage()%></h3>
    <%
}finally{
    crearbd.close();//cerrar la sentencia
    connect.close();//crear la conexion
}

%>
</center>