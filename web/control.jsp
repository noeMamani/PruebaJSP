<%@page import="pe.edu.upeu.to.Personas"%>
<%@page import="pe.edu.upeu.dao.PersonaDAO"%>
<%
String opc=request.getParameter("opc");    
PersonaDAO dao=new PersonaDAO();
Personas to=new Personas();

if(opc.equals("C")){
out.println("Recibe Parametros");
String nombre=request.getParameter("nombre");
String apaterno=request.getParameter("apellpaterno");
String amaterno=request.getParameter("apellmaterno");
String fnacimiento=request.getParameter("fnacimiento");
String genero=request.getParameter("genero");
String correo=request.getParameter("correo");
String estado=request.getParameter("estado");
String usuario=request.getParameter("usuario");
String clave=request.getParameter("clave");

to.setNombre(nombre);
to.setId_docidentidad(1);
to.setApellido_pat(apaterno);
to.setApellido_mat(amaterno);
to.setFecha_nacimiento(fnacimiento);
to.setGenero(genero);
to.setCorreo(correo);
to.setUsuario(usuario);
to.setClave(clave);
dao.crearPersona(to);
out.println(nombre+"<br>"+apaterno+"<br>"+amaterno
+"<br>"+fnacimiento+"<br>"+genero+"<br>"+estado
+"<br>"+correo+"<br>"+usuario+"<br>"+clave);
%>
<jsp:forward page="main.jsp" ></jsp:forward>
    
<% }else if(opc.equals("E")){ %>

<%
dao=new PersonaDAO();
int idpersona=Integer.parseInt(request.getParameter("idpersona"));
if(dao.eliminarPersona(idpersona)){
%>
<jsp:forward page="main.jsp" ></jsp:forward>
    
<% }else{ out.print("Error en eliminar registro");
 }  

}   %>