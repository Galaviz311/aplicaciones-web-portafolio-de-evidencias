 <%@ page contentType="text/HTML; charset=utf-8" language="java"%>
<%!
	int anio =2023;
	int precio;

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Uso de int en jsp</title>
</head>
<body>
	<%

	int cantidad;
	cantidad =3;
	precio = 500;
    %>
    <center>
    	<h3 style="color:brown;"> Hoy es el dia 28 de junio de <%=anio%></h3>
    	<h2 style="color:navy;"> compre <%=cantidad%> computadoras a $<%=precio%> pesos mexicanos cada una</h2>
    	<a href="index.jsp">Regresar</a><br>
        </center>

</body>s
</html>