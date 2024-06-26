/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import javax.swing.UIManager;

import controller.QuanLyNhanVienBUS;
import model.NhanVien;
import com.formdev.flatlaf.FlatLightLaf;
import java.io.*;
import java.util.Scanner;
import javax.swing.JFrame;

/**
 *
 * @author Gyn
 */
public class Menu extends javax.swing.JFrame {
    private String currentDirectory = System.getProperty("user.dir");
    private QuanLyNhanVienBUS qlnv = new QuanLyNhanVienBUS();
    String name;
    /**
     * Creates new form Menu
     */
    public Menu() {
        initComponents();
        try {
            setUserName();
        } catch (IOException e) {
            e.printStackTrace();
        }
        jLabel1.setText("Chào " + name);

    }


    public void setUserName() throws IOException {
        String path = currentDirectory + "/SESSION.LOGIN";
        File checkLog = new File(path);
        BufferedReader in = new BufferedReader(new FileReader(checkLog));

        String maNV = in.readLine();
        NhanVien nv = qlnv.getNhanVien(maNV);
        this.name = nv.getTen();

    }


    public Boolean checkLogin() {
        try {
        String path = currentDirectory + "/SESSION.LOGIN";
            System.out.println(path);
        File checkLog = new File(path);
        if(!checkLog.exists()) {
            return false;
        }
            BufferedReader in = new BufferedReader(new FileReader(checkLog));

            String ID = "";
            ID = in.readLine();
            System.out.println(ID);
            if(ID == null || ID.equals("")) {
                return false;
            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException ie) {
            ie.printStackTrace();
        }
        return true;
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
        btn1 = new javax.swing.JButton();
        btn2 = new javax.swing.JButton();
        btn3 = new javax.swing.JButton();
        btn4 = new javax.swing.JButton();
        btn5 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        btn7 = new javax.swing.JButton();
        btn8 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        lbMenuTitle = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Quản lý bán hàng");
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        setName("MenuFrame"); // NOI18N
        setResizable(false);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setForeground(new java.awt.Color(243, 243, 243));

        btn1.setBackground(new java.awt.Color(255, 255, 255));
        btn1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/Images/voucher.png"))); // NOI18N
        btn1.setText("Ưu đãi");
        btn1.setToolTipText("");
        btn1.setActionCommand("");
        btn1.setBorder(javax.swing.BorderFactory.createEtchedBorder(null, java.awt.Color.darkGray));
        btn1.setPreferredSize(new java.awt.Dimension(126, 36));
        btn1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn1ActionPerformed(evt);
            }
        });

        btn2.setBackground(new java.awt.Color(255, 255, 255));
        btn2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/Images/cardpayment.png"))); // NOI18N
        btn2.setText("Khách Hàng");
        btn2.setToolTipText("");
        btn2.setBorder(javax.swing.BorderFactory.createEtchedBorder(null, java.awt.Color.darkGray));
        btn2.setPreferredSize(new java.awt.Dimension(126, 36));
        btn2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn2ActionPerformed(evt);
            }
        });

        btn3.setBackground(new java.awt.Color(255, 255, 255));
        btn3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/Images/order.png"))); // NOI18N
        btn3.setText("Hoá đơn");
        btn3.setBorder(javax.swing.BorderFactory.createEtchedBorder(null, java.awt.Color.darkGray));
        btn3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn3ActionPerformed(evt);
            }
        });

        btn4.setBackground(new java.awt.Color(255, 255, 255));
        btn4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/Images/people.png"))); // NOI18N
        btn4.setText("Nhân viên");
        btn4.setToolTipText("");
        btn4.setBorder(javax.swing.BorderFactory.createEtchedBorder(null, java.awt.Color.darkGray));
        btn4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn4ActionPerformed(evt);
            }
        });

        btn5.setBackground(new java.awt.Color(255, 255, 255));
        btn5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/Images/supplier.png"))); // NOI18N
        btn5.setBorder(javax.swing.BorderFactory.createEtchedBorder(null, java.awt.Color.darkGray));
        btn5.setLabel("Đối tác");
        btn5.setPreferredSize(new java.awt.Dimension(117, 36));
        btn5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn5ActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Segoe UI", 3, 18)); // NOI18N
        jLabel1.setText("Chào Admin !");

        btn7.setBackground(new java.awt.Color(255, 255, 255));
        btn7.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/Images/mobile.png"))); // NOI18N
        btn7.setText("Sản phẩm");
        btn7.setBorder(javax.swing.BorderFactory.createEtchedBorder(null, java.awt.Color.darkGray));
        btn7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn7ActionPerformed(evt);
            }
        });

        btn8.setBackground(new java.awt.Color(255, 255, 255));
        btn8.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/Images/chart.png"))); // NOI18N
        btn8.setText("Thống kê");
        btn8.setBorder(javax.swing.BorderFactory.createEtchedBorder(null, java.awt.Color.darkGray));
        btn8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn8ActionPerformed(evt);
            }
        });

        jPanel2.setBackground(new java.awt.Color(102, 102, 102));

        lbMenuTitle.setFont(new java.awt.Font("MTO Franko", 1, 36)); // NOI18N
        lbMenuTitle.setForeground(new java.awt.Color(255, 255, 255));
        lbMenuTitle.setText("Quản Lý Cửa Hàng");

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/Images/icons8_smartphones_120px.png"))); // NOI18N

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(134, 134, 134)
                .addComponent(jLabel2)
                .addGap(32, 32, 32)
                .addComponent(lbMenuTitle)
                .addContainerGap(389, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, 126, Short.MAX_VALUE)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(32, 32, 32)
                .addComponent(lbMenuTitle)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/Images/lbnen350.png"))); // NOI18N
        jLabel3.setText("jLabel3");

        jButton1.setBackground(new java.awt.Color(255, 255, 255));
        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/Images/icons8_logout_rounded_left_20px_1.png"))); // NOI18N
        jButton1.setText("Đăng xuất");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(btn2, javax.swing.GroupLayout.PREFERRED_SIZE, 128, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(btn7, javax.swing.GroupLayout.PREFERRED_SIZE, 126, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 128, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(107, 107, 107)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 126, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(btn5, javax.swing.GroupLayout.PREFERRED_SIZE, 126, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(btn1, javax.swing.GroupLayout.PREFERRED_SIZE, 128, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(btn4, javax.swing.GroupLayout.PREFERRED_SIZE, 126, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(btn3, javax.swing.GroupLayout.PREFERRED_SIZE, 126, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(133, 133, 133)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 271, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btn8, javax.swing.GroupLayout.PREFERRED_SIZE, 256, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(158, 158, 158))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(24, 24, 24)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel1)
                            .addComponent(jButton1))
                        .addGap(30, 30, 30)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(btn2, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btn7, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(40, 40, 40)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(btn5, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btn1, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(43, 43, 43)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(btn4, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btn3, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(6, 6, 6)
                        .addComponent(jLabel3)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 36, Short.MAX_VALUE)
                        .addComponent(btn8, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(26, 26, 26))))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 950, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn4ActionPerformed
        // TODO add your handling code here:
        Staff_Manager staffFrame = new Staff_Manager();
        staffFrame.setLocationRelativeTo(null);
        staffFrame.setVisible(true);
        staffFrame.pack();
    }//GEN-LAST:event_btn4ActionPerformed

    private void btn2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn2ActionPerformed
        // TODO add your handling code here:
        Client_Manager clientFrame = new Client_Manager();
        clientFrame.setLocationRelativeTo(null);
        clientFrame.setVisible(true);

    }//GEN-LAST:event_btn2ActionPerformed

    private void btn3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn3ActionPerformed
        // TODO add your handling code here:
        Order orderFrame = new Order();
        orderFrame.setLocationRelativeTo(null);
        orderFrame.setVisible(true);
        orderFrame.pack();
    }//GEN-LAST:event_btn3ActionPerformed

    private void btn5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn5ActionPerformed
        // TODO add your handling code here:
        Provide_Manager provideFrame = new Provide_Manager();
        provideFrame.setLocationRelativeTo(null);
        provideFrame.setVisible(true);
        provideFrame.pack();
    }//GEN-LAST:event_btn5ActionPerformed

    private void btn7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn7ActionPerformed
        // TODO add your handling code here:
        Product_Manager productFrame = new Product_Manager();
        productFrame.setLocationRelativeTo(null);
        productFrame.setVisible(true);
        productFrame.pack();

    }//GEN-LAST:event_btn7ActionPerformed

    private void btn8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn8ActionPerformed
        // TODO add your handling code here:
        Statistical statisticalFrame = new Statistical();
        statisticalFrame.setLocationRelativeTo(null);
        statisticalFrame.setVisible(true);
        statisticalFrame.pack();
    }//GEN-LAST:event_btn8ActionPerformed

    private void btn1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn1ActionPerformed
        // TODO add your handling code here:
        Coupon couponFrame = new Coupon();
        couponFrame.setLocationRelativeTo(null);
        couponFrame.setVisible(true);
    }//GEN-LAST:event_btn1ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        String path = currentDirectory + "/SESSION.LOGIN";
        File logout = new File(path);
        if(logout.delete()) {
        this.setVisible(false);
        this.dispose();
            Login login = new Login();
            login.setLocationRelativeTo(null);
            login.setVisible(true);
            login.pack();
        }

    }//GEN-LAST:event_jButton1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            UIManager.setLookAndFeel(new FlatLightLaf());
        } catch (Exception e) {
            System.out.println(e);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                Menu menuFrame = new Menu();
                if(menuFrame.checkLogin()) {
                    menuFrame.setLocationRelativeTo(null);
                    menuFrame.setVisible(true);
                    
                } else {
                    menuFrame.setVisible(false);
                    menuFrame.dispose();
                    Login login = new Login();
                    login.setLocationRelativeTo(null);
                    login.setVisible(true);
                    login.pack();
                }
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn1;
    private javax.swing.JButton btn2;
    private javax.swing.JButton btn3;
    private javax.swing.JButton btn4;
    private javax.swing.JButton btn5;
    private javax.swing.JButton btn7;
    private javax.swing.JButton btn8;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JLabel lbMenuTitle;
    // End of variables declaration//GEN-END:variables
}
