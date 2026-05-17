package Tampilan;

import javax.swing.*;

public class dashboard extends JFrame {

    JLabel title = new JLabel("DASHBOARD KASIR");

    JButton bbarang = new JButton("ADD BARANG");
    JButton bpelanggan = new JButton("ADD PELANGGAN");
    JButton bnota = new JButton("NOTA");
    JButton bkasir = new JButton("ADD KASIR");
    JButton blogout = new JButton("LOGOUT");

    public dashboard(){

        setTitle("Dashboard");
        setSize(500,350);
        setLocationRelativeTo(null);
        setLayout(null);
        setDefaultCloseOperation(EXIT_ON_CLOSE);

        title.setBounds(170,20,200,30);

        bbarang.setBounds(150,70,180,35);
        bpelanggan.setBounds(150,120,180,35);
        bnota.setBounds(150,170,180,35);
        bkasir.setBounds(150,220,180,35);

        blogout.setBounds(150,270,180,35);

        add(title);
        add(bbarang);
        add(bpelanggan);
        add(bnota);

        // HANYA ADMIN
        if(UserID.getRoleLogin().equals("admin")){
            add(bkasir);
        }

        add(blogout);

        bbarang.addActionListener(e -> {
            new barang().setVisible(true);
        });

        bpelanggan.addActionListener(e -> {
            new pelanggan().setVisible(true);
        });

        bnota.addActionListener(e -> {
            new nota().setVisible(true);
        });

        bkasir.addActionListener(e -> {
            new kasir().setVisible(true);
        });

        blogout.addActionListener(e -> {

            dispose();

            new login().setVisible(true);

        });

    }
}