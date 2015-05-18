<%-- 
    Document   : FormPersona
    Created on : 28-abr-2015, 12:30:27
    Author     : SistemasUpeu
--%>

<%@page import="pe.edu.upeu.to.Personas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <% 
        Personas dato=null;    
        %>
        
        
        <div id="divFAdd">
            <form  action="control.jsp" id="formPersona" method="post" >
                <table>
                <tr> <td colspan="2"> Formulario de Registro Persona </td>  </tr>
                <tr>
                    <td>Nombre:  </td>
                    <td><input type="text" id="nombre" name="nombre" class="txtRegular" required="true" value="<%=dato.getNombre() %>" >  </td>                        
                </tr> 

                <tr>
                    <td>A. Paterno:  </td>
                    <td><input type="text" id="apellpaterno" name="apellpaterno" required="true" value="<%=dato.getNombre() %>"></td>                        
                </tr>
                <tr>
                    <td>A. Materno:  </td>
                    <td><input type="text" id="apellmaterno" name="apellmaterno" required="true" value="<%=dato.getNombre() %>"></td>                        
                </tr>
                <tr>
                    <td>F.Nacimiento:  </td>
                    <td><input type="date" id="fnacimiento" name="fnacimiento" value="<%=dato.getNombre() %>"></td>                        
                </tr>
                <tr>
                    <td>Genero:  </td>
                    <td> 
                        <select id="genero" name="genero">
                            <option value="M">Masculino</option>
                            <option value="F">Femenino</option>
                        </select> 
                    </td>                        
                </tr>
                <tr>
                    <td>Correo Elec.:  </td>
                    <td><input type="email" id="correo" name="correo" required="true" value="<%=dato.getNombre() %>" ></td>                        
                </tr>                    
                <tr>
                    <td colspan="2">Estado: 
                        Activo<input type="radio" name="estado" value="1" checked="true">
                        Desactivo<input type="radio" value="0" name="estado">                    
                    </td>                    
                </tr> 
                <tr>
                    <td>Usuario:  </td>
                    <td><input type="text" id="usuario" name="usuario" required="true" ></td>                        
                </tr>                    
                <tr>
                    <td>Clave:  </td>
                    <td><input type="password" id="clave" name="clave" required="true" ></td>                        
                </tr>                    
                <tr>
                    <td colspan="2"> 
                        <input type="hidden" name="opc" value="C" />
                        <input type="submit" id="btnCrear" value="Crear">
                        <input type="reset" id="btnBorrar" value="Limpiar">
                        <input type="button" id="btnCancelar" value="Cancelar">
                    </td>
                  </tr>
                
                     
              </table>                
          </form>            
        </div>
      </center>
   </body>
</html>
