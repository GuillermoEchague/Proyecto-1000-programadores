/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;

/**
 *
 * @author Guillermo
 */
public class panel3 extends javax.swing.JPanel {
static Connection con  = null;   
    /**
     * Creates new form panel3
     */
    public panel3() {
        initComponents();
        this.jCBox_carne.removeAllItems();
        
     try {
         this.jCBox_carne.removeAllItems();
          con  = BDCarne.Conexion_BD.Conectar(); // paquete.clase.metodo
            
        Statement st = con.createStatement();
            
            ResultSet rs=st.executeQuery("SELECT * FROM datos_vacuno");
            while (rs.next()){
                this.jCBox_carne.addItem(rs.getString("Cortes"));
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(panel3.class.getName()).log(Level.SEVERE, null, ex);
        }
   
        
        
       
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        bt_Salir = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jCBox_carne = new javax.swing.JComboBox<>();
        jLabel2 = new javax.swing.JLabel();

        bt_Salir.setText("SALIR");
        bt_Salir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bt_SalirActionPerformed(evt);
            }
        });

        jLabel1.setIcon(new javax.swing.ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\carne_catv.jpg")); // NOI18N
        jLabel1.setText("jLabel1");

        jCBox_carne.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        jCBox_carne.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jCBox_carneActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 494, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(bt_Salir, javax.swing.GroupLayout.PREFERRED_SIZE, 83, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(54, 54, 54))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jCBox_carne, javax.swing.GroupLayout.PREFERRED_SIZE, 283, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(87, 87, 87)
                        .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 174, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(105, 105, 105))))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(72, 72, 72)
                        .addComponent(bt_Salir, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(23, 23, 23)
                        .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 275, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jCBox_carne, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(42, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 632, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents

    private void bt_SalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bt_SalirActionPerformed
     
        try {
            con.close(); // cierra conexion
            System.exit(0); // cierra la ventana
        } catch (SQLException ex) {
            Logger.getLogger(panel3.class.getName()).log(Level.SEVERE, null, ex);
        }

    }//GEN-LAST:event_bt_SalirActionPerformed

    private void jCBox_carneActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jCBox_carneActionPerformed
       
    this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\asado.jpg")); 
        
        
      int  selectedIndex = jCBox_carne.getSelectedIndex();
       // System.out.println(jCBox_carne.getSelectedIndex());
        
        switch (selectedIndex) {
            
            case 0: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\cderecha.jpg"));break;
            case 1: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\Tira.jpg"));break;  
            case 2: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\Tira.jpg"));break;
            case 3: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\tapabarriga.jpg"));break;
            case 4: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\picana.jpg"));break;
            case 5: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\malaya.jpg"));break;
            case 6: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\filete.jpg"));break;
            case 7: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\vetado.jpg"));break;
            case 8: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\ojo.jpg"));break;                
            case 9: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\vetadoc.jpg"));break;
            case 10: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\liso.jpg"));break;  
            case 11: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\Entrecot.jpg"));break;
            case 12: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\ganso.jpg"));break;
            case 13: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\plateada.jpg"));break;
            case 14: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\pbarriga.jpg"));break;
            case 15: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\entrana.jpg"));break;
            case 16: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\palanca.jpg"));break;
            case 17: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\Abastero.jpg"));break;   
            case 18: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\carnicero.jpg"));break;
            case 19: this.jLabel2.setIcon(new ImageIcon("C:\\Users\\Guillermo\\Desktop\\Proyecto_1000\\src\\fotos\\sobrecostilla.jpg"));break;
            
            
            
        }
        
     
        
    }//GEN-LAST:event_jCBox_carneActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton bt_Salir;
    private javax.swing.JComboBox<String> jCBox_carne;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
}
