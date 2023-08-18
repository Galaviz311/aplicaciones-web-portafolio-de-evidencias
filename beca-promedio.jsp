<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%!
   
    float aw, bd, cd, fsc, ext, i, pe, so, tv, ig, prom;
 

%>
<%
   aw = 80f;
   bd = 90f;
   cd = 90f;
   fsc = 90f;
   ext = 100f;
   i = 90f;
   pe = 80f;
   so = 100f;
  
   prom = (aw + bd + cd + fsc + ext + i + pe + so )/8;
%>
<center>
	<h1 style="color:#475841">Beca promedio</h1>

	<% 
	   if (prom >79 & prom <86){

	%>

    <h3 style="color:#904EAC">Tienes derecho a beca de $300</h3>

    <%
        }
      %>
   <% 
      if (prom >85.99 & prom <91){

   %>

    <h3 style="color:#904EAC">Tienes derecho a beca de $500</h3>

    <%
        }
      %>
<% 
      if (prom >90 & prom <96){

   %>

    <h3 style="color:#904EAC">Tienes derecho a beca de $700</h3>

    <%
        }
      %>
      <% 
      if (prom >95 & prom <101){

   %>

    <h3 style="color:#904EAC">Tienes derecho a beca de $1000</h3>

    <%
        }
      %>
</center>