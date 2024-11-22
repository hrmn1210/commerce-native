-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2024 at 04:46 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `username` char(7) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email_admin` varchar(40) NOT NULL,
  `telp_admin` int(30) NOT NULL,
  `alamat_admin` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `Nama`, `username`, `password`, `email_admin`, `telp_admin`, `alamat_admin`) VALUES
(0, 'Admin', 'admin', 'admin', 'admin@gmail.com', 891234566, 'Jl. Kenangan Kemana saja'),
(1, 'florida', 'flo', '123', 'florida@gmail.com', 19228888, 'Ambawang');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sub_harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto_produk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `nama`, `harga_produk`, `jumlah`, `sub_harga`, `deskripsi`, `foto_produk`) VALUES
(1, 1, 20, 'Nabati', 2000, 1, 2000, 'Snack Nabati Keju', 'nabati.jpg.jpg'),
(2, 2, 16, 'chitato', 4000, 1, 4000, 'Chitato Potato Chips adalah makanan ringan berbahan dasar kentang yang diproduksi oleh PT. Indofood Fritolay Makmur yang merupakan anak perusahaan dari PT. Indofood, sebuah produsen makanan yang cukup besar di Indonesia.', 'chitato.jpg.jpg'),
(3, 3, 15, 'lays', 1000, 1, 1000, 'Lays adalah salah satu keripik kentang dalam kemasan dengan banyak rasa. Gurih, renyah, dan nikmatnya Lays membuat banyak orang jatuh hati.', '60b8ac4b5b41f.jpg'),
(4, 3, 16, 'chitato', 4000, 1, 4000, 'Chitato Potato Chips adalah makanan ringan berbahan dasar kentang yang diproduksi oleh PT. Indofood Fritolay Makmur yang merupakan anak perusahaan dari PT. Indofood, sebuah produsen makanan yang cukup besar di Indonesia.', 'chitato.jpg.jpg'),
(5, 4, 15, 'lays', 1000, 1, 1000, 'Lays adalah salah satu keripik kentang dalam kemasan dengan banyak rasa. Gurih, renyah, dan nikmatnya Lays membuat banyak orang jatuh hati.', '60b8ac4b5b41f.jpg'),
(6, 4, 16, 'chitato', 4000, 1, 4000, 'Chitato Potato Chips adalah makanan ringan berbahan dasar kentang yang diproduksi oleh PT. Indofood Fritolay Makmur yang merupakan anak perusahaan dari PT. Indofood, sebuah produsen makanan yang cukup besar di Indonesia.', 'chitato.jpg.jpg'),
(7, 5, 15, 'lays', 1000, 1, 1000, 'Lays adalah salah satu keripik kentang dalam kemasan dengan banyak rasa. Gurih, renyah, dan nikmatnya Lays membuat banyak orang jatuh hati.', '60b8ac4b5b41f.jpg'),
(8, 6, 21, 'bsi', 2000000, 1, 2000000, 'kampus bsi', 'logo_bsi.jpg'),
(9, 7, 21, 'bsi', 2000000, 1, 2000000, 'kampus bsi', 'logo_bsi.jpg'),
(10, 8, 21, 'bsi', 2000000, 1, 2000000, 'kampus bsi', 'logo_bsi.jpg'),
(11, 8, 16, 'chitato', 4000, 1, 4000, 'Chitato Potato Chips adalah makanan ringan berbahan dasar kentang yang diproduksi oleh PT. Indofood Fritolay Makmur yang merupakan anak perusahaan dari PT. Indofood, sebuah produsen makanan yang cukup besar di Indonesia.', 'chitato.jpg.jpg'),
(12, 9, 21, 'bsi', 2000000, 1, 2000000, 'kampus bsi', 'logo_bsi.jpg'),
(13, 9, 16, 'chitato', 4000, 1, 4000, 'Chitato Potato Chips adalah makanan ringan berbahan dasar kentang yang diproduksi oleh PT. Indofood Fritolay Makmur yang merupakan anak perusahaan dari PT. Indofood, sebuah produsen makanan yang cukup besar di Indonesia.', 'chitato.jpg.jpg'),
(14, 10, 15, 'lays', 1000, 1, 1000, 'Lays adalah salah satu keripik kentang dalam kemasan dengan banyak rasa. Gurih, renyah, dan nikmatnya Lays membuat banyak orang jatuh hati.', '60b8ac4b5b41f.jpg'),
(15, 11, 15, 'lays', 1000, 1, 1000, 'Lays adalah salah satu keripik kentang dalam kemasan dengan banyak rasa. Gurih, renyah, dan nikmatnya Lays membuat banyak orang jatuh hati.', '60b8ac4b5b41f.jpg'),
(16, 12, 15, 'lays', 1000, 1, 1000, 'Lays adalah salah satu keripik kentang dalam kemasan dengan banyak rasa. Gurih, renyah, dan nikmatnya Lays membuat banyak orang jatuh hati.', '60b8ac4b5b41f.jpg'),
(17, 13, 15, 'lays', 1000, 1, 1000, 'Lays adalah salah satu keripik kentang dalam kemasan dengan banyak rasa. Gurih, renyah, dan nikmatnya Lays membuat banyak orang jatuh hati.', '60b8ac4b5b41f.jpg'),
(18, 14, 24, 'Gulaku 1kg', 24000, 1, 24000, 'Gulaku gula murni terbuat dari tebu pilihan yang berkualitas', 'gula.jpg'),
(19, 15, 24, 'Gulaku 1kg', 24000, 1, 24000, 'Gulaku gula murni terbuat dari tebu pilihan yang berkualitas', 'gula.jpg'),
(20, 16, 18, 'Beng-Beng', 1500, 1, 1500, 'Beng – beng adalah snack wafer crunchy yang dibalut dengan coklat. Beng – beng diproduksi oleh Mayora dimana mereka memproduksi banyak jenis makanan ringan.', 'beng-beng.png.png'),
(21, 17, 18, 'Beng-Beng', 1500, 1, 1500, 'Beng – beng adalah snack wafer crunchy yang dibalut dengan coklat. Beng – beng diproduksi oleh Mayora dimana mereka memproduksi banyak jenis makanan ringan.', 'beng-beng.png.png'),
(22, 17, 25, 'Kopi Naga 500gr', 58000, 1, 58000, 'kopi naga 500gr khas selatpanjang', 'kopi.jpg'),
(23, 18, 15, 'lays', 1000, 1, 1000, 'Lays adalah salah satu keripik kentang dalam kemasan dengan banyak rasa. Gurih, renyah, dan nikmatnya Lays membuat banyak orang jatuh hati.', '60b8ac4b5b41f.jpg'),
(24, 19, 23, 'Beras Koala Madu 10Kg', 153000, 1, 153000, 'Beras koala madu 10kg\r\nhalal organik, masa simpan 12 bulan', 'beras.png'),
(25, 20, 27, 'Terigu Segitiga Biru', 15000, 1, 15000, 'Tepung terigu segitiga biru 1Kg, harga termurah dilokasi terdekat', 'terigu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `username` char(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `no_hp` int(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `Nama`, `username`, `password`, `no_hp`, `email`, `alamat`) VALUES
(2, 'satu', 'munir20', '123', 895331126, 'munirhuda@gmail.com', ''),
(3, 'Bambanc', 'Rahul112', 'rahul123', 891234556, 'Bambanc@gmail.com', 'Jl. Kenangan bersama nya'),
(6, 'pembeli', 'pembeli', '123', 15220648, 'buy@gmail.com', 'dibumi'),
(7, 'cece', 'cece', '123', 812345678, 'cece@gmail.com', 'sambas');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` varchar(17) NOT NULL,
  `Nama` varchar(40) NOT NULL,
  `Bank` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `Bukti` varchar(255) NOT NULL,
  `Jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `Nama`, `Bank`, `tanggal`, `Bukti`, `Jumlah`) VALUES
(32, '20', '15000', 'bca', '2024-11-03', '2024-11-03 10;14;08terigu.jpg', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_barang`
--

