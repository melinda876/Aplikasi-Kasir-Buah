/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Lenovo
 * Created: Jun 12, 2020
 */
-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2020 at 02:07 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `ID_Barang` varchar(5) NOT NULL,
  `Name_Barang` varchar(100) NOT NULL,
  `JML_Barang` int(10) NOT NULL,
  `Satuan` varchar(3) NOT NULL,
  `Harga_Barang` int(7) NOT NULL,
  `Stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`ID_Barang`, `Name_Barang`, `JML_Barang`, `Satuan`, `Harga_Barang`, `Stok`) VALUES
('A0123', 'Apel', 2, 'kg', 30000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `ID_Karyawan` int(6) NOT NULL,
  `Name_Karyawan` varchar(20) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `No_Telpon` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`ID_Karyawan`, `Name_Karyawan`, `Username`, `Password`, `No_Telpon`) VALUES
(2873, 'Nurhayati', 'Nur', 'Hayati', 4444444),
(4444, 'Cintaputri', 'Cinta', 'Putri', 99999999);

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE IF NOT EXISTS `konsumen` (
  `Nama` varchar(20) NOT NULL,
  `Buah dibeli` varchar(10) NOT NULL,
  `Harga` int(10) NOT NULL,
  `Total` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`Nama`, `Buah dibeli`, `Harga`, `Total`) VALUES
('Desi', 'Semangka', 13000, 26000);

-- --------------------------------------------------------

--
-- Table structure for table `pemilik`
--

CREATE TABLE IF NOT EXISTS `pemilik` (
  `ID_Nama` int(6) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemilik`
--

INSERT INTO `pemilik` (`ID_Nama`, `Nama`, `Username`, `Password`) VALUES
(3578, 'Melinda', 'Lindayani', 'Fitriyani'),
(12345, 'Salsa', 'Salsa123', 'Salsabila'),
(45678, 'Fitri', 'Fitri567', 'Safitri');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `ID_Transaksi` int(5) NOT NULL,
  `ID_Karyawan` int(5) NOT NULL,
  `ID_Barang` int(5) NOT NULL,
  `Tanggal` varchar(10) NOT NULL,
  `Total_Transaksi` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`ID_Transaksi`, `ID_Karyawan`, `ID_Barang`, `Tanggal`, `Total_Transaksi`) VALUES
(2, 4926, 6283, '20190302', 18000),
(888, 28154, 333, '20200704', 1000),
(5281, 4926, 6283, '20200802', 18000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
 ADD PRIMARY KEY (`ID_Barang`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
 ADD PRIMARY KEY (`ID_Karyawan`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
 ADD PRIMARY KEY (`Nama`);

--
-- Indexes for table `pemilik`
--
ALTER TABLE `pemilik`
 ADD PRIMARY KEY (`ID_Nama`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`ID_Transaksi`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

