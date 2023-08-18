<%@ page contentType="text/HTML; charset=utf-8" language="java"%>
<%! 
    int promedio = 95;
    String uni = "Ut de la costa";
%>
<center>
	<h1 style="color:#475841">Uso de IF en JSP</h1>
<%
if (promedio > 90){
	
%>
<h3 style="color:#904EAC">Tienes derecho a beca</h3>

<%
   }
   else{
 %>

 <h3 style="color:#904EAC">No tienes derecho a beca</h3>

<%
   }
   if (uni.equals("Ut de la costa")){
%>

<h3 style="color:#3D2C6D">Tu estidas en la utc</h3>

<%

   }
   else{
%>
<h3 style="color:#3D2C6D">Tu estudias en otra universodad</h3>
<%
   }
%>

  <a href="index.jsp">Regresar</a>
</center>