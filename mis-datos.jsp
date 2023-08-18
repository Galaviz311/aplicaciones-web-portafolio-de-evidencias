<%@ page contentType="text/HTML; charset=utf-8" language="java"%>
<%! 
 String nm = "Juan Luis Ortiz Galaviz";
 String lv = "Vivo en Tuxpan Nayarit";
 int ed = 22;
 double est = 1.74;
 String uni = "Universidad Tcenologica De La costa";
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Materia Aplicaciones Web</title>
</head>
<body>
    <center>
        <h1 style="color:green;">Mis Datos</h1>
        <h4 style="color:green;">Me llamo</h4>
         <h5 style="color:brown;"><%=nm%></h5>
         <h4 style="color:green;">Estudio en</h4>
        <h5 style="color:brown;"><%=uni%></h5>
        <h4 style="color:green;">Vivo en</h4>
        <h5 style="color:brown;"><%=lv%></h5>
        <h4 style="color:green;">Mi edad es</h4>
        <h5 style="color:brown;"><%=ed%></h5>
        <h4 style="color:green;">Mi Estatura es:</h4>
        <h5 style="color:brown;"><%=est%></h5>
    </center>

</body>
</html>