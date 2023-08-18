<%@ page contentType="text/HTML; charset=utf-8" language="java"%>
<%! String dia;//declararcion de variable// %>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Uso de String en JSP</title>
</head>
<body>
<%
String mes = "junio";//declrando variable y dandole valor//
String anio;//declararndo variable//
dia= "lunes 26";//asignando valor a un variable declarada arriba//
anio = "2023";
%>
<center>
  <h2 style="color:green;">Hoy es <%=dia%> de <%=mes%> del año <%=anio%></h2>
  <a href="index.jsp">Regresar</a>
</center>
</body>
</html>
