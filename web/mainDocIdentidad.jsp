<%-- 
    Document   : index
    Created on : 10/04/2015, 12:23:37 AM
    Author     : Intel
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="pe.edu.upeu.to.DocIdentidad"%>
<%@page import="pe.edu.upeu.dao.IdentidadDao"%>
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
        
       IdentidadDao dao=new IdentidadDao();
        
        ArrayList<DocIdentidad> data=null;
       
        int i=0;
        if(opc.equals("B")){
            String dato=request.getParameter("dato1");
           //data=(ArrayList<DocIdentidad> )dao.buscarIdentidadId(dato);
            
            
        }else{
            data=(ArrayList<DocIdentidad> )dao.reportarIdentidad();
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
                <tr> <td colspan="7" align="center">Reporte de Identidad</td> </tr>    
            <tr>                
                <th>#</th>
                <th>Nombre</th>
                <th>estado </th>
               
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
            for(DocIdentidad to:data){                           
                %>                
                <tr>
                    <td><%=++i %>  </td>    
                    <td> <%=to.getNombre() %> </td>                       
                    <td> <%=to.getEstado()%> </td>
                    
                    <td> 
                        <a href="controlIdentidad.jsp?ididentidad=<%=to.getId_doc_identidad()%>&dato='Holas'&opc=E">Eliminar</a>
                        <a href="controlIdentidad.jsp?ididentidad=<%=to.getId_doc_identidad()%>&dato='Holas'&opc=B">Modificar</a>
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
