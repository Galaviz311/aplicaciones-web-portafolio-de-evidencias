<%@ page contentType="text/html; charset=utf-8"
language="java"%>
<script defer src="http://app.embed.im/snow.js"></script>
<style>
	body {
		background-color: black;
	}


</style>
<center>
	<h4 style="color:#7642BB">Uso del metodo GET</h4>
	<form action="nombre-leer.jsp" method="get">
		<table>
			<tr>
				<td>Nombre:</td>
				<td><input type="text" name="nom" required="true" maxlength="20" pattern="[a-zA-Z/s] {1,50}" placeholder="No numeros"></td>
			</tr>
			<tr>
				<td><center><input type="submit" name="Enviar"></center>
				</td>
				<td><center><input type="reset" name="Borrar"></center>
				</td>
				</tr>
		</table>
	</form>
	<a href="index.jsp">Regresar</a>
	</center> 	
					








</center>