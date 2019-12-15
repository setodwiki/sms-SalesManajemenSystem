-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2019 pada 16.25
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sms`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`barang_id`, `kategori_id`, `nama_barang`, `harga`) VALUES
(1, 1, 'Velvy GM SC 1000ML Green Tea & Aloe Vera x12', 40455),
(2, 1, 'Velvy GM SC 1000ML Licorice  & Shea Butter x12', 40455),
(3, 1, 'Velvy GM SC 1000ML Rosehip Seed Oil & Peach x12', 40455),
(4, 1, 'Velvy GM SC 1000ML Royal Jelly & Sunflower x12', 40455),
(5, 1, 'Velvy GM SC 1000ML Silk & Grape Seed OIl x12', 40455),
(6, 1, 'Velvy GM SC 800ML Licorice & Shea Butter x12', 29091),
(7, 1, 'Velvy GM SC 800ML Green Tea & Aloe Vera x12', 29091),
(8, 1, 'Velvy GM SC 800ML Rosehip Seed Oil & Peach x12', 29091),
(9, 1, 'Velvy GM SC 800ML Royal Jelly & Sunflower x12', 29091),
(10, 1, 'Velvy GM SC 800ML Silk & Grape Seed Oil x12', 29091),
(11, 1, 'Velvy GM SC 250ML Green Tea & Aloe Vera x24', 13500),
(12, 1, 'Velvy GM SC 250ML Licorice & Shea Butter x24', 13500),
(13, 1, 'Velvy GM SC 250ML Rosehip Seed Oil & Peach x24', 13500),
(14, 1, 'Velvy GM SC 250ML Royal Jelly & Sunflower x24', 13500),
(15, 1, 'Velvy GM SC 250ML Silk & Grape Seed Oil x24', 13500),
(16, 1, 'Velvy GM SC REF 250ML Green Tea & Aloe Vera x36', 12150),
(17, 1, 'Velvy GM SC REF 250ML Licorice & Shea Butter x36', 12150),
(18, 1, 'Velvy GM SC REF 250ML Rosehip Seed Oil & Peach x36', 12150),
(19, 1, 'Velvy GM SC REF 250ML Royal Jelly & Sunflower x36', 12150),
(20, 1, 'Velvy GM SC REF 250ML Silk & Grape Seed Oil x36', 12150),
(21, 1, 'Velvy GM SC 250ML +50ML Green Tea & Aloe Vera x24', 13500),
(22, 1, 'Velvy GM SC 250ML +50ML Licorice & Shea Butter x24', 13500),
(23, 1, 'Velvy GM SC 250ML +50ML Rosehip Seed Oil & Peach x24', 13500),
(24, 1, 'Velvy GM SC 250ML +50ML Royal Jelly & Sunflower x24', 13500),
(25, 1, 'Velvy GM SC 250ML +50ML Silk & Grape Seed Oil x24', 13500),
(26, 1, 'Velvy GM SC 95ML Green Tea & Aloe Vera x80', 9500),
(27, 1, 'Velvy GM SC 95ML Licorice & Shea Butter x80', 9500),
(28, 1, 'Velvy GM SC 95ML Silk & Grape Seed Oil x80', 9500),
(29, 1, 'Velvy GM SC 95ML Royal Jelly & Sunflower x80', 9500),
(30, 1, 'Velvy GM SC 95ML Rosehip Seed Oil & Peach x80', 9500),
(31, 2, 'Velvy TTO SG 1000ML Citrus & Aloe Vera x12', 35000),
(32, 2, 'Velvy TTO SG 1000ML Peony & Magnolia x12', 35000),
(33, 2, 'Velvy TTO SG 1000ML Calendula & Chamomile x12', 35000),
(34, 2, 'Velvy TTO SG 95ML Citrus & Aloe Vera x80', 9500),
(35, 2, 'Velvy TTO SG 95ML Peony & Magnolia x80', 9500),
(36, 2, 'Velvy TTO SG 95ML Calendula & Chamomile x80', 9500),
(37, 3, 'Velvy GM HBL 95ML Green Tea & Aloe Vera x80', 9500),
(38, 3, 'Velvy GM HBL 95ML Licorice & Shea Butter x80', 9500),
(39, 3, 'Velvy GM HBL 95ML Rosehip Seed Oil & Peach x80', 9500),
(40, 3, 'Velvy GM HBL 95ML Royal Jelly & Sunflower x80', 9500),
(41, 3, 'Velvy GM HBL 95ML Silk & Grape Seed Oil x80', 9500),
(42, 3, 'Velvy GM HBL 300ML Green Tea & Aloe Vera x18', 17000),
(43, 3, 'Velvy GM HBL 300ML Licorice & Shea Butter x18', 17000),
(44, 3, 'Velvy GM HBL 300ML Rosehip Seed Oil & Peach x18', 17000),
(45, 3, 'Velvy GM HBL 300ML Royal Jelly & Sunflower x18', 17000),
(46, 3, 'Velvy GM HBL 300ML Silk & Grape Seed Oil x18', 17000),
(47, 3, 'Velvy GM HBL 600ML Green Tea & Aloe Vera x12', 32000),
(48, 3, 'Velvy GM HBL 600ML Licorice & Shea Butter x12', 32000),
(49, 3, 'Velvy GM HBL 600ML Rosehip Seed Oil & Peach x12', 32000),
(50, 3, 'Velvy GM HBL 600ML Royal Jelly & Sunflower x12', 32000),
(51, 3, 'Velvy GM HBL 600ML Silk & Grape Seed Oil x12', 32000),
(52, 4, 'Velvy GM BS 100G Green Tea & Aloe Vera x24', 9000),
(53, 4, 'Velvy GM BS 100G Licorice & Shea Butter x24', 9000),
(54, 4, 'Velvy GM BS 100G Rosehip Seed Oil & Peach x24', 9000),
(55, 4, 'Velvy GM BS 100G Royal Jelly & Sunflower', 9000),
(56, 4, 'Velvy GM BS 100G Silk & Grape Seed Oil x24', 9000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_barang`
--

CREATE TABLE `kategori_barang` (
  `kategori_id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_barang`
--

INSERT INTO `kategori_barang` (`kategori_id`, `nama_kategori`) VALUES
(1, 'Shower Cream'),
(2, 'Shower Gel'),
(3, 'Body Lotion'),
(4, 'Body Scrub'),
(5, 'Body Miss'),
(6, 'Talc'),
(7, 'Iomi Shower Cream'),
(8, 'Iomi LipeCream'),
(9, 'Iomi Eyebrow'),
(10, 'Iomi Sheed Mask');

-- --------------------------------------------------------

--
-- Struktur dari tabel `operator`
--

CREATE TABLE `operator` (
  `operator_id` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `last_login` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `operator`
--

INSERT INTO `operator` (`operator_id`, `nama_lengkap`, `username`, `password`, `last_login`) VALUES
(1, 'Seto Dwiki Kurniawan', 'seto', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-06-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_detail`
--

CREATE TABLE `paket_detail` (
  `id_paket` int(11) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `penjualan_id` int(11) NOT NULL,
  `no_so` varchar(50) NOT NULL,
  `jml_paket` int(100) NOT NULL,
  `pengiriman_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '1= sudah diproses , 0 belum diproses'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket_detail`
--

INSERT INTO `paket_detail` (`id_paket`, `tgl_penjualan`, `penjualan_id`, `no_so`, `jml_paket`, `pengiriman_id`, `transaksi_id`, `status`) VALUES
(1, '2019-06-07', 1, '1906001', 10, 1, 1, '1'),
(2, '2019-06-08', 2, '1906002', 20, 2, 1, '1'),
(3, '2019-06-09', 3, '1906003', 30, 3, 1, '1'),
(4, '2019-06-10', 11, '1906004', 30, 4, 1, '1'),
(5, '2019-06-11', 12, '1906005', 40, 6, 1, '1'),
(6, '2019-06-12', 14, '1906006', 50, 7, 1, '1'),
(7, '2019-06-11', 14, '1906007', 70, 9, 1, '1'),
(8, '2019-06-13', 16, '1906008', 10, 8, 2, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE `pengiriman` (
  `pengiriman_id` int(11) NOT NULL,
  `nama_pengiriman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengiriman`
--

INSERT INTO `pengiriman` (`pengiriman_id`, `nama_pengiriman`) VALUES
(1, 'JNE YES'),
(2, 'J&T Express'),
(3, 'Go-Send (Sameday)'),
(4, 'Grab (Express)'),
(6, 'Ninja Express'),
(7, 'Etobee'),
(8, 'JD iD'),
(9, 'Anter aja');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL,
  `jenis_penjualan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`penjualan_id`, `jenis_penjualan`) VALUES
(1, 'Bukalapak'),
(2, 'Lazada'),
(3, 'Tokopedia'),
(11, 'Elevenia'),
(12, 'Blibli.com'),
(14, 'Shopee'),
(15, 'Tunai'),
(16, 'JakMall'),
(17, 'Akulaku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stk_barang`
--

CREATE TABLE `stk_barang` (
  `barang_id` int(11) NOT NULL,
  `nama_barang` varchar(250) NOT NULL,
  `nama_kategori` varchar(250) NOT NULL,
  `stok` int(11) NOT NULL,
  `ed_barang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stk_barang`
--

INSERT INTO `stk_barang` (`barang_id`, `nama_barang`, `nama_kategori`, `stok`, `ed_barang`) VALUES
(1, 'Velvy SC 1000ml Green Tea', 'Shower Cream', 10, '01-01-2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `operator_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `tanggal_transaksi`, `operator_id`) VALUES
(1, '2019-06-12', 1),
(2, '2019-06-13', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `t_detail_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `ed_barang` int(100) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '1= sudah diproses , 0 belum diproses'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indeks untuk tabel `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`operator_id`);

--
-- Indeks untuk tabel `paket_detail`
--
ALTER TABLE `paket_detail`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indeks untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`pengiriman_id`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`penjualan_id`);

--
-- Indeks untuk tabel `stk_barang`
--
ALTER TABLE `stk_barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`t_detail_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `kategori_barang`
--
ALTER TABLE `kategori_barang`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `operator`
--
ALTER TABLE `operator`
  MODIFY `operator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `paket_detail`
--
ALTER TABLE `paket_detail`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `pengiriman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `stk_barang`
--
ALTER TABLE `stk_barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `t_detail_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
