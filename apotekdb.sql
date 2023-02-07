-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Feb 2023 pada 17.05
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotekdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenttbl`
--

CREATE TABLE `agenttbl` (
  `Aid` int(11) NOT NULL,
  `Aname` varchar(100) NOT NULL,
  `Aage` int(11) NOT NULL,
  `Aphone` varchar(50) NOT NULL,
  `Apass` varchar(50) NOT NULL,
  `Agender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `agenttbl`
--

INSERT INTO `agenttbl` (`Aid`, `Aname`, `Aage`, `Aphone`, `Apass`, `Agender`) VALUES
(1, 'Gilang', 20, '088', '123', 'Male'),
(2, 'Fauzi', 21, '088', '123', 'Male'),
(3, 'Tectonia', 19, '088', '123', 'Female'),
(4, 'Putri', 20, '088', '123', 'Female'),
(5, 'Paijo ganteng', 50, '1234', '123', 'Female');

-- --------------------------------------------------------

--
-- Struktur dari tabel `companytbl`
--

CREATE TABLE `companytbl` (
  `CompId` int(11) NOT NULL,
  `CompName` varchar(50) NOT NULL,
  `CompAdd` varchar(50) NOT NULL,
  `CompExp` int(11) NOT NULL,
  `CompPhone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `companytbl`
--

INSERT INTO `companytbl` (`CompId`, `CompName`, `CompAdd`, `CompExp`, `CompPhone`) VALUES
(1, 'PT. Afifarma', 'Jalan Mauni Industri', 5, '0354687292'),
(2, 'PT. Actavis Indonesia', 'Jl. Raya Jakarta Bogor', 10, '0218710311'),
(3, 'PT. Afiat', 'Jl. Mahar Martanegara', 4, '62226613339'),
(4, 'PT. Apex Pharma Indonesia', 'Jl. KH Masyur', 7, '0215746695'),
(5, 'PT. Armoxindo Farma', 'Jl. Arjuna 28 Tanjung Duren', 6, '0215685973');

-- --------------------------------------------------------

--
-- Struktur dari tabel `medicinetbl`
--

CREATE TABLE `medicinetbl` (
  `MedID` int(11) NOT NULL,
  `MedName` varchar(50) NOT NULL,
  `MedPrice` int(11) NOT NULL,
  `MedQty` int(11) NOT NULL,
  `MedFab` date NOT NULL,
  `MedExp` date NOT NULL,
  `MedCom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `medicinetbl`
--

INSERT INTO `medicinetbl` (`MedID`, `MedName`, `MedPrice`, `MedQty`, `MedFab`, `MedExp`, `MedCom`) VALUES
(1, 'Acyclovir Tablet', 250000, 200, '2023-02-02', '2023-02-25', 'PT. Armoxindo Farma'),
(2, 'Amobarbita;', 10000, 150, '2021-05-01', '2024-02-17', 'PT. Actavis Indonesia'),
(3, 'Bromhexine', 35000, 120, '2019-05-09', '2024-04-04', 'PT. Afiat'),
(4, 'Disulfiram', 59000, 150, '2021-07-06', '2024-09-10', 'PT. Apex Pharma Indonesia'),
(5, 'Kodein', 54000, 123, '2023-02-01', '2028-02-01', 'PT. Afiat');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenttbl`
--
ALTER TABLE `agenttbl`
  ADD PRIMARY KEY (`Aid`);

--
-- Indeks untuk tabel `companytbl`
--
ALTER TABLE `companytbl`
  ADD PRIMARY KEY (`CompId`);

--
-- Indeks untuk tabel `medicinetbl`
--
ALTER TABLE `medicinetbl`
  ADD PRIMARY KEY (`MedID`),
  ADD UNIQUE KEY `MedName` (`MedName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
