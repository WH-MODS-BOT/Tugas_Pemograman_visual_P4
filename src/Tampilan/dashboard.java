package Tampilan;

import java.util.HashMap;
import javax.swing.*;

import koneksi.koneksi; // sesuaikan package koneksi
import java.sql.Connection;

import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.view.JasperViewer;

public class dashboard extends JFrame {

    JLabel title = new JLabel("DASHBOARD KASIR");

    JButton bbarang = new JButton("ADD BARANG");
    JButton bpelanggan = new JButton("ADD PELANGGAN");
    JButton bnota = new JButton("NOTA");
    JButton bkasir = new JButton("ADD KASIR");
    JButton blaporan = new JButton("LAPORAN PENJUALAN");
    JButton blogout = new JButton("LOGOUT");

    // koneksi database
    Connection conn = new koneksi().connect();

    public dashboard(){

        setTitle("Dashboard");
        setSize(500,420);
        setLocationRelativeTo(null);
        setLayout(null);
        setDefaultCloseOperation(EXIT_ON_CLOSE);

        title.setBounds(170,20,200,30);

        bbarang.setBounds(150,70,180,35);
        bpelanggan.setBounds(150,120,180,35);
        bnota.setBounds(150,170,180,35);
        bkasir.setBounds(150,220,180,35);

        // tombol laporan
        blaporan.setBounds(150,270,180,35);

        blogout.setBounds(150,320,180,35);

        add(title);
        add(bbarang);
        add(bpelanggan);
        add(bnota);

        // HANYA ADMIN
        if(UserID.getRoleLogin().equals("admin")){
            add(bkasir);
        }

        add(blaporan);
        add(blogout);

        // BUTTON BARANG
        bbarang.addActionListener(e -> {
            new barang().setVisible(true);
        });

        // BUTTON PELANGGAN
        bpelanggan.addActionListener(e -> {
            new pelanggan().setVisible(true);
        });

        // BUTTON NOTA
        bnota.addActionListener(e -> {
            new nota().setVisible(true);
        });

        // BUTTON KASIR
        bkasir.addActionListener(e -> {
            new kasir().setVisible(true);
        });

        // BUTTON LAPORAN
        blaporan.addActionListener(e -> {

            try {

                String path = "./src/laporan/LapPelanggan.jasper";

                HashMap parameter = new HashMap();

                JasperPrint print = JasperFillManager.fillReport(
                        path,
                        parameter,
                        conn
                );

                JasperViewer.viewReport(print, false);

            } catch (Exception ex) {

                JOptionPane.showMessageDialog(
                        null,
                        "Dokumen Tidak Ada \n" + ex
                );

            }

        });

        // BUTTON LOGOUT
        blogout.addActionListener(e -> {

            dispose();

            new login().setVisible(true);

        });

    }
}