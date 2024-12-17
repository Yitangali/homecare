-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Des 2024 pada 13.39
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
-- Database: `db_homecare`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `art`
--

CREATE TABLE `art` (
  `id_transaksi` int(11) NOT NULL,
  `id_pekerja` int(5) NOT NULL,
  `nama_ART` varchar(255) NOT NULL,
  `durasi` varchar(255) NOT NULL,
  `mulai` date DEFAULT NULL,
  `selesai` date DEFAULT NULL,
  `biaya` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `art`
--

INSERT INTO `art` (`id_transaksi`, `id_pekerja`, `nama_ART`, `durasi`, `mulai`, `selesai`, `biaya`) VALUES
(3001, 2001, 'Mariyama Marika', 'mingguan', '2024-12-14', '2024-12-20', 'Rp 500.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cb_wash`
--

CREATE TABLE `cb_wash` (
  `id_transaksi` int(11) NOT NULL,
  `berlaku` date NOT NULL,
  `kendaraan` varchar(255) NOT NULL,
  `paket` varchar(255) NOT NULL,
  `biaya` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cb_wash`
--

INSERT INTO `cb_wash` (`id_transaksi`, `berlaku`, `kendaraan`, `paket`, `biaya`) VALUES
(3004, '2024-12-27', 'mobil', 'reguler', 'Rp 60.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `child_care`
--

CREATE TABLE `child_care` (
  `id_transaksi` int(11) NOT NULL,
  `id_pekerja` int(5) NOT NULL,
  `nama_caretaker` varchar(255) NOT NULL,
  `durasi` varchar(255) NOT NULL,
  `mulai` date NOT NULL,
  `selesai` date NOT NULL,
  `biaya` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `child_care`
--

INSERT INTO `child_care` (`id_transaksi`, `id_pekerja`, `nama_caretaker`, `durasi`, `mulai`, `selesai`, `biaya`) VALUES
(3002, 2002, 'Titi Pratiwi', 'mingguan', '2024-12-14', '2024-12-20', 'Rp 800.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `house_cleaning`
--

CREATE TABLE `house_cleaning` (
  `id_transaksi` int(5) NOT NULL,
  `berlaku` date NOT NULL,
  `paket` varchar(255) NOT NULL,
  `biaya` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `house_cleaning`
--

INSERT INTO `house_cleaning` (`id_transaksi`, `berlaku`, `paket`, `biaya`) VALUES
(3005, '2024-12-20', 'reguler', 'Rp 350.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `meal_prep`
--

CREATE TABLE `meal_prep` (
  `id_transaksi` int(11) NOT NULL,
  `durasi` varchar(255) NOT NULL,
  `mulai` date NOT NULL,
  `selesai` date NOT NULL,
  `paket` char(2) NOT NULL,
  `biaya` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `meal_prep`
--

INSERT INTO `meal_prep` (`id_transaksi`, `durasi`, `mulai`, `selesai`, `paket`, `biaya`) VALUES
(3003, 'harian', '2024-12-15', '2024-12-15', 'A2', 'Rp 150.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerja`
--

CREATE TABLE `pekerja` (
  `id_pekerja` int(5) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `usia` int(2) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `sertifikasi` varchar(255) DEFAULT NULL,
  `rating` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `ketersediaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pekerja`
--

INSERT INTO `pekerja` (`id_pekerja`, `nama`, `gender`, `usia`, `pekerjaan`, `sertifikasi`, `rating`, `alamat`, `no_hp`, `ketersediaan`) VALUES
(2001, 'Mariyama Marika', 'P', 25, 'ART', 'certified', '4,5/5', 'Magelang Utara, Kota Magelang, 56117', '081214423762', 'sibuk'),
(2002, 'Titi Pratiwi', 'P', 42, 'Caretaker', 'certified', '4,2/5', 'Grabag, Purworejo, 54265', '083233227651', 'sibuk'),
(2003, 'Sebastian', 'L', 32, 'ART', 'certified', '5/5', 'Jagakarsa, Jakarta Selatan, 12530', '082233126672', 'tersedia'),
(2004, 'Tohru Kobayashi', 'P', 26, 'ART', 'certified', '5/5', 'Kraton, Kota Yogyakarta, 55131', '085987789345', 'tersedia'),
(2005, 'Ayaka Sunohara', 'P', 30, 'Caretaker', 'certified', '5/5', 'Cicalengka, Bandung, 40395', '081255479326', 'tersedia'),
(2006, 'Kashima Ryuichi', 'L', 19, 'Caretaker', 'certified', '4,9/5', 'Glagah, Banyuwangi, 68432', '085773005961', 'tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `layanan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `nama_user`, `tgl_transaksi`, `layanan`) VALUES
(3001, 1001, 'Budi Prasetyo', '2024-12-14', 'ART'),
(3002, 1004, 'Dina Mahardika', '2024-12-14', 'child care'),
(3003, 1005, 'Pandu Dhinata', '2024-12-15', 'meal prep'),
(3004, 1003, 'Fransiskus Pratikto', '2024-12-15', 'car/bike wash'),
(3005, 1002, 'Sri Riningsih', '2024-12-17', 'house_cleaning');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgl_lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `gender`, `email`, `no_hp`, `alamat`, `tgl_lahir`) VALUES
(1001, 'Budi Prasetyo', 'L', 'budi0721@gmail.com', '087732867531', 'Mertoyudan, Magelang, 56172', '1981-06-12'),
(1002, 'Sri Riningsih', 'P', 'riniSri@gmail.com', '085478898124', 'Bandongan, Magelang, 56151', '1972-05-23'),
(1003, 'Fransiskus Pratikto', 'L', 'pratikto@gmail.com', '081337459264', 'Magelang Selatan, Kota Magelang, 56125', '1972-03-07'),
(1004, 'Dina Mahardika', 'P', 'mhrdkdnnn@gmail.com', '081223945082', 'Mertoyudan, Magelang, 56172', '1992-07-21'),
(1005, 'Pandu Dhinata', 'L', 'dhinatap@gmail.com', '085397439221', 'Kaliangkrik, Magelang, 56153', '1994-04-11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `art`
--
ALTER TABLE `art`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pekerja` (`id_pekerja`);

--
-- Indeks untuk tabel `cb_wash`
--
ALTER TABLE `cb_wash`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `child_care`
--
ALTER TABLE `child_care`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pekerja` (`id_pekerja`);

--
-- Indeks untuk tabel `house_cleaning`
--
ALTER TABLE `house_cleaning`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `meal_prep`
--
ALTER TABLE `meal_prep`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `pekerja`
--
ALTER TABLE `pekerja`
  ADD PRIMARY KEY (`id_pekerja`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `art`
--
ALTER TABLE `art`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3002;

--
-- AUTO_INCREMENT untuk tabel `cb_wash`
--
ALTER TABLE `cb_wash`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3005;

--
-- AUTO_INCREMENT untuk tabel `child_care`
--
ALTER TABLE `child_care`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3003;

--
-- AUTO_INCREMENT untuk tabel `house_cleaning`
--
ALTER TABLE `house_cleaning`
  MODIFY `id_transaksi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3006;

--
-- AUTO_INCREMENT untuk tabel `meal_prep`
--
ALTER TABLE `meal_prep`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3004;

--
-- AUTO_INCREMENT untuk tabel `pekerja`
--
ALTER TABLE `pekerja`
  MODIFY `id_pekerja` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2007;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3006;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `art`
--
ALTER TABLE `art`
  ADD CONSTRAINT `art_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`),
  ADD CONSTRAINT `art_ibfk_2` FOREIGN KEY (`id_pekerja`) REFERENCES `pekerja` (`id_pekerja`);

--
-- Ketidakleluasaan untuk tabel `cb_wash`
--
ALTER TABLE `cb_wash`
  ADD CONSTRAINT `cb_wash_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`);

--
-- Ketidakleluasaan untuk tabel `child_care`
--
ALTER TABLE `child_care`
  ADD CONSTRAINT `child_care_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`),
  ADD CONSTRAINT `child_care_ibfk_2` FOREIGN KEY (`id_pekerja`) REFERENCES `pekerja` (`id_pekerja`);

--
-- Ketidakleluasaan untuk tabel `house_cleaning`
--
ALTER TABLE `house_cleaning`
  ADD CONSTRAINT `house_cleaning_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`);

--
-- Ketidakleluasaan untuk tabel `meal_prep`
--
ALTER TABLE `meal_prep`
  ADD CONSTRAINT `meal_prep_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