CREATE TABLE `pembelian_barang` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(20) NOT NULL,
  `nama` text NOT NULL,
  `tanggal_pembelian` datetime NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `total_harga` int(15) NOT NULL,
  `status_pembelian` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian_barang`
--

INSERT INTO `pembelian_barang` (`id_pembelian`, `id_pelanggan`, `nama`, `tanggal_pembelian`, `alamat`, `no_telp`, `total_harga`, `status_pembelian`) VALUES
(20, 7, 'cece', '2024-11-03 10:13:47', 'sambas', '812345678', 15000, 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto_produk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `deskripsi`, `foto_produk`) VALUES
(15, 'lays', 1000, 'Lays adalah salah satu keripik kentang dalam kemasan dengan banyak rasa. Gurih, renyah, dan nikmatnya Lays membuat banyak orang jatuh hati.', '60b8ac4b5b41f.jpg'),
(16, 'chitato', 4000, 'Chitato Potato Chips adalah makanan ringan berbahan dasar kentang yang diproduksi oleh PT. Indofood Fritolay Makmur yang merupakan anak perusahaan dari PT. Indofood, sebuah produsen makanan yang cukup besar di Indonesia.', 'chitato.jpg.jpg'),
(17, 'Ale-Ale', 2000, 'Ale Ale Anggur Minuman Instan [200 mL/ 24 pcs] merupakan minuman instan dalam kemasan gelas yang terbuat dari anggur alami. Minuman ini memberikan manfaat alami buah-buahan dengan cita rasa anggur sesungguhnya. Mengandung vitamin C yang tinggi untuk mendukung stamina dan daya tubuh Anda.', 'ale ale.jpg.jpg'),
(23, 'Beras Koala Madu 10Kg', 153000, 'Beras koala madu 10kg\r\nhalal organik, masa simpan 12 bulan', 'beras.png'),
(24, 'Gulaku 1kg', 24000, 'Gulaku gula murni terbuat dari tebu pilihan yang berkualitas', 'gula.jpg'),
(25, 'Kopi Naga 500gr', 58000, 'kopi naga 500gr khas selatpanjang', 'kopi.jpg'),
(26, 'minyak goreng bimoli', 24000, 'Minyak Goreng Bimoli \r\n2 Liter, harga termurah di lokasi terdekat', 'minyak.jpg'),
(27, 'Terigu Segitiga Biru', 15000, 'Tepung terigu segitiga biru 1Kg, harga termurah dilokasi terdekat', 'terigu.jpg'),
(28, 'Masako Ayam', 9500, 'masako ayam 250gr, bumbu kaldu penyedap rasa ayam', 'masako.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pembelian_barang`
--
ALTER TABLE `pembelian_barang`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pembelian_barang`
--
ALTER TABLE `pembelian_barang`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
