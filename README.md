# 🛒 Aplikasi Kasir Java NetBeans 8.2

## 📌 Deskripsi Project

Aplikasi ini merupakan sistem kasir desktop berbasis Java yang dibuat menggunakan **NetBeans IDE 8.2** dengan GUI Java Swing serta database MySQL. Project ini dirancang untuk membantu proses pengelolaan transaksi penjualan pada toko atau usaha kecil agar lebih cepat, terstruktur, dan mudah digunakan.

Selain fitur transaksi penjualan, aplikasi ini juga menyediakan pengelolaan data barang, pelanggan, kasir, hingga pencetakan nota dan laporan menggunakan JasperReport.

Project ini sangat cocok dijadikan sebagai:

* Tugas sekolah / kuliah
* Project latihan Java Desktop
* Referensi CRUD Java Swing
* Belajar koneksi database MySQL
* Belajar JasperReport di NetBeans
* Sistem kasir sederhana berbasis desktop

---

# ✨ Fitur Utama

## 🔐 Login Multi User

Aplikasi memiliki sistem login menggunakan username dan password.

Fitur login:

* Validasi username dan password
* Penyimpanan role user
* Pembatasan menu berdasarkan role
* Redirect otomatis ke dashboard

Role yang tersedia:

* **Admin**
* **Kasir**

Admin memiliki akses penuh termasuk mengelola data kasir.

---

## 📦 Manajemen Data Barang

Menu barang digunakan untuk mengelola seluruh data produk.

Fitur:

* Tambah barang
* Edit barang
* Hapus barang
* Cari barang
* Menampilkan stok dan harga
* Penyimpanan otomatis ke database

Data barang meliputi:

* Kode barang
* Nama barang
* Jenis barang
* Harga beli
* Harga jual
* Stok

---

## 👥 Manajemen Pelanggan

Digunakan untuk menyimpan data pelanggan.

Fitur:

* Tambah pelanggan
* Edit pelanggan
* Hapus pelanggan
* Cari pelanggan
* Popup pencarian pelanggan

Data pelanggan:

* ID pelanggan
* Nama pelanggan
* Jenis kelamin
* Nomor telepon
* Alamat

---

## 👨‍💼 Manajemen Kasir

Menu ini hanya dapat diakses oleh admin.

Fitur:

* Tambah akun kasir
* Edit data kasir
* Hapus akun kasir
* Pengaturan role
* Login multi user

Data kasir:

* ID kasir
* Nama kasir
* Password
* Role

---

## 🧾 Sistem Transaksi / Nota

Merupakan fitur utama aplikasi.

Fitur transaksi:

* Input transaksi penjualan
* Pilih pelanggan
* Pilih barang menggunakan popup
* Perhitungan otomatis
* Total pembayaran
* Kembalian otomatis
* Cetak nota
* Penyimpanan transaksi ke database

Pada proses transaksi, sistem akan:

1. Mengambil data pelanggan
2. Mengambil data barang
3. Menghitung subtotal
4. Menghitung total pembayaran
5. Mengurangi stok barang
6. Menyimpan detail transaksi
7. Mencetak nota

---

## 📊 Laporan Penjualan

Aplikasi menggunakan **JasperReport** untuk mencetak laporan.

Laporan yang tersedia:

* Nota pembelian
* Laporan pelanggan
* Laporan penjualan

Format file laporan:

* `.jrxml`
* `.jasper`

Library yang digunakan:

* JasperReports

---

# 🛠️ Teknologi Yang Digunakan

| Teknologi    | Keterangan               |
| ------------ | ------------------------ |
| Java         | Bahasa pemrograman utama |
| Java Swing   | GUI Desktop              |
| NetBeans 8.2 | IDE utama                |
| MySQL        | Database                 |
| JDBC         | Koneksi database         |
| JasperReport | Pembuatan laporan        |
| XAMPP        | Menjalankan MySQL        |

---

# 📂 Struktur Project

```bash
Tugas_Kasir_Wahid_final/
│
├── src/
│   ├── Tampilan/
│   │   ├── login.java
│   │   ├── dashboard.java
│   │   ├── barang.java
│   │   ├── pelanggan.java
│   │   ├── kasir.java
│   │   ├── nota.java
│   │   ├── popupbarang.java
│   │   ├── popuppelangganan.java
│   │   └── UserID.java
│   │
│   ├── koneksi/
│   │   └── koneksi.java
│   │
│   └── laporan/
│       ├── nota.jrxml
│       ├── nota.jasper
│       ├── LapPelanggan.jrxml
│       └── LapPelanggan.jasper
│
├── nbproject/
├── build.xml
└── manifest.mf
```

---

# 🧠 Penjelasan File Penting

## `login.java`

Digunakan untuk autentikasi user.

Fungsi utama:

* Mengecek username dan password
* Mengambil role user
* Menyimpan session login
* Membuka dashboard

---

## `dashboard.java`

Halaman utama setelah login.

Berisi menu:

* Barang
* Pelanggan
* Nota
* Kasir
* Laporan
* Logout

Dashboard juga membatasi akses menu berdasarkan role.

---

## `barang.java`

Form CRUD data barang.

Digunakan untuk:

* Menambah data barang
* Mengedit data
* Menghapus data
* Menampilkan tabel barang

---

## `pelanggan.java`

Digunakan untuk pengelolaan data pelanggan.

---

## `kasir.java`

Digunakan admin untuk mengelola akun kasir.

---

## `nota.java`

