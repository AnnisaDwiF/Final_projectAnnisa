-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2022 pada 16.06
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_api`
--

CREATE TABLE `data_api` (
  `id` int(11) NOT NULL,
  `Waktu` datetime NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(50) NOT NULL,
  `Buzzer` varchar(10) NOT NULL,
  `Water_pump` varchar(10) NOT NULL,
  `Aksi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_api`
--

INSERT INTO `data_api` (`id`, `Waktu`, `Status`, `Buzzer`, `Water_pump`, `Aksi`) VALUES
(2, '2022-08-30 20:18:25', 'Kebakaran', 'On', 'On', 'Hubungi Pemadam Kebakaran'),
(3, '2022-08-31 07:09:54', 'Aman', 'Off', 'Off', 'Tidak Ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_gas`
--

CREATE TABLE `data_gas` (
  `id` int(11) NOT NULL,
  `Waktu` datetime NOT NULL DEFAULT current_timestamp(),
  `Kadar_gas` int(11) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Buzzer` varchar(10) NOT NULL,
  `Fan` varchar(10) NOT NULL,
  `Aksi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_gas`
--

INSERT INTO `data_gas` (`id`, `Waktu`, `Kadar_gas`, `Status`, `Buzzer`, `Fan`, `Aksi`) VALUES
(1, '2022-08-31 07:30:18', 980, 'Kebocoran', 'On', 'On', 'Lihat Lokasi'),
(2, '2022-08-31 20:19:58', 700, 'Kebocoran', 'On', 'On', 'Lihat Lokasi'),
(3, '2022-08-31 20:19:58', 351, 'Aman', 'Off', 'Off', 'Tidak Ada'),
(4, '2022-08-31 20:38:17', 400, 'Aman', 'Off', 'Off', 'Tidak Ada'),
(5, '2022-08-31 20:38:17', 575, 'Aman', 'Off', 'Off', 'Tidak Ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(3, 'Annisa Dwi Febryanti', 'annisadwifebryantipnp@gmail.com', 'default.jpg', '$2y$10$IZ7fR1PVd1zXrrBIqAJAGu9r.gSKseBeCW.hEelcKfyc9a8S61k2G', 2, 1, 1661789591);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_api`
--
ALTER TABLE `data_api`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_gas`
--
ALTER TABLE `data_gas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_api`
--
ALTER TABLE `data_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `data_gas`
--
ALTER TABLE `data_gas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
