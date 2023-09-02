-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 04 Des 2017 pada 18.45
-- Versi server: 10.0.31-MariaDB-0ubuntu0.16.04.2
-- Versi PHP: 7.1.12-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minuman`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `meja`
--

CREATE TABLE `meja` (
  `id_meja` int(12) NOT NULL,
  `no_meja` int(12) NOT NULL,
  `kode_meja` varchar(11) NOT NULL,
  `usage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `meja`
--

INSERT INTO `meja` (`id_meja`, `no_meja`, `kode_meja`, `usage`) VALUES
(1, 1, 'ME01', 0),
(2, 2, 'ME02', 0),
(3, 3, 'ME03', 0),
(23, 4, 'ME04', 0),
(24, 6, 'ME06', 0),
(25, 7, 'ME07', 0),
(27, 5, 'ME05', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(250) NOT NULL DEFAULT 'asset/image/dummy/background.png',
  `jenis` enum('minuman') NOT NULL,
  `harga` varchar(15) NOT NULL,
  `stok` int(12) NOT NULL,
  `status` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `nama`, `gambar`, `jenis`, `harga`, `stok`, `status`) VALUES
(2, 'Latte', 'asset/image/latte.jpg', 'minuman', '10000', 50, 0),
(3, 'Cappucino', 'asset/image/cappucino.jpeg', 'minuman', '10000', 50, 0),
(4, 'Fore Pandan Latte', 'asset/image/fore.jpeg', 'minuman', '15000', 10, 0),
(5, 'Espresso', 'asset/image/Espresso.jpg', 'minuman', '12000', 50, 0),
(7, 'Macchiato', 'asset/image/Macchiato.jpg', 'minuman', '10000', 50, 0),
(10, 'Es Kopi Pokat', 'asset/image/Pokat.jpeg', 'minuman', '23000', 16, 0),
(11, 'Mocaccino', 'asset/image/Mocaccino.jpg', 'minuman', '12000', 50, 0),
(16, 'Ubi Kopi', 'asset/image/Ubi.jpg', 'minuman', '19000', 20, 0),
(20, 'Caramel Cookie Corn', 'asset/image/caramel.jpg', 'minuman', '15000', 18, 0),

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_transaksi`
--

CREATE TABLE `tmp_transaksi` (
  `no_nota` int(12) NOT NULL,
  `id_menu` int(12) NOT NULL,
  `jml_porsi` int(12) NOT NULL,
  `id_meja` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `no_nota` int(11) NOT NULL,
  `id_menu` int(12) NOT NULL,
  `jml_porsi` int(12) NOT NULL,
  `id_meja` int(12) NOT NULL,
  `tgl_transaksi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `checked` int(2) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `no_nota`, `id_menu`, `jml_porsi`, `id_meja`, `tgl_transaksi`, `checked`, `status`) VALUES
(29, 1511786109, 10, 1, 1, '2017-11-27 12:35:13', 0, 'selesai'),
(30, 1511786109, 3, 4, 1, '2017-11-27 12:35:17', 0, 'selesai'),
(31, 1511786109, 9, 4, 1, '2017-11-27 12:35:23', 0, 'selesai'),
(32, 1511786109, 10, 4, 1, '2017-11-27 12:35:37', 0, 'selesai'),
(38, 1511798217, 3, 1, 1, '2017-11-27 15:57:04', 0, 'selesai'),
(39, 1511798217, 16, 1, 1, '2017-11-27 15:57:06', 0, 'selesai'),
(40, 1511798217, 9, 2, 1, '2017-11-27 15:57:13', 0, 'selesai'),
(41, 1511939972, 3, 1, 1, '2017-11-29 07:24:17', 0, 'pesan'),
(42, 1511939972, 2, 1, 1, '2017-11-29 07:24:25', 0, 'pesan'),
(43, 1511941084, 3, 1, 1, '2017-11-29 07:38:09', 0, 'pesan'),
(51, 1511971553, 11, 1, 1, '2017-11-29 16:12:20', 0, 'pesan'),
(52, 1511971553, 22, 2, 1, '2017-11-29 16:13:22', 0, 'pesan'),
(56, 1511976590, 9, 2, 1, '2017-11-29 17:30:01', 0, 'selesai'),
(57, 1511976590, 9, 2, 1, '2017-11-29 17:30:07', 0, 'selesai'),
(61, 1512188995, 5, 5, 2, '2017-12-02 04:34:09', 0, 'selesai'),
(62, 1512188995, 17, 13, 2, '2017-12-02 04:34:29', 0, 'selesai'),
(63, 1512188995, 19, 5, 2, '2017-12-02 04:34:43', 0, 'selesai'),
(64, 1512272767, 4, 2, 1, '2017-12-03 03:46:12', 0, 'masak'),
(65, 1512272767, 20, 2, 1, '2017-12-03 03:46:16', 0, 'masak'),
(66, 1512309240, 16, 2, 1, '2017-12-03 13:54:10', 0, 'bayar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(12) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama`, `no_telp`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Ebi Putra', '083840745543', 'admin'),
(2, 'dapur', 'de20b1d289dd6005ba8116085122f144', 'dapur', '0834545451', 'dapur'),
(3, 'kasir', 'c7911af3adbd12a035b289556d96470a', 'kasir', '083888386682', 'kasir');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`id_meja`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `tmp_transaksi`
--
ALTER TABLE `tmp_transaksi`
  ADD PRIMARY KEY (`no_nota`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `meja`
--
ALTER TABLE `meja`
  MODIFY `id_meja` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
