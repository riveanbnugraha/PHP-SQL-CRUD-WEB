-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Nov 2024 pada 01.04
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba`
--
CREATE DATABASE IF NOT EXISTS `coba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `coba`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `agents`
--

CREATE TABLE `agents` (
  `AGENT_CODE` varchar(6) NOT NULL DEFAULT '',
  `AGENT_NAME` varchar(40) DEFAULT NULL,
  `WORKING_AREA` varchar(35) DEFAULT NULL,
  `COMMISSION` decimal(10,2) DEFAULT NULL,
  `PHONE_NO` varchar(15) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agents`
--

INSERT INTO `agents` (`AGENT_CODE`, `AGENT_NAME`, `WORKING_AREA`, `COMMISSION`, `PHONE_NO`, `COUNTRY`) VALUES
('A007  ', 'Ramasundar                              ', 'Bangalore                          ', 0.15, '077-25814763   ', '\r'),
('A003  ', 'Alex                                    ', 'London                             ', 0.13, '075-12458969   ', '\r'),
('A008  ', 'Alford                                  ', 'New York                           ', 0.12, '044-25874365   ', '\r'),
('A011  ', 'Ravi Kumar                              ', 'Bangalore                          ', 0.15, '077-45625874   ', '\r'),
('A010  ', 'Santakumar                              ', 'Chennai                            ', 0.14, '007-22388644   ', '\r'),
('A012  ', 'Lucida                                  ', 'San Jose                           ', 0.12, '044-52981425   ', '\r'),
('A005  ', 'Anderson                                ', 'Brisban                            ', 0.13, '045-21447739   ', '\r'),
('A001  ', 'Subbarao                                ', 'Bangalore                          ', 0.14, '077-12346674   ', '\r'),
('A002  ', 'Mukesh                                  ', 'Mumbai                             ', 0.11, '029-12358964   ', '\r'),
('A006  ', 'McDen                                   ', 'London                             ', 0.15, '078-22255588   ', '\r'),
('A004  ', 'Ivan                                    ', 'Torento                            ', 0.15, '008-22544166   ', '\r'),
('A009  ', 'Benjamin                                ', 'Hampshair                          ', 0.11, '008-22536178   ', '\r');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `CUST_CODE` varchar(6) NOT NULL,
  `CUST_NAME` varchar(40) NOT NULL,
  `CUST_CITY` varchar(35) DEFAULT NULL,
  `WORKING_AREA` varchar(35) NOT NULL,
  `CUST_COUNTRY` varchar(20) NOT NULL,
  `GRADE` decimal(10,0) DEFAULT NULL,
  `OPENING_AMT` decimal(12,2) NOT NULL,
  `RECEIVE_AMT` decimal(12,2) NOT NULL,
  `PAYMENT_AMT` decimal(12,2) NOT NULL,
  `OUTSTANDING_AMT` decimal(12,2) NOT NULL,
  `PHONE_NO` varchar(17) NOT NULL,
  `AGENT_CODE` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`CUST_CODE`, `CUST_NAME`, `CUST_CITY`, `WORKING_AREA`, `CUST_COUNTRY`, `GRADE`, `OPENING_AMT`, `RECEIVE_AMT`, `PAYMENT_AMT`, `OUTSTANDING_AMT`, `PHONE_NO`, `AGENT_CODE`) VALUES
('C00013', 'Holmes', 'London                             ', 'London', 'UK', 2, 6000.00, 5000.00, 7000.00, 4000.00, 'BBBBBBB', 'A003  '),
('C00001', 'Micheal', 'New York                           ', 'New York', 'USA', 2, 3000.00, 5000.00, 2000.00, 6000.00, 'CCCCCCC', 'A008  '),
('C00020', 'Albert', 'New York                           ', 'New York', 'USA', 3, 5000.00, 7000.00, 6000.00, 6000.00, 'BBBBSBB', 'A008  '),
('C00025', 'Ravindran', 'Bangalore                          ', 'Bangalore', 'India', 2, 5000.00, 7000.00, 4000.00, 8000.00, 'AVAVAVA', 'A011  '),
('C00024', 'Cook', 'London                             ', 'London', 'UK', 2, 4000.00, 9000.00, 7000.00, 6000.00, 'FSDDSDF', 'A006  '),
('C00015', 'Stuart', 'London                             ', 'London', 'UK', 1, 6000.00, 8000.00, 3000.00, 11000.00, 'GFSGERS', 'A003  '),
('C00002', 'Bolt', 'New York                           ', 'New York', 'USA', 3, 5000.00, 7000.00, 9000.00, 3000.00, 'DDNRDRH', 'A008  '),
('C00018', 'Fleming', 'Brisban                            ', 'Brisban', 'Australia', 2, 7000.00, 7000.00, 9000.00, 5000.00, 'NHBGVFC', 'A005  '),
('C00021', 'Jacks', 'Brisban                            ', 'Brisban', 'Australia', 1, 7000.00, 7000.00, 7000.00, 7000.00, 'WERTGDF', 'A005  '),
('C00019', 'Yearannaidu', 'Chennai                            ', 'Chennai', 'India', 1, 8000.00, 7000.00, 7000.00, 8000.00, 'ZZZZBFV', 'A010  '),
('C00005', 'Sasikant', 'Mumbai                             ', 'Mumbai', 'India', 1, 7000.00, 11000.00, 7000.00, 11000.00, '147-25896312', 'A002  '),
('C00007', 'Ramanathan', 'Chennai                            ', 'Chennai', 'India', 1, 7000.00, 11000.00, 9000.00, 9000.00, 'GHRDWSD', 'A010  '),
('C00022', 'Avinash', 'Mumbai                             ', 'Mumbai', 'India', 2, 7000.00, 11000.00, 9000.00, 9000.00, '113-12345678', 'A002  '),
('C00004', 'Winston', 'Brisban                            ', 'Brisban', 'Australia', 1, 5000.00, 8000.00, 7000.00, 6000.00, 'AAAAAAA', 'A005  '),
('C00023', 'Karl', 'London                             ', 'London', 'UK', 0, 4000.00, 6000.00, 7000.00, 3000.00, 'AAAABAA', 'A006  '),
('C00006', 'Shilton', 'Torento                            ', 'Torento', 'Canada', 1, 10000.00, 7000.00, 6000.00, 11000.00, 'DDDDDDD', 'A004  '),
('C00010', 'Charles', 'Hampshair                          ', 'Hampshair', 'UK', 3, 6000.00, 4000.00, 5000.00, 5000.00, 'MMMMMMM', 'A009  '),
('C00017', 'Srinivas', 'Bangalore                          ', 'Bangalore', 'India', 2, 8000.00, 4000.00, 3000.00, 9000.00, 'AAAAAAB', 'A007  '),
('C00012', 'Steven', 'San Jose                           ', 'San Jose', 'USA', 1, 5000.00, 7000.00, 9000.00, 3000.00, 'KRFYGJK', 'A012  '),
('C00008', 'Karolina', 'Torento                            ', 'Torento', 'Canada', 1, 7000.00, 7000.00, 9000.00, 5000.00, 'HJKORED', 'A004  '),
('C00003', 'Martin', 'Torento                            ', 'Torento', 'Canada', 2, 8000.00, 7000.00, 7000.00, 8000.00, 'MJYURFD', 'A004  '),
('C00009', 'Ramesh', 'Mumbai                             ', 'Mumbai', 'India', 3, 8000.00, 7000.00, 3000.00, 12000.00, 'Phone No', 'A002  '),
('C00014', 'Rangarappa', 'Bangalore                          ', 'Bangalore', 'India', 2, 8000.00, 11000.00, 7000.00, 12000.00, 'AAAATGF', 'A001  '),
('C00016', 'Venkatpati', 'Bangalore                          ', 'Bangalore', 'India', 2, 8000.00, 11000.00, 7000.00, 12000.00, 'JRTVFDD', 'A007  '),
('C00011', 'Sundariya', 'Chennai                            ', 'Chennai', 'India', 3, 7000.00, 11000.00, 7000.00, 11000.00, 'PPHGRTS', 'A010  ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `ORD_NUM` decimal(6,0) NOT NULL,
  `ORD_AMOUNT` decimal(12,2) NOT NULL,
  `ADVANCE_AMOUNT` decimal(12,2) NOT NULL,
  `ORD_DATE` date NOT NULL,
  `CUST_CODE` varchar(6) NOT NULL,
  `AGENT_CODE` varchar(6) NOT NULL,
  `ORD_DESCRIPTION` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`ORD_NUM`, `ORD_AMOUNT`, `ADVANCE_AMOUNT`, `ORD_DATE`, `CUST_CODE`, `AGENT_CODE`, `ORD_DESCRIPTION`) VALUES
(200100, 1000.00, 600.00, '2008-01-08', 'C00015', 'A003  ', 'SOD\r'),
(200110, 3000.00, 500.00, '2008-04-15', 'C00019', 'A010  ', 'SOD\r'),
(200107, 4500.00, 900.00, '2008-08-30', 'C00007', 'A010  ', 'SOD\r'),
(200112, 2000.00, 400.00, '2008-05-30', 'C00016', 'A007  ', 'SOD\r'),
(200113, 4000.00, 600.00, '2008-06-10', 'C00022', 'A002  ', 'SOD\r'),
(200102, 2000.00, 300.00, '2008-05-25', 'C00012', 'A012  ', 'SOD\r'),
(200114, 3500.00, 2000.00, '2008-08-15', 'C00002', 'A008  ', 'SOD\r'),
(200122, 2500.00, 400.00, '2008-09-16', 'C00003', 'A004  ', 'SOD\r'),
(200118, 500.00, 100.00, '2008-07-20', 'C00023', 'A006  ', 'SOD\r'),
(200119, 4000.00, 700.00, '2008-09-16', 'C00007', 'A010  ', 'SOD\r'),
(200121, 1500.00, 600.00, '2008-09-23', 'C00008', 'A004  ', 'SOD\r'),
(200130, 2500.00, 400.00, '2008-07-30', 'C00025', 'A011  ', 'SOD\r'),
(200134, 4200.00, 1800.00, '2008-09-25', 'C00004', 'A005  ', 'SOD\r'),
(200115, 2000.00, 1200.00, '2008-02-08', 'C00013', 'A013  ', 'SOD\r'),
(200108, 4000.00, 600.00, '2008-02-15', 'C00008', 'A004  ', 'SOD\r'),
(200103, 1500.00, 700.00, '2008-05-15', 'C00021', 'A005  ', 'SOD\r'),
(200105, 2500.00, 500.00, '2008-07-18', 'C00025', 'A011  ', 'SOD\r'),
(200109, 3500.00, 800.00, '2008-07-30', 'C00011', 'A010  ', 'SOD\r'),
(200101, 3000.00, 1000.00, '2008-07-15', 'C00001', 'A008  ', 'SOD\r'),
(200111, 1000.00, 300.00, '2008-07-10', 'C00020', 'A008  ', 'SOD\r'),
(200104, 1500.00, 500.00, '2008-03-13', 'C00006', 'A004  ', 'SOD\r'),
(200106, 2500.00, 700.00, '2008-04-20', 'C00005', 'A002  ', 'SOD\r'),
(200125, 2000.00, 600.00, '2008-10-10', 'C00018', 'A005  ', 'SOD\r'),
(200117, 800.00, 200.00, '2008-10-20', 'C00014', 'A001  ', 'SOD\r'),
(200123, 500.00, 100.00, '2008-09-16', 'C00022', 'A002  ', 'SOD\r'),
(200120, 500.00, 100.00, '2008-07-20', 'C00009', 'A002  ', 'SOD\r'),
(200116, 500.00, 100.00, '2008-07-13', 'C00010', 'A009  ', 'SOD\r'),
(200124, 500.00, 100.00, '2008-06-20', 'C00017', 'A007  ', 'SOD\r'),
(200126, 500.00, 100.00, '2008-06-24', 'C00022', 'A002  ', 'SOD\r'),
(200129, 2500.00, 500.00, '2008-07-20', 'C00024', 'A006  ', 'SOD\r'),
(200127, 2500.00, 400.00, '2008-07-20', 'C00015', 'A003  ', 'SOD\r'),
(200128, 3500.00, 1500.00, '2008-07-20', 'C00009', 'A002  ', 'SOD\r'),
(200135, 2000.00, 800.00, '2008-09-16', 'C00007', 'A010  ', 'SOD\r'),
(200131, 900.00, 150.00, '2008-08-26', 'C00012', 'A012  ', 'SOD\r'),
(200133, 1200.00, 400.00, '2008-06-29', 'C00009', 'A002  ', 'SOD\r'),
(200132, 4000.00, 2000.00, '2008-08-15', 'C00013', 'A013  ', 'SOD\r');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `price` int UNSIGNED NOT NULL,
  `quantity` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `quantity`, `created_at`) VALUES
('P001', 'bebek cak otnay', NULL, 8, 9, '2024-09-04 02:24:00'),
('P002', 'bakpia sugeng', NULL, 3, 5, '2024-09-04 03:25:26'),
('P003', 'padang hutabarat', NULL, 4, 3, '2024-09-04 03:25:26'),
('P004', 'gudeg bu sogma', NULL, 1, 2, '2024-09-04 03:25:26'),
('P005', 'kwetiau chi lang siong', NULL, 7, 2, '2024-09-04 03:25:26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`AGENT_CODE`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD KEY `CUSTCITY` (`CUST_CITY`),
  ADD KEY `CUSTCITY_COUNTRY` (`CUST_CITY`,`CUST_COUNTRY`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
--
-- Database: `kampuserd`
--
CREATE DATABASE IF NOT EXISTS `kampuserd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `kampuserd`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nip` int NOT NULL,
  `nama_dsn` varchar(100) NOT NULL,
  `alamat_dsn` varchar(200) NOT NULL,
  `kode_mk` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip`, `nama_dsn`, `alamat_dsn`, `kode_mk`) VALUES
