<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.DriverManager, java.sql.Connection, java.sql.Statement"%>

<%@ include file = "../bdconexion/parametros.jsp"%>

<%!
String  eliminar_bd = "drop database estadia";
Connection postgres = null;
Statement borrar;
%>

<center>  
<h2 style="color: purple;"> Eliminación de la base de datos estadia</h2>

<%
try{
  Class.forName(driver);
  postgres = DriverManager.getConnection(url, user, password);
  borrar = postgres.createStatement();
   borrar.execute(eliminar_bd); 

%>
<h3 style="color: green;">se elimino la base de datos estadia</h3>
<%
}catch(Exception e){
%>
 <h3 style="color:red;"><%=e%></h3>
  <%
}finally{
  borrar.close();
  postgres.close();

}

%>

  <a href="index.jsp">Regresar</a>

</center>