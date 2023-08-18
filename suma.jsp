<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%! 
   int x, y, z, suma;
%>
<%
	x = 30;
	y = 23;
	z = 3 ;
	suma = x + y + z;

%>
<center>
	<h1 style="color:blue;">suma de int</h1>
	<h3 style="color:green;">La suma de x=<%=x%> + y=<%=y%> +z=<%=z%> = <%=suma%></h3>
	<a href="index.jsp">Regresar</a>
</center>