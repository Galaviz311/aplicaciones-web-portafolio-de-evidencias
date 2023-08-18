<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<script defer src="http://app.embed.im/snow.js"></script>
<style>
    body {
        background-color: black;
    }
 

</style>
   <center>
    <h1>Ingrese un día de la semana</h1>

    <form action="dia-evaluado.jsp" method="post">
        <label for="dia">Día de la semana:</label>
        <input type="text" id="dia" name="dia" required>
        <br><br>
        <input type="submit" value="Enviar">
    </form>
</center>
