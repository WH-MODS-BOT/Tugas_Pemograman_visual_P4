# Aplikasi Kasir Java NetBeans

## Deskripsi

Aplikasi ini merupakan sistem kasir desktop berbasis Java Swing yang dibuat menggunakan NetBeans dan database MySQL. Program digunakan untuk mengelola data barang, pelanggan, kasir, serta transaksi penjualan.

Project ini menggunakan:

* Java Swing
* JDBC
* MySQL Database
* NetBeans IDE

---

# Fitur Utama

## Login Sistem

* Login menggunakan username dan password
* Session login menggunakan class `UserID`
* Mendukung role `admin` dan `user`

## Dashboard

Menu utama aplikasi yang berisi:

* Data Barang
* Data Pelanggan
* Data Kasir
* Nota Penjualan
* Logout

## Manajemen Barang

Fitur CRUD data barang:

* Tambah barang
* Edit barang
* Hapus barang
* Cari barang
* Menampilkan data ke JTable

Field utama:

* Kode Barang
* Nama Barang
* Jenis
* Harga Beli
* Harga Jual
* Stok

## Manajemen Pelanggan

Fitur CRUD pelanggan:

* Tambah pelanggan
* Edit pelanggan
* Hapus pelanggan
* Cari pelanggan

Field utama:

* ID Pelanggan
* Nama Pelanggan
* Jenis Kelamin
* Telepon
* Alamat

## Manajemen Kasir

Digunakan untuk mengelola akun kasir.

Field utama:

* ID Kasir
* Nama Kasir
* Jenis Kelamin
* No Telepon
* Agama
* Alamat
* Password
* Role

## Nota Penjualan

Fitur transaksi penjualan:

* Membuat nota otomatis
* Memilih barang dan pelanggan
* Menghitung total transaksi
* Menyimpan data penjualan

---

# Struktur Project

```bash
src/
├── koneksi/
│   └── koneksi.java
│
└── Tampilan/
    ├── login.java
    ├── dashboard.java
    ├── barang.java
    ├── pelanggan.java
    ├── kasir.java
    ├── nota.java
    ├── popupbarang.java
    ├── popuppelangganan.java
    └── UserID.java
```

---

# Database

Nama database:

```sql
wahid_penjualan
```

## Tabel yang Digunakan

* barang
* pelanggan
* kasir
* nota

---

# Koneksi Database

File koneksi:

```bash
src/koneksi/koneksi.java
```

Konfigurasi database:

```java
jdbc:mysql://localhost/wahid_penjualan
```

Username:

```java
root
```

Password:

```java
""
```

---

# Cara Menjalankan Project

## 1. Install Software

Pastikan sudah menginstall:

* Java JDK
* NetBeans
* XAMPP / Laragon
* MySQL

## 2. Import Database

1. Buka phpMyAdmin
2. Buat database:

```sql
wahid_penjualan
```

3. Import file SQL

## 3. Tambahkan JDBC

Tambahkan library:

```bash
mysql-connector-java.jar
```

Ke bagian Libraries di NetBeans.

## 4. Jalankan Project

Buka project di NetBeans lalu tekan:

```bash
F6
```

---

# Teknologi yang Digunakan

| Teknologi | Fungsi             |
| --------- | ------------------ |
| Java      | Bahasa pemrograman |
| Swing     | GUI desktop        |
| JDBC      | Koneksi database   |
| MySQL     | Database           |
| NetBeans  | IDE                |

---

# Kelebihan Project

* GUI desktop sederhana dan mudah digunakan
* CRUD data lengkap
* Sistem login dan role user
* Database MySQL
* Cocok untuk pembelajaran Java Swing

---

# Kekurangan Project

* Password belum dienkripsi
* Belum ada fitur laporan
* Tampilan masih sederhana

---

# Author

WH-MODS-BOT

---

# Kesimpulan

Project ini merupakan aplikasi kasir desktop berbasis Java dan MySQL yang memiliki fitur utama seperti login, manajemen data, dan transaksi penjualan. Cocok digunakan sebagai pembelajaran CRUD Java Swing menggunakan JDBC dan database MySQL.