Form transaksi utama.

Fitur penting:

* Input transaksi
* Tambah item ke tabel
* Hitung total otomatis
* Hitung kembalian
* Cetak nota
* Simpan transaksi

---

## `popupbarang.java`

Popup pencarian barang.

Mempermudah pemilihan barang saat transaksi.

---

## `popuppelangganan.java`

Popup pencarian pelanggan.

---

## `UserID.java`

Digunakan sebagai penyimpanan sementara data login.

Contoh:

* ID kasir login
* Role user login

---

## `koneksi.java`

Digunakan untuk koneksi ke database MySQL menggunakan JDBC.

---

# 🗄️ Database

Project menggunakan database MySQL.

Kemungkinan tabel utama:

| Tabel       | Fungsi                     |
| ----------- | -------------------------- |
| barang      | Menyimpan data barang      |
| pelanggan   | Menyimpan data pelanggan   |
| kasir       | Menyimpan akun kasir       |
| nota        | Menyimpan transaksi        |
| detail_nota | Menyimpan detail transaksi |

---

# ⚙️ Cara Menjalankan Project

## 1. Install Software

Pastikan sudah menginstall:

* Java JDK
* NetBeans IDE 8.2
* XAMPP
* MySQL

---

## 2. Jalankan MySQL

Buka XAMPP lalu:

```bash
Start Apache
Start MySQL
```

---

## 3. Import Database

1. Buka phpMyAdmin
2. Buat database baru
3. Import file `.sql`

---

## 4. Buka Project di NetBeans

Langkah:

```text
File → Open Project → Pilih Folder Project
```

---

## 5. Tambahkan Library JasperReport

Jika report error:

```text
Klik kanan Project
→ Properties
→ Libraries
→ Add JAR/Folder
```

Tambahkan library:

* jasperreports
* commons-collections
* groovy
* itext
* mysql connector

---

## 6. Jalankan Project

Klik:

```text
Run Project (F6)
```

---

# 🔄 Alur Sistem

## Login

```text
User Login
   ↓
Validasi Database
   ↓
Masuk Dashboard
```

## Transaksi

```text
Pilih Pelanggan
   ↓
Pilih Barang
   ↓
Tambah ke Tabel
   ↓
Hitung Total
   ↓
Bayar
   ↓
Cetak Nota
```

---

# 🧩 Konsep Pemrograman Yang Digunakan

Project ini menggunakan beberapa konsep penting:

## CRUD

* Create
* Read
* Update
* Delete

## JDBC

Digunakan untuk koneksi Java ke MySQL.

## OOP (Object Oriented Programming)

Menggunakan:

* Class
* Object
* Method
* Encapsulation

## Event Driven Programming

Menggunakan ActionListener pada button.

## Java Swing

Untuk membuat tampilan desktop GUI.

---

# 📸 Tampilan Aplikasi

Beberapa tampilan utama:

* Login
* Dashboard
* Form Barang
* Form Pelanggan
* Form Kasir
* Form Nota
* Popup Barang
* Popup Pelanggan
* Laporan JasperReport

---

# 🚀 Kelebihan Project

✅ Interface sederhana dan mudah dipahami
✅ Cocok untuk belajar Java Desktop
✅ Menggunakan database MySQL
✅ Sudah mendukung login multi user
✅ Terdapat sistem transaksi
✅ Support cetak laporan JasperReport
✅ Struktur project cukup rapi
✅ Mudah dikembangkan kembali

---

# 🔧 Pengembangan Yang Bisa Ditambahkan

Beberapa fitur yang bisa dikembangkan:

* Export PDF
* Export Excel
* Grafik penjualan
* Scanner barcode
* Dark mode
* Multi cabang
* Manajemen stok otomatis
* Diskon dan promo
* Backup database
* Riwayat transaksi
* Hak akses lebih detail

---

# 🐞 Kendala Yang Sering Terjadi

## MySQL Tidak Connect

Solusi:

* Pastikan XAMPP aktif
* Cek username dan password database
* Cek port MySQL

---

## JasperReport Error

Solusi:

* Tambahkan library JasperReport
* Pastikan file `.jasper` tersedia
* Pastikan query benar

---

## Driver JDBC Tidak Ditemukan

Solusi:
Tambahkan:

```text
mysql-connector-java.jar
```

ke library project.

---

# 📚 Cocok Untuk Belajar

Project ini cocok untuk belajar:

* Java Desktop
* Java Swing
* NetBeans GUI Builder
* CRUD Java
* JDBC MySQL
* JasperReport
* Sistem kasir
* Struktur project desktop

---

# 👨‍💻 Author

Project dibuat untuk pembelajaran dan pengembangan aplikasi kasir desktop berbasis Java NetBeans.

BY WH MODS DEV
---

# 📜 License

Project ini dapat digunakan untuk:

* Belajar
* Referensi coding
* Pengembangan tugas
* Modifikasi pribadi

---

# 🎯 Kesimpulan

Aplikasi Kasir Java NetBeans 8.2 ini merupakan project desktop yang lengkap untuk kebutuhan pembelajaran maupun implementasi sederhana pada sistem penjualan.

Dengan adanya fitur login, pengelolaan barang, pelanggan, kasir, transaksi, serta laporan JasperReport, project ini sudah mencakup banyak konsep penting dalam pengembangan aplikasi desktop menggunakan Java.

Selain mudah dipahami, struktur project juga cukup baik sehingga memudahkan proses pengembangan lebih lanjut.
