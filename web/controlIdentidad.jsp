<%@page import="pe.edu.upeu.to.DocIdentidad"%>
<%@page import="pe.edu.upeu.dao.IdentidadDao"%>
<%
String opc=request.getParameter("opc");    
IdentidadDao dao=new IdentidadDao();
DocIdentidad to=new DocIdentidad();

if(opc.equals("C")){
out.println("Recibe Parametros");
String nombre=request.getParameter("nombre");
String estado=request.getParameter("estado");


to.setNombre(nombre);

to.setEstado(estado);

dao.crearIdentidad(to);
out.println(nombre+"<br>"+estado);
%>
<jsp:forward page="mainDocIdentidad.jsp" ></jsp:forward>
    
<% }else if(opc.equals("E")){ %>

<%
dao=new IdentidadDao();
int ididentidad=Integer.parseInt(request.getParameter("ididentidad"));
System.out.println("esta pasando por aqui");
if(dao.eliminarIdentidad(ididentidad)){
%>
<jsp:forward page="mainDocIdentidad.jsp" ></jsp:forward>
    
<% }else{ out.print("Error en eliminar registro");
 }  

    

}  else if(opc.equals("B")){ %>

<%
dao=new IdentidadDao();
int ididentidad=Integer.parseInt(request.getParameter("ididentidad"));
System.out.println("esta pasando por aqui");
if(dao.buscarIdentidadId(ididentidad)){
%>



<jsp:forward page="ActualizarIdentidad.jsp" ></jsp:forward>
    
<% }else{ out.print("Error en eliminar registro");
 }  

    

}%>

