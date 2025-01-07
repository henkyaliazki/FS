-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2024 at 03:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pendaftaran`
--

CREATE TABLE `tbl_pendaftaran` (
  `ID_PENDAFTARAN` int(10) NOT NULL,
  `NAMA` varchar(35) NOT NULL,
  `AGAMA` varchar(30) NOT NULL,
  `TEMPATLAHIR` varchar(25) NOT NULL,
  `TINGGIBADAN` varchar(3) NOT NULL,
  `BERATBADAN` varchar(3) NOT NULL,
  `NAMAHUBUNGAN` varchar(30) NOT NULL,
  `JENIS_DOKUMEN` varchar(30) NOT NULL,
  `NOMOR_DOKUMEN` varchar(30) DEFAULT NULL,
  `NAMAHOBBY` varchar(30) NOT NULL,
  `BERKAS` varchar(100) NOT NULL,
  `ALAMAT` varchar(120) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pendaftaran`
--

INSERT INTO `tbl_pendaftaran` (`ID_PENDAFTARAN`, `NAMA`, `AGAMA`, `TEMPATLAHIR`, `TINGGIBADAN`, `BERATBADAN`, `NAMAHUBUNGAN`, `JENIS_DOKUMEN`, `NOMOR_DOKUMEN`, `NAMAHOBBY`, `BERKAS`, `ALAMAT`, `username`, `password`) VALUES
(15, 'Irfan', 'islam', 'jakarta', '170', '65', 'Single', 'ktp', '9893893893', 'renang', '', 'test', 'irfan', '1234'),
(17, 'Irfan Nurdiansyah', 'Islam', 'Jakarta', '180', '65', 'Single', 'SIM', '92449889', 'Renang', '1718794147_6bb249f18de8f4453dc5.png', 'test', '', ''),
(19, 'Cesario', 'Islam', 'Jakarta', '180', '65', 'Single', 'SIM', '92449889', 'Renang', 'C:\\xampp\\tmp\\phpBB16.tmp', 'test', '', ''),
(20, 'SYARIF HIDAYAT', 'Other', '', '160', '50', 'Other', 'E-KTP', '924498899', 'Renang', '', '', '', ''),
(21, 'CHRISTINE RIGANTINI', 'Other', '', '160', '60', 'Lajang', 'E-KTP', '999999999', 'Renang', '', '', '', ''),
(22, 'YOSEFHINE', 'Other', '', '160', '60', 'Lajang', 'E-KTP', '1000000000', 'Renang', '', '', '', ''),
(23, 'APRILIAN HADI', 'Islam', '', '169', '60', 'Lajang', 'E-KTP', '1000000001', 'Renang', '', '', '', ''),
(24, 'EVY YULIANTI', 'Islam', '', '160', '51', 'Lajang', 'E-KTP', '1000000002', 'Renang', '', '', '', ''),
(25, 'OVAN KURNIAWAN TELAUMBANUA', 'Kristen', '', '160', '60', 'Lajang', 'E-KTP', '1000000003', 'Renang', '', '', '', ''),
(26, 'LATIFAH WAHYUNING SAFITRI', 'Islam', '', '158', '55', 'Lajang', 'E-KTP', '1000000004', 'Renang', '', '', '', ''),
(27, 'HAMDAR ROSMINI', 'Islam', '', '155', '56', 'Menikah', 'E-KTP', '1000000005', 'Renang', '', '', '', ''),
(28, 'TRISIA NOVALINA HUTAPEA', 'Kristen', '', '168', '60', 'Lajang', 'E-KTP', '1000000006', 'Renang', '', '', '', ''),
(29, 'MARNAWATI', 'Islam', '', '160', '65', 'Menikah', 'E-KTP', '1000000007', 'Renang', '', '', '', ''),
(30, 'MAHDA TASSYA', 'Islam', '', '165', '52', 'Lajang', 'E-KTP', '1000000008', 'Renang', '', '', '', ''),
(31, 'AKMAL AZIS', 'Islam', '', '161', '165', 'Menikah', 'E-KTP', '1000000009', 'Renang', '', '', '', ''),
(32, 'RENDY FIBIKSANA', 'Islam', '', '170', '66', 'Lajang', 'E-KTP', '1000000010', 'Renang', '', '', '', ''),
(33, 'IQBAL SHOBIR', 'Islam', '', '169', '67', 'Lajang', 'E-KTP', '1000000011', 'Renang', '', '', '', ''),
(34, 'AHMAT', 'Islam', '', '160', '68', 'Lajang', 'E-KTP', '1000000012', 'Renang', '', '', '', ''),
(35, 'AYU DWI NITISARI', 'Hindu', '', '155', '45', 'Lajang', 'E-KTP', '1000000013', 'Renang', '', '', '', ''),
(36, 'SELIN PRAMAYA FITRI', 'Kristen', '', '150', '50', 'Lajang', 'E-KTP', '1000000014', 'Renang', '', '', '', ''),
(37, 'ASTRI DWI OKTAVIA', 'Islam', '', '160', '60', 'Lajang', 'E-KTP', '1000000015', 'Renang', '', '', '', ''),
(38, 'PUTRI MAWARRINI HAMONANGAN', 'Islam', '', '160', '60', 'Lajang', 'E-KTP', '1000000016', 'Renang', '', '', '', ''),
(39, 'AMON NAINGGOLAN', 'Kristen', '', '182', '80', 'Lajang', 'E-KTP', '1000000017', 'Renang', '', '', '', ''),
(40, 'ANA YUNITA SINURAT', 'Kristen', '', '160', '60', 'Lajang', 'E-KTP', '1000000018', 'Renang', '', '', '', ''),
(41, 'GILANG', 'Islam', '', '170', '65', 'Lajang', 'E-KTP', '1000000019', 'Renang', '', '', '', ''),
(42, 'INE LUSMIANA', 'Islam', '', '160', '53', 'Lajang', 'E-KTP', '1000000020', 'Renang', '', '', '', ''),
(43, 'RESKI BULANSARI KALIMUDDIN', 'Islam', '', '150', '53', 'Lajang', 'E-KTP', '1000000021', 'Renang', '', '', '', ''),
(44, 'KHOLIPAH', 'Islam', '', '160', '60', 'Lajang', 'E-KTP', '1000000022', 'Renang', '', '', '', ''),
(45, 'OKI', 'Other', '', '160', '60', 'Lajang', 'E-KTP', '1000000023', 'Renang', '', '', '', ''),
(46, 'ADE', 'Other', '', '160', '60', 'Lajang', 'E-KTP', '1000000024', 'Renang', '', '', '', ''),
(47, 'NURAINI ', 'Other', '', '160', '60', 'Lajang', 'E-KTP', '1000000025', 'Renang', '', '', '', ''),
(48, 'NITA', 'Islam', '', '159', '50', 'Menikah', 'E-KTP', '1000000026', 'Renang', '', '', '', ''),
(49, 'MEILANI', 'Islam', '', '158', '70', 'Menikah', 'E-KTP', '1000000027', 'Renang', '', '', '', ''),
(50, 'SUCIATI', 'Islam', '', '160', '60', 'Menikah', 'E-KTP', '1000000028', 'Renang', '', '', '', ''),
(51, 'MARWATI', 'Islam', '', '155', '50', 'Lajang', 'E-KTP', '1000000029', 'Renang', '', '', '', ''),
(52, 'RIA', 'Islam', '', '158', '60', 'Menikah', 'E-KTP', '1000000030', 'Renang', '', '', '', ''),
(53, 'WINDY', 'Islam', '', '160', '55', 'Menikah', 'E-KTP', '1000000031', 'Renang', '', '', '', ''),
(54, 'DHIMAS', 'Islam', '', '165', '65', 'Menikah', 'E-KTP', '1000000032', 'Renang', '', '', '', ''),
(55, 'MUHAMMAD', 'Islam', '', '173', '68', 'Lajang', 'E-KTP', '1000000033', 'Renang', '', '', '', ''),
(56, 'MAHARDDHIKA', 'Kristen', '', '164', '51', 'Lajang', 'E-KTP', '1000000034', 'Renang', '', '', '', ''),
(57, 'ALI', 'Islam', '', '150', '40', 'Lajang', 'Others', '1000000035', 'Renang', '', '', '', ''),
(58, 'DEWI', 'Islam', '', '160', '60', 'Lajang', 'E-KTP', '1000000036', 'Renang', '', '', '', ''),
(59, 'ZUNI', 'Islam', '', '160', '50', 'Menikah', 'E-KTP', '1000000037', 'Renang', '', '', '', ''),
(60, 'SAMINI', 'Islam', '', '160', '57', 'Menikah', 'E-KTP', '1000000038', 'Renang', '', '', '', ''),
(61, 'BAYU', 'Islam', '', '170', '50', 'Lajang', 'E-KTP', '1000000039', 'Renang', '', '', '', ''),
(62, 'ANI', 'Islam', '', '155', '50', 'Lajang', 'E-KTP', '1000000040', 'Renang', '', '', '', ''),
(63, 'WIJI', 'Islam', '', '160', '50', 'Menikah', 'E-KTP', '1000000041', 'Renang', '', '', '', ''),
(64, 'ALEXA BOH', 'Islam', '', '155', '48', 'Lajang', 'E-KTP', '1000000042', 'Renang', '', '', '', ''),
(65, 'EGA', 'Islam', '', '157', '55', 'Menikah', 'E-KTP', '1000000043', 'Renang', '', '', '', ''),
(66, 'NUR', 'Islam', '', '160', '60', 'Menikah', 'E-KTP', '1000000044', 'Renang', '', '', '', ''),
(67, 'NGAFI', 'Islam', '', '150', '50', 'Menikah', 'E-KTP', '1000000045', 'Renang', '', '', '', ''),
(68, 'MUHAMMAD', 'Islam', '', '173', '59', 'Menikah', 'E-KTP', '1000000046', 'Renang', '', '', '', ''),
(69, 'SURIYAH', 'Islam', '', '154', '58', 'Menikah', 'E-KTP', '1000000047', 'Renang', '', '', '', ''),
(70, 'ERLIN', 'Katholik', '', '155', '48', 'Menikah', 'E-KTP', '1000000048', 'Renang', '', '', '', ''),
(71, 'RASIAH', 'Islam', '', '150', '50', 'Menikah', 'E-KTP', '1000000049', 'Renang', '', '', '', ''),
(72, 'BELLA', 'Islam', '', '160', '60', 'Menikah', 'E-KTP', '1000000050', 'Renang', '', '', '', ''),
(73, 'SURATNO', 'Islam', '', '170', '68', 'Menikah', 'E-KTP', '1000000051', 'Renang', '', '', '', ''),
(74, 'ENDAH', 'Islam', '', '162', '60', 'Menikah', 'E-KTP', '1000000052', 'Renang', '', '', '', ''),
(75, 'SUGENG', 'Islam', '', '165', '65', 'Lajang', 'E-KTP', '1000000053', 'Renang', '', '', '', ''),
(76, 'MEGA', 'Islam', '', '157', '55', 'Menikah', 'E-KTP', '1000000054', 'Renang', '', '', '', ''),
(77, 'ANGGUN', 'Islam', '', '165', '55', 'Lajang', 'E-KTP', '1000000055', 'Renang', '', '', '', ''),
(78, 'RIRI AGUSTINA FRATIWI', 'Islam', '', '160', '55', 'Lajang', 'E-KTP', '1000000056', 'Renang', '', '', '', ''),
(79, 'GAVINELA SAVIRA PUTRI PRATAMI', 'Islam', '', '170', '60', 'Lajang', 'E-KTP', '1000000057', 'Renang', '', '', '', ''),
(80, 'MUHAMMAD FAJAR', 'Islam', '', '168', '60', 'Lajang', 'E-KTP', '1000000058', 'Renang', '', '', '', ''),
(81, 'WISNU PRAYUDA', 'Islam', '', '165', '65', 'Lajang', 'E-KTP', '1000000059', 'Renang', '', '', '', ''),
(82, 'ESTUNINGTYAS', 'Islam', '', '160', '50', 'Menikah', 'E-KTP', '1000000060', 'Renang', '', '', '', ''),
(83, 'PUTRI', 'Islam', '', '165', '55', 'Lajang', 'E-KTP', '1000000061', 'Renang', '', '', '', ''),
(84, 'FONY PRATIWI', 'Islam', '', '167', '65', 'Lajang', 'E-KTP', '1000000062', 'Renang', '', '', '', ''),
(85, 'YULI ERNAWATI', 'Islam', '', '152', '50', 'Menikah', 'E-KTP', '1000000063', 'Renang', '', '', '', ''),
(86, 'RIEN RESAHERA', 'Islam', '', '157', '52', 'Lajang', 'E-KTP', '1000000064', 'Renang', '', '', '', ''),
(87, 'SISWANTO', 'Islam', '', '163', '75', 'Menikah', 'E-KTP', '1000000065', 'Renang', '', '', '', ''),
(88, 'ANANTA YOGASWARA', 'Islam', '', '160', '55', 'Lajang', 'E-KTP', '1000000066', 'Renang', '', '', '', ''),
(89, 'NURIN OKTAVIA ZAKARIA', 'Islam', '', '151', '65', 'Lajang', 'E-KTP', '1000000067', 'Renang', '', '', '', ''),
(90, 'ARTINUS', 'Kristen', '', '165', '55', 'Menikah', 'E-KTP', '1000000068', 'Renang', '', '', '', ''),
(91, 'KURNIADI', 'Islam', '', '165', '60', 'Menikah', 'E-KTP', '1000000069', 'Renang', '', '', '', ''),
(92, 'ISRAYANA', 'Islam', '', '156', '55', 'Lajang', 'E-KTP', '1000000070', 'Renang', '', '', '', ''),
(93, 'RENDY', 'Islam', '', '165', '60', 'Lajang', 'E-KTP', '1000000071', 'Renang', '', '', '', ''),
(94, 'WA', 'Islam', '', '163', '58', 'Lajang', 'E-KTP', '1000000072', 'Renang', '', '', '', ''),
(95, 'PIPIT', 'Islam', '', '154', '51', 'Menikah', 'E-KTP', '1000000073', 'Renang', '', '', '', ''),
(96, 'ANUNG', 'Islam', '', '168', '59', 'Menikah', 'E-KTP', '1000000074', 'Renang', '', '', '', ''),
(97, 'GERRY', 'Islam', '', '172', '55', 'Lajang', 'E-KTP', '1000000075', 'Renang', '', '', '', ''),
(98, 'HASDI', 'Islam', '', '165', '58', 'Lajang', 'E-KTP', '1000000076', 'Renang', '', '', '', ''),
(99, 'SUWANTO', 'Islam', '', '165', '45', 'Menikah', 'E-KTP', '1000000077', 'Renang', '', '', '', ''),
(100, 'RIZKI', 'Islam', '', '150', '40', 'Lajang', 'E-KTP', '1000000078', 'Renang', '', '', '', ''),
(101, 'SURYA', 'Islam', '', '171', '80', 'Menikah', 'E-KTP', '1000000079', 'Renang', '', '', '', ''),
(102, 'SATRIA', 'Islam', '', '163', '68', 'Lajang', 'E-KTP', '1000000080', 'Renang', '', '', '', ''),
(103, 'ADI', 'Islam', '', '167', '57', 'Menikah', 'E-KTP', '1000000081', 'Renang', '', '', '', ''),
(104, 'NUR', 'Islam', '', '155', '55', 'Lajang', 'E-KTP', '1000000082', 'Renang', '', '', '', ''),
(105, 'YULIANA ', 'Katholik', '', '158', '49', 'Lajang', 'E-KTP', '1000000083', 'Renang', '', '', '', ''),
(106, 'NOVRI', 'Islam', '', '156', '50', 'Lajang', 'E-KTP', '1000000084', 'Renang', '', '', '', ''),
(107, 'DARMAWAN', 'Islam', '', '173', '83', 'Menikah', 'E-KTP', '1000000085', 'Renang', '', '', '', ''),
(108, 'DONI', 'Islam', '', '170', '68', 'Lajang', 'E-KTP', '1000000086', 'Renang', '', '', '', ''),
(109, 'JUWARNO', 'Islam', '', '170', '65', 'Menikah', 'E-KTP', '1000000087', 'Renang', '', '', '', ''),
(110, 'ASEP', 'Islam', '', '165', '65', 'Menikah', 'E-KTP', '1000000088', 'Renang', '', '', '', ''),
(111, 'IRIANA', 'Islam', '', '162', '55', 'Menikah', 'E-KTP', '1000000089', 'Renang', '', '', '', ''),
(112, 'CAHYA', 'Islam', '', '156', '56', 'Lajang', 'E-KTP', '1000000090', 'Renang', '', '', '', ''),
(113, 'WAHYUDIN', 'Islam', '', '165', '58', 'Menikah', 'E-KTP', '1000000091', 'Renang', '', '', '', ''),
(114, 'ALPONSIUS', 'Katholik', '', '170', '69', 'Lajang', 'E-KTP', '1000000092', 'Renang', '', '', '', ''),
(115, 'USIN', 'Kristen', '', '165', '65', 'Lajang', 'E-KTP', '1000000093', 'Renang', '', '', '', ''),
(116, 'WISNU', 'Islam', '', '170', '60', 'Lajang', 'E-KTP', '1000000094', 'Renang', '', '', '', ''),
(117, 'PERRI', 'Kristen', '', '165', '65', 'Menikah', 'E-KTP', '1000000095', 'Renang', '', '', '', ''),
(118, 'YULYANA', 'Islam', '', '150', '40', 'Lajang', 'E-KTP', '1000000096', 'Renang', '', '', '', ''),
(119, 'ADE TARYUM', 'Islam', '', '170', '75', 'Menikah', 'E-KTP', '1000000097', 'Renang', '', '', '', ''),
(120, 'MARISA', 'Islam', '', '165', '65', 'Menikah', 'E-KTP', '1000000098', 'Renang', '', '', '', ''),
(121, 'BUDI', 'Islam', '', '165', '59', 'Lajang', 'E-KTP', '1000000099', 'Renang', '', '', '', ''),
(122, 'ANGGA', 'Islam', '', '165', '53', 'Menikah', 'E-KTP', '1000000100', 'Renang', '', '', '', ''),
(123, 'LISA', 'Budha', '', '163', '50', 'Menikah', 'E-KTP', '1000000101', 'Renang', '', '', '', ''),
(124, 'AENUL', 'Islam', '', '165', '60', 'Lajang', 'E-KTP', '1000000102', 'Renang', '', '', '', ''),
(125, 'NGATIKOH', 'Islam', '', '150', '50', 'Janda', 'E-KTP', '1000000103', 'Renang', '', '', '', ''),
(126, 'RATNAWATI', 'Islam', '', '155', '50', 'Menikah', 'Others', '1000000104', 'Renang', '', '', '', ''),
(127, 'DESY', 'Islam', '', '152', '50', 'Menikah', 'E-KTP', '1000000105', 'Renang', '', '', '', ''),
(128, 'MUHAMAD', 'Islam', '', '160', '50', 'Lajang', 'E-KTP', '1000000106', 'Renang', '', '', '', ''),
(129, 'NUR', 'Islam', '', '160', '50', 'Menikah', 'E-KTP', '1000000107', 'Renang', '', '', '', ''),
(130, 'WINDA', 'Islam', '', '155', '52', 'Menikah', 'E-KTP', '1000000108', 'Renang', '', '', '', ''),
(131, 'BENI', 'Islam', '', '166', '59', 'Lajang', 'E-KTP', '1000000109', 'Renang', '', '', '', ''),
(132, 'ANANDA HUSNUL', 'Islam', '', '155', '45', 'Lajang', 'E-KTP', '1000000110', 'Renang', '', '', '', ''),
(133, 'MENCI', 'Kristen', '', '160', '55', 'Lajang', 'E-KTP', '1000000111', 'Renang', '', '', '', ''),
(134, 'LAILY', 'Islam', '', '161', '65', 'Lajang', 'E-KTP', '1000000112', 'Renang', '', '', '', ''),
(135, 'SUCIATI', 'Islam', '', '154', '49', 'Lajang', 'E-KTP', '1000000113', 'Renang', '', '', '', ''),
(136, 'MAISARAH', 'Islam', '', '158', '55', 'Menikah', 'E-KTP', '1000000114', 'Renang', '', '', '', ''),
(137, 'RISMAH', 'Islam', '', '160', '60', 'Lajang', 'E-KTP', '1000000115', 'Renang', '', '', '', ''),
(138, 'MARYANTO', 'Islam', '', '170', '55', 'Menikah', 'E-KTP', '1000000116', 'Renang', '', '', '', ''),
(139, 'SUNILA', 'Islam', '', '155', '52', 'Menikah', 'E-KTP', '1000000117', 'Renang', '', '', '', ''),
(140, 'JUHENDRA', 'Kristen', '', '155', '52', 'Lajang', 'E-KTP', '1000000118', 'Renang', '', '', '', ''),
(141, 'PUTRI', 'Islam', '', '156', '43', 'Lajang', 'E-KTP', '1000000119', 'Renang', '', '', '', ''),
(142, 'FADLI', 'Islam', '', '170', '55', 'Menikah', 'E-KTP', '1000000120', 'Renang', '', '', '', ''),
(143, 'I MADE WIJAYA SE', 'Hindu', '', '170', '75', 'Menikah', 'E-KTP', '1000000121', 'Renang', '', '', '', ''),
(144, 'WINDURENNY', 'Kristen', '', '155', '52', 'Menikah', 'E-KTP', '1000000122', 'Renang', '', '', '', ''),
(145, 'WA', 'Islam', '', '158', '55', 'Menikah', 'E-KTP', '1000000123', 'Renang', '', '', '', ''),
(146, 'RANGGA FERDINAND', 'Islam', '', '165', '49', 'Lajang', 'E-KTP', '1000000124', 'Renang', '', '', '', ''),
(147, 'RIMI', 'Kristen', '', '160', '60', 'Menikah', 'E-KTP', '1000000125', 'Renang', '', '', '', ''),
(148, 'HARTI', 'Islam', '', '160', '55', 'Menikah', 'E-KTP', '1000000126', 'Renang', '', '', '', ''),
(149, 'OBERLIN', 'Kristen', '', '175', '65', 'Lajang', 'E-KTP', '1000000127', 'Renang', '', '', '', ''),
(150, 'HIRMA', 'Islam', '', '160', '56', 'Lajang', 'E-KTP', '1000000128', 'Renang', '', '', '', ''),
(151, 'MUJIATI', 'Islam', '', '156', '59', 'Menikah', 'E-KTP', '1000000129', 'Renang', '', '', '', ''),
(152, 'DUBELLIA', 'Kristen', '', '162', '65', 'Lajang', 'E-KTP', '1000000130', 'Renang', '', '', '', ''),
(153, 'BUDIANI', 'Islam', '', '155', '45', 'Lajang', 'E-KTP', '1000000131', 'Renang', '', '', '', ''),
(154, 'EKA', 'Islam', '', '165', '70', 'Menikah', 'E-KTP', '1000000132', 'Renang', '', '', '', ''),
(155, 'DEWI', 'Islam', '', '164', '60', 'Menikah', 'E-KTP', '1000000133', 'Renang', '', '', '', ''),
(156, 'SUTRISNO', 'Islam', '', '170', '65', 'Menikah', 'E-KTP', '1000000134', 'Renang', '', '', '', ''),
(157, 'SUNTIYANINGSIH', 'Islam', '', '160', '50', 'Janda', 'E-KTP', '1000000135', 'Renang', '', '', '', ''),
(158, 'DESRI', 'Islam', '', '163', '50', 'Lajang', 'E-KTP', '1000000136', 'Renang', '', '', '', ''),
(159, 'SABRAL', 'Islam', '', '163', '57', 'Menikah', 'E-KTP', '1000000137', 'Renang', '', '', '', ''),
(160, 'ERNAWATI', 'Kristen', '', '170', '60', 'Menikah', 'Others', '1000000138', 'Renang', '', '', '', ''),
(161, 'RINI', 'Islam', '', '150', '48', 'Menikah', 'E-KTP', '1000000139', 'Renang', '', '', '', ''),
(162, 'FATMAWATI', 'Islam', '', '154', '56', 'Menikah', 'E-KTP', '1000000140', 'Renang', '', '', '', ''),
(163, 'JUNIATI', 'Islam', '', '165', '62', 'Menikah', 'E-KTP', '1000000141', 'Renang', '', '', '', ''),
(164, 'AGUNG', 'Islam', '', '150', '40', 'Lajang', 'E-KTP', '1000000142', 'Renang', '', '', '', ''),
(165, 'EPI SATRI', 'Islam', '', '160', '59', 'Menikah', 'E-KTP', '1000000143', 'Renang', '', '', '', ''),
(166, 'NIKMA', 'Islam', '', '160', '55', 'Menikah', 'E-KTP', '1000000144', 'Renang', '', '', '', ''),
(167, 'SILVIA ', 'Islam', '', '160', '50', 'Menikah', 'E-KTP', '1000000145', 'Renang', '', '', '', ''),
(168, 'MASRUKHIN', 'Islam', '', '168', '57', 'Menikah', 'E-KTP', '1000000146', 'Renang', '', '', '', ''),
(169, 'RIAN', 'Islam', '', '165', '60', 'Menikah', 'E-KTP', '1000000147', 'Renang', '', '', '', ''),
(170, 'AUDINA', 'Islam', '', '159', '51', 'Lajang', 'E-KTP', '1000000148', 'Renang', '', '', '', ''),
(171, 'TUNTAS', 'Islam', '', '170', '53', 'Menikah', 'E-KTP', '1000000149', 'Renang', '', '', '', ''),
(172, 'PUTRI', 'Islam', '', '160', '56', 'Lajang', 'E-KTP', '1000000150', 'Renang', '', '', '', ''),
(173, 'SISKA NURANISA', 'Islam', '', '155', '55', 'Menikah', 'E-KTP', '1000000151', 'Renang', '', '', '', ''),
(174, 'I', 'Hindu', '', '167', '65', 'Menikah', 'E-KTP', '1000000152', 'Renang', '', '', '', ''),
(175, 'BAGUS', 'Hindu', '', '170', '70', 'Menikah', 'E-KTP', '1000000153', 'Renang', '', '', '', ''),
(176, 'EDAH', 'Islam', '', '150', '40', 'Lajang', 'Others', '1000000154', 'Renang', '', '', '', ''),
(177, 'MUHAMMAD', 'Islam', '', '167', '47', 'Lajang', 'E-KTP', '1000000155', 'Renang', '', '', '', ''),
(178, 'KARTIKA', 'Islam', '', '150', '50', 'Lajang', 'E-KTP', '1000000156', 'Renang', '', '', '', ''),
(179, 'NYO.', 'Katholik', '', '169', '55', 'Menikah', 'E-KTP', '1000000157', 'Renang', '', '', '', ''),
(180, 'SUGIANTO', 'Islam', '', '168', '62', 'Menikah', 'E-KTP', '1000000158', 'Renang', '', '', '', ''),
(181, 'HAMIDA', 'Islam', '', '151', '55', 'Menikah', 'E-KTP', '1000000159', 'Renang', '', '', '', ''),
(182, 'SUGIANTO', 'Islam', '', '170', '65', 'Menikah', 'E-KTP', '1000000160', 'Renang', '', '', '', ''),
(183, 'NOVAN', 'Islam', '', '173', '75', 'Menikah', 'E-KTP', '1000000161', 'Renang', '', '', '', ''),
(184, 'RAHMAT RIYADI', 'Islam', '', '170', '78', 'Lajang', 'E-KTP', '1000000162', 'Renang', '', '', '', ''),
(185, 'FAJAR ', 'Islam', '', '170', '67', 'Menikah', 'E-KTP', '1000000163', 'Renang', '', '', '', ''),
(186, 'ACHMAD', 'Islam', '', '170', '65', 'Menikah', 'E-KTP', '1000000164', 'Renang', '', '', '', ''),
(187, 'FIRMAN', 'Katholik', '', '168', '58', 'Lajang', 'E-KTP', '1000000165', 'Renang', '', '', '', ''),
(188, 'WIWIK', 'Islam', '', '168', '63', 'Cerai', 'E-KTP', '1000000166', 'Renang', '', '', '', ''),
(189, 'MARTANI', 'Kristen', '', '165', '65', 'Menikah', 'E-KTP', '1000000167', 'Renang', '', '', '', ''),
(190, 'LITARSAN', 'Islam', '', '165', '70', 'Menikah', 'E-KTP', '1000000168', 'Renang', '', '', '', ''),
(191, 'CAHAYA', 'Islam', '', '170', '67', 'Lajang', 'E-KTP', '1000000169', 'Renang', '', '', '', ''),
(192, 'LUTPHI', 'Islam', '', '160', '60', 'Menikah', 'E-KTP', '1000000170', 'Renang', '', '', '', ''),
(193, 'JAIDI', 'Islam', '', '167', '70', 'Menikah', 'E-KTP', '1000000171', 'Renang', '', '', '', ''),
(194, 'NURDIANA ', 'Islam', '', '159', '51', 'Menikah', 'E-KTP', '1000000172', 'Renang', '', '', '', ''),
(195, 'KHUMAIRA', 'Islam', '', '170', '60', 'Lajang', 'E-KTP', '1000000173', 'Renang', '', '', '', ''),
(196, 'KARTINA', 'Islam', '', '155', '45', 'Menikah', 'E-KTP', '1000000174', 'Renang', '', '', '', ''),
(197, 'BULAN', 'Islam', '', '164', '56', 'Menikah', 'E-KTP', '1000000175', 'Renang', '', '', '', ''),
(198, 'JANUARDO', 'Kristen', '', '165', '75', 'Lajang', 'E-KTP', '1000000176', 'Renang', '', '', '', ''),
(199, 'SARINI', 'Islam', '', '165', '68', 'Cerai', 'E-KTP', '1000000177', 'Renang', '', '', '', ''),
(200, 'BAYU', 'Islam', '', '168', '60', 'Menikah', 'E-KTP', '1000000178', 'Renang', '', '', '', ''),
(201, 'AHMAD', 'Islam', '', '162', '50', 'Lajang', 'E-KTP', '1000000179', 'Renang', '', '', '', ''),
(202, 'AYU', 'Islam', '', '158', '50', 'Menikah', 'E-KTP', '1000000180', 'Renang', '', '', '', ''),
(203, 'RENALDI', 'Islam', '', '165', '79', 'Lajang', 'ID WNA', '1000000181', 'Renang', '', '', '', ''),
(204, 'CASMAN', 'Islam', '', '170', '60', 'Menikah', 'E-KTP', '1000000182', 'Renang', '', '', '', ''),
(205, 'ANDI', 'Islam', '', '165', '60', 'Lajang', 'E-KTP', '1000000183', 'Renang', '', '', '', ''),
(206, 'FIRZAN', 'Islam', '', '160', '52', 'Lajang', 'E-KTP', '1000000184', 'Renang', '', '', '', ''),
(207, 'AI', 'Islam', '', '154', '70', 'Menikah', 'E-KTP', '1000000185', 'Renang', '', '', '', ''),
(208, 'SARI', 'Islam', '', '156', '49', 'Menikah', 'E-KTP', '1000000186', 'Renang', '', '', '', ''),
(209, 'ROISAH', 'Islam', '', '150', '48', 'Menikah', 'E-KTP', '1000000187', 'Renang', '', '', '', ''),
(210, 'ALFIN', 'Islam', '', '150', '40', 'Lajang', 'Others', '1000000188', 'Renang', '', '', '', ''),
(211, 'MAYA', 'Kristen', '', '165', '52', 'Lajang', 'E-KTP', '1000000189', 'Renang', '', '', '', ''),
(212, 'NURJAYA', 'Islam', '', '155', '70', 'Menikah', 'E-KTP', '1000000190', 'Renang', '', '', '', ''),
(213, 'HENGKI', 'Islam', '', '165', '65', 'Lajang', 'E-KTP', '1000000191', 'Renang', '', '', '', ''),
(214, 'MUNIROH', 'Islam', '', '159', '45', 'Menikah', 'Others', '1000000192', 'Renang', '', '', '', ''),
(215, 'RIZKI HIDAYAT', 'Islam', '', '169', '60', 'Menikah', 'E-KTP', '1000000193', 'Renang', '', '', '', ''),
(216, 'AANG', 'Islam', '', '172', '80', 'Menikah', 'E-KTP', '1000000194', 'Renang', '', '', '', ''),
(217, 'ARMIRAYANTI', 'Islam', '', '156', '42', 'Lajang', 'E-KTP', '1000000195', 'Renang', '', '', '', ''),
(218, 'RICKY', 'Islam', '', '165', '70', 'Lajang', 'E-KTP', '1000000196', 'Renang', '', '', '', ''),
(219, 'YULI ANGGRAINI', 'Kristen', '', '157', '50', 'Menikah', 'E-KTP', '1000000197', 'Renang', '', '', '', ''),
(220, 'EKO', 'Islam', '', '170', '65', 'Menikah', 'E-KTP', '1000000198', 'Renang', '', '', '', ''),
(221, 'MARENDA DENI PRADANA', 'Islam', '', '167', '68', 'Lajang', 'Others', '1000000199', 'Renang', '', '', '', ''),
(222, 'IRMAWATI', 'Islam', '', '154', '47', 'Lajang', 'E-KTP', '1000000200', 'Renang', '', '', '', ''),
(223, 'KEZIA', 'Kristen', '', '160', '60', 'Lajang', 'E-KTP', '1000000201', 'Renang', '', '', '', ''),
(224, 'SANTJE', 'Kristen', '', '156', '70', 'Menikah', 'E-KTP', '1000000202', 'Renang', '', '', '', ''),
(225, 'HIDAYAT', 'Islam', '', '170', '63', 'Lajang', 'E-KTP', '1000000203', 'Renang', '', '', '', ''),
(226, 'SYABANA', 'Islam', '', '170', '65', 'Menikah', 'ID WNA', '1000000204', 'Renang', '', '', '', ''),
(227, 'BENING ', 'Katholik', '', '160', '58', 'Lajang', 'E-KTP', '1000000205', 'Renang', '', '', '', ''),
(228, 'BENNI', 'Other', '', '150', '40', 'Other', 'Others', '1000000206', 'Renang', '', '', '', ''),
(229, 'MUHAMMAD', 'Islam', '', '177', '70', 'Lajang', 'E-KTP', '1000000207', 'Renang', '', '', '', ''),
(230, 'WAHYUNI', 'Islam', '', '157', '55', 'Menikah', 'E-KTP', '1000000208', 'Renang', '', '', '', ''),
(231, 'JEFRI', 'Kristen', '', '170', '72', 'Menikah', 'E-KTP', '1000000209', 'Renang', '', '', '', ''),
(232, 'AHMAD', 'Islam', '', '165', '61', 'Menikah', 'E-KTP', '1000000210', 'Renang', '', '', '', ''),
(233, 'CHAERUN', 'Islam', '', '160', '66', 'Menikah', 'E-KTP', '1000000211', 'Renang', '', '', '', ''),
(234, 'SUKARTO', 'Islam', '', '170', '62', 'Menikah', 'E-KTP', '1000000212', 'Renang', '', '', '', ''),
(235, 'ANDI SANTIADI', 'Islam', '', '165', '65', 'Menikah', 'E-KTP', '1000000213', 'Renang', '', '', '', ''),
(236, 'VRILY', 'Kristen', '', '170', '58', 'Menikah', 'E-KTP', '1000000214', 'Renang', '', '', '', ''),
(237, 'RESKY', 'Islam', '', '160', '50', 'Menikah', 'E-KTP', '1000000215', 'Renang', '', '', '', ''),
(238, 'M RAFLY', 'Islam', '', '168', '60', 'Lajang', 'E-KTP', '1000000216', 'Renang', '', '', '', ''),
(239, 'SAKINA NURMALIA NASUTION', 'Islam', '', '157', '58', 'Lajang', 'E-KTP', '1000000217', 'Renang', '', '', '', ''),
(240, 'HARTO', 'Islam', '', '170', '69', 'Menikah', 'E-KTP', '1000000218', 'Renang', '', '', '', ''),
(241, 'MASHURA', 'Islam', '', '160', '58', 'Menikah', 'E-KTP', '1000000219', 'Renang', '', '', '', ''),
(242, 'HARY', 'Islam', '', '150', '40', 'Lajang', 'Others', '1000000220', 'Renang', '', '', '', ''),
(243, 'SAHBUDIN', 'Islam', '', '165', '50', 'Lajang', 'E-KTP', '1000000221', 'Renang', '', '', '', ''),
(244, 'SUGENG', 'Islam', '', '168', '62', 'Menikah', 'E-KTP', '1000000222', 'Renang', '', '', '', ''),
(245, 'BUDI', 'Islam', '', '170', '70', 'Menikah', 'E-KTP', '1000000223', 'Renang', '', '', '', ''),
(246, 'RESTIATI', 'Islam', '', '160', '52', 'Menikah', 'E-KTP', '1000000224', 'Renang', '', '', '', ''),
(247, 'AFRILLIYA', 'Islam', '', '158', '50', 'Lajang', 'E-KTP', '1000000225', 'Renang', '', '', '', ''),
(248, 'MIFTAHUL', 'Islam', '', '152', '53', 'Menikah', 'E-KTP', '1000000226', 'Renang', '', '', '', ''),
(249, 'RIVAN', 'Islam', '', '175', '60', 'Menikah', 'E-KTP', '1000000227', 'Renang', '', '', '', ''),
(250, 'SITI', 'Islam', '', '155', '70', 'Menikah', 'E-KTP', '1000000228', 'Renang', '', '', '', ''),
(251, 'YENI', 'Islam', '', '160', '50', 'Menikah', 'E-KTP', '1000000229', 'Renang', '', '', '', ''),
(252, 'FANDA HILDA', 'Kristen', '', '163', '60', 'Menikah', 'E-KTP', '1000000230', 'Renang', '', '', '', ''),
(253, 'ASPRILLA', 'Islam', '', '158', '50', 'Lajang', 'E-KTP', '1000000231', 'Renang', '', '', '', ''),
(254, 'TASYA', 'Islam', '', '155', '50', 'Lajang', 'E-KTP', '1000000232', 'Renang', '', '', '', ''),
(255, 'SRI', 'Islam', '', '154', '54', 'Menikah', 'E-KTP', '1000000233', 'Renang', '', '', '', ''),
(256, 'SOLIKHIN', 'Islam', '', '170', '60', 'Lajang', 'E-KTP', '1000000234', 'Renang', '', '', '', ''),
(257, 'JULAEHA', 'Islam', '', '163', '54', 'Lajang', 'E-KTP', '1000000235', 'Renang', '', '', '', ''),
(258, 'ADI', 'Katholik', '', '175', '75', 'Menikah', 'E-KTP', '1000000236', 'Renang', '', '', '', ''),
(259, 'NUR', 'Islam', '', '163', '56', 'Lajang', 'E-KTP', '1000000237', 'Renang', '', '', '', ''),
(260, 'SARIA', 'Islam', '', '164', '60', 'Menikah', 'E-KTP', '1000000238', 'Renang', '', '', '', ''),
(261, 'JUMIATI', 'Islam', '', '165', '60', 'Menikah', 'E-KTP', '1000000239', 'Renang', '', '', '', ''),
(262, 'FARIDHATUL', 'Islam', '', '170', '60', 'Lajang', 'E-KTP', '1000000240', 'Renang', '', '', '', ''),
(263, 'MANUEL', 'Kristen', '', '170', '62', 'Lajang', 'E-KTP', '1000000241', 'Renang', '', '', '', ''),
(264, 'DASRIL', 'Islam', '', '165', '75', 'Menikah', 'E-KTP', '1000000242', 'Renang', '', '', '', ''),
(265, 'SLAMET', 'Islam', '', '165', '70', 'Menikah', 'E-KTP', '1000000243', 'Renang', '', '', '', ''),
(266, 'AULIA', 'Islam', '', '155', '55', 'Menikah', 'E-KTP', '1000000244', 'Renang', '', '', '', ''),
(267, 'M ILHAM', 'Islam', '', '168', '60', 'Lajang', 'E-KTP', '1000000245', 'Renang', '', '', '', ''),
(268, 'ULFIYAH', 'Islam', '', '165', '75', 'Menikah', 'E-KTP', '1000000246', 'Renang', '', '', '', ''),
(269, 'TYAS', 'Islam', '', '170', '65', 'Lajang', 'E-KTP', '1000000247', 'Renang', '', '', '', ''),
(270, 'MUHAMMAD', 'Islam', '', '170', '60', 'Lajang', 'E-KTP', '1000000248', 'Renang', '', '', '', ''),
(271, 'YUNITA', 'Kristen', '', '160', '55', 'Lajang', 'E-KTP', '1000000249', 'Renang', '', '', '', ''),
(272, 'SUDIRMAN', 'Islam', '', '167', '65', 'Menikah', 'E-KTP', '1000000250', 'Renang', '', '', '', ''),
(273, 'TRI', 'Islam', '', '152', '54', 'Menikah', 'E-KTP', '1000000251', 'Renang', '', '', '', ''),
(274, 'ARIF', 'Kristen', '', '165', '60', 'Menikah', 'E-KTP', '1000000252', 'Renang', '', '', '', ''),
(275, 'DESTI', 'Islam', '', '170', '60', 'Lajang', 'E-KTP', '1000000253', 'Renang', '', '', '', ''),
(276, 'ROOY', 'Kristen', '', '165', '60', 'Menikah', 'E-KTP', '1000000254', 'Renang', '', '', '', ''),
(277, 'RENI', 'Islam', '', '170', '65', 'Cerai', 'E-KTP', '1000000255', 'Renang', '', '', '', ''),
(278, 'NOVITA MERIYANTI', 'Islam', '', '163', '59', 'Menikah', 'Others', '1000000256', 'Renang', '', '', '', ''),
(279, 'PUTU', 'Budha', '', '150', '40', 'Lajang', 'E-KTP', '1000000257', 'Renang', '', '', '', ''),
(280, 'DODI', 'Islam', '', '170', '65', 'Lajang', 'E-KTP', '1000000258', 'Renang', '', '', '', ''),
(281, 'MOCHAMAD WHILKY', 'Islam', '', '168', '60', 'Menikah', 'E-KTP', '1000000259', 'Renang', '', '', '', ''),
(282, 'NORA', 'Islam', '', '160', '60', 'Janda', 'E-KTP', '1000000260', 'Renang', '', '', '', ''),
(283, 'MISTO', 'Islam', '', '165', '64', 'Menikah', 'E-KTP', '1000000261', 'Renang', '', '', '', ''),
(284, 'HAVIS NANDA RANCAKA', 'Islam', '', '168', '60', 'Lajang', 'E-KTP', '1000000262', 'Renang', '', '', '', ''),
(285, 'DWI', 'Islam', '', '162', '62', 'Menikah', 'E-KTP', '1000000263', 'Renang', '', '', '', ''),
(286, 'RISKIYAH', 'Islam', '', '155', '60', 'Menikah', 'E-KTP', '1000000264', 'Renang', '', '', '', ''),
(287, 'THABRANI', 'Islam', '', '170', '68', 'Menikah', 'E-KTP', '1000000265', 'Renang', '', '', '', ''),
(288, 'AMELIA', 'Katholik', '', '155', '50', 'Lajang', 'E-KTP', '1000000266', 'Renang', '', '', '', ''),
(289, 'HASRIANTI', 'Islam', '', '160', '50', 'Lajang', 'E-KTP', '1000000267', 'Renang', '', '', '', ''),
(290, 'HASNIAR', 'Islam', '', '160', '50', 'Menikah', 'E-KTP', '1000000268', 'Renang', '', '', '', ''),
(291, 'DEDY HARSONO', 'Islam', '', '166', '55', 'Menikah', 'E-KTP', '1000000269', 'Renang', '', '', '', ''),
(292, 'HAZIZAH', 'Islam', '', '162', '56', 'Menikah', 'E-KTP', '1000000270', 'Renang', '', '', '', ''),
(293, 'SOPIAN', 'Other', '', '150', '40', 'Other', 'E-KTP', '1000000271', 'Renang', '', '', '', ''),
(294, 'HENDRIYANI', 'Islam', '', '150', '48', 'Menikah', 'E-KTP', '1000000272', 'Renang', '', '', '', ''),
(295, 'SUKISWANTO', 'Islam', '', '160', '52', 'Menikah', 'E-KTP', '1000000273', 'Renang', '', '', '', ''),
(296, 'SRI', 'Kristen', '', '160', '55', 'Lajang', 'E-KTP', '1000000274', 'Renang', '', '', '', ''),
(297, 'RANI', 'Islam', '', '150', '50', 'Menikah', 'E-KTP', '1000000275', 'Renang', '', '', '', ''),
(298, 'NIA', 'Islam', '', '165', '70', 'Menikah', 'E-KTP', '1000000276', 'Renang', '', '', '', ''),
(299, 'DEDI', 'Islam', '', '170', '60', 'Menikah', 'E-KTP', '1000000277', 'Renang', '', '', '', ''),
(300, 'ILHAM', 'Islam', '', '170', '65', 'Lajang', 'E-KTP', '1000000278', 'Renang', '', '', '', ''),
(301, 'FISKA', 'Islam', '', '158', '47', 'Lajang', 'E-KTP', '1000000279', 'Renang', '', '', '', ''),
(302, 'HAMRIANI', 'Islam', '', '157', '59', 'Menikah', 'E-KTP', '1000000280', 'Renang', '', '', '', ''),
(303, 'ABDUL', 'Islam', '', '168', '60', 'Lajang', 'E-KTP', '1000000281', 'Renang', '', '', '', ''),
(304, 'JURIANTO', 'Islam', '', '170', '70', 'Menikah', 'E-KTP', '1000000282', 'Renang', '', '', '', ''),
(305, 'LARASATI', 'Islam', '', '155', '50', 'Lajang', 'E-KTP', '1000000283', 'Renang', '', '', '', ''),
(306, 'MISWAR', 'Islam', '', '166', '70', 'Menikah', 'E-KTP', '1000000284', 'Renang', '', '', '', ''),
(307, 'RIRIS', 'Islam', '', '157', '47', 'Lajang', 'E-KTP', '1000000285', 'Renang', '', '', '', ''),
(308, 'ULISIA', 'Islam', '', '150', '58', 'Menikah', 'E-KTP', '1000000286', 'Renang', '', '', '', ''),
(309, 'IKMAL', 'Islam', '', '150', '40', 'Lajang', 'Others', '1000000287', 'Renang', '', '', '', ''),
(310, 'AHMAD', 'Islam', '', '165', '70', 'Menikah', 'E-KTP', '1000000288', 'Renang', '', '', '', ''),
(311, 'PRIYONO', 'Islam', '', '165', '60', 'Menikah', 'E-KTP', '1000000289', 'Renang', '', '', '', ''),
(312, 'MUSLIMAH', 'Islam', '', '160', '57', 'Menikah', 'E-KTP', '1000000290', 'Renang', '', '', '', ''),
(313, 'JUANRIANSYAH', 'Islam', '', '175', '65', 'Lajang', 'E-KTP', '1000000291', 'Renang', '', '', '', ''),
(314, 'REKO', 'Islam', '', '170', '70', 'Menikah', 'E-KTP', '1000000292', 'Renang', '', '', '', ''),
(315, 'SOLEKAH', 'Islam', '', '160', '60', 'Menikah', 'E-KTP', '1000000293', 'Renang', '', '', '', ''),
(316, 'ACHMAD', 'Islam', '', '170', '70', 'Menikah', 'E-KTP', '1000000294', 'Renang', '', '', '', ''),
(317, 'WAHYU', 'Islam', '', '171', '72', 'Lajang', 'E-KTP', '1000000295', 'Renang', '', '', '', ''),
(318, 'CENDAWATI', 'Budha', '', '157', '55', 'Menikah', 'E-KTP', '1000000296', 'Renang', '', '', '', ''),
(319, 'MULYADI', 'Islam', '', '163', '58', 'Menikah', 'E-KTP', '1000000297', 'Renang', '', '', '', ''),
(320, 'NURHAYATI', 'Katholik', '', '156', '62', 'Menikah', 'E-KTP', '1000000298', 'Renang', '', '', '', ''),
(321, 'SUTRI', 'Islam', '', '155', '50', 'Menikah', 'E-KTP', '1000000299', 'Renang', '', '', '', ''),
(322, 'DEWI', 'Islam', '', '150', '50', 'Menikah', 'E-KTP', '1000000300', 'Renang', '', '', '', ''),
(323, 'IKSAN', 'Islam', '', '158', '55', 'Lajang', 'ID WNA', '1000000301', 'Renang', '', '', '', ''),
(324, 'TEGAR IL', 'Islam', '', '168', '65', 'Lajang', 'E-KTP', '1000000302', 'Renang', '', '', '', ''),
(325, 'SUKRIANI', 'Islam', '', '165', '65', 'Menikah', 'E-KTP', '1000000303', 'Renang', '', '', '', ''),
(326, 'SITI', 'Islam', '', '162', '50', 'Lajang', 'E-KTP', '1000000304', 'Renang', '', '', '', ''),
(327, 'ANDUNG', 'Islam', '', '165', '65', 'Lajang', 'E-KTP', '1000000305', 'Renang', '', '', '', ''),
(328, 'AHMAD', 'Islam', '', '170', '70', 'Menikah', 'E-KTP', '1000000306', 'Renang', '', '', '', ''),
(329, 'ENI', 'Islam', '', '160', '55', 'Menikah', 'E-KTP', '1000000307', 'Renang', '', '', '', ''),
(330, 'DEMAK', 'Kristen', '', '158', '58', 'Menikah', 'E-KTP', '1000000308', 'Renang', '', '', '', ''),
(331, 'NI', 'Hindu', '', '158', '52', 'Menikah', 'E-KTP', '1000000309', 'Renang', '', '', '', ''),
(332, 'RIZORA', 'Islam', '', '158', '50', 'Menikah', 'ID WNA', '1000000310', 'Renang', '', '', '', ''),
(333, 'RIZKI DANAR DANANDAR', 'Islam', '', '168', '56', 'Lajang', 'E-KTP', '1000000311', 'Renang', '', '', '', ''),
(334, 'KARMILA', 'Islam', '', '158', '50', 'Lajang', 'E-KTP', '1000000312', 'Renang', '', '', '', ''),
(335, 'SUTI', 'Katholik', '', '170', '65', 'Lajang', 'E-KTP', '1000000313', 'Renang', '', '', '', ''),
(336, 'NURLELA', 'Islam', '', '157', '55', 'Menikah', 'E-KTP', '1000000314', 'Renang', '', '', '', ''),
(337, 'AGUSTIAN', 'Kristen', '', '170', '62', 'Lajang', 'E-KTP', '1000000315', 'Renang', '', '', '', ''),
(338, 'KHAIRUNNISA', 'Islam', '', '154', '53', 'Lajang', 'E-KTP', '1000000316', 'Renang', '', '', '', ''),
(339, 'VERONIKA', 'Katholik', '', '158', '55', 'Menikah', 'E-KTP', '1000000317', 'Renang', '', '', '', ''),
(340, 'MUHAMMAD', 'Islam', '', '170', '62', 'Lajang', 'E-KTP', '1000000318', 'Renang', '', '', '', ''),
(341, 'HUSIN', 'Islam', '', '170', '65', 'Lajang', 'E-KTP', '1000000319', 'Renang', '', '', '', ''),
(342, 'RUKAYA', 'Islam', '', '165', '48', 'Lajang', 'E-KTP', '1000000320', 'Renang', '', '', '', ''),
(343, 'CHENDI AGTIVA NURSARI', 'Islam', '', '156', '48', 'Lajang', 'E-KTP', '1000000321', 'Renang', '', '', '', ''),
(344, 'ANA', 'Islam', '', '157', '50', 'Menikah', 'E-KTP', '1000000322', 'Renang', '', '', '', ''),
(345, 'RUDI', 'Islam', '', '175', '70', 'Menikah', 'E-KTP', '1000000323', 'Renang', '', '', '', ''),
(346, 'LILLY', 'Kristen', '', '150', '48', 'Menikah', 'E-KTP', '1000000324', 'Renang', '', '', '', ''),
(347, 'JUNAYDIN', 'Islam', '', '165', '60', 'Lajang', 'E-KTP', '1000000325', 'Renang', '', '', '', ''),
(348, 'RIASTUTI', 'Islam', '', '155', '55', 'Menikah', 'E-KTP', '1000000326', 'Renang', '', '', '', ''),
(349, 'INTAN', 'Islam', '', '155', '55', 'Menikah', 'E-KTP', '1000000327', 'Renang', '', '', '', ''),
(350, 'PUJIYANTO', 'Islam', '', '169', '85', 'Menikah', 'E-KTP', '1000000328', 'Renang', '', '', '', ''),
(351, 'ASEP', 'Islam', '', '170', '70', 'Menikah', 'E-KTP', '1000000329', 'Renang', '', '', '', ''),
(352, 'ELSA', 'Kristen', '', '150', '62', 'Menikah', 'E-KTP', '1000000330', 'Renang', '', '', '', ''),
(353, 'NURUL', 'Islam', '', '155', '49', 'Lajang', 'E-KTP', '1000000331', 'Renang', '', '', '', ''),
(354, 'HASMIN', 'Islam', '', '165', '62', 'Lajang', 'E-KTP', '1000000332', 'Renang', '', '', '', ''),
(355, 'AHMAD FARID', 'Islam', '', '170', '69', 'Menikah', 'E-KTP', '1000000333', 'Renang', '', '', '', ''),
(356, 'SUTRINA', 'Islam', '', '160', '58', 'Menikah', 'E-KTP', '1000000334', 'Renang', '', '', '', ''),
(357, 'MELANIE', 'Islam', '', '155', '44', 'Lajang', 'E-KTP', '1000000335', 'Renang', '', '', '', ''),
(358, 'JUPRI', 'Islam', '', '162', '60', 'Menikah', 'E-KTP', '1000000336', 'Renang', '', '', '', ''),
(359, 'SIGIT', 'Islam', '', '163', '52', 'Menikah', 'E-KTP', '1000000337', 'Renang', '', '', '', ''),
(360, 'SABAR', 'Kristen', '', '170', '70', 'Menikah', 'E-KTP', '1000000338', 'Renang', '', '', '', ''),
(361, 'DINA', 'Islam', '', '160', '52', 'Lajang', 'E-KTP', '1000000339', 'Renang', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  ADD PRIMARY KEY (`ID_PENDAFTARAN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  MODIFY `ID_PENDAFTARAN` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
