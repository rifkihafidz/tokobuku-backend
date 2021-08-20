-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2021 at 08:32 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobuku`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_06_080524_create_products_table', 1),
(5, '2020_05_06_083906_create_product_galleries_table', 1),
(6, '2020_05_06_085251_create_transaction_details_table', 1),
(7, '2020_05_29_071033_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `type`, `description`, `price`, `quantity`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Dilan 1991 (Best Seller)', 'dilan-1991-best-seller', 'Novel', '<p>Novel Dilan 1991 (Best Seller)<br>Jumlah Halaman : 344<br>Penerbit : Mizan Publishing<br>Lebar : 14 cm<br>Panjang : 21 cm</p>', 69000, 5, 'assets/product/w4P0hhMGWVP1js9kdKqQZyQmSgDQzqQWCJQzsxP2.jpeg', NULL, '2021-08-18 11:12:26', '2021-08-19 10:22:14'),
(2, 'Milea Suara Dari Dilan', 'milea-suara-dari-dilan', 'Novel', '<p>100% BUKU ORIGINAL<br><br>Silahkan menanyakan stock terlebih dahulu sebelum melakukan pembayaran :)<br><br>“Dilan memberi penggambaran lain dari sebuah penaklukan cinta &amp; bagaimana indahnya cinta sederhana anak zaman dahulu.” @refaniris<br>“Cuma satu yang kuinginkan, aku ingin cowok seperti Dilan.” @_SLovaFC<br>“Dilan brengsek! Dia selalu tahu caranya menjadi pusat perhatian, bahkan ketika jadi buku, setiap serinya selalu ditunggu.” @Tedy_Pensil<br>“Membaca Dilan itu seperti jatuh cinta lagi, lagi, dan lagi. Ah, indah, deh. Rasanya gak akan pernah bosan membacanya.” @agungwyd<br>“Bukan cuma sekadar novel, tapi bisa menjadikan yang malas baca jadi mau baca.” @cobra_iqq<br>“Kisah cintanya gak lebay. Dilan tahu bagaimana memperlakukan wanita. Novelnya keren, bahasanya gak bertele-tele.” @AH_DILAN<br>“Terima kasih Dilan telah menginspirasiku lewat ceritamu bersama Milea. Terima kasih Surayah, novelmu seru.” @EnciSrifiyani<br>“Dari Dilan kita belajar mengistimewakan wanita, romantis yang gak kuno, bahkan menjadi ayah &amp; bunda yang hebat :)” @ginaalna<br>“Kurasa Dilan satu-satunya novel yang aku harap ceritanya terus berlanjut, dan tidak ingin ada akhir.” @TriaFitriaN41<br><br>Kami menerima reseller &amp; dropshipper, langsung chat admin ya :)<br><br>Pembayaran max pukul 13.00 akan kita kirim di hari yang sama.</p>', 68000, 8, 'assets/product/uiELS0Y5udtNmzif7KkGWRyejsmZOV9Z3X0rZYyy.jpeg', NULL, '2021-08-18 11:13:10', '2021-08-19 10:22:14'),
(3, 'Ancika: Dia Yang Bersamaku Tahun 1995', 'ancika-dia-yang-bersamaku-tahun-1995', 'Novel', '<p>“Dia memang punya masa lalu, tetapi saya punya Dilan.” —Ancika Ancika ini, pacarnya Dilan. Mereka saling mengenal setelah Dilan sudah tidak lagi sama Lia. Ya, gitu deh, drama kehidupan namanya juga. Mau bagaimana lagi? Kita ini hanya manusia. Pokoknya, baca aja, deh. Mudah-mudahan menyenangkan.</p>', 78000, 9, 'assets/product/xM5diroKhxwl7YFZJVLoo41C10NBeBMILViJFOZQ.jpeg', NULL, '2021-08-18 22:30:00', '2021-08-19 10:22:14'),
(4, 'Bagikan:  Pulang-Pergi', 'bagikan-pulang-pergi', 'Novel', '<p>Ada jodoh yang ditemukan lewat tatapan pertama. Ada persahabatan yang diawali lewat sapa hangat. Bagaimana jika takdir bersama ternyata, diawali dengan pertarungan mematikan? Lantas semua cerita berkelindan dengan, pengejaran demi pengejaran mencari jawaban? Pulang-Pergi</p>', 70000, 10, 'assets/product/E2JhKXKygeg5l5Eq41qYXK74rk47q8RpsxLfZu13.jpeg', NULL, '2021-08-18 22:36:51', '2021-08-19 02:24:53'),
(5, 'Sebuah Seni untuk Bersikap Bodo Amat', 'sebuah-seni-untuk-bersikap-bodo-amat', 'Bantuan Hukum', '<p>\"Selama beberapa tahun belakangan, Mark Manson—melalui blognya yang sangat populer—telah membantu mengoreksi harapan-harapan delusional kita, baik mengenai diri kita sendiri maupun dunia. Ia kini menuangkan buah pikirnya yang keren itu di dalam buku hebat ini. “Dalam hidup ini, kita hanya punya kepedulian dalam jumlah yang terbatas. Makanya, Anda harus bijaksana dalam menentukan kepedulian Anda.” Manson menciptakan momen perbincangan yang serius dan mendalam, dibungkus dengan cerita-cerita yang menghibur dan “kekinian”, serta humor yang cadas. Buku ini merupakan tamparan di wajah yang menyegarkan untuk kita semua, supaya kita bisa mulai menjalani kehidupan yang lebih memuaskan, dan apa adanya.\" Berikut 5 hal penting yang bisa kamu pelajari dari buku Sebuah Seni untuk Bersikap Bodo Amat. 1. Kita berhak untuk bahagia Bahagia di sini tentunya secara lahir batin. Seseorang bisa saja terlihat punya gaya hidup yang glamor, namun dalam hatinya terasa hampa. Seperti itu juga yang dialami Manson. Hingga akhirnya dia mencari makna hidup yang baik-baik saja. Baginya, hidup yang baik dan bahagia bisa dirasakan jika seseorang bisa bodo amat pada hal-hal yang memang sepantasnya diabaikan. Kini tinggal kamu yang memilih, ingin bahagia sepenuhnya atau tidak. Karena mungkin saja kebahagiaan kamu terasa tidak lengkap karena terlalu fokus pada hal-hal yang sebenarnya tidak penting bagi hidup. 2. Terlalu fokus pada hal-hal yang seharusnya bisa diabaikan \"Saat kita terlalu peduli pada hal-hal ini, kita menghabiskan banyak waktu untuk lari dari masalah kita daripada berdamai dengan masalah itu sendiri,\" ujar Manson seperti dilansir dari Psychologytoday.com. Hal-hal yang dimaksud Manson itu berjumlah delapan poin, yaitu; membuat orang kagum, selalu benar, menjadi sukses, menyenangkan serta sopan, senang, selalu merasa baik-baik saja, menjadi sempurna, dan semua aman juga pasti. Menurut Manson, kunci hidup tenang tak perlu memikirkan semua poin-poin tersebut. Fokus pada hal yang benar-benar kalian pedulikan. Karena kita tidak mungkin baik-baik saja atau bahagia selalu sepanjang waktu. 3. Cari tahu apa yang sebenarnya layak dipedulikan dan diinginkan Benarkah kamu memaknai sesuatu dengan segenap hati? Para orangtua selalu mengatakan anak mereka adalah segalanya. Tapi tak jarang juga, ibu-ibu menomorduakan menjemput anak sekolah, demi diskon brand kesayangan di mall. Apa pilihan yang kamu buat? Apa yang perlu kamu abaikan, yang seharusnya tidak kamu lakukan? Dalam bukunya, Manson akan mengajakmu agar bisa menjawab pertanyaan-pertanyaan tersebut. Kamu selalu memilih apa yang lebih berharga, dari waktu ke waktu. Menurut Manson, begitulah perubahan terjadi. Perlahan-lahan, dari waktu ke waktu, dengan setiap pilihan yang kamu buat akan berubah sesuai prioritas. 4. Fokus pada hal yang lebih penting Misalkan saja, sebagai orangtua kamu pada akhirnya akan menyadari tentang diskon yang seharusnya bisa diabaikan. Langkah selanjutnya adalah membentuk kesadaran dengan pertanyaan \"seandainya\". \"Seandainya saya tidak peduli dengan diskon di mall, apa yang akan terjadi selanjutnya?\". Buat beberapa kalimat \"seandainya\" yang lain, yang masih berhubungan dengan hidupmu, dan bayangkan kira-kira apa yang akan terjadi dengan hidupmu. 5. Semua akan baik-baik saja dengan bersikap bodo amat Pada akhirnya, kalian akan memahami bahwa semua yang tadinya penting itu ternyata tidak begitu berpengaruh pada hidup kalian. Pelan-pelan akan muncul hal-hal di luar kebiasaan, yang bisa membuat kalian lebih hidup, yang selaras dengan nilai-nilai yang membuat hidup lebih tenang. Nilai-nilai itu yang nantinya akan tumbuh bersama kalian dan membuat kalian bisa memaknai kebahagiaan lewat sikap bodo amat.</p>', 54000, 10, 'assets/product/FyyY7K7XV4M7yY22X5y9VztAmVHEHeD5cxPjaIPC.jpeg', NULL, '2021-08-19 00:31:19', '2021-08-19 02:25:02'),
(6, 'Wingit', 'wingit', 'Horror', '<p>Penelusuran sebuah kompleks perumahan tua terbengkalai di daerah Jakarta Timur malam itu awalnya berjalan menyenangkan. Sebelum masuk ke area kompleks, saya bersama Wisnu, Fadi, dan Demian membuka vlog dengan gimmick seru untuk mencairkan suasana. Namun, saat tiba di sebuah lokasi rumah tingkat yang dikelilingi pepohonan dan semak, saya melihat semakin banyak makhluk tak kasatmata yang membuat saya terkejut. Tidak jauh dari situ, saya merasakan kehadiran sesosok hantu yang ingin berkomunikasi dengan saya. Hantu tersebut ternyata berwujud seorang anak kecil laki-laki. Fadi mengambil alih penelusuran saat makhluk tersebut berkomunikasi dengan saya. Selanjutnya, kami menyebut hantu anak kecil tersebut dengan nama Adik. Ia memiliki kebiasaan mengangkat kaki kanannya lalu menggesekkan tulang kering kaki kanannya ke betis kaki kiri seperti merasakan gatal. Ternyata, Adik tidak sendirian. Ia bersama dengan seorang kuntilanak yang ia panggil Tante. Adik bahkan menunjukkan di mana lokasi Tante berada, tepatnya di sebuah pohon. Inilah penelusuran kisah Adik dan Tante Kun....\r\n\r\nPengiriman buku Wingit akan dimulai pada tanggal 23 Desember 2020</p>', 75000, 10, 'assets/product/aJ62oHPGrXVCrTM7TKP9LNMjcMGESrf1sEnGpTAw.jpeg', NULL, '2021-08-19 01:43:25', '2021-08-19 01:43:25'),
(7, 'Merayakan Kehilangan Special 5 Tahun', 'merayakan-kehilangan-special-5-tahun', 'Novel', '<p>Aku sudah bahagia sekarang. Tak perlu kau cemaskan aku lagi.\r\n\r\nAku sudah ditemukan oleh seseorang. Yang seperti doamu dulu sebelum pergi meninggalkanku; yang akan benar-benar menyayangiku. Yang akan benar-benar mencintaiku.\r\n\r\nKini aku telah ditemukannya, seseorang yang mencintai aku sebesar cintaku kepadamu dulu; atau bahkan lebih.\r\n\r\nAku sudah bahagia sekarang. Tak perlu lagi kau khawatirkan kabarku.\r\n\r\nSalahmu telah kumaafkan, luka olehmu telah tersembuhkan. Tak perlu lagi merasa bersalah karena meninggalkan aku, tak perlu lagi kau kasihani keadaanku. Hujan di kelopak mataku tak lagi memanggil namamu. Di dalam doaku namamu telah digantikan oleh nama yang baru.\r\n\r\nAku sudah bahagia sekarang.\r\n\r\nTerima kasih telah memutuskan untuk pergi. Caramu menyakitiku kemarin, adalah cara Tuhan mempertemukan aku dengannya;</p>', 68000, 10, 'assets/product/vLwwoTXGCzt0rDBTBMVnclyTE3nO34OVtn6zC8ym.jpeg', NULL, '2021-08-19 02:27:13', '2021-08-19 02:27:13'),
(8, 'Selena', 'selena', 'novel', '<p>\"Selena\" dan \"Nebula\" adalah buku ke-8 dan ke-9 yang menceritakan siapa orangtua Raib dalam serial petualangan dunia paralel. Dua buku ini sebaiknya dibaca berurutan. Kedua buku ini juga bercerita tentang Akademi Bayangan Tingkat Tinggi, sekolah terbaik di seluruh Klan Bulan. Tentang persahabatan tiga mahasiswa, yang diam-diam memiliki rencana bertualang ke tempat-tempat jauh. Tapi petualangan itu berakhir buruk, saat persahabatan mereka diuji dengan rasa suka, egoisme, dan pengkhianatan. Ada banyak karakter baru, tempat-tempat baru, juga sejarah dunia paralel yang diungkap. Di dua buku ini kalian akan berkenalan dengan salah satu karakter paling kuat di dunia paralel sejauh ini. Tapi itu jika kalian bisa menebaknya. Dua buku ini bukan akhir. Justru awal terbukanya kembali portal menuju Klan Aldebaran.</p>', 63000, 10, 'assets/product/WNhQ1XDykBY3dTW3AswLlcWNKoHkxLQ0iTPGzwdU.jpeg', NULL, '2021-08-19 02:39:47', '2021-08-19 02:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_default` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `products_id`, `photo`, `id_default`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/product/n9YFcAC2pjN18OqCse6qqJKkGKh8m6fvHvXgAbLa.jpeg', 1, NULL, '2021-08-18 11:13:32', '2021-08-18 11:13:32'),
(2, 2, 'assets/product/fMgW3YCcWZJPojfApWkZRWXOQ9yk4IryRmhIhO2m.jpeg', 1, '2021-08-18 11:30:48', '2021-08-18 11:13:41', '2021-08-18 11:30:48'),
(3, 2, 'assets/product/lqkK7uWYkR5TCxn7DU8obYgz3kmaip4AfoakW6cI.jpeg', 1, NULL, '2021-08-18 11:31:02', '2021-08-18 11:31:02'),
(4, 1, 'assets/product/WNg6aqOkRutyPkhqVBiSWcI2ZaBoLul05hSrZVnr.jpeg', 1, '2021-08-18 22:35:18', '2021-08-18 22:30:13', '2021-08-18 22:35:18'),
(5, 3, 'assets/product/rxRyM2hLyqkcnxsUIP65gdszDlakNKOxQzcsnI8H.jpeg', 1, NULL, '2021-08-18 22:35:29', '2021-08-18 22:35:29'),
(6, 4, 'assets/product/tR27hZupuv430elpvhq3f4mMoDPAcy3dkZubzUNG.jpeg', 1, NULL, '2021-08-18 22:36:59', '2021-08-18 22:36:59'),
(7, 5, 'assets/product/lPLNmxp1dsBenIHp603Ggyo5W7SA8IFzXmbM3um1.jpeg', 1, NULL, '2021-08-19 00:32:05', '2021-08-19 00:32:05'),
(8, 1, 'assets/product/SVwAYICB7xG5LK30Lrd9erjlqK4mR6Z3HaSbWUCr.jpeg', 1, '2021-08-19 01:19:51', '2021-08-19 01:19:18', '2021-08-19 01:19:51'),
(9, 6, 'assets/product/0bY4OY6OJX0eii67weozgM5wth8zT90nIZe81Oa4.jpeg', 1, '2021-08-19 02:30:45', '2021-08-19 02:21:35', '2021-08-19 02:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_total` double(8,2) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `uuid`, `name`, `email`, `number`, `address`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'TRX69054599', 'Dion Suganteng', 'dionsl.s911@gmail.com', '+62895615115402', 'Bekasi', 150700.00, 'PENDING', NULL, '2021-08-19 00:41:01', '2021-08-19 00:41:01'),
(2, 'TRX10453517', 'Dion Suganteng', 'dionsl.s911@gmail.com', '+62895615115402', 'Bekasi', 75900.00, 'PENDING', NULL, '2021-08-19 00:41:38', '2021-08-19 00:41:38'),
(3, 'TRX39756422', 'Dion Suganda', 'dionsl.s911@gmail.com', '+62895615115402', 'Bekasi', 75900.00, 'PENDING', NULL, '2021-08-19 02:52:41', '2021-08-19 02:52:41'),
(4, 'TRX64117608', 'Dion Suganda', 'dionsl.s911@gmail.com', '+62895615115402', 'Bekasi', 75900.00, 'PENDING', NULL, '2021-08-19 05:50:45', '2021-08-19 05:50:45'),
(5, 'TRX62582305', 'Dion Suganteng', 'dionsl.s911@gmail.com', '+62895615115402', 'Jakarta', 613800.00, 'PENDING', NULL, '2021-08-19 10:22:14', '2021-08-19 10:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `qty` int(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `products_id`, `qty`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, NULL, '2021-08-19 00:41:01', '2021-08-19 00:41:01'),
(2, 1, 2, 0, NULL, '2021-08-19 00:41:01', '2021-08-19 00:41:01'),
(3, 2, 1, 0, NULL, '2021-08-19 00:41:38', '2021-08-19 00:41:38'),
(4, 3, 1, 0, NULL, '2021-08-19 02:52:41', '2021-08-19 02:52:41'),
(5, 4, 1, 0, NULL, '2021-08-19 05:50:45', '2021-08-19 05:50:45'),
(6, 5, 1, 4, NULL, '2021-08-19 10:22:14', '2021-08-19 10:22:14'),
(7, 5, 2, 3, NULL, '2021-08-19 10:22:14', '2021-08-19 10:22:14'),
(8, 5, 3, 1, NULL, '2021-08-19 10:22:14', '2021-08-19 10:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dion', 'dion@gmail.com', NULL, '$2y$10$FLBrPkFGIgbGhmF.rlA1.us5cpUGIsJNAG7YDy2lUlSw.9a82nsBK', NULL, '2021-08-18 11:06:58', '2021-08-18 11:06:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
