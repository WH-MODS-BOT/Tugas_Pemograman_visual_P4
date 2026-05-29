-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Bulan Mei 2026 pada 12.20
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wahid_penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kd_brg` varchar(20) NOT NULL,
  `nm_brg` varchar(20) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `hargabeli` varchar(20) NOT NULL,
  `hargajual` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kd_brg`, `nm_brg`, `jenis`, `hargabeli`, `hargajual`) VALUES
('BR0001', 'Apel', 'Makanan', '1000', '6000'),
('BR0002', 'Roti Coklat', 'Makanan', '2000', '8000'),
('BR0003', 'Mie Instan', 'Makanan', '2500', '5000'),
('BR0004', 'Keripik Kentang', 'Makanan', '3000', '9000'),
('BR0005', 'Biskuit', 'Makanan', '1500', '7000'),
('BR0006', 'Sosis', 'Makanan', '4000', '10000'),
('BR0007', 'Nugget', 'Makanan', '5000', '12000'),
('BR0008', 'Coklat Batang', 'Makanan', '2500', '8500'),
('BR0009', 'Permen', 'Makanan', '500', '3000'),
('BR0010', 'Keju Slice', 'Makanan', '3500', '9500'),
('BR0011', 'Air Mineral', 'Minuman', '1000', '4000'),
('BR0012', 'Teh Botol', 'Minuman', '2000', '6000'),
('BR0013', 'Kopi Susu', 'Minuman', '3000', '9000'),
('BR0014', 'Jus Jeruk', 'Minuman', '2500', '8000'),
('BR0015', 'Susu UHT', 'Minuman', '3500', '10000'),
('BR0016', 'Minuman Soda', 'Minuman', '4000', '12000'),
('BR0017', 'Yogurt', 'Minuman', '3000', '9500'),
('BR0018', 'Teh Tarik', 'Minuman', '2500', '8500'),
('BR0019', 'Cappuccino', 'Minuman', '5000', '15000'),
('BR0020', 'Es Kopi', 'Minuman', '4500', '14000'),
('BR0021', 'Wafer', 'Makanan', '2000', '7000'),
('BR0022', 'Donat', 'Makanan', '3000', '9000'),
('BR0023', 'Pizza Mini', 'Makanan', '6000', '18000'),
('BR0024', 'Burger', 'Makanan', '7000', '20000'),
('BR0025', 'Hotdog', 'Makanan', '5000', '15000'),
('BR0026', 'Milkshake', 'Minuman', '6000', '18000'),
('BR0027', 'Thai Tea', 'Minuman', '4000', '13000'),
('BR0028', 'Matcha Latte', 'Minuman', '5000', '16000'),
('BR0029', 'Puding', 'Makanan', '2500', '8000'),
('BR0030', 'Ice Cream', 'Makanan', '4000', '12000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi`
--

CREATE TABLE `isi` (
  `id_nota` varchar(10) NOT NULL,
  `kd_brg` varchar(10) NOT NULL,
  `hb` decimal(10,2) DEFAULT NULL,
  `hj` decimal(10,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `isi`
--

INSERT INTO `isi` (`id_nota`, `kd_brg`, `hb`, `hj`, `qty`) VALUES
('IN0001', 'BR0001', 1000.00, 6000.00, 5),
('IN0001', 'BR0030', 4000.00, 12000.00, 8),
('IN0002', 'BR0007', 5000.00, 12000.00, 17),
('IN0003', 'BR0008', 2500.00, 8500.00, 2),
('IN0004', 'BR0001', 1000.00, 6000.00, 3),
('IN0004', 'BR0006', 4000.00, 10000.00, 3),
('IN0005', 'BR0005', 1500.00, 7000.00, 3),
('IN0005', 'BR0008', 2500.00, 8500.00, 3),
('IN0006', 'BR0005', 1500.00, 7000.00, 3),
('IN0006', 'BR0006', 4000.00, 10000.00, 2),
('IN0007', 'BR0004', 3000.00, 9000.00, 3),
('IN0007', 'BR0005', 1500.00, 7000.00, 4),
('IN0008', 'BR0003', 2500.00, 5000.00, 6),
('IN0008', 'BR0006', 4000.00, 10000.00, 4),
('IN0009', 'BR0005', 1500.00, 7000.00, 2),
('IN0009', 'BR0006', 4000.00, 10000.00, 3),
('IN0010', 'BR0004', 3000.00, 9000.00, 2),
('IN0010', 'BR0009', 500.00, 3000.00, 2),
('IN0011', 'BR0004', 3000.00, 9000.00, 2),
('IN0011', 'BR0007', 5000.00, 12000.00, 2),
('IN0012', 'BR0005', 1500.00, 7000.00, 2),
('IN0012', 'BR0006', 4000.00, 10000.00, 2),
('IN0013', 'BR0005', 1500.00, 7000.00, 2),
('IN0013', 'BR0006', 4000.00, 10000.00, 2),
('IN0014', 'BR0004', 3000.00, 9000.00, 2),
('IN0014', 'BR0006', 4000.00, 10000.00, 2),
('IN0015', 'BR0003', 2500.00, 5000.00, 2),
('IN0015', 'BR0007', 5000.00, 12000.00, 2),
('IN0016', 'BR0003', 2500.00, 5000.00, 2),
('IN0017', 'BR0004', 3000.00, 9000.00, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` varchar(10) NOT NULL,
  `nm_kasir` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'kasir'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nm_kasir`, `jenis_kelamin`, `no_telepon`, `agama`, `alamat`, `password`, `role`) VALUES
('KS001', 'wahid', 'Laki-laki', '082127487538', 'Islam', 'depok', '123', 'admin'),
('KS002', 'rafid', 'Laki-laki', '08213242544', 'Islam', 'depok', '123', 'kasir'),
('KS003', 'siti', 'Perempuan', '082132425442', 'Islam', 'Bogor', '123', 'kasir'),
('KS004', 'andika', 'Laki-laki', '082132425443', 'Islam', 'Bekasi', '123', 'kasir'),
('KS005', 'nabila', 'Perempuan', '082132425444', 'Islam', 'Jakarta', '123', 'kasir'),
('KS006', 'rizky', 'Laki-laki', '082132425445', 'Islam', 'Bandung', '123', 'kasir'),
('KS007', 'putri', 'Perempuan', '082132425446', 'Islam', 'Cimahi', '123', 'kasir'),
('KS008', 'fajar', 'Laki-laki', '082132425447', 'Islam', 'Tasikmalaya', '123', 'kasir'),
('KS009', 'dinda', 'Perempuan', '082132425448', 'Islam', 'Garut', '123', 'kasir'),
('KS010', 'agung', 'Laki-laki', '082132425449', 'Islam', 'Sukabumi', '123', 'kasir'),
('KS011', 'melisa', 'Perempuan', '082132425450', 'Kristen', 'Cirebon', '123', 'kasir'),
('KS012', 'yoga', 'Laki-laki', '082132425451', 'Hindu', 'Semarang', '123', 'kasir'),
('KS013', 'dewi', 'Perempuan', '082132425452', 'Islam', 'Yogyakarta', '123', 'kasir'),
('KS014', 'reza', 'Laki-laki', '082132425453', 'Islam', 'Malang', '123', 'kasir'),
('KS015', 'alya', 'Perempuan', '082132425454', 'Islam', 'Surabaya', '123', 'kasir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` varchar(10) NOT NULL,
  `tgl_nota` date DEFAULT NULL,
  `id_plgn` varchar(10) DEFAULT NULL,
  `id_kasir` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`id_nota`, `tgl_nota`, `id_plgn`, `id_kasir`) VALUES
('IN0001', '2026-05-17', 'PG0001', 'KS001'),
('IN0002', '2026-05-17', 'PG0003', 'KS001'),
('IN0003', '2026-05-17', 'PG0005', 'KS001'),
('IN0004', '2026-05-24', 'PG0001', 'KS001'),
('IN0005', '2026-05-24', 'PG0001', 'KS001'),
('IN0006', '2026-05-28', 'PG0001', 'KS001'),
('IN0007', '2026-05-28', 'PG0006', 'KS001'),
('IN0008', '2026-05-28', 'PG0005', 'KS001'),
('IN0009', '2026-05-28', 'PG0005', 'KS001'),
('IN0010', '2026-05-28', 'PG0009', 'KS001'),
('IN0011', '2026-05-29', 'PG0004', 'KS001'),
('IN0012', '2026-05-29', 'PG0009', 'KS001'),
('IN0013', '2026-05-29', 'PG0006', 'KS001'),
('IN0014', '2026-05-29', 'PG0008', 'KS001'),
('IN0015', '2026-05-29', 'PG0008', 'KS001'),
('IN0016', '2026-05-29', 'PG0008', 'KS001'),
('IN0017', '2026-05-29', 'PG0007', 'KS001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_plgn` varchar(6) NOT NULL,
  `nm_plgn` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `tlpn` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_plgn`, `nm_plgn`, `jenis`, `tlpn`, `alamat`) VALUES
('PG0001', 'Marlina', 'Perempuan', '082123872401', 'Riau'),
('PG0002', 'Ahmad', 'Laki-Laki', '082123872402', 'Jakarta'),
('PG0003', 'Siti', 'Perempuan', '082123872403', 'Bandung'),
('PG0004', 'Rizky', 'Laki-Laki', '082123872404', 'Bekasi'),
('PG0005', 'Nabila', 'Perempuan', '082123872405', 'Bogor'),
('PG0006', 'Fajar', 'Laki-Laki', '082123872406', 'Depok'),
('PG0007', 'Dewi', 'Perempuan', '082123872407', 'Cimahi'),
('PG0008', 'Agus', 'Laki-Laki', '082123872408', 'Semarang'),
('PG0009', 'Putri', 'Perempuan', '082123872409', 'Yogyakarta'),
('PG0010', 'Andika', 'Laki-Laki', '082123872410', 'Malang'),
('PG0011', 'Melisa', 'Perempuan', '082123872411', 'Surabaya'),
('PG0012', 'Yoga', 'Laki-Laki', '082123872412', 'Tasikmalaya'),
('PG0013', 'Alya', 'Perempuan', '082123872413', 'Garut'),
('PG0014', 'Reza', 'Laki-Laki', '082123872414', 'Cirebon'),
('PG0015', 'Dinda', 'Perempuan', '082123872415', 'Sukabumi'),
('PG0016', 'Bayu', 'Laki-Laki', '082123872416', 'Tangerang'),
('PG0017', 'Lestari', 'Perempuan', '082123872417', 'Serang'),
('PG0018', 'Ilham', 'Laki-Laki', '082123872418', 'Purwokerto'),
('PG0019', 'Nina', 'Perempuan', '082123872419', 'Solo'),
('PG0020', 'Rian', 'Laki-Laki', '082123872420', 'Madiun'),
('PG0021', 'Citra', 'Perempuan', '082123872421', 'Kediri'),
('PG0022', 'Arif', 'Laki-Laki', '082123872422', 'Pekanbaru'),
('PG0023', 'Maya', 'Perempuan', '082123872423', 'Palembang'),
('PG0024', 'Hendra', 'Laki-Laki', '082123872424', 'Lampung'),
('PG0025', 'Indah', 'Perempuan', '082123872425', 'Padang'),
('PG0026', 'Budi', 'Laki-Laki', '082123872426', 'Medan'),
('PG0027', 'Rina', 'Perempuan', '082123872427', 'Batam'),
('PG0028', 'Eko', 'Laki-Laki', '082123872428', 'Pontianak'),
('PG0029', 'Fitri', 'Perempuan', '082123872429', 'Balikpapan'),
('PG0030', 'Joko', 'Laki-Laki', '082123872430', 'Makassar');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_brg`);

--
-- Indeks untuk tabel `isi`
--
ALTER TABLE `isi`
  ADD PRIMARY KEY (`id_nota`,`kd_brg`),
  ADD KEY `kd_brg` (`kd_brg`);

--
-- Indeks untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `id_plgn` (`id_plgn`),
  ADD KEY `id_kasir` (`id_kasir`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_plgn`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `isi`
--
ALTER TABLE `isi`
  ADD CONSTRAINT `isi_ibfk_1` FOREIGN KEY (`id_nota`) REFERENCES `nota` (`id_nota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `isi_ibfk_2` FOREIGN KEY (`kd_brg`) REFERENCES `barang` (`kd_brg`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`id_plgn`) REFERENCES `pelanggan` (`id_plgn`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`id_kasir`) REFERENCES `kasir` (`id_kasir`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
