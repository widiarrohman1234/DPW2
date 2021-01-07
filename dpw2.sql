-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2021 at 02:38 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dpw2`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', '2020-11-22 20:42:21', '2020-11-22 20:42:21'),
(2, 'Aksesoris', '2020-11-22 20:42:45', '2020-11-22 20:42:45'),
(3, 'Smartphone', '2020-11-24 05:56:17', '2020-11-24 05:56:17'),
(4, 'Kamera', '2020-11-24 05:56:26', '2020-11-24 05:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `berat` decimal(11,5) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `id_user`, `id_kategori`, `nama_produk`, `foto`, `harga`, `berat`, `deskripsi`, `stok`, `created_at`, `updated_at`) VALUES
(21, 2, 1, 'Asus Vivobook A412DA-EK751T Ryzen 7 3700 8GB 512SSD Vega 10 Win 10 14 FHD Garansi Resmi', NULL, 8800000, '1.99700', '<b>Ready</b>', 15, '2020-11-24 05:37:12', '2021-01-05 13:30:27'),
(23, 2, 1, 'LENOVO SLIM 3 INTEL CORE i3 1005G1 4GB SSD256GB FHD WiNDOWS+OFFICE ORIGINAL', NULL, 7550000, '2000.00000', 'LENOVO SERI SLIM 3 Core i3-1005G1 INI TERDIRI DARI 4 WARNA :\r\n Abyss Blue\r\n Business Black\r\n Cherry Red\r\n Platinum Grey\r\n\r\nProcessor Onboard : Intel® Core™ i3-1005G1 processor (Up to 3.4GHz, 4MB smart cache)\r\nDisplay : 14\" FHD (1920 x 1080) WVA Anti-Glare 250Nits\r\nMemori Standar : 4 GB DDR4\r\nHard Disk : SSD 256GB / SSD512GB(bisa klik divariasi)\r\nTipe Grafis : VGA Card Integrated Intel UHD Graphics\r\nAudio : 2 x 2W stereo speakers with Dolby Audio™\r\nWebcam : 720p HD with Privacy shutter\r\nWireless Network : 1 x 1 AC WiFi + Bluetooth 4.2\r\n\r\nInterfaces\r\n2 x USB 3.1\r\n1x USB 2.0\r\n1x HDMI\r\n1x 4-in-1 SD card reader\r\n1x Headphone / mic combo\r\n1x DC jack\r\n\r\nSistem Operasi : Windows 10 Home + Office Home&Student 2019 Original\r\nBatery : 3 Cell Battery\r\nDimensi : 358 x 245 x 17.9 (mm)\r\nBerat : 1.79 Kg\r\n\r\nColour : Platinum Grey, Blue, Cherry Red, & Business Black\r\nFree : Bag\r\n\r\nGARANSI 2 Tahun RESMI LENOVO INDONESIA', 17, '2020-11-24 06:00:06', '2020-11-24 06:00:06'),
(24, 2, 1, 'LAPTOP HP 14s CF2017TU CF2018TU - INTEL N4020U - 4GB - 1TB - BACKLIT - 14\" - WIN10 - OFFICE', NULL, 5200000, '14300.00000', 'Sudah Include Windows 10 + Office Home Student Original Permanent ( Preinstall )\r\n\r\nHP 14S-CF2017TU SILVER\r\nHP 14S-CF2018TU GOLD\r\n\r\n- Prosesor Intel Celeron 4020U Dual Core 1.10GHz Up To 2.80GHz\r\n- Chipset Intel\r\n- Grafis Intel UHD Graphics 600\r\n- Layar TFT LCD SVA dengan HD BrightView WLED backlight 14 inci resolusi 1366 x 768 piksel, MicroEdge bezel\r\n- Memori RAM 4GB DDR4 2133MHz, upgradeable\r\n- Storage Hard Disk 1TB 5400rpm SATA\r\n- Konektifitas LAN, WiFi, Bluetooth, Port USB 3.1 Gen1, Port USB 3.1 Gen1 Type-C (Data transfer only, 5 Gb/s signaling rate), Port HDMI, card reader\r\n- Audio dual speaker\r\n- Kamera HP TrueVision HD Camera with integrated digital microphone\r\n- Baterai 3-cell (45 WHr) Li-ion\r\n- Microsoft Windows 10 Home x64 original\r\n- Dimensi 32.4 x 22.59 x 1.99 cm berat 1,43kg\r\n\r\nFREE OFFICE HOME AND STUDENT 2019\r\n\r\nGaransi Resmi HP Indonesia 2 Tahun', 40, '2020-11-24 06:02:06', '2020-11-24 06:02:06'),
(25, 2, 1, 'Laptop HP 14s dk1005AU Ryzen 3 3250U 8GB 256GB 14 Inch Full HD IPS dk1006AU', NULL, 8200000, '3000.00000', 'Kenapa harus beli laptop di APPLESTORE JKT ?\r\n- Produk kami 100% ORIGINAL\r\n- Uang kita kembalikan 2x lipat kalau barang tidak original\r\n- GARANSI RESMI HP Indonesia\r\n- BNIB (Brand New In Box) barang segel\r\n- Bisa COD Jabodetabek\r\n- Bisa split order\r\n- Kami memiliki TEAM AFTERSALES buat bantu klaim garansi\r\n- Reseller / dropshipper are welcome\r\n\r\nSPEK UNIT\r\n- CPU : AMD Ryzen 3 3250U\r\n- GPU : Radeon Vega 3\r\n- RAM : 8GB DDR4 (dual channel 2x4GB)\r\n- Storage : 256GB NVMe SSD + 1TB HDD (double storage)\r\n- Display : 14 Inch Full HD IPS\r\n- Backlit Keyboard : Ini sih YES\r\n- OS : Win 10\r\n- Office : Microsoft Office Home & Student 2019\r\n\r\nISI PAKET\r\n- Unit laptop\r\n- Charger\r\n- Manual book\r\n- Kartu garansi\r\n\r\nITEM AKSESORIS BUNDLING\r\n- Mousepad\r\n- Keyboard Cover\r\n- Screen Protector\r\n- USB Light\r\n- USB Mini Fan\r\n- Kain Microfiber\r\n*sesuai ketersediaan dan selama stok masih ada', 50, '2020-11-24 06:03:15', '2020-11-24 06:03:15'),
(26, 2, 3, 'Advan Nasaplus 2GB 16GB Smartphone Android10 Garansi Resmi (Black)', NULL, 850000, '400.00000', 'Smartphone yang paling sesuai untuk social media dan berbagai keperluan segala usia terutama anak muda. Dilengkapi RAM 2 GB dan internal memory 16 GB untuk performa maksimal, dapat ditambahkan microSD untuk kapasitas yang lebih besar. Dobel kamera belakang dan kapasitas baterai yang lebih besar siap menemani hari-harimu dengan tampilan Android 10.0\r\nIMEI Terdaftar Resmi\r\nRAM: 2 GB\r\nMemori Internal : 16 GB\r\nMemori Eksternal : Micro SD up to 64 GB\r\nJaringan GSM: 900/1800MHz\r\nWCDMA: 900/2100MHz \r\nFDD+TDD: B1/B3/B5/B8/B40\r\nSIM Type : Double NANO SIM+T-card\r\nDisplay: 5.45\"inch( 18:9)FW+ 480*960 IPS\r\nOS System : Android 10.0\r\nCPU : SC9832E 1.4GHz Quad-core\r\nRear Camera (Kamera Belakang): 5.0M+0.3M with Flash light\r\nFront Camera (Kamera Depan) : 2 MP\r\nVideo: 1080p@30fps\r\nJack Audio: 3.5 mm headphone jack\r\nUSB : OTG MicroUSB 2.0\r\nWi-Fi : 802.11 B/G/N 2.4G\r\nBluetooth : 4.2\r\nGPS : Yes\r\nKapasitas Baterai : 3000 mAh\r\nSensor : Face ID, Light Sensor, Accelerometer, Magnetometer, Distance, Barometer\r\nCharger Type : 4.35V 0.2C\r\nAudio : Single Speaker \r\nDimensi: 151x71x9.9mm\r\n\r\nFitur Produk:\r\n- Face unlock : Yes\r\n- OTG : Yes\r\n- FM Radio / Music Player : Yes\r\n\r\nKelengkapan Produk:\r\n- 1x Unit\r\n- 1x Kabel data\r\n- 1x Adapter \r\n- 1x Baterai\r\n- 1x Kartu Garansi (mohon disimpan)\r\n- 1x Silicon Case\r\n#smartphonemurah #smartphonegaming #android #smartphone4G #quadcore #handphoneandroid #handphonemurah #produklokal #smartphonelokal #handphonecanggih #camera #garansi #advannasa  #ram2GB #advan #garansiresmi', 100, '2020-11-24 06:04:59', '2020-11-24 06:04:59'),
(27, 2, 3, 'Advan G9 6.6 Inci 4GB 32GB Quad Camera Octacore Smartphone Android 10 Garansi Resmi (Black)', NULL, 1500000, '400.00000', 'Sebuah mahakarya Advan yang menawarkan performa maksimal RAM 4 GB didukung internal memory 32 GB, memungkinkan Anda melakukan segala hal yang Anda inginkan seperti bermain game, menonton video, mengambil foto terbaik dan berkreasi, bekerja dengan produktif. Baterai 5200mAh pasti bisa diandalkan menemani keseharian Anda menikmati Android 10. Dengan tampilan produk yang keren dan elegan serta pilihan warna bahkan case yang multifungsi yaitu melindungi dan mencegah panas berlebih. Segala detail telah dipikirkan dengan baik, layar 6.6 inci yang besar dan nyaman digunakan, warna yang menarik serta kualitas suara yang keren.\r\n\r\nIMEI terdaftar resmi\r\nOS: Android 10.0\r\nCPU: Octa-core 1.6GHz+1.2GHz\r\nDisplay: 6.6\" inch HD+ 720*1600\r\nRAM: 4 GB\r\nROM: 32 GB\r\nSIM: Double Nano + TF Hotplug (Micro SD up to 128GB)\r\nKamera depan: 5 MP FF\r\nKamera belakang: 13 MP AF + 0.3 MP + 0.3 MP + 0.3 MP dengan flash light\r\nGSM: 900/1800 MHz\r\nWCDMA: 900/2100 MHz\r\nFDD+TDD: B1/B3/B5/B8/B40\r\nBluetooth 4.2\r\nWifi: 802.11 b/g/n 2.4G\r\nP-sensor/L-sensor/Acceleration-sensor/GPS/OTG\r\nBaterai: 5200 mAh 4.4V 0.2C\r\nDimensi: 165 x 76.3 x 9.5 mm\r\nKelengkapan Produk:\r\n- 1x Unit\r\n- 1x Kabel data\r\n- 1x Adapter \r\n- 1x Kartu Garansi\r\n- 1x Case\r\n\r\nBonus: \r\n- Smartfren\r\n360GB kuota 24 bulan\r\n- Headset JBL \r\n*Selama persediaan masih ada* \r\n\r\n#smartphonemurah #smartphonegaming #android #smartphone4G #octacore #handphoneandroid #handphonemurah #produklokal #smartphonelokal #handphonecanggih #camera #garansi #smartphonequadcamera #empatkamera #advanG9Pro #6inci #ram4GB #advan #garansiresmi', 123, '2020-11-24 06:06:01', '2020-11-24 06:06:01'),
(28, 2, 3, 'SAMSUNG - Smartphone Galaxy A01 2/16 Black SM-A015FZKDXID', NULL, 1200000, '300.00000', 'SAMSUNG SMARTPHONE GALAXY A01 2/16 BLACK\r\nDual camera takes your photography to new depths\r\nRear 13.0 MP + 2.0 MP and Selfie 5 MP\r\nMre power to move faster and last longer with Prosesor Snapdragon 439\r\nFace unlock detects your look to unlock fast\r\nOne UI Core, designed for easy use\r\nInfinity-V Display 6.7 Inch\r\nMore view for what you do', 260, '2020-11-24 06:07:51', '2020-11-24 06:07:51'),
(29, 2, 2, 'Rexus Headset Gaming Vonix F22', NULL, 120000, '100.00000', 'Gaming Headset Pro Series\r\n\r\nRexus headset F22 atau dikenal dengan sebutan Vonix F22 adalah headset gaming yang dilengkapi oleh speaker dan microfon yang memiliki fungsi dan spesifikasi berbeda. Vonix F22 ditawarkan kepada Anda yang ingin memilki headset dengan kualitas dan kinerja terbaik dengan harga yang relative terjangkau. Dengan tingkat sensitifitas sebesar 95dB menghasilkan kejernihan suara yang sangat baik dibandingkan dengan headset standar lainnya. Anda dapat merasakan kualitas suara terbaik yang dihasilkan melalui headset ini dan microfon yang bekerja secara terarah dengan mengambil suara dari segala arah.\r\nTipe konektor: Dual Jack 3.5mm\r\n\r\nCOMFORTABLE DESIGN\r\n\r\nHeadset Rexus Vonix F22 di desain untuk para penggemar game-game komputer 3D FPS. Headset yang terbuat dari bahan pilihan yang sangat nyaman dikenakan dalam waktu yang lama terutama di depan komputer berjam-jam di depan komputer saat bermain game-game kesayangan. Dengan tingkat sensitifitas mikrofonnya yang lebih baik dan bekerja optimal untuk digunakan berbicara lewat game online lewat fasilitas Voice IP (VoIP) serta ukuran kabel yang panjang sehingga sangat nyaman untuk digunakan.\r\n\r\nRexus Made For Everyone !', 100, '2020-11-24 06:09:41', '2020-11-24 06:09:41'),
(30, 2, 2, 'Earphone Bluetooth Anker Soundcore Liberty True Wireless Earphones with Charging Case - A3912', NULL, 900000, '100.00000', 'Ekstrem 100 Jam Waktu Bermain\r\n\r\nSatu kali pengisian daya memberi Anda 8 jam penuh untuk mendengarkan, sedangkan\r\ncasing pengisi daya memanjang hingga 100.\r\n\r\nDriver Graphene yang Disetel Dengan Ahli\r\nSebagai pelopor awal graphene, kami telah menggunakan pengalaman kami untuk\r\nbuat driver baru untuk earphone nirkabel Liberty yang membutuhkan waktu penuh\r\nkeuntungan dari sifat material yang luar biasa. 100 kali\r\nlebih keras dari baja dan 35% lebih ringan dari pengemudi tradisional\r\ndiafragma, itu berosilasi dengan sangat presisi untuk diberikan kepada Anda\r\nmusik panggung yang lebih luas dengan akurasi luar biasa dan kejernihan yang jernih di seluruh rentang frekuensi ..\r\n\r\nPengisian Daya Cepat\r\nIsi daya selama 15 menit dan anda dapat menggunakan Soundcore Liberty selama 2 jam , saat Anda\r\nmembutuhkannya dengan cepat \r\n\r\nRock-Solid Fit\r\nTeknologi GripFit milik Soundcore memungkinkan nirkabel\r\nheadphone agar terpasang dengan aman dan nyaman di telinga Anda — sederhana\r\ngeser ke dalam dan putar untuk mengunci. Lakukan latihan atau navigasi yang intens\r\njalanan kota mengetahui bahwa earbud Anda akan tetap terpasang dengan kuat.\r\n\r\nPemasangan Satu Langkah\r\nCukup lepaskan earbud dari casing pengisi daya dan mereka akan melakukannya\r\nsecara otomatis terhubung ke perangkat pasangan terakhir.\r\n\r\nSpesifikasi :\r\nSuara: Suara yang disetel secara ahli melalui driver graphene\r\nWaktu Penggunaan : 8 Jam\r\nCasing Pengisian : -+ 100 Jam\r\nType Bluetooth : Bluetooth 5\r\nTegnologi Tahan air : IPX5\r\nFitur Panggilan : 4 mikrofon dengan pengurangan kebisingan\r\nFitur Lain : Teknologi GripFit, teknologi PUSH AND GO\r\nDirekomendasikan Untuk : Bepergian, berolahraga\r\n\r\nNOMER POSTEL : 71124/SDPPI/2020\r\n\r\n\r\nBERIKUT SYARAT KLAIM GARANSI\r\n\r\n* Garansi berlaku untuk 1 kali penggantian saja.\r\n* Garansi berlaku 18 bulan sejak tanggal pembelian (tidak termasuk  Casing, Tempered Glass, Phone Holder, dsb). \r\n* Garansi berupa replace 1-on-1 replacement BUKAN SERVICE.\r\n* Garansi tidak berlaku apabila Produk sudah tidak diproduksi kembali**.\r\n* Ongkos kirim klaim garansi ditanggung oleh pembeli.\r\n \r\n* Prosedur RETUR : Produk yang diterima adalah cacat pabrik (baru digunakan tidak lebih dari 7 hari sejak barang diterima) maka pembeli berhak menukarkan barang (replace new) tanpa harus menyetorkan kartu garansi atau garansi 18 bulan masih tetap berlaku.', 200, '2020-11-24 06:11:35', '2020-11-24 06:11:35'),
(31, 2, 2, 'Sades T-Power SA-701 Gaming Headset', NULL, 125000, '100.00000', 'Tidak Free Splitter\r\nHeadset T power merupakan headset entry level yang sangat di cari saat ini, suara yang jernih dan desain yang ergonomis menjadikan headset gaming ini sangat di minati gamer entrry level tanah air.\r\n-Bobot ringan, hanya 200g terasa tanpa beban di kepala. \r\n-40mm speaker untuk suara stereo\r\n- Head-rail 9 lapisan dan dapat di sesuaikan ukuranya\r\n- Desain ear-cup yang ergonomis\r\n- kabel anti kusut \r\n\r\nGaransi Resmi Sades Indonesia\r\n- 6 Bulan Ganti Baru\r\n- 6 Bulan Servis\r\n\r\n\r\nSpecification :\r\n* Loudhailer Diameter: 40mm\r\n* Cable length : 2.0m (approx)\r\n* Frequency rrange : 20 to 20.000Hz\r\n* Sensitivity : 106 + 3dB at 1kHZ\r\n* Impedance : 32 Ohm at 1kHz\r\n* Input Power: 10mW (Maximum)\r\n* Mic Dimension: 6x5mm condenser microphone\r\n* Mic Sensitivity : -51+3dB\r\n* Plug : 3.5mm nickel-plating', 20, '2020-11-24 06:12:54', '2020-11-24 06:12:54'),
(32, 2, 2, 'MINISO Set Mouse Dan Keyboard Nirkabel Fashion mini multimedia wireless keyboard and mouse set', NULL, 190000, '400.00000', '1. Set USB multimedia yang modis.\r\n 2. Mini dan portabel.\r\n 3. Kompatibel dengan Windows2000 / ME / XP / (X-64) / Vista7 / 8/10 / Mac OS X (di atas V10.4).\r\n 4. Satu penerima USB untuk mouse dan keyboard.\r\n 5. Nyaman digunakan.', 20, '2020-11-24 06:15:19', '2020-11-24 06:15:19'),
(33, 2, 2, 'Rexus Mouse Gaming Xierra X12', NULL, 1500000, '400.00000', 'Rexus Mouse Gaming Xierra X12\r\nCool Fitured Gaming Mouse with Reasonable Price\r\n\r\nRexus gaming mouse Xierra X12 merupakan bagian dari seri Xierra X yang makin diperkaya dengan model dan desain yang keren. Salah satu signature dari Rexus Xierra X12 adalah penambahan running RGB LED yang sudah full spectrum pada bagian bawah tombol sehingga meningkatkan penampilan mouse ini. Dilengkapi dengan software, mouse ini dapat diatur fungsi tombol, kecepatan pointer, dan mode LED-nya. Dengan ukuran yang ideal, mouse ini dapat menjadi senjata ampuh saati memainkan game kesukaan Anda.\r\n•	Dilengkapi dengan Running RGB LED, dengan 11 mode pencahayaan. \r\n•	Rexus Xierra X12 dilengkapi dengan chipset sensor berkualitas yang menghasilkan sensor yang presisi, baik untuk pergerakan yang cepat maupun pelan.\r\n•	Desain ideal, dengan ukuran dan model yang sempurna. Membuat pengendalian makin mantap dan nyaman. \r\n•	Grip anti-slip di sisi kanan dan kiri badan mouse membuat genggaman jadi mantap.\r\n\r\nFitur Unggulan\r\n\r\nLevel DPI Lengkap\r\nXierra X12 mempunyai level atau tingkatan DPI lengkap, 800 – 3200, yang bisa di-upgrade menjadi 200 – 4800 dengan menggunakan perangkat lunak. Fitur ini akan memudahkan pengguna dalam mengoperasikan mouse saat digunakan bermain gim atau pekerjaan lain karena pengguna dapat memilih mode game atau mode multimedia.\r\n\r\nMacro Software\r\nXierra X12 didukung software yang bisa digunakan untuk mengatur fitur Macro. Software ini dapat diunduh dan tersimpan di komputer pengguna. Dengan software ini, berbagai fitur pengaturan permainan dapat dilakukan secara mudah dalam beberapa pilihan konfigurasi.\r\n\r\nRunning LED RGB, 11 Mode Pecahayaan\r\nXierra X12 dilengkapi dengan Running LED RGB yang akan berpendar secara halus mengutari garis LED yang ada di samping badan mouse. Tersedia 11 mode pencahayaan dengan menekan tombol kecil di bawah mouse.\r\n\r\nDesain Ideal\r\nXierra X12 didesain secara sempurna untuk kenyamanan dan ketepatan penggunaan. Ukurannya yang sedikit lebih besar membuatnya lebih ergonomis dan pas di telapak tangan.\r\n\r\n\r\nSpesifikasi\r\nTipe konektor: USB versi 2.0\r\nTombol: Huano 10M Lifespan\r\nPanjang kabel: 1,75 meter\r\nJumlah tombol: 7 tombol\r\nLevel DPI:  200 – 4800 (dengan software untuk meningkatkan)\r\nBerat: 110 gram (± 20 gram)\r\nDimensi: 129 x 72 x 43 mm\r\nSistem operasi: Win 7/Win 8/Win10/ Windows Viesta/ Windows XP', 40, '2020-11-24 06:16:48', '2020-11-24 06:16:48'),
(53, 2, 4, 'KAMERA DSLR CANON EOS 600D KIT SECOND MULUS PALING MURAH LAYAR VLIP FULL EFEK', 'app/images/produk/-1609882625-J4yOi.jpeg', 2800000, '1.50000', '<p>Kamera second mulus Gan!!!</p><p>Minat? chat!</p>', 4, '2021-01-05 14:37:05', '2021-01-05 14:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `jenis_kelamin` int(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama_user`, `jenis_kelamin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'widi', 'widi@gmail.com', 'widi', 1, '$2y$10$x4YKn.Mxr4S3EuwUEEafXuW.y5UOY7aQ2R2BB8HkPk7UaMeRgRE1e', NULL, '2021-01-06 18:34:16', '2021-01-06 18:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 2, '0895702460425', '2020-11-21 14:46:26', '2020-11-21 14:46:26'),
(2, 8, '0895702460425', '2020-11-21 14:47:10', '2020-11-21 14:47:10'),
(3, 13, '0895702460425', '2020-11-21 14:47:16', '2020-11-21 14:47:16'),
(4, 14, '0895702460425', '2020-11-21 14:47:23', '2020-11-21 14:47:23'),
(5, 15, '0895702460425', '2020-11-21 14:47:30', '2020-11-21 14:47:30'),
(6, 2, NULL, '2020-11-26 12:49:16', '2020-11-26 12:49:16'),
(7, 2, NULL, '2020-11-26 12:49:31', '2020-11-26 12:49:31'),
(8, 2, NULL, '2020-11-26 12:49:49', '2020-11-26 12:49:49'),
(9, 17, '0895702460425', '2021-01-03 07:54:37', '2021-01-03 07:54:37'),
(10, 19, NULL, '2021-01-06 18:34:16', '2021-01-06 18:34:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
