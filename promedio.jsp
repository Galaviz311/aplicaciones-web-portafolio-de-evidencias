<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%!
String apw="Aplicaciones web";
String bdap="Base de datos";
String cdf="Calculo diferencial";
String fsc="Formacion sociocultural";
String hex="Taller de futbol";
String eng="Ingles";
String inte="Integradora";
String pye="Probabilidad y estadistica";
String sos="Sistemas operativos";
String tdv="Taller de video";

float aw = 10f;
float bda = 10f;
float cd = 10f;
float fs = 9f;
float he = 10f;
float en = 9f;
float in = 10f;
float pe = 10f;
float so = 10f;
float tv = 10f;

float promedio=(aw+bda+cd+fs+he+en+in+pe+so+tv)/10f;
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
	<style type="text/css">
		table,td{
			font-size: 30px;
			border:2px solid black;
		}
		div{
			position: absolute;
			transform: translate(-50%, -50%);
			top: 50%;
			left: 50%;
		}
		.promedio{
			color: red;
			font-weight: bold;
			font-size: 35px;
		}
	</style>
	<center>
		<div>
		<table>
			<tr>
				<td>Materia</td>
				<td>Calificacion</td>
			</tr>
			<tr>
				<td><%=apw%></td>
				<td><%=aw%></td>
			</tr>
			<tr>
				<td><%=bdap%></td>
				<td><%=bda%></td>
			</tr>
			<tr>
				<td><%=cdf%></td>
				<td><%=cd%></td>
			</tr>
			<tr>
				<td><%=fsc%></td>
				<td><%=fs%></td>
			</tr>
			<tr>
				<td><%=hex%></td>
				<td><%=he%></td>
			</tr>
			<tr>
				<td><%=eng%></td>
				<td><%=en%></td>
			</tr>
			<tr>
				<td><%=inte%></td>
				<td><%=in%></td>
			</tr>
			<tr>
				<td><%=pye%></td>
				<td><%=pe%></td>
			</tr>
			<tr>
				<td><%=sos%></td>
				<td><%=so%></td>
			</tr>
			<tr>
				<td><%=tdv%></td>
				<td><%=tv%></td>
			</tr>
			<tr>
				<td></td>
				<td class="promedio">Promedio</td>
				<td class="promedio"><%=promedio%></td>
			</tr>
		</table>
		</div>
	</center>
</body>
</html>