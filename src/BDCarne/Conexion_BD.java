
package BDCarne;

import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


public class Conexion_BD {
   // Definir Variables Globales
   
   
    static Connection con = null;
    
    
   // Crear variables globales
    
   static String url = "jdbc:mysql://localhost/asado";  
   static String user = "root"; 
   static String pass = "";
    
  // Metodo Conexion
   
   public static Connection Conectar(){
        try {
            // Cargar driver
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexion_BD.class.getName()).log(Level.SEVERE, null, ex);
        }

        
        try {
            // Establecer la conexion con la BD
            con = DriverManager.getConnection(url,user,pass);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion_BD.class.getName()).log(Level.SEVERE, null, ex);
        }
   // Mensaje de conexion exitosa
     //   JOptionPane.showMessageDialog(null, "Conexion exitosa");
       
      return con; 
       
       
       
   } 

}
