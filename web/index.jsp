<%-- 
    Document   : index
    Created on : 10/04/2015, 12:23:37 AM
    Author     : Intel
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="pe.edu.upeu.to.Personas"%>
<%@page import="pe.edu.upeu.dao.PersonaDAO"%>
<%@page import="pe.edu.upeu.util.DBconn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">        
        <title>UPeU</title>        
    </head>
    <body>
        <div>
            <a href="main.jsp" target="" > Ver reporte Persona</a> <br> 
            <a href="FormPersona.jsp" > Crear Persona</a>  
            <a href="main.jsp" target="" > doc identidad</a> <br> 
            <a href="FormPersona.jsp" > Crear docuemnto identidad</a>  
              <a href="mainDocIdentidad.jsp" > ver identidad</a> 
              <a href="FormUDocIdentidad.jsp" > crear identidad</a>
        </div>
    </body>       
</html>
