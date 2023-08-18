<%@ page contentType="text/HTML; charset=utf-8" language="java"%>
<%! 
 String nm = "Aplicaciones Web";
 String p = "Dr. Leonardo Hernandez Peña";
 int u = 3;
 double c = 9.56;
 String d = "Direccion Tecnologias De La informacion";
 float pr = (float) 9.9;
 String uni = "Universidad Tcenologica De La costa";
 String ca = "Tsu En TI Desarrollo de software multiplataforma";
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Materia Aplicaciones Web</title>
</head>
<body>
    <center>
        <h1 style="color:red;">Materia mayo agosto 2023</h1>
        <img src="img/materia.png" width="35%" height="35%">
        <h2 style="color:navy;"><%=uni%></h2>
        <h2 style="color:navy;"></h2>
        <h2 style="color:navy;"><%=d%></h2>
        <h2 style="color:navy;"><%=ca%></h2>
        <h2 style="color:navy;"><%=nm%></h2>
        <h2 style="color:navy;"><%=p%></h2>
        <h2 style="color:navy;"><%=u%></h2>
        <h2 style="color:navy;"><%=c%></h2>
        <h2 style="color:navy;"><%=pr%></h2>
        <a href="index.jsp">Regresar</a>

    </center>

</body>
</html>