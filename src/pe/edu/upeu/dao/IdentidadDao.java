/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upeu.dao;
import java.sql.SQLException;
import java.util.ArrayList;
import pe.edu.upeu.util.DBconn;
import pe.edu.upeu.to.DocIdentidad;
/**
 *
 * @author Noe
 */
public class IdentidadDao extends DBconn {
    
    
    public ArrayList reportarIdentidad(){           
        ArrayList<DocIdentidad> data=new ArrayList();                
        DocIdentidad identidad;                
        try {
            sql="select * from glo_docidentidad ";//escribiendo la consulta 
            conexionDB();//conexion a base de datos
            ps=con.prepareStatement(sql);//preparando la consulta
            rs=ps.executeQuery();//Ejecutando la consulta y almacena los resultados en rs
            while (rs.next()) {               
                identidad=new DocIdentidad();
                identidad.setNombre(rs.getString("nombre"));
                identidad.setEstado(rs.getString("estado"));
                              
                data.add(identidad);                
               // System.out.println("Nombre: "+rs.getString("nombre")+"\t id: "+rs.getInt("id")+"\tCelular: "+rs.getString("celular"));                
            }            
        } catch (Exception e) { System.out.println("Error al Reportar: "+e.getMessage());
        }        
        finally{
        cerrarConexionDB();
        }
       return data;
    }    
    
    public void crearIdentidad(DocIdentidad iden){
        int i=0;
        try {
            sql="insert into glo_docidentidad( "
            + "nombre,estado)"
            + " values( ?, ?);";            
            conexionDB();//conexion a base de datos
            ps=con.prepareStatement(sql);
           
            ps.setString(++i, iden.getNombre());
            ps.setString(++i, iden.getEstado());
            
            ps.executeUpdate();                     
        } catch (Exception e) {
            System.out.println("Error al Insertar:"+e.getMessage());
        }
        finally{cerrarConexionDB();}
    }
 
public ArrayList reportarDocIndentidad(){           
        ArrayList<DocIdentidad> data=new ArrayList();                
        DocIdentidad doci;                
        try {
            sql="SELECT * FROM glo_docidentidad WHERE estado='1' ";//escribiendo la consulta 
            conexionDB();//conexion a base de datos
            ps=con.prepareStatement(sql);//preparando la consulta
            rs=ps.executeQuery();//Ejecutando la consulta y almacena los resultados en rs
            while (rs.next()) {               
                doci=new DocIdentidad();
                doci.setId_doc_identidad(rs.getInt("id_docidentidad"));
                doci.setNombre(rs.getString("nombre"));
                doci.setEstado(rs.getString("estado"));                     
                data.add(doci);         
               // System.out.println("Nombre: "+rs.getString("nombre")+"\t id: "+rs.getInt("id")+"\tCelular: "+rs.getString("celular"));                
            }            
        } catch (SQLException e) { System.out.println("Error al Reportar: "+e.getMessage());
        }        
        finally{
        cerrarConexionDB();
        }
       return data;
    } 

    public boolean eliminarIdentidad(int ididentidad){
        boolean resultado=false;
        try {
            sql=" DELETE FROM glo_docidentidad WHERE id_docidentidad = ? ";            
            conexionDB();
            ps=con.prepareStatement(sql);
            ps.setInt(1, ididentidad);
            if(ps.execute()==false){resultado=true;
                System.out.println("Ingreso");
            }else{resultado=false;}
                     
        } catch (SQLException e) { System.out.println("Error al eliminar:" + e.getMessage());}
          catch (Exception e) { System.out.println("Error al eliminar:" + e.getMessage());}
          
        finally{cerrarConexionDB(); }
        
        return resultado;
    }




public DocIdentidad buscarIdentidadId(int iddentidad){
      
        DocIdentidad to=null;
        try {
            sql=" SELECT * FROM glo_docidentidad WHERE id_docidentidad='?' ";            
            conexionDB();
            ps=con.prepareStatement(sql);
            ps.setInt(1, iddentidad);
            rs=ps.executeQuery();
            if(rs.next()) {              
                to=new DocIdentidad();
                to.setId_doc_identidad(rs.getInt("id_persona"));             
                to.setEstado(rs.getString("estado"));
                to.setNombre(rs.getString("nombre"));
                
                
            }
        } catch (SQLException e) { System.out.println("Error al reporta:" + e.getMessage());}
          catch (Exception e) { System.out.println("Error al reporta:" + e.getMessage());}
        finally{cerrarConexionDB(); }        
        return to; 
    }    
public boolean actualizarDatosIdentidad(DocIdentidad ident){
        int i=0;
        try {
            sql="UPDATE glo_docidentidad SET  nombre = ? , estado = ? WHERE id_persona = ? ;";            
            conexionDB();//conexion a base de datos
            ps=con.prepareStatement(sql);
          
            ps.setString(++i, ident.getNombre());
            ps.setString(++i, ident.getEstado());
          
            ps.setInt(++i, ident.getId_doc_identidad());
            
            if(ps.executeUpdate()==1){
              return true;
            }
                             
        } catch (SQLException e) {
            System.out.println("Error al Actualizar:"+e.getMessage());
        }
        finally{cerrarConexionDB();}
        return false;
    }

    
    
    public static void main(String[] a){
    PersonaDAO per=new PersonaDAO();
    per.reportarPersonas();
    
    }
    
}