(6, 'Jared MM MPd', 'Surabaya Selatan', 1),
(7, 'Prof. dr. Diki', 'Surabaya Timur', 2),
(8, 'Drs. Hanna, S.Kom', 'Surabaya Barat', 5),
(9, 'Jahar, S.H M.H', 'Surabaya Tenggara', 3),
(10, 'Prof. Fadlan, S.T', 'Surabaya Pusat', 4),
(13, 'Ir. Gautama', 'Surabaya Barat Laut', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nisn` int NOT NULL,
  `nama_mhs` varchar(100) NOT NULL,
  `alamat_mhs` varchar(200) NOT NULL,
  `nip` int DEFAULT NULL,
  `kode_mk` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nisn`, `nama_mhs`, `alamat_mhs`, `nip`, `kode_mk`) VALUES
(1, 'susan', 'Jemursari', 6, 1),
(2, 'noel', 'Ngagel', 6, 1),
(3, 'danny', 'Jetis', 7, 2),
(4, 'Bayu', 'Wonokromo', 7, 2),
(5, 'Wulan', 'Wonocolo', 8, 3),
(6, 'Chandra', 'Ketintang', 8, 3),
(7, 'Riska', 'Bratang', 9, 4),
(8, 'Aditya', 'Tempel', 9, 3),
(9, 'Intan', 'Simo', 10, 5),
(10, 'Dimas', 'Mayjend', 10, 5),
(11, 'Putri', 'A Yani', 7, 4),
(12, 'Fajar', 'Tunjungan', 6, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `kode_mk` int NOT NULL,
  `nama_mk` varchar(100) NOT NULL,
  `desk_mk` varchar(200) DEFAULT NULL,
  `nip` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`kode_mk`, `nama_mk`, `desk_mk`, `nip`) VALUES
(1, 'Matematika', 'lanjutan dan minat', 6),
(2, 'Kimia', 'Senyawa dan unsur', 7),
(3, 'Geologi', 'Material dan Fisika', 9),
(4, 'Kedokteran', 'Bedah dan kulit', 10),
(5, 'Komputer', 'Soft dan Hardware', 8),
(6, 'Teknik', 'Mesin dan Bangunan', 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `kode_r` int NOT NULL,
  `nama_r` varchar(100) NOT NULL,
  `alamat_r` varchar(200) NOT NULL,
  `kode_mk` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`kode_r`, `nama_r`, `alamat_r`, `kode_mk`) VALUES
(1, 'A.01', 'lorong A', 1),
(2, 'B.02', 'lorong A', 2),
(3, 'C.03', 'lorong B', 3),
(4, 'D.04', 'lorong B', 4),
(5, 'F.05', 'lorong C', 5),
(6, 'G.06', 'lorong C', 6);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `kode_mk` (`kode_mk`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `nip` (`nip`),
  ADD KEY `kode_mk` (`kode_mk`);

--
-- Indeks untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`kode_mk`),
  ADD KEY `nip` (`nip`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`kode_r`),
  ADD KEY `kode_mk` (`kode_mk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `nip` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `nisn` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `matkul`
--
ALTER TABLE `matkul`
  MODIFY `kode_mk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `ruang`
--
ALTER TABLE `ruang`
  MODIFY `kode_r` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`kode_mk`) REFERENCES `matkul` (`kode_mk`);

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `matkul` (`kode_mk`);

--
-- Ketidakleluasaan untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD CONSTRAINT `matkul_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`);

--
-- Ketidakleluasaan untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD CONSTRAINT `ruang_ibfk_1` FOREIGN KEY (`kode_mk`) REFERENCES `matkul` (`kode_mk`);
--
-- Database: `konsli`
--
CREATE DATABASE IF NOT EXISTS `konsli` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `konsli`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsli1`
--

CREATE TABLE `konsli1` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenisjasa` varchar(100) NOT NULL,
  `deskripsi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `konsli1`
--

INSERT INTO `konsli1` (`id`, `nama`, `jenisjasa`, `deskripsi`) VALUES
(2, 'riede', 'web mockup', 'bagus banget '),
(6, 'Rivean Bintang', 'web ', 'bagus hasil kerja sesuai k'),
(13, 'awsd', 'servis gitar', 'suara gitar saya jadi drum');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `konsli1`
--
ALTER TABLE `konsli1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `konsli1`
--
ALTER TABLE `konsli1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `smknrive`
--
CREATE DATABASE IF NOT EXISTS `smknrive` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `smknrive`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `NISN` int NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Kelas` int NOT NULL,
  `Absen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`NISN`, `Nama`, `Kelas`, `Absen`) VALUES
(3, 'rideon', 24, '11111'),
(4, 'sliukibidi', 23, '12112'),
(5, 'jealousy', 13, '34');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`NISN`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `NISN` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
