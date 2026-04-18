# 📊 Aplikasi Penjualan Sederhana (Java NetBeans + MySQL)

## 🧾 Deskripsi

Aplikasi ini merupakan sistem **penjualan sederhana berbasis desktop** yang dibuat menggunakan **Java (NetBeans 8.2)** dan **MySQL (XAMPP)**.
Aplikasi ini dirancang untuk membantu pengelolaan data seperti:

* Data Pelanggan
* Data Barang

Aplikasi ini cocok untuk pembelajaran dasar **Pemrograman Visual** dengan konsep CRUD (Create, Read, Update, Delete).

---

## ⚙️ Teknologi yang Digunakan

* Java (JDK 8)
* NetBeans IDE 8.2
* MySQL Database
* JDBC (Java Database Connectivity)
* Apache Ant (default NetBeans)

---

## 🗂️ Struktur Project

```
Tugas_Pemograman_visual_P4-master/
│
├── src/
│   ├── koneksi/
│   │   └── koneksi.java        # Koneksi ke database
│   │
│   └── Tampilan/
│       ├── pelanggan.java      # Form data pelanggan
│       ├── pelanggan.form
│       ├── barang.java         # Form data barang
│       └── barang.form
│
├── nbproject/                  # Konfigurasi NetBeans
├── build.xml                   # File build Ant
└── manifest.mf
```

---

## 🔌 Konfigurasi Database

### 1. Buat Database

```sql
CREATE DATABASE nama_db_kamu;
```

### 2. Setting Koneksi

File:

```
src/koneksi/koneksi.java
```

Konfigurasi:

```java
String url = "jdbc:mysql://localhost/nama_db_kamu";
Connection conn = DriverManager.getConnection(url,"root","");
```

📌 Pastikan:

* XAMPP MySQL aktif
* Username: `root`
* Password: kosong (default)

---

## 🧩 Fitur Aplikasi

### 👤 Data Pelanggan

* Tambah data pelanggan
* Edit data pelanggan
* Hapus data pelanggan
* Cari data pelanggan
* Pilih jenis kelamin (L / P)

### 📦 Data Barang

* Input data barang
* Edit data barang
* Hapus data barang
* Tampilkan data dalam tabel

---

## ▶️ Cara Menjalankan

1. Buka NetBeans 8.2
2. Open Project
3. Pilih folder project
4. Jalankan:

```
Run Project (F6)
```

---

## ⚠️ Catatan Penting

* Gunakan **JDK 8** (bukan Java 9+)
* Pastikan MySQL aktif sebelum menjalankan aplikasi
* Jika terjadi error koneksi:

  * Cek nama database
  * Cek username & password MySQL

---

## 🚀 Pengembangan Selanjutnya

Beberapa fitur yang bisa ditambahkan:

* Login multi-user (Admin, Kasir)
* Laporan penjualan
* Export ke PDF / Excel
* Dashboard statistik

---

## 👨‍💻 Author

Dibuat oleh WH-MODS-BOT

---

## 📄 Lisensi

Project ini masih demo
