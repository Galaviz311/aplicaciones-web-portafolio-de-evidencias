<%@ page contentType="text/HTML; charset=utf-8" language="java"%>
<%!
String nombre ="Galaviz";
int anio = 2023;
float grados = 39.6f;//Hacer parsing colocar la f//
double euro = 18.68;//declarando una variable y se le asigno un valor//
%> 
<!DOCTYPE html>
<html>
<head>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>Declaracion de variable JSP</title>
</head>
<body>
<center>
   <h2 style="color:blue;">Mi nombre es <%=nombre%></h2>
   <h3 style="color:red;">Hoy es lunes 26 de junio de <%=anio%></h3>
   <h3 style="color:green;">La temperatura ambiente es de <%=grados%> °C y el euro se cotiza a <%=euro%> pesos mexicanos</h3>
   <a href="index.jsp">Regresar</a>
</center>
</body>
</html>








   %>