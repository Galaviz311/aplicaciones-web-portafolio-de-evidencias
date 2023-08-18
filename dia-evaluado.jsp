<%@ page contentType="text/html; charset=utf-8"
language="java"%>
  <%!
  int numeroDia;
    switch (nombreDia.toLowerCase()) {
        case "lunes":
            numeroDia = 1;
            break;
        case "martes":
            numeroDia = 2;
            break;
        case "miércoles":
            numeroDia = 3;
            break;
        case "jueves":
            numeroDia = 4;
            break;
        case "viernes":
            numeroDia = 5;
            break;
        case "sábado":
            numeroDia = 6;
            break;
        case "domingo":
            numeroDia = 7;
            break;
        default:
            numeroDia = -1; // Valor predeterminado para un día no válido
            break;
    }
%>