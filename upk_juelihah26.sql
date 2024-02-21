-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Feb 2024 pada 23.25
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upk_juelihah26`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `BukuID` varchar(15) NOT NULL,
  `Judul` varchar(20) NOT NULL,
  `Penulis` varchar(15) NOT NULL,
  `Pernebit` varchar(15) NOT NULL,
  `Tahun Terbit` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`BukuID`, `Judul`, `Penulis`, `Pernebit`, `Tahun Terbit`) VALUES
('551', 'Resign', 'Almira Bastari', 'Gramedia', 2022),
('552', 'Antologi Rasa', 'Ika Natassa', 'Gramedia', 2021),
('553', 'Laut Bercerita', 'Leila S.', 'Gramedia', 2023),
('554', 'Pelabuhan Terakhir', 'Roidah', 'Erlangga', 2022),
('555', 'Berwisata ke Surga', 'Restu Fitria', 'Erlangga', 2023);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `PeminjamanID` int(15) NOT NULL,
  `UserID` varchar(20) NOT NULL,
  `BukuID` varchar(20) NOT NULL,
  `Tanggal Peminjaman` date NOT NULL,
  `Tanggal Pengembalian` date NOT NULL,
  `Status Peminjaman` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`PeminjamanID`, `UserID`, `BukuID`, `Tanggal Peminjaman`, `Tanggal Pengembalian`, `Status Peminjaman`) VALUES
(201, '1011', '553', '2024-02-01', '2024-02-06', 'Kembali'),
(202, '1013', '553', '2024-02-06', '2024-02-10', 'Kembali'),
(203, '1011', '551', '2024-02-07', '2024-02-11', 'Kembali'),
(204, '1015', '552', '2024-02-12', '2024-02-20', 'Kembali'),
(205, '1015', '555', '2024-02-20', '0000-00-00', 'Belum Kembali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table user`
--

CREATE TABLE `table user` (
  `UserID` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Nama Lengkap` varchar(30) NOT NULL,
  `Alamat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `table user`
--

INSERT INTO `table user` (`UserID`, `Email`, `Nama Lengkap`, `Alamat`) VALUES
('1011', 'titi@gmail.com', 'Titi Padmasari', 'Jl. Mirama Bandung'),
('1012', 'rosi@gmail.com', 'Rosiana ', 'Jl. S. Parman Malang'),
('1013', 'arima@gmail.com', 'Arima Nanda', 'Jl. Bunga Cengkeh Malang'),
('1014', 'davin@gmail.com', 'Davin Nugroho', 'Komplek AU Singosari Mala'),
('1015', 'kemal@gmail.com', 'Kemal Airlangga', 'Jl. Intan Surabaya');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`BukuID`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`PeminjamanID`);

--
-- Indeks untuk tabel `table user`
--
ALTER TABLE `table user`
  ADD PRIMARY KEY (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
