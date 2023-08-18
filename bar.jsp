<%@ page contentType="text/html;charset=utf-8" language="java" import="java.sql.DriverManager" 
    import="java.sql.Connection"%>
<%!

String driver = "org.postgresql.Driver"; //controlador o driver de posgresql
String url = "jdbc:postgresql://localhost:5432/Escuela"; //ruta de conexion del super usuario de postgresql
String user = "postgres";
String password = "12345"; //contraseña del super usuario de postgresql
Connection conexion;

%>
<%
   out.print("<center><h2>Conexion a BD bar</h2>");

   try{
    Class.forName(driver); //carga el controlador o driver de postgresql
    conexion = DriverManager.getConnection(url,user,password); // se hace conexion enviado a dichos parametros

    out.print("¡conexion Exitosa!");
    conexion.close(); //se cierra la conexion

   }catch(Exception e){
         out.print("Ocurrio el siguiente error "+e);
   }
    out.print("<br><a href='index.jsp'>Regresar</a></center>");

%>