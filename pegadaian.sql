
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `formulir` (
  `nama` varchar(50) NOT NULL,
  `deskripsi` varchar(2000) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `id_validasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `formulir` (`nama`, `deskripsi`, `nama_barang`, `harga`, `id_form`, `id_validasi`) VALUES
('Tasya Simanjuntak', 'gsdfsdfsdfsfsfs', 'Make Up', 90, 2, 0),
('Ranti Sidauruk', 'lorem', 'Make Up', 100, 3, 0),
('Firmino', 'barang yang mau saya gadaiakn adalah barang langka', 'Batu Akik', 900, 12, 0),
('Hero', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste dolor, soluta porro natus quod ut fugiat. Nam tempore reprehenderit sunt repudiandae dolores ratione, magnam quod perspiciatis fugit iste molestiae totam!', 'Batu Ginjal', 805, 13, 0),
('James II', 'lorem', 'terserah', 90, 14, 0),
('felix harold2', 'asdasdasdasd', 'asdasdasd', 91, 15, 0);


CREATE TABLE `post` (
  `id_post` int(5) NOT NULL,
  `tittle` tinytext NOT NULL,
  `image` longblob NOT NULL,
  `content` text NOT NULL,
  `votes` int(5) NOT NULL,
  `creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `post` (`id_post`, `tittle`, `image`, `content`, `votes`, `creation`) VALUES
(1, 'Mobil', 0x706f7374322e6a7067, 'lorem lorem lorem lorem', 0, '2018-04-20 14:15:46'),
(2, 'lamborghini', 0x706f7374332e6a7067, 'mobil harus keluaran tahun 2019', 0, '2018-04-22 04:17:02'),
(3, 'Obat Nyamuk', 0x706f7374342e6a7067, 'Obat nyamuk bisa digadaikan jadi tunggu apa lagi\r\nBatas harga maksimal adalah £300', 0, '2018-04-22 14:10:39'),
(4, 'Smartphone', 0x706f73742e706e67, 'ljalksdjlaskdalkdjlaksdjasldjalskdasdasdasd', 0, '2018-04-27 00:53:47'),
(5, 'asdasdas', 0x706f7374362e6a7067, 'asdassdasdadad', 0, '2018-09-02 04:17:40');


CREATE TABLE `rekapitulasi` (
  `nama_pengirim` varchar(90) NOT NULL,
  `nama_file` varchar(90) NOT NULL,
  `bulan` varchar(90) NOT NULL,
  `doc` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `session` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(100) NOT NULL,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `session` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('aob4jt3d9s7cojfmc1a8jgbncdu1a3g8', '::1', 1524231649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532343233313433363b757365725f69647c733a313a2231223b757365725f6e616d657c733a353a226a616d6573223b757365725f706173737c733a333a22313233223b757365725f6e616d617c733a31353a226a616d6573206865726e616e646573223b757365725f707269767c733a363a224d656d626572223b),


CREATE TABLE `transaksi` (
  `id_user` int(11) NOT NULL,
  `id_validasi` int(11) NOT NULL,
  `tanggal_Transaksi` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `no_kuitansi` int(11) NOT NULL,
  `id_form` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `user` (
  `id_user` int(150) NOT NULL,
  `nama_user` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `privilage` varchar(15) NOT NULL,
  `nip` int(11) NOT NULL,
  `id_manager` int(11) NOT NULL,
  `no_ktp` int(11) NOT NULL,
  `id_pengelola` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `created_at`, `privilage`, `nip`, `id_manager`, `no_ktp`, `id_pengelola`) VALUES
(1, 'james hernandes', 'james', '123', '2018-04-20 13:37:16', 'Member', 0, 0, 0, 0),
(2, 'asmat', 'pengelola', '123', '2018-04-20 13:55:33', 'Admin', 0, 0, 0, 0),
(3, 'Coutinho', 'petugas', '123', '2018-04-26 14:42:19', 'Petugas', 1192, 0, 0, 0),
(4, 'Bravo', 'manager', '123', '2018-04-26 14:43:24', 'Manager', 0, 100, 0, 0),
(5, 'tasya', 'tasya', '123', '2018-04-22 14:08:49', 'Member', 0, 0, 0, 0),
(6, 'Joshua', 'joshua', '123', '2018-04-26 14:59:08', 'Member', 0, 0, 2147483647, 0),
(7, 'Stevano', 'stev', '123', '2018-04-26 14:59:56', 'Member', 0, 0, 4334, 0),
(8, 'terserah', 'tes', '123', '2018-04-27 00:56:14', 'Member', 0, 0, 2147483647, 0);

-- --------------------------------------------------------

--
-- Table structure for table `validasi`
--

CREATE TABLE `validasi` (
  `id_validasi` int(11) NOT NULL,
  `tanggal_validasi` date NOT NULL,
  `data_validasi` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;








-- Indexes for table `formulir`
ALTER TABLE `formulir`
  ADD PRIMARY KEY (`id_form`);


-- Indexes for table `post`
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);


-- Indexes for table `user`

ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);


-- Indexes for table `validasi`

ALTER TABLE `validasi`
  ADD PRIMARY KEY (`id_validasi`);


-- AUTO_INCREMENT for dumped tables



-- AUTO_INCREMENT for table `formulir`


ALTER TABLE `formulir`
  MODIFY `id_form` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;


-- AUTO_INCREMENT for table `post`

ALTER TABLE `post`
  MODIFY `id_post` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


-- AUTO_INCREMENT for table `user`

ALTER TABLE `user`
  MODIFY `id_user` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

