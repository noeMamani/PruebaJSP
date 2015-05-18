<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
body {

    background:url("Recursos/img/fondo.jpg") repeat-x;
    background-size: 100% 250%;
    padding: 2px;
    border-spacing: 4px;
    font-family: Verdana, Geneva, sans-serif ;
    text-align: center;
    color: blanchedalmond;
    appearance: icon;
    animation: linear;
    top: auto;
}
    
    p{
      font-family: Verdana, Geneva, sans-serif ;
      color: moccasin;
      font-weight: bold;
      font-size: x-large;
    }
 
    
    #nombre{
       
        background:url("Recursos/img/modificar.png") no-repeat;
        background-color: khaki;
        padding-left: 2em;
        color: blue;
        
    }
    d{
        
       padding-left: 8em; 
        
    }

#divFAdd {
/*     background:url("../img/fondo.jpg") repeat-x; */
    padding: 2px;        
    font-family: Verdana, Geneva, sans-serif;
    text-align: center;
}

.txtRegular { 
  background: url(Recursos/img/text.png) no-repeat;
  padding-left: 25px;
  background-color: white;
}

        </style>
    </head>
    <body>
    <center>
        <div>
            <form  action="controlIdentidad.jsp" id="formPersona" method="post" >
                <table>
                    
                    <tr> <td colspan="2">  <p> <marquee> Formulario de Registro Identidad </marquee> </p>  </td>  </tr>

                <tr>
                    <td>Nombre:  </td>
                    <td><input type="text" id="nombre" name="nombre" required="true" >  </td>                        
                </tr> 

               
                                  
                <tr>
                    <td colspan="2">Estado: 
                <d>     Activo<input type="radio" name="estado" value="1" checked="true">
                        Desactivo<input type="radio" value="0" name="estado"> </d>                   
                    </td>                    
                </tr> 
              
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
