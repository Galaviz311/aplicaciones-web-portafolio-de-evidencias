 <%@ page contentType="text/HTML; charset=utf-8" language="java"%>
 <%! 
    String name;
 %>
 <% 
     name = request.getParameter("nom");
 %>

<script defer src="http://app.embed.im/snow.js"></script>
<style>
	body {
		background-color: black;
	}


</style>


 <center>

 	<h2 style="color:#E1197D">Tu nombre es:</h2>
 	<h3 style="color:#BF3D06"><%=name%></h3>
 	<a href="nombre-pedir.jsp"></a>
 </center>












