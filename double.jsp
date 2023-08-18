<%@ page contentType ="text/HTML; charset=utf-8"
	language="java"%>
	<%!
	double m1;
	double m2;
	double m3;
	double m4;
%>

	<!DOCTYPE html>
	<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Usi de double en jsp</title>
	</head>
	<body>
		<%!
	     	m1 = 0.15;
	     	m2 = 0.25;
	     	m3 = 0.35;
	     	m4 = 0,99;
	     %>
	     <center>
	     	<h4 style="color:blue;">Conversion de centimetros a metros</h4>
	     	<h3 style="color:green;">15 Centimetros =<%=m1%></h3>
	     	<h3 style="color:green;">25 Centimetros =<%=m2%></h3>
	     	<h3 style="color:green;">35 Centimetros =<%=m3%></h3>
	     	<h3 style="color:green;">99 Centimetros =<%=m4%></h3>
	</body>
	</html>