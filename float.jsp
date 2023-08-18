<%@ page contentType="text/HTML; charset=utf-8" language="java"%>
<%! 
 float dolar;
 float euro;
 float libra;
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Uso de float en jsp</title>
</head>
<body>
	<%

	dolar = 17.07f ;
	euro  = 18.73f;
	libra = 21.78f;

    %>
    <center>
    	<h2 style="color:red"> hpy 27 de junio del año 2023 el tipo e cambio de dibisa esta a:</h2>
    	<h4 style="color:purple;"><%=dolar%> pesos mexicanos el dolar</h4>
    	<h4 style="color:purple;"><%=euro%> pesos mexicanos del euro</h4>
    	<h4 style="color:pink;"> <%=libra%> pesos mexicanos la libra esterlina</h4>

    	<a href="index.jsp">Regresar</a><br>
        </center>

</body>
</html>