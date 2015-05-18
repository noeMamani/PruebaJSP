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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>UPeU</title>        
    </head>
    <body>
    <%
        String opc=request.getParameter("opc")==null ? "":request.getParameter("opc");
        
        PersonaDAO dao=new PersonaDAO();
        
        ArrayList<Personas> data=null;
       
        int i=0;
        if(opc.equals("B")){
            String dato=request.getParameter("dato1");
            data=(ArrayList<Personas> )dao.buscarPersona(dato);
            
            
        }else{
            data=(ArrayList<Personas> )dao.reportarPersonasDos();
        }               
    %>
    <center>
        <div>
            <form name="formBuscar" action="main.jsp" method="POST" >
                Nombre: 
                <input type="text" name="dato1" value="" size="50" />
                <input type="hidden" name="opc" value="B" />
                <input type="submit" value="Buscar" name="btnBuscar" />
            </form>
        </div>
        
        <table border="1"> 
            <thead style="background-color: aquamarine">
                <tr> <td colspan="7" align="center">Reporte de Personas</td> </tr>    
            <tr>                
                <th>#</th>
                <th>Nombre</th>
                <th>A. Paterno </th>
                <th>A. Materno </th>
                <th>F. Nacimiento </th>
                <th>Usuario</th>
                <th>Opciones</th>
            </tr>
            </thead>
            <tbody>
        <%
            /*
            comentario            
            */                        

            try{
            if(data.size()==0){
            %>
            <tr><td colspan="7"> No existe Registro </td> </tr>
            <%
            }else{
            for(Personas to:data){                           
                %>                
                <tr>
                    <td><%=++i %>  </td>    
                    <td> <%=to.getNombre() %> </td>                       
                    <td> <%=to.getApellido_pat() %> </td>
                    <td> <%=to.getApellido_mat() %> </td>
                    <td> <%=to.getFecha_nacimiento() %> </td>
                    <td> <%=to.getUsuario() %> </td>
                    <td> 
                        <a href="control.jsp?idpersona=<%=to.getId_persona() %>&dato='Holas'&opc=E ">Eliminar</a>
                        <a href="FormUPerona.jsp?idpersona=<%=to.getId_persona() %>&dato='Holas'&opc=M">Modificar</a>
                    </td>
                </tr>                                
            <%
            }}
            }catch(Exception e){ out.print(e.getMessage());}                        
        %>
            </tbody>
        </table>    
            
        </center>
    </body>
   

    
</html>
