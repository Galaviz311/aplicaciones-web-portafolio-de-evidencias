<%@ page contentType="text/html; charset=utf-8" language="java"%>

<%!
	double a, b, c;
	float m, n, l;
%>
<% 
   a = 15.234;
   b = 4.876;
   c = a * b;
   m = 15.234f;
   n = (float)4.876;
   l = m * n;

%>
<center>
	<h2 style="color:red;">Multiplicacion de double y float</h2>
	<h3 style="color:purple;">double: a = <%=a%> * b = <%=b%> = <%=c%></h3>
	<h3 style="color:purple;">float: m = <%=m%> * n <%=n%> = <%=l%></h3>
	<a href="index.jsp">regresar</a>
</center>
