-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2021 at 03:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartaplicationv1_rev1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cbt_admin`
--

CREATE TABLE `cbt_admin` (
  `Urut` int(11) NOT NULL,
  `XSekolah` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XTingkat` varchar(3) COLLATE latin1_general_ci NOT NULL,
  `XIp` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XAlamat` text COLLATE latin1_general_ci NOT NULL,
  `XKec` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XKab` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XProp` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XTelp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XFax` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XEmail` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XWeb` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `XLogo` text COLLATE latin1_general_ci NOT NULL,
  `XBanner` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XKepSek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `XAdmin` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `XPicAdmin` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XWarna` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XStatus` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XNIPKepsek` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XNIPAdmin` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XLogin` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XH1` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XH3` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XH2` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XFolderPusat` tinytext COLLATE latin1_general_ci NOT NULL COMMENT 'jika folder besmart3 diubah',
  `XLoginUtama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XeLearning` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_admin`
--

INSERT INTO `cbt_admin` (`Urut`, `XSekolah`, `XTingkat`, `XIp`, `XAlamat`, `XKec`, `XKab`, `XProp`, `XTelp`, `XFax`, `XEmail`, `XWeb`, `XLogo`, `XBanner`, `XKepSek`, `XAdmin`, `XPicAdmin`, `XWarna`, `XStatus`, `XKodeSekolah`, `XNIPKepsek`, `XNIPAdmin`, `XLogin`, `XH1`, `XH3`, `XH2`, `XFolderPusat`, `XLoginUtama`, `XeLearning`) VALUES
(15, 'SMART APLICATION', 'MA', '127.0.0.1', 'Jl. Pon.Pes Fatahillah', '13', '13', '35', '0000-000000', '-', 'mafatahillah40@gmail.com', 'www.fatahillah.com', 'logoBee.gif', 'logoSmartAplication.png', 'MUHLASI, S.Pd', 'MUH. HAMIM, S.Kom', 'bind3.jpg', '#F7F107', '1', '69886300', '-', '-', 'login.jpg', 'PARTNER PENDIDIKAN UNGGUL', 'SmartAPLICATION Login', 'SMART APLICATION', 'pusat', 'login_utama.jpg', 'e-learning.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_header`
--

CREATE TABLE `cbt_header` (
  `Urut` int(1) NOT NULL,
  `Header` varchar(10) NOT NULL,
  `HeaderUjian` int(1) NOT NULL DEFAULT 1,
  `XNilaiKelas` varchar(20) NOT NULL DEFAULT '0',
  `HakAkses` varchar(20) NOT NULL DEFAULT '0',
  `LoginPanel` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_header`
--

INSERT INTO `cbt_header` (`Urut`, `Header`, `HeaderUjian`, `XNilaiKelas`, `HakAkses`, `LoginPanel`) VALUES
(1, '0', 0, '0', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_jawaban`
--

CREATE TABLE `cbt_jawaban` (
  `Urutan` int(11) NOT NULL,
  `Urut` int(11) NOT NULL,
  `XNomerSoal` int(11) NOT NULL,
  `XKodeUjian` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XJenisSoal` int(11) NOT NULL,
  `XTokenUjian` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `XA` int(11) NOT NULL,
  `XB` int(11) NOT NULL,
  `XC` int(11) NOT NULL,
  `XD` int(11) NOT NULL,
  `XE` int(11) NOT NULL,
  `XJawaban` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XTemp` text COLLATE latin1_general_ci NOT NULL,
  `XJawabanEsai` text COLLATE latin1_general_ci NOT NULL,
  `XKodeJawab` varchar(2) COLLATE latin1_general_ci NOT NULL,
  `XNilaiJawab` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XNilai` int(11) NOT NULL,
  `XNilaiEsai` float NOT NULL,
  `XRagu` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XMulai` float NOT NULL,
  `XPutar` int(11) NOT NULL,
  `XMulaiV` float NOT NULL,
  `XPutarV` int(11) NOT NULL,
  `XTglJawab` date NOT NULL,
  `XJamJawab` time NOT NULL,
  `XKunciJawaban` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XUserJawab` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `Campur` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSemester` int(1) NOT NULL,
  `XUserPeriksa` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XTglPeriksa` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XJamPeriksa` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XNamaKelas` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_kelas`
--

CREATE TABLE `cbt_kelas` (
  `Urut` int(11) NOT NULL,
  `XKodeLevel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XNamaKelas` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XStatusKelas` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_mapel`
--

CREATE TABLE `cbt_mapel` (
  `Urut` int(11) NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XNamaMapel` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XPersenUH` int(11) NOT NULL,
  `XPersenUTS` int(11) NOT NULL,
  `XPersenUAS` int(11) NOT NULL,
  `XKKM` float NOT NULL,
  `XMapelAgama` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_nilai`
--

CREATE TABLE `cbt_nilai` (
  `Urut` int(11) NOT NULL,
  `XNomerUjian` varchar(20) NOT NULL,
  `XNIK` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XKodeUjian` varchar(10) NOT NULL,
  `XTokenUjian` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XTgl` date NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XBenar` int(11) NOT NULL,
  `XSalah` int(11) NOT NULL,
  `XNilai` int(11) NOT NULL,
  `XPersenPil` float NOT NULL,
  `XPersenEsai` float NOT NULL,
  `XEsai` float NOT NULL,
  `XTotalNilai` float NOT NULL,
  `XKodeMapel` varchar(10) NOT NULL,
  `XKodeKelas` varchar(10) NOT NULL,
  `XKodeSoal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) NOT NULL,
  `XSemester` int(11) NOT NULL,
  `XNamaKelas` varchar(20) NOT NULL,
  `XPilGanda` int(11) NOT NULL,
  `XStatus` enum('0','1','9') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_paketsoal`
--

CREATE TABLE `cbt_paketsoal` (
  `Urut` int(11) NOT NULL,
  `XKodeKelas` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XLevel` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XKodeLevel` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XSesi` varchar(11) COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `XJenisSoal` int(11) NOT NULL,
  `XPilGanda` int(11) NOT NULL,
  `XEsai` int(11) NOT NULL,
  `XPersenPil` int(11) NOT NULL,
  `XPersenEsai` int(11) NOT NULL,
  `XKodeSoal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XJumPilihan` int(11) NOT NULL DEFAULT 5,
  `XJumSoal` int(11) NOT NULL,
  `JumUjian` int(11) NOT NULL,
  `XAcakSoal` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `XGuru` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XStatusSoal` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `XTglBuat` date NOT NULL,
  `XKodeSekolah` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XPaketSoal` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XSemua` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT 'T'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_server`
--

CREATE TABLE `cbt_server` (
  `id` int(3) NOT NULL,
  `XServer` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_server`
--

INSERT INTO `cbt_server` (`id`, `XServer`) VALUES
(1, 'lokal');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_setid`
--

CREATE TABLE `cbt_setid` (
  `Urut` int(11) NOT NULL,
  `XKodeAY` varchar(10) NOT NULL,
  `XNamaAY` varchar(100) NOT NULL,
  `XStatus` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_setid`
--

INSERT INTO `cbt_setid` (`Urut`, `XKodeAY`, `XNamaAY`, `XStatus`) VALUES
(3, '2020/2021', 'Tahun Pelajaran 2020/2020', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_sinc`
--

CREATE TABLE `cbt_sinc` (
  `id` int(10) NOT NULL,
  `XServerId` varchar(50) NOT NULL,
  `XData1` enum('0','1') NOT NULL,
  `XData2` enum('0','1') NOT NULL,
  `XData3` enum('0','1') NOT NULL,
  `XData4` enum('0','1') NOT NULL,
  `XData5` enum('0','1') NOT NULL,
  `XData6` enum('0','1') NOT NULL,
  `XData7` enum('0','1') NOT NULL,
  `XData8` enum('0','1') NOT NULL,
  `XData9` enum('0','1') NOT NULL,
  `XData10` enum('0','1') NOT NULL,
  `XData11` enum('0','1') NOT NULL,
  `XData12` enum('0','1') NOT NULL,
  `XTanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_siswa`
--

CREATE TABLE `cbt_siswa` (
  `Urut` int(11) NOT NULL,
  `XNomerUjian` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XNIK` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XNamaSiswa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeLevel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XJenisKelamin` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XPassword` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `XFoto` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XAgama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSesi` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `XRuang` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XPilihan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XNamaKelas` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_siswa_ujian`
--

CREATE TABLE `cbt_siswa_ujian` (
  `Urut` int(11) NOT NULL,
  `XNomerUjian` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XNISN` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XPilGanda` int(11) NOT NULL,
  `XEsai` int(11) NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XTglUjian` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `XJamUjian` time NOT NULL,
  `XMulaiUjian` time NOT NULL,
  `XLastUpdate` time NOT NULL,
  `XSisaWaktu` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XLamaUjian` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XTargetUjian` time NOT NULL,
  `XTokenUjian` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `XSelesaiUjian` time NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeUjian` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSesi` int(11) NOT NULL,
  `XStatusUjian` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XGetIP` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XNamaKelas` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_soal`
--

CREATE TABLE `cbt_soal` (
  `Urut` int(11) NOT NULL,
  `XKodeMapel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKodeSoal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XJenisSoal` int(11) NOT NULL DEFAULT 1,
  `XNomerSoal` int(11) NOT NULL,
  `XRagu` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XTanya` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `XAudioTanya` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XVideoTanya` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarTanya` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab5` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKunciJawaban` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKategori` int(11) NOT NULL DEFAULT 1,
  `XAcakSoal` enum('A','T') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `XAcakOpsi` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XAgama` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XLevel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKodeKelas` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKodeSkolah` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes`
--

CREATE TABLE `cbt_tes` (
  `Urut` int(11) NOT NULL,
  `XKodeUjian` varchar(5) NOT NULL,
  `XNamaUjian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_tes`
--

INSERT INTO `cbt_tes` (`Urut`, `XKodeUjian`, `XNamaUjian`) VALUES
(1, 'UH', 'Ulangan Harian'),
(2, 'UTS', 'Ujian Tengah Semester'),
(3, 'UAS', 'Ujian Akhir Semester'),
(4, 'TO1', 'Try Out I'),
(5, 'TO2', 'Try Out II'),
(6, 'TO3', 'Try Out III'),
(7, 'TO4', 'Try Out IV'),
(8, 'TO5', 'Try Out V');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tugas`
--

CREATE TABLE `cbt_tugas` (
  `Urut` int(11) NOT NULL,
  `XLevel` varchar(10) NOT NULL,
  `XNIK` varchar(10) NOT NULL,
  `XKodeMapel` varchar(10) NOT NULL,
  `XKodeKelas` varchar(10) NOT NULL,
  `XKodeJurusan` varchar(10) NOT NULL,
  `XSemester` int(11) NOT NULL,
  `XSetId` varchar(10) NOT NULL,
  `XNilaiTugas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_ujian`
--

CREATE TABLE `cbt_ujian` (
  `Urut` int(11) NOT NULL,
  `XKodeUjian` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSemester` int(11) NOT NULL,
  `XKodeLevel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XLambat` enum('0','1') COLLATE latin1_general_ci NOT NULL,
  `XJumPilihan` int(11) NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XPilGanda` int(11) NOT NULL,
  `XEsai` int(11) NOT NULL,
  `XAcakSoal` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XTglUjian` date NOT NULL,
  `XJamUjian` time NOT NULL,
  `XBatasMasuk` time NOT NULL,
  `XSisaWaktu` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XLamaUjian` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XIdleTime` int(11) NOT NULL,
  `XTokenUjian` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `XGuru` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XTglBuat` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XStatusUjian` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XProktor` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `XNIPProktor` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XPengawas` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `XNIPPengawas` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XCatatan` text COLLATE latin1_general_ci NOT NULL,
  `XSesi` varchar(11) COLLATE latin1_general_ci NOT NULL DEFAULT '1',
  `XTampil` int(11) NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XStatusToken` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XLevel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XPdf` int(1) NOT NULL,
  `XFilePdf` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `XListening` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_upload_file`
--

CREATE TABLE `cbt_upload_file` (
  `Urut` int(11) NOT NULL,
  `XNamaFile` varchar(250) NOT NULL,
  `XFolder` varchar(250) NOT NULL,
  `XCreated` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_user`
--

CREATE TABLE `cbt_user` (
  `Urut` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `NIP` varchar(30) NOT NULL,
  `Nama` varchar(200) NOT NULL,
  `Alamat` text NOT NULL,
  `HP` varchar(20) NOT NULL,
  `Faxs` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `login` int(1) NOT NULL,
  `Status` enum('0','1') NOT NULL,
  `XPoto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_user`
--

INSERT INTO `cbt_user` (`Urut`, `Username`, `Password`, `NIP`, `Nama`, `Alamat`, `HP`, `Faxs`, `Email`, `login`, `Status`, `XPoto`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', 'MUH. HAMIM, S.Kom', '', '', '', '', 1, '1', 'bind3.jpg'),
(13, 'guru', '77e69c137812518e359196bb2f5e9bb9', '', 'MUHAMMAD MURSYID, S.E', '', '', '', '', 2, '1', 'guru.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_zona`
--

CREATE TABLE `cbt_zona` (
  `Urut` int(10) NOT NULL,
  `XZona` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_zona`
--

INSERT INTO `cbt_zona` (`Urut`, `XZona`) VALUES
(1, 'Asia/Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `inf_lokasi`
--

CREATE TABLE `inf_lokasi` (
  `lokasi_ID` int(11) NOT NULL,
  `lokasi_kode` varchar(50) NOT NULL DEFAULT '',
  `lokasi_nama` varchar(100) NOT NULL DEFAULT '',
  `lokasi_propinsi` int(2) NOT NULL,
  `lokasi_kabupatenkota` int(2) UNSIGNED ZEROFILL DEFAULT NULL,
  `lokasi_kecamatan` int(2) UNSIGNED ZEROFILL NOT NULL,
  `lokasi_kelurahan` int(4) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inf_lokasi`
--

INSERT INTO `inf_lokasi` (`lokasi_ID`, `lokasi_kode`, `lokasi_nama`, `lokasi_propinsi`, `lokasi_kabupatenkota`, `lokasi_kecamatan`, `lokasi_kelurahan`) VALUES
(1, '35.00.00.0000', 'JAWA TIMUR', 35, 00, 00, 0000),
(2, '35.00.00.0000', 'KABUPATEN PROBOLINGGO', 35, 13, 00, 0000),
(3, '35.13.01.0000', 'PAITON', 35, 13, 01, 0000),
(4, '35.13.02.0000', 'KRAKSAAN', 35, 13, 02, 0000),
(5, '35.13.03.0000', 'PAJARAKAN', 35, 13, 03, 0000),
(6, '35.13.04.0000', 'TIRIS', 35, 13, 04, 0000),
(7, '35.13.05.0000', 'KRUCIL', 35, 13, 05, 0000),
(8, '35.13.06.0000', 'BESUK', 35, 13, 06, 0000),
(9, '35.13.07.0000', 'DRINGU', 35, 13, 07, 0000),
(10, '35.13.08.0000', 'BANYUANYAR', 35, 13, 08, 0000),
(11, '35.13.09.0000', 'MARON', 35, 13, 09, 0000),
(12, '35.13.10.0000', 'TEGALSIWALAN', 35, 13, 10, 0000),
(13, '35.13.11.0000', 'LECES', 35, 13, 11, 0000),
(14, '35.13.12.0000', 'GADING', 35, 13, 12, 0000),
(15, '35.13.13.0000', 'GENDING', 35, 13, 13, 0000),
(16, '35.13.14.0000', 'TONGAS', 35, 13, 14, 0000),
(17, '35.13.15.0000', 'KOTA ANYAR', 35, 13, 15, 0000),
(18, '35.13.16.0000', 'KREJENGAN', 35, 13, 16, 0000),
(19, '35.13.17.0000', 'KURIPAN', 35, 13, 17, 0000),
(20, '35.13.18.0000', 'LUMBANG', 35, 13, 18, 0000),
(21, '35.13.19.0000', 'SUKAPURA', 35, 13, 19, 0000),
(22, '35.13.20.0000', 'PAKUNIRAN', 35, 13, 20, 0000),
(23, '35.13.21.0000', 'WONOMERTO', 35, 13, 21, 0000),
(24, '35.13.22.0000', 'SUMBERASIH', 35, 13, 22, 0000),
(25, '35.00.01.0000', 'SUMBER', 35, 13, 23, 0000);

-- --------------------------------------------------------

--
-- Table structure for table `server_pusat`
--

CREATE TABLE `server_pusat` (
  `Urut` int(11) NOT NULL,
  `XServerId` varchar(50) NOT NULL,
  `XSekolah` varchar(200) NOT NULL,
  `XIPSekolah` varchar(50) NOT NULL,
  `XStatus` enum('0','1') NOT NULL,
  `XPass` varchar(50) NOT NULL,
  `XDbName` varchar(50) NOT NULL,
  `XUsername` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `server_pusat`
--

INSERT INTO `server_pusat` (`Urut`, `XServerId`, `XSekolah`, `XIPSekolah`, `XStatus`, `XPass`, `XDbName`, `XUsername`) VALUES
(1, '69886300', 'SMART APLICATION', 'localhost', '1', '', 'db_ct', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `server_sekolah`
--

CREATE TABLE `server_sekolah` (
  `Urut` int(11) NOT NULL,
  `XServerId` varchar(50) NOT NULL,
  `XSekolah` varchar(200) NOT NULL,
  `XIPSekolah` varchar(50) NOT NULL,
  `XStatus` enum('0','1') NOT NULL,
  `XAlamatSek` text NOT NULL,
  `XStatusSinc` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cbt_admin`
--
ALTER TABLE `cbt_admin`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_header`
--
ALTER TABLE `cbt_header`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  ADD PRIMARY KEY (`Urutan`);

--
-- Indexes for table `cbt_kelas`
--
ALTER TABLE `cbt_kelas`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_mapel`
--
ALTER TABLE `cbt_mapel`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_nilai`
--
ALTER TABLE `cbt_nilai`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_paketsoal`
--
ALTER TABLE `cbt_paketsoal`
  ADD PRIMARY KEY (`Urut`),
  ADD KEY `Urut` (`Urut`);

--
-- Indexes for table `cbt_server`
--
ALTER TABLE `cbt_server`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cbt_setid`
--
ALTER TABLE `cbt_setid`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_sinc`
--
ALTER TABLE `cbt_sinc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cbt_siswa`
--
ALTER TABLE `cbt_siswa`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_siswa_ujian`
--
ALTER TABLE `cbt_siswa_ujian`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_tes`
--
ALTER TABLE `cbt_tes`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_tugas`
--
ALTER TABLE `cbt_tugas`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_ujian`
--
ALTER TABLE `cbt_ujian`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_upload_file`
--
ALTER TABLE `cbt_upload_file`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_user`
--
ALTER TABLE `cbt_user`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_zona`
--
ALTER TABLE `cbt_zona`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `inf_lokasi`
--
ALTER TABLE `inf_lokasi`
  ADD PRIMARY KEY (`lokasi_ID`),
  ADD KEY `lokasi_kode` (`lokasi_kode`),
  ADD KEY `lokasi_propinsi` (`lokasi_propinsi`),
  ADD KEY `lokasi_kabupatenkota` (`lokasi_kabupatenkota`),
  ADD KEY `lokasi_kecamatan` (`lokasi_kecamatan`),
  ADD KEY `lokasi_kelurahan` (`lokasi_kelurahan`);

--
-- Indexes for table `server_pusat`
--
ALTER TABLE `server_pusat`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `server_sekolah`
--
ALTER TABLE `server_sekolah`
  ADD PRIMARY KEY (`Urut`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cbt_admin`
--
ALTER TABLE `cbt_admin`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cbt_header`
--
ALTER TABLE `cbt_header`
  MODIFY `Urut` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  MODIFY `Urutan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbt_kelas`
--
ALTER TABLE `cbt_kelas`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbt_mapel`
--
ALTER TABLE `cbt_mapel`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbt_nilai`
--
ALTER TABLE `cbt_nilai`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbt_paketsoal`
--
ALTER TABLE `cbt_paketsoal`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbt_server`
--
ALTER TABLE `cbt_server`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cbt_setid`
--
ALTER TABLE `cbt_setid`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cbt_sinc`
--
ALTER TABLE `cbt_sinc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbt_siswa`
--
ALTER TABLE `cbt_siswa`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbt_siswa_ujian`
--
ALTER TABLE `cbt_siswa_ujian`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbt_tes`
--
ALTER TABLE `cbt_tes`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cbt_tugas`
--
ALTER TABLE `cbt_tugas`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbt_ujian`
--
ALTER TABLE `cbt_ujian`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbt_upload_file`
--
ALTER TABLE `cbt_upload_file`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbt_user`
--
ALTER TABLE `cbt_user`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cbt_zona`
--
ALTER TABLE `cbt_zona`
  MODIFY `Urut` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inf_lokasi`
--
ALTER TABLE `inf_lokasi`
  MODIFY `lokasi_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5022;

--
-- AUTO_INCREMENT for table `server_pusat`
--
ALTER TABLE `server_pusat`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `server_sekolah`
--
ALTER TABLE `server_sekolah`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
