-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2023 pada 09.39
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `ID` varchar(5) NOT NULL,
  `User_name` varchar(20) DEFAULT NULL,
  `Pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`ID`, `User_name`, `Pass`) VALUES
('C0005', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `ID_Customer` varchar(5) NOT NULL,
  `Nama_Customer` varchar(30) DEFAULT NULL,
  `Jenis_Kelamin` varchar(13) DEFAULT NULL,
  `Alamat` varchar(30) DEFAULT NULL,
  `Lama_Menginap` varchar(10) DEFAULT NULL,
  `Check_In` date DEFAULT NULL,
  `Check_Out` date DEFAULT NULL,
  `Jenis_Kamar` varchar(30) DEFAULT NULL,
  `No_Kamar` varchar(15) DEFAULT NULL,
  `Tarif` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`ID_Customer`, `Nama_Customer`, `Jenis_Kelamin`, `Alamat`, `Lama_Menginap`, `Check_In`, `Check_Out`, `Jenis_Kamar`, `No_Kamar`, `Tarif`) VALUES
('P0001', 'Nida', 'Perempuan', 'Subang', '3 Hari', '2023-01-15', '2023-01-17', 'Suite', 'No. 2', 'Rp900.000,00'),
('P0002', 'Syifa', 'Perempuan', 'Jakarta', '5 Hari', '2023-01-22', '2023-01-26', 'Deluxe', 'No. 4', 'Rp1.375.000,00'),
('P0003', 'Fajrul', 'Laki-Laki', 'Cikampek', '2 Hari', '2023-01-30', '2023-01-31', 'President', 'No. 1', 'Rp740.000,00'),
('P0004', 'Lintang', 'Perempuan', 'Cimahi', '3 Hari', '2023-01-29', '2023-01-31', 'Deluxe', 'No. 5', 'Rp825.000,00'),
('P0005', 'Azri', 'Laki-Laki', 'Garut', '2 Hari', '2023-01-27', '2023-01-28', 'President', 'No. 4', 'Rp740.000,00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`ID_Customer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
