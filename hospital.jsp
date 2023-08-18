<%@ page contentType="text/html; charset=utf-8" language="java"
import="java.sql.DriverManager, java.sql.Connection"%>
<%!
   String driver = "org.postgresql.Driver";   
   String url = "jdbc:postgresql://localhost:5432/hospital";  
   String user = "postgres";  
   String password = "12345"; 
   Connection connect;
%>
<center>
   <h2>Conexión a BD hospital</h2>
<%
   try{
      Class.forName(driver);
      connect =DriverManager.getConnection(url, user, password);
%>
<h3>Éxito en la conexión</h3>
<%
   connect.close();
   }catch(Exception e){
%>
<h3>¡Ups! ocurrio un error: <%=e%></h3>
<%
   }
%>
<a href="index.jsp">Regresar</a>
</center>
