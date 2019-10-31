-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 11 Okt 2019 pada 21.25
-- Versi Server: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `copi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `active`
--

CREATE TABLE `active` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `active`
--

INSERT INTO `active` (`id`, `created_at`, `updated_at`) VALUES
(14, '2019-10-03 08:49:12', '2019-10-03 08:49:12'),
(40, '2019-10-03 14:05:16', '2019-10-03 14:05:16'),
(109, '2019-10-03 09:51:43', '2019-10-03 09:51:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon`
--

CREATE TABLE `calon` (
  `idcalon` int(11) NOT NULL,
  `no_paslon` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `nis` int(11) NOT NULL,
  `visi` longtext,
  `misi` longtext,
  `caption` text NOT NULL,
  `kelas` varchar(15) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `calon`
--

INSERT INTO `calon` (`idcalon`, `no_paslon`, `nama`, `gambar`, `nis`, `visi`, `misi`, `caption`, `kelas`, `created_at`, `updated_at`, `role`) VALUES
(11, 1, 'Diva Yoga Pratama', 'Diva.png', 15465, 'Menjadikan ekskul multimedia sebagai ekskul yang unggulan di SMK N 1 \nBawang dan juga di luar sekolah dan menjadi ekstra yang berguna bagi \nSMKN 1 Bawang', '<li>Meningkatkan kreativitas anggota multimedia</li>\r\n<li>Meningkatkan keahlian dalam broadcasting</li>\r\n<li>Dan meningkatkan karakter anggota yg sopan dan santun</li>', 'Paslon... Hebat berkarya!!!', 'XI MT 1', '2019-10-03 16:04:43', '2019-10-03 14:30:47', 'user'),
(12, 2, 'Hasan Abdulloh', 'Hasan.png', 15648, 'Menjadikan multimedia sebagai organisasi yang lebih terstruktur, \nsistematis, dan berkualitas', '<li>Menjadikan anggota multimedia lebih bertakwa kepada tuhan yang maha esa</li>\r\n<li>Mewujudkan ekstrakurikuler multimedia sebagai ekstrakurikuler yang menyenangkan dan juga menambah wawasan tentang fotografi dan videografi</li>\r\n<li>Berkomitmen tinggi dalam tugas</li>\r\n<li>Menambah keakraban antar sesama anggota multimedia</li>', '0', 'XI TKJ 2', '2019-10-03 16:04:43', '2019-10-03 14:31:52', 'user'),
(13, 3, 'Ella Faridhati Zein', 'Ella.png', 15929, 'Meningkatkan ketaqwaan kepada Tuhan YME,Memajukan Ekstrakurikuler \nMultimedia, Mengembangkan bakat setiap anggota.', '<li>Melibatkan Ekstrakurikuler Multimedia disegala event sekolah,baik event kecil maupun besar</li>\r\n<li>Mendokumentasikan kegiatan yang diadakan sekolah secara terencana dan terorganisir dengan baik</li>\r\n<li>Menjalin kerjasama antara ekstrakurikuler Multimedia dengan Ekstrakurikuler yang lainnya</li>\r\n<li>Mengadakan event-event untuk anggota dalam rangka membangun kekompakan antar anggota</li>', 'Orang terpelajar menggunakan waktu luang untuk belajar', 'XI OTKP 3', '2019-10-03 16:11:59', '2019-10-03 14:32:38', 'user'),
(14, 4, 'Fanya Rahma M', 'Fanya.png', 15895, 'Menjadikan multimedia menjadi suatu organisasi yang bersolidaritas, \nbermutu, berkualitas tinggi serta mampu mengharumkan nama baik \nsekolah.', '<li>Menumbuh kembangkan keimanan dan ketaqwaan kepada Tuhan YME</li>\r\n<li>Mengembangkan potensi bakat anggota multimedia menjadi lebih profesional</li>\r\n<li>Mengembangkan dan meningkatkan program kerja yang lebih berkualitas</li>\r\n<li>Meningkatkan integritas kedisiplinan dan kekeluargaan anggota</li>', 'Times to get better', 'XI OTKP 2', '2019-10-03 16:11:59', '2019-10-03 14:33:17', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_pilih` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_calon` int(11) NOT NULL,
  `feedback` int(11) DEFAULT NULL,
  `comand` text,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `respon_comand` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_pilih`, `id_user`, `id_calon`, `feedback`, `comand`, `updated_at`, `created_at`, `respon_comand`) VALUES
(1, 13, 2, 1, 'asdasd', '2019-10-03 15:10:39', '2019-10-03 14:58:27', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_25_041331_create_user_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password_rec` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '0',
  `role` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `kelas` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `nis`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `password_rec`, `status`, `role`, `kelas`) VALUES
(13, 'admin', 123, 'admin', NULL, '$2y$10$1FfAJQJ3LjgDxphWYQikuO2eok8NH7Xx0A5XiqWbdePnzGOJn8uQW', 'yhhrXv74GunnwFahZpaViPbo7fb66VKdQGhCy4hjNGOaF0Z35T47706GBg2T', '2019-09-18 22:41:59', '2019-09-18 22:41:59', 'admin', 0, 'admin', ''),
(14, 'Inayah Salma Afifah', 16655, '16655', NULL, '$2y$10$UyTqqeONL3wz.t4ksc4Rm.3PATG4PZAk08BH72y2l0iKQj0buQhY6', 'LYcnuvvqcfFh5Syc0YdhWTl88LEQBx5oFqIDsBmq41jDsrvyZRtRnSq1f7V0', '2019-09-25 00:35:40', '2019-09-25 00:35:40', 'j3zk', 0, 'user', 'X AKKL 1'),
(15, 'Tertia Nila Putri', 16673, '16673', NULL, '$2y$10$BhbYbwjnjlm.5zRlF5Dbsetl1lNmz4zABgMTyR0phavSV1VkU1rKG', 'uwH8MG4FPph55AAxVx7ZHpMq4djmpN2UqLXQXXIAsjTD5RjoQYvQTneJgsRN', '2019-09-25 00:37:28', '2019-09-25 00:37:28', 'dlwm', 0, 'user', 'X AKKL1'),
(16, 'Asyifa Yastina Nugraini', 16681, '16681', NULL, '$2y$10$FwSSnADDaJ93Pc8Z3Nx.4O8gtySvkKuhA.1gtk1rzAM0CRyrxozga', 'LIAQQKNtaY4mnzzboLrndy2BC6wdk97lOKHuVsNLPXqzdTjolYVM4q6zChMH', '2019-09-25 00:38:23', '2019-09-25 00:38:23', 'ocql', 0, 'user', 'X AKKL 2'),
(17, 'Hafizah Zuriyat Tayyibah', 16725, '16725', NULL, '$2y$10$ui2WFWf4omqm2zwKYcGrhu3SiMkOpY005CUEGi1JSo9mMld/uqtf.', '3pi3fYGGrMKeWNZzk8eg2IWRrlTeKyFu5Y5kKanXVfTKLQ9LmvCCjII608y9', '2019-09-25 00:39:07', '2019-09-25 00:39:07', 'n6qm', 0, 'user', 'X AKKL 3'),
(18, 'Yeni Fitri', 16566, '16566', NULL, '$2y$10$gjlDDWiVXKgtPNf2MzBD3.PBF2Vh0LcgdmscyUZKnIudtubzxd2AS', 'DxRtk2LGDKcXEpuFCCZcfrtErD9s3t2NZVHEbpi6dEyLaNz0AFLUhzp9UEvQ', '2019-09-25 00:39:57', '2019-09-25 00:39:57', '0tvo', 0, 'user', 'X OTKP 1'),
(19, 'Azzahra Nasywa Estyning Devi', 16576, '16576', NULL, '$2y$10$AYRuflml7PqzxhKLUfRFAurWjWpukHwAH59fI4ummY26IEJ4IdfOe', '6DR2QL4tRAw8FbyBV2f9jd9rhFpVGMKkgSBoFZqz6rgP94JXnuwXUIegAHKG', '2019-09-25 00:40:23', '2019-09-25 00:40:23', 'qeql', 0, 'user', 'X OTKP 2'),
(20, 'Sabila Nazwa Nurhafizah', 16629, '16629', NULL, '$2y$10$5gOEtZ4vnrxmaav6CnJJb.0M5EOlWqXODTjUY2PYZzjDp4mMm8UTK', 'jKRWUjZwCngDLH2wv7qInTFat7K3xGtYGcgRPuogafXUVVxFzqs4nuANv82f', '2019-09-25 00:40:54', '2019-09-25 00:40:54', 'j72i', 0, 'user', 'X OTKP 3'),
(22, 'Anggun Aulia Asmaya', 15961, '15961', NULL, '$2y$10$Vl8DojGF9/WuYOlrvVihReL/a0QpO599FudPHEvGKGhzf6gCa6IOS', 'gXQlaBxdVsrINuU044ESYvHdh3PT9JmzSQZ1yPgSim4Tj7A9CsKMWM06xmXH', '2019-09-25 17:45:49', '2019-09-25 17:45:49', 'okhn', 0, 'user', 'XI AKKL 1'),
(23, 'Aqilah Rahadatul A', 15958, '15958', NULL, '$2y$10$AJHFrwGqHE8TEQNopdglsOODB2JPHnwsOoGhIDQeVH/Or8sozn276', 'PM7MjI68ADeSfrbFUvsQupi0DnyfzhTKTxun5RqSZ9xJ7TFcnwiJyIKF7kh1', '2019-09-25 17:46:45', '2019-09-25 17:46:45', 'pphy', 0, 'user', 'XI AKKL 1'),
(24, 'Efa Safitri', 15970, '15970', NULL, '$2y$10$gmcLCTi4MQjT4r3DR0pupOEQ6lMo6855L1p.MyxCZaPRAjjwwMF.C', 'Bel0vpzyrwWOCqm9UTdsjT8TYNMCXfzwlTDuFmJbZVqgS6FEPUDC18xIBfNd', '2019-09-25 17:47:15', '2019-09-25 17:47:15', 'ajds', 0, 'user', 'XI AKKL 1'),
(25, 'Elma Widiarti', 15917, '15917', NULL, '$2y$10$i9vttMGryC2TIsWhQEE.f.YlOvqLyo8gDg7a0.hK0O3SHO7G.oE5e', 'nq2qJxx9ydCrvdp72XTNzqovtTlIXwo7vVogeRGlKW8lNGEtC3zG2GBPIM0d', '2019-09-25 17:47:48', '2019-09-25 17:47:48', 'az4g', 0, 'user', 'XI AKKL 1'),
(26, 'Febrica Cindy S', 16471, '16471', NULL, '$2y$10$irE/10C9fG7eLAeFQL28.e7KYMvNk7y4t081ml7pBMN0.q29CkYQS', 'n6nba3ES7N0oPg6ZIwJMfnoeOVDeBsguD81UzIgd42sWp9z7dKe8h3Jo4a2D', '2019-09-25 17:48:57', '2019-09-25 17:48:57', 'vcog', 0, 'user', 'X BDP 1'),
(27, 'Kharisma Noviyanti', 15977, '15977', NULL, '$2y$10$TQxfSQvLVPW5fJfcyqtXBuWvHoOsCuOkSQbDuNi9R76cjIJFCpeI6', 'TtNPqWHoH0PflqTZRhqeJeAHTbFmBpmlBBk8UODLuBQ4EJCZ3O7fGhQo8LrM', '2019-09-25 17:49:16', '2019-09-25 17:49:16', '80jw', 0, 'user', 'XI AKKL 1'),
(28, 'Firli Inayah', 16507, '16507', NULL, '$2y$10$xruN1W/u7V7C8jk2v36kEOcvdGftsZ8/bDcJCqAL1aPtL6UxC7X9K', 'o4oTrqIhjH6fyQqutcD5jZuayiEhiFSt3DPncGO0RNxQIEWtPcOXsn6PkLpi', '2019-09-25 17:49:40', '2019-09-25 17:49:40', '7xxw', 0, 'user', 'X BDB 2'),
(29, 'Kurnia Darojati', 15979, '15979', NULL, '$2y$10$nA3C7lrrUE/o9OfyEchS9ebLmlAwtzODC7/EhsyAqUJd3wWS3tArK', 'w0u1Zbrj2Sy7BG2SRalM8GuCpyPF7SP5oAeIlYwWlohRlpK25zAVV2JGkOMP', '2019-09-25 17:49:49', '2019-09-25 17:49:49', 'ptfx', 0, 'user', 'XI AKKL 1'),
(30, 'Novalia Rakhmah Damayanti', 16517, '16517', NULL, '$2y$10$R0No/F6m6XB.EtQp0IgAzeqH7J9TvL04lf42e/1vvU/1hjXF8dmXW', 'vx6erxhGoJle03uti1VjM2rxyIVqXckJsrUDYDhhkpEGufw0YVG5VeUOG6px', '2019-09-25 17:49:55', '2019-09-25 17:49:55', '4olv', 0, 'user', 'X BDB 2'),
(31, 'Temi Ariska', 16061, '16061', NULL, '$2y$10$DYOIX8ccbgCTnHmHhp3CAunwkHGzCaZlW1KRAdVJQyCHFiiNGG6fS', 'MAhbxi7RmvVhFFX7YnPnCQi5sk7yzR4YSIxjN3tas7WgDN6rJLWUB4OzA1wk', '2019-09-25 17:50:18', '2019-09-25 17:50:18', 'aqbr', 0, 'user', 'XI AKKL 3'),
(32, 'Dwi Mehendra Armayoga', 16290, '16290', NULL, '$2y$10$ULpj6oYQa01fgD4xmLVNHu7s38cWrPkg8uS4GY4hiacajqm8HCD9S', 'NMnFJrNHvK9sFHaWfBij65ZBDzxNH0TUroNmWmlUZEfhelzQ5ACTQ6tbhHu2', '2019-09-25 17:50:22', '2019-09-25 17:50:22', 'zk0i', 0, 'user', 'X TKJ 1'),
(33, 'Irfandan Mufadilah', 16298, '16298', NULL, '$2y$10$SrcRDN109PT4nXOeNqVUSOtSX0zA8W2F1hQKgrm7f5xbhrIjyrjBi', 'W61ueh8FY7yvGEdkW9agVs4SicupuMGwbIUtwxth1dVQAQznLvD0YTOWvNhV', '2019-09-25 17:50:39', '2019-09-25 17:50:39', 'evpb', 0, 'user', 'X TKJ 1'),
(34, 'Amelia Puspita D', 15854, '15854', NULL, '$2y$10$wEPDcGVfKDofxMAHgYlApOkNuCU8tGhpV37Hh6UYNKvRXwBGpikNa', 'ioRQF9525sMvhHZYQCEXvkDBPoPYGAncwq5auzOfkbe7I3rX9sReJqasdNYk', '2019-09-25 17:50:47', '2019-09-25 17:50:47', 's0zn', 0, 'user', 'XI OTKP 1'),
(35, 'M. Wahyu Dwiyatmoko', 16301, '16301', NULL, '$2y$10$00akHaj5oe1DoH7BTDwDwOndbY4UcUdOBAxnb.plrZ0pMPguD/F1W', 'VAM5NPAzGSte9AkvpNiyCMYIArgY0XAmDkl4Q7hW3wH5u74XDnzDWjUsg9wm', '2019-09-25 17:51:07', '2019-09-25 17:51:07', 'usg0', 0, 'user', 'X TKJ 1'),
(36, 'Dilla Syarri V A', 15862, '15862', NULL, '$2y$10$.tWH1fXYTVxxci2QzfiD8OeZeaegwkotEHHHq4Iow9GmoRa1GnieW', 'jwEY31lFnYCYKBd5kDZKARefNKA3dZ7WftvqjcrwjLuaG6v3HBZRP34AOSRd', '2019-09-25 17:51:17', '2019-09-25 17:51:17', 'ohh6', 0, 'user', 'XI OTKP 1'),
(37, 'Ghilman Fauzy', 16334, '16334', NULL, '$2y$10$gI9QiFb0hNWoL06Tkp2h8u8C9MjFFOP9r6Jg3WYHOBk9jcZmO.ApK', 'APeAyEiXto6YTNkuXIeAKhzVRx4blFC0gLySd8HaKCCK9f3TQ4qEdXHVEOE3', '2019-09-25 17:51:33', '2019-09-25 17:51:33', 'kdpx', 0, 'user', 'X TKJ 2'),
(38, 'Tri Asti A', 15882, '15882', NULL, '$2y$10$7d7zmUW/XG9maMJF.daF6.7QmJaxJkqUjTuIIekyWO5d9sRj/RfMq', 'V8fuss06gXpFY3ZAAGMoKKib2lu3OZHmiU8NaTklOEb6RdZ34oTlgm1thw7k', '2019-09-25 17:51:40', '2019-09-25 17:51:40', '5m1y', 0, 'user', 'XI OTKP 1'),
(39, 'Herlinda Sukma Ayu Khairunisya', 16335, '16335', NULL, '$2y$10$gANQuXayzz3T2PSHz.iBW.QubfbIV86KBnmzzwZMbVMAYlGncaSZK', 'vTl1p301GOMfjxHQFPzPKNkEAZgZOazM2y5FkrX5ROsJmhXtdCANG17bxs9o', '2019-09-25 17:51:54', '2019-09-25 17:51:54', 'tsu8', 0, 'user', 'X TKJ 2'),
(40, 'Fanya Rahma M', 15895, '15895', NULL, '$2y$10$rXrwP50YefjXZrsD8G6/9uZNtV.Bo7oua5pUZNQ3cb9/QvofctwBa', 'eS1WzFAZd4Sk0FpLR7lLXmChuOQmnI74LybwFpHoJ9uffjQAgsOvlwjNfOxH', '2019-09-25 17:52:04', '2019-09-25 17:52:04', 'loaj', 0, 'user', 'XI OTKP 2'),
(41, 'Ella Faridhati Zein', 15929, '15929', NULL, '$2y$10$w2w/2sSCQz1XrpWbrXwovO1zrfQhTcWtdabxnKJ9pitYMQI91hrEK', 'TNqbxmVfPyaVT7mXvqespjHhm2nf9swAUYv3TYyA6Rwq1QNqnCHsgREn4zTp', '2019-09-25 17:52:33', '2019-09-25 17:52:33', 'm8db', 0, 'user', 'XI OTKP 3'),
(42, 'Trias Wahyu wulandari', 16346, '16346', NULL, '$2y$10$xOFgBPZhkeNMupEGvbYahO6eEUK64ZyXWZhhnQV3cevGP18LmGP82', 'sZEUjxLwJSzg6dNPNLDCEXMVMnpKU0jMeDEKqsHRBFkcyOfjrFaC5ZpuvPNk', '2019-09-25 17:52:33', '2019-09-25 17:52:33', 'tyel', 0, 'user', 'X TKJ 2'),
(43, 'Virgiawan Widy Suratman', 16348, '16348', NULL, '$2y$10$2JGN3E0PGKcUrGrgp..H3u4nvx9ykAOjYswFu6azs2H9NXymR/vSu', 'lwQhaYvBht9VSTuaXpbVWtbuaGSOsHhwRpNI0TBxket8lpLtACUHsRhxF34S', '2019-09-25 17:52:53', '2019-09-25 17:52:53', 'hdi4', 0, 'user', 'X TKJ 2'),
(44, 'Intan Saputri', 15933, '15933', NULL, '$2y$10$UQQOLcF2FKA5wmpLMEbrWeZBI3n0ZoymUhMrXdQiU1gxUz0unxpqu', '5c0FpZwu729vxxt2VjIF7Q3I2ctt94bJeArRJBmJkSviRU1AtYi8waelkRNW', '2019-09-25 17:53:01', '2019-09-25 17:53:01', 'aky0', 0, 'user', 'XI OTKP 3'),
(45, 'Alfi Aturohmah', 16213, '16213', NULL, '$2y$10$.MU5kOMWF3SywY4m.SuVIuLHL2gHJ3c6Cz4DHt/gkp4rDGGj28FTu', 'c1YHJKcqXM1AAwn623ZZudQGi0szOe50HNHuf4InjTvD6aK2bxiXyT6wz86V', '2019-09-25 17:53:09', '2019-09-25 17:53:09', 'fh8k', 0, 'user', 'X RPL 1'),
(46, 'Fanny Agustin', 15824, '15824', NULL, '$2y$10$omvhqaQyYhphcG77DeNRi.nYJ4U60APCNYPoTJ4S37UZfwX3pUxBu', '1F8suMIQLRjOqyigaCKArHKuGwFfa0mNxza4U48o70eoasSrj6Dhct0jeTMF', '2019-09-25 17:53:30', '2019-09-25 17:53:30', 'n9vd', 0, 'user', 'XI BDP 2'),
(47, 'M. Agus Adindia', 16225, '16225', NULL, '$2y$10$HnV7CMDZVVizynbUstOLOOFvX95LANQtdMKbtbNw8Nyq49fr4kfta', 'TDpGXWkeua42LdOUPUOseYGvzew8DIXLJs2BMzA9k20mioGosQno6knjmcPy', '2019-09-25 17:53:34', '2019-09-25 17:53:34', 'rqr0', 0, 'user', 'X RPL 1'),
(48, 'Nadia Maila H', 15834, '15834', NULL, '$2y$10$06o.jVt086q96InQhgLe5em8jZIT.RuOTq0GvMSajcljT4EXdFZYq', 'Dhu43xWWsbaYBrn8jvl5YEqmv1fAQw7MfFrSfFHHGN7jJ4PW8fmK87U8Tswi', '2019-09-25 17:53:56', '2019-09-25 17:53:56', 'imlx', 0, 'user', 'XI BDP 2'),
(49, 'Pradita Rezi S', 15839, '15839', NULL, '$2y$10$CdUsE7q308JAQ2PmxI5PfO29iYHCaD7unAqlyJxHeWcIj2XCy33jK', 'H3wVKm8besDARkdexEhjutY0csoacPcsyc80xOFdkkyVotox8N67PjCyItyd', '2019-09-25 17:54:22', '2019-09-25 17:54:22', 'kwh0', 0, 'user', 'XI BDP 2'),
(50, 'Singgih Tri Pamungkas', 16237, '16237', NULL, '$2y$10$NcA.8DSK.4.y9BzWxardOu2O2tPy27nlAT/BaQeL3maGDHVt5mtGa', 'tLQpwzqdnX1WsxOkT05noEsylDcRbomZUhi9L10mlqVDR9XzQttNfBWDbJoB', '2019-09-25 17:54:43', '2019-09-25 17:54:43', 'dx8i', 0, 'user', 'X RPL 1'),
(51, 'Alfa Nur Ramadhan', 15527, '15527', NULL, '$2y$10$vwb8qCEcDPoTmF220qDmFuvnvA6kTmdBwK6Se7gKPtmFMVFbuzhNC', 'JVBI3jvxLy3ZDx95knWpd32QcRUFvTaGrir0TT3RtHBOwE60b0r64WFJvmd3', '2019-09-25 17:54:46', '2019-09-25 17:54:46', 'istn', 0, 'user', 'XI RPL 1'),
(52, 'Among Bagas P P', 15529, '15529', NULL, '$2y$10$9a0E1b/I8sP99QAHvGsg.urpR9g0Ai5BxfDHAjrrYHyhvC6gl8K2C', 'oo6NYgrnDxGhEkJi0n3FOqlDrNwYjCDbgNRsJItazOHCtZ0eA17LyXZAvVXx', '2019-09-25 17:55:11', '2019-09-25 17:55:11', 'ttxa', 0, 'user', 'XI RPL 1'),
(53, 'Ahmad Khoirin', 16247, '16247', NULL, '$2y$10$CfyAUQtHjtdzj8AH0dOM7O0u9OHTvUg7yzwwIz24zOjXvnn0Y1kCC', 'ZNZqj21zrK0bFLUXQtUOEUsfHDUucS4TMU2YQR5Ucdv5t6LUrtf6hAjhZRn2', '2019-09-25 17:55:32', '2019-09-25 17:55:32', '8vak', 0, 'user', 'X RPL 2'),
(54, 'Syakila Farsya H', 15555, '15555', NULL, '$2y$10$PewdTerXI7BRM5v1e/VmHe66FhoVxllPv3mABJZ/gZyjsRBODEqmS', 'LsRD9JoNnUyke6ts4H5AlCmK8YvzUt14jmJoLagZrrFaRqg4SUjKZRZd5Z5o', '2019-09-25 17:55:45', '2019-09-25 17:55:45', 'sep5', 0, 'user', 'XI RPL 1'),
(55, 'Anugrah Dinar Wicaksana', 16250, '16250', NULL, '$2y$10$IKao/5qyr7bbrS5wWs2JZOw7VfGZc9a2ooRZixJHsR4Pfdckzm.1.', 'xt4ReHnHKe9de5i3yauvLyNCliEvO1H7SG6pwYn5MGANWIOKuQ7eQpDIRAi0', '2019-09-25 17:55:56', '2019-09-25 17:55:56', '7qkc', 0, 'user', 'X RPL 2'),
(56, 'Zahrotul Nur Janah', 15561, '15561', NULL, '$2y$10$OeFysuuR2QilHQmFVA1pjOYe5wm4hTtE9mAnlgLUub2Mq5VXvXhcq', 'M8p5oxK304Q2hpUEPZMh9UNsADXv08yMeTh2Gy1Wj85zfg6zoc8GaLS7IORD', '2019-09-25 17:56:13', '2019-09-25 17:56:13', 'aalk', 0, 'user', 'XI RPL 1'),
(57, 'Viki Agtria', 16276, '16276', NULL, '$2y$10$C.SLh7ifIMVyfAU/7JH3Z.wjdOB8LBEwPZmKxyUFIwdk2LSbBc0M6', '0FSXs1fxmgFJ3rCXp27U2ojMFAzVeHeRBYMsXM8Eha0Nts0co4GzzjimsqPB', '2019-09-25 17:56:30', '2019-09-25 17:56:30', 'n8m8', 0, 'user', 'X RPL 2'),
(58, 'Akbar Palwa Ramadhani', 15563, '15563', NULL, '$2y$10$4.opMkpDds2vnWI82A59m.Y/j3lgraD4S8.Alm4L.Ka33/ySr1xvG', '3ZInXoojOnpTkYvF7QYHtLXxpa2uoJNK5uy26PXa1Xci6oeqEqxnF8n6Put5', '2019-09-25 17:56:35', '2019-09-25 17:56:35', 'mozm', 0, 'user', 'XI RPL 2'),
(59, 'Anggia Yuliana', 16752, '16752', NULL, '$2y$10$oPJTihfhqwzT7b54AthCJegwJSE8e8hghOLo/ZK/5rhZrJ40f67D2', 'b9xCxRrjfPUHUKkV0y13qa6t2wIhQASlqWfEQe6UgOjplGl75XOZaxVaHukx', '2019-09-25 17:56:51', '2019-09-25 17:56:51', 'vxiv', 0, 'user', 'X TB 1'),
(60, 'Dzikry Syahrul M', 15572, '15572', NULL, '$2y$10$D69DxoMRrYqmRWDhfkHX6ODssPgbcwbqWpdptMoHmbDYFiSYNJQZa', 'ad44TAdD9NecZ0SvoegjBn6M127u0QHffFCpBUdXBOYMBWnlD2hbq1t43TFH', '2019-09-25 17:56:58', '2019-09-25 17:56:58', 'wahz', 0, 'user', 'XI RPL 2'),
(61, 'Anisa Isnaini Sakinah', 16753, '16753', NULL, '$2y$10$As5YakB87DviwEjOjCZwceY.o8w/AsGywewXJlkrlfyXWr/xqtUpG', 'R191Cn0NATkfnlU5m5UOLV53PZCxvYXUcuVBO9OptpUuplCcnz9ncRGA2und', '2019-09-25 17:57:13', '2019-09-25 17:57:13', 'ip5a', 0, 'user', 'X TB 1'),
(62, 'Himawan', 15575, '15575', NULL, '$2y$10$o7mdTQesCAYu8Qj6gaatZeJ8c07laEMPRbpj7ruhMHzP6EHMYK0kq', 'LFggFRg6VswJhORzsL4qN2WVM2RG72kLZydz0yGwdkqMHgmrBuLwAYM5wU4i', '2019-09-25 17:57:22', '2019-09-25 17:57:22', 'o0js', 0, 'user', 'XI RPL 2'),
(64, 'Erna Hidayati', 16760, '16760', NULL, '$2y$10$T6prG4ODWC0mJB0zlaf94uTljG4F8OZfMQvK1AC2ng2MhGM8HouZq', 'Ps9DspYJJId8EHuxusszMd6AZeisMa3ikOaApHrEV1R6wuaFXq0zX2YZ2OXB', '2019-09-25 17:58:27', '2019-09-25 17:58:27', 'bsvr', 0, 'user', 'X TB 1'),
(65, 'Muhammad Mi’roj Majid', 15580, '15580', NULL, '$2y$10$.yV.0Dz6R9aca/8oSvjvdejXpndGqzcMviExppe6tVKACbQ8x7xeq', 'IY90xl7E32XE2Df0ko6Xsfxrj8Qvi1rNbPY5b5x60vDXLRquKFosLW8Jfzhf', '2019-09-25 17:58:30', '2019-09-25 17:58:30', 'qm53', 0, 'user', 'XI RPL 2'),
(66, 'Seny Oktovia', 16780, '16780', NULL, '$2y$10$ckqrEVUblE51jfdQxvnTb.9NFc62hxtnzUGrkDSulhZ2A79xhIXNu', '1RSqRLwVwrK2u0PnV5SgyokmIosMC9JkgHbWBRGSgS4yJgXnvPyt2iPSdUBV', '2019-09-25 17:58:50', '2019-09-25 17:58:50', 'vv5d', 0, 'user', 'X TB 1'),
(67, 'Wiwit Asih Yunita', 15594, '15594', NULL, '$2y$10$1slrsJB17/nKc8y597Qj7Ooi2nmYCt.d.a6W7PNjFx6X/RMttRvf.', 'aiSJQbKth5epW51VyCXMkQXylyQ1TWMe2m3XEQFHzbwiU35uEc4iLdigLxZl', '2019-09-25 17:59:04', '2019-09-25 17:59:04', 'sujv', 0, 'user', 'XI RPL 2'),
(68, 'Triana Sari', 16169, '16169', NULL, '$2y$10$GtyF5N9PJiIgLvUiUiKC..H67HEDWjDDexziFUg7tLjTRK77Bhunu', 'T0ChBnAwxr4789eMvzxrCATBEtNyeFT6gYI2beuGqmYfkErCzZSps9Ew4Z3P', '2019-09-25 17:59:06', '2019-09-25 17:59:06', 'x7cz', 0, 'user', 'X TMT 1'),
(69, 'Daffa Akhdan A', 15605, '15605', NULL, '$2y$10$pFrumx/D.2oKNlhh5p67RuD.lICZJbICAiiFobQzlwil0OBbbsZtO', 'EDVp1xAOJdz1y4OLkB95Hr7ZfkMW9KwVHwyU70QFYZlaCm2PGXbwiaJWeeZ3', '2019-09-25 17:59:29', '2019-09-25 17:59:29', 'ulr7', 0, 'user', 'XI TKJ 1'),
(70, 'Nagita Anggun Nabilla', 16163, '16163', NULL, '$2y$10$JkpZLVfbO8j7btzlwrxtVe.RHqKx6GjK1SpRcqdaiOHVdA.xaDiXK', 'LoMU3zxHLatgMOEHQWBWG7xSW2RZBU17YAeXk47lWae72CLiZGZEzlosiOlJ', '2019-09-25 17:59:32', '2019-09-25 17:59:32', 'su01', 0, 'user', 'X TMT 2'),
(71, 'Tria Yuliana', 16203, '16203', NULL, '$2y$10$hnWqYcOs/hEnxX2s9wQvE.JHiVPEsGB0xW.CO2yXsr1lixTOGzgLG', 'UbwkLmoD35GSdjtglOScKAFFuY3VlaKbfz05HBNSsSWZuboHiJYO02z4cmZP', '2019-09-25 17:59:54', '2019-09-25 17:59:54', 'uvw9', 0, 'user', 'X TMT 2'),
(72, 'Gayuh Rizki Dwi A', 15615, '15615', NULL, '$2y$10$h2gS.iSPNL8yliOj6fviMeUHFRtLt7pZOMhiJXgaUw3jOuLYc47Jq', 'bwAgnEMnzn9gwnsgfndelgM0nP6NU0XARLD4kQxQ36DawIqhT8rbTmkgSvd9', '2019-09-25 18:00:01', '2019-09-25 18:00:01', 'hlth', 0, 'user', 'XI TKJ 1'),
(73, 'Julian Safrizal Huda', 15619, '15619', NULL, '$2y$10$b0.aAj4HMcEBomg7wS13pOPWhCH/fXJXOuZzCyNYpO12CoKNxfsEG', 'y7pQJ4sUFJLDF7uE6F7pbY4NOO50G1IL41v8lKZO8GDEFELAP1o8sKKVeWEO', '2019-09-25 18:01:20', '2019-09-25 18:01:20', '8x9a', 0, 'user', 'XI TKJ 1'),
(74, 'Salsa Audi Ramadani', 16200, '16200', NULL, '$2y$10$QQGCVcnCyd5o1CYY5jAfwesZDm/G488xRi9Rcok5wx2zXTneHEJGa', 'fHjyAAATqXLpdcrJylbITSIO3pBrG49wcY9U9iFdWFixxgyur36WTFzgC4fD', '2019-09-25 18:01:26', '2019-09-25 18:01:26', 'mybr', 0, 'user', 'X TMT 2'),
(75, 'Wahid Ba\'isz Arrazif', 16206, '16206', NULL, '$2y$10$v7L9DSI/7aJ/r3Ga6XggPOhYbTtJwLzVRSoMwNK9FzLm8dGEZByUa', 'GerueJRyOU3IPZo0d8EWvF8zEoVVmuOchLEDngjKKobukED596TCe2Dlqxwy', '2019-09-25 18:01:38', '2019-09-25 18:01:38', 'md66', 0, 'user', 'X TMT 2'),
(76, 'Maulana Mufarrid A', 15621, '15621', NULL, '$2y$10$co5cblfsrbkOPASwUMWyPOAWHov9lBLd6nbWviY2rgcQhWbOJnYP2', 'lRRlO90TfQBLAfyA85MONEB8ciG2FdniCugIVYL33zZNTq8D4v1rYDRcxpW9', '2019-09-25 18:01:40', '2019-09-25 18:01:40', '32c7', 0, 'user', 'XI TKJ 1'),
(77, 'Ria Nazila Rahma', 16381, '16381', NULL, '$2y$10$ID4K1xqbAAH45H/GTvn70OHTOGcH.DbDJnnd5HJwUxtUcTw6ahwZy', '0n3DaqbRnAz2Q4M3hJzILt7GjfvJeUlbaZSXrReWgyPvZrdkBJLZN2psCBxc', '2019-09-25 18:01:51', '2019-09-25 18:01:51', 'uxim', 0, 'user', 'X APAT 1'),
(78, 'Sholeh Mu’arif', 15629, '15629', NULL, '$2y$10$pgIacbHvVD0VStjItSJuTu06hxJ.mNOhFQQDQc9tSzPsvchUG/GHm', 'VzBiLSrkj3F4Gbyp0DkgZwR7vk4ZLIOup6QcZ1ey3UOsUScggVrbGxLChfIn', '2019-09-25 18:01:58', '2019-09-25 18:01:58', '9vwg', 0, 'user', 'XI TKJ 1'),
(79, 'M. Firdaus', 16442, '16442', NULL, '$2y$10$v2g0YqUxvZUErRXk04UnfuvP848wLYnEzv4se.YkDY1SIOSkIOggm', 'RFrRpbnIm6KC2F3qp9ZeTneWKcvKKleKshKM2BbPQSl6DDfSAOC7RBHkcwBt', '2019-09-25 18:02:04', '2019-09-25 18:02:04', 's5an', 0, 'user', 'X APAT 3'),
(80, 'Dimas Jati Waluyo', 15643, '15643', NULL, '$2y$10$iC.RJDTi83bIPmeMHB4c1.sYwzpL1rah4CAxbhmZmrJOnp8jeQ3y2', 'USAkb0PLDmSX6SganZtfpjniMucEqoyvId3iApbWbE8ASq1TGeL5O2r4jVUY', '2019-09-25 18:02:20', '2019-09-25 18:02:20', 'hbhc', 0, 'user', 'XI TKJ 2'),
(81, 'Ferdinan Prayoga', 15647, '15647', NULL, '$2y$10$kp0PUqQ8U8viRg3sbQzOiexVPs/jB212CKQ9SVOZ8baZ5FZP.ncTC', 'CHnl0Y7xKOwNMxwanoN5KDFemKVqCnw4gMt3FO5tcxQFKTAx2HciZWAJUlik', '2019-09-25 18:02:35', '2019-09-25 18:02:35', 'hgkw', 0, 'user', 'XI TKJ 2'),
(82, 'Hasan Abdulloh', 15648, '15648', NULL, '$2y$10$eqVjpOK1h7o/fsstLzv5B.qwJZQRQG56kTQk3GpI.IWz39h7nCrU2', 'UBypArr4EBwdB3BVgLuVxX6NHP2Yx2HnIyuDkjUtfqbevCJ7fOssP4QptSqV', '2019-09-25 18:02:49', '2019-09-25 18:02:49', 'poyf', 0, 'user', 'XI TKJ 2'),
(83, 'Muhammad Ilham Sayogi', 15655, '15655', NULL, '$2y$10$L5MCwtjcUuBQgYkd.bV7gOeLzrW5W7TAGOGJdNCs7BjfNGUVoL01K', 'kadzTwc6zcPjS5hCaAqBoB12g5ZBXhumTtI9poXFG2e6lAUHha6LZ67T3Tko', '2019-09-25 18:03:03', '2019-09-25 18:03:03', '9jdr', 0, 'user', 'XI TKJ 2'),
(84, 'Muhammad Rismawan', 15652, '15652', NULL, '$2y$10$aPb/PsT0kSM7m23UlQqDIuaKCOOlXLuXbV/8bFIM.L5mzfkYApK0O', 'h4SAlKz8LJ3yxzViUSRKj6fSmPr5EPLoB5uddTO7mljNBTFkSdb8SWcchzlP', '2019-09-25 18:03:23', '2019-09-25 18:03:23', 'xvr3', 0, 'user', 'XI TKJ 2'),
(85, 'Dewi Hasna M', 16114, '16114', NULL, '$2y$10$/cK3mRcEEq2P6fuZ5rmDt.uv/QBext5LZ5jmn5wU/8Kih3p/.Cmr6', 'd9Equmu2MmiRbHbBLRMPeeJpepP1IlHjhlmharDi4fC5ljHGtS2yVWVxE2QA', '2019-09-25 18:03:42', '2019-09-25 18:03:42', 'aplp', 0, 'user', 'XI TB 2'),
(86, 'Diva Yoga Pratama', 15465, '15465', NULL, '$2y$10$x63m5mhL29C26qItbye65udciRN.wHPRhbzydUuEPw13QpolXhsGa', 'hAl8CDBPTa5Ojq839iW1c4YFqJdQ2jvotb0pEpohjNZ5bWbN8MR0qbYF5ycF', '2019-09-25 18:04:13', '2019-09-25 18:04:13', 'dnny', 0, 'user', 'XI MT 1'),
(87, 'Erfan Fadila', 15468, '15468', NULL, '$2y$10$EoVevzZRafz78D3AGFZNV.82x3IDGG9fLWfbuElzN7Py3XF4MrM76', 'n0o1BBgPJVN0BtHDIqB7xnoU7SCiSynrFPkcOCxivQVVcuxjxAVvZcNedW4s', '2019-09-25 18:04:41', '2019-09-25 18:04:41', 'dheq', 0, 'user', 'XI MT 1'),
(88, 'Muhammad Ahdan Althaf', 15478, '15478', NULL, '$2y$10$RPBHRxUt6uauN9EYJz4Bw.90LzE/T8vRUvsDNtyGjKIL1BO/XbyJ2', 'ms3fXaYubZQl4VqJkXcta5zmxBbFFjSUUYQLJs1KMYfUjguUld771kmZ0RDA', '2019-09-25 18:05:04', '2019-09-25 18:05:04', 'dodb', 0, 'user', 'XI MT 1'),
(89, 'Muhammad Ridwan F', 15479, '15479', NULL, '$2y$10$CDf054I74BHNN38kAI2TnemvjCMtbaZl2XXgIlfyU8ib.EwThB29.', 'TZlq5uPwlZpvFZ8C5IKKJI5W3rEDTrqVMwUDkPHeNgGUrVKDiZvMX5Vt1ykw', '2019-09-25 18:05:20', '2019-09-25 18:05:20', 'k9np', 0, 'user', 'XI MT 1'),
(90, 'Awida Inkam Safitri', 15494, '15494', NULL, '$2y$10$Hfdghl.CPoAxLpIBEK2IpOSL/ABpTGW.rcX3jiIQtARb1CJEm4Swa', 'EAiKf1nSkZdyi6ATYNLml75qSPWy2kicb7LMCtQCpSCgmzqNO2MI75GlSeMS', '2019-09-25 18:05:39', '2019-09-25 18:05:39', 'jhaq', 0, 'user', 'XI MT 2'),
(91, 'Syifana Thalita Titah Madani', 15166, '15166', NULL, '$2y$10$p6EPSRBfOfy8bXhKK.kGKeyf/Y9wkgKKmZIygSTOydUULH46Ub6xu', 'NZEzyt6eRLQjuHApFLzqSYBXWyJDnSNNLUBgCoBTG5zX2zOXhXE8fioHqa7x', '2019-09-25 18:06:16', '2019-09-25 18:06:16', '0sfu', 0, 'user', 'XII TN 1'),
(92, 'Aida Miftakhul Jannah', 14938, '14938', NULL, '$2y$10$STFpb3XQtzS2Dc3GFNBpsOl4jxQruHd2EAn2aa95YtnDuYzSoUr/C', 'lNm8bh2bs0JMUvQrjGzmMO18c1gwEM4pAjzaADm8wGRt0Vfj1iAbF0XcMdAG', '2019-09-25 18:06:33', '2019-09-25 18:06:33', 'cy6h', 0, 'user', 'XII TKJ 1'),
(93, 'Nanda Novita Putri', 14994, '14994', NULL, '$2y$10$ixo8IPMbhiCT6ev3TUHkju19zVyvAKb4cQxFXtEbnATfvFTLHSTpW', 'QC96g1hfyYY3LAhgNKhrBJGkW6tGBlQwXEPaagVcz912hQEJKmHg5EtV2VCs', '2019-09-25 18:06:48', '2019-09-25 18:06:48', 'snlx', 0, 'user', '14994'),
(94, 'Dini Oktaliyanti', 14800, '14800', NULL, '$2y$10$WFl2JtpJv0L4aqeHJkmviuZuK1B6n7QBquq6bhg6rID7IfPpWg5zC', 'NaVNMTcYFgvStckNedUxygjxbUjUrpQcpTXuQVBWtsyENYxOIA51TCXxb0gj', '2019-09-25 18:07:03', '2019-09-25 18:07:03', 'cqgd', 0, 'user', 'XII MT 1'),
(95, 'Maulina Catur Wulandari', 14885, '14885', NULL, '$2y$10$KBGN/koUKGRz/ixG3H..OeXCnMEclb58AGb3a2EqKfVrNjXrE1xTy', 'ooAB4jqzWxYOU049v9DSE5Lfalr63XGCHGhYeMigwidEr0qZsAWe7YcihHlc', '2019-09-25 18:07:16', '2019-09-25 18:07:16', 'ljep', 0, 'user', 'XII RPL 1'),
(96, 'Triana Sukma Ningrum', 15450, '15450', NULL, '$2y$10$Xh4vVjWecl4un.S5qK5r7.mYrWEHGxuA8ryjLIU.idrJNbrk0HCXO', 'YGVA3KjWp6z3DcTZzReW41dWwQHAYbGrMYOGQ5LtfOEVEw2cKKLdAb8SbHjM', '2019-09-25 18:07:40', '2019-09-25 18:07:40', 'rmpb', 0, 'user', 'XII TB 2'),
(97, 'Akbar Ramadhani', 14901, '14901', NULL, '$2y$10$s9Ap6F902fqnB4YU.aurm.6NuFGlJCD36LhrWDlJg6DyOj3Ju1OrC', 'dBPBA0C8NHBiA5rrnfCTgzUpZuq9w0ZYQ0xdPOCqLVHJHdWTKC8nDwqEXiVh', '2019-09-25 18:08:08', '2019-09-25 18:08:08', '0njp', 0, 'user', 'XII RPL 2'),
(98, 'Rahma Tri Rahayu', 15198, '15198', NULL, '$2y$10$g86kjDgG3EobAW5.JusakuNH7Cw.dmuaJb72qF6MyKWge3Zt4Z6Qy', 'nMpSRGOwiOVcYN20iBuuOvLlHYvm560VqPutcB0IkjfD157aZLmUO9WRqWkw', '2019-09-25 18:08:24', '2019-09-25 18:08:24', '5qhe', 0, 'user', 'XII AP 1'),
(99, 'Gaiska Artama Putra', 14873, '14873', NULL, '$2y$10$gNjt.M69Fb0KvHvOTrRENu0Gp5X3bbAM12/VU44rb/L.6QKi5QC8u', '800wb8KxWTXJ4Bb0Gw3UTgx0rdWTu4xQRifZsFu3mkB9dnCWqN2Lw9mSyJHq', '2019-09-25 18:08:37', '2019-09-25 18:08:37', 'ksus', 0, 'user', 'XII RPL 1'),
(100, 'Hanif Khoirulloh', 15186, '15186', NULL, '$2y$10$V8BZSBE9Dhlg5doezThgde1l7qsA5yMzTgSBGV6gzF0ZQvSs0ypoa', 'CvYdNQfJwxwZtqdaWoeLE4eh8AwXm4KZFAiC75gkCwnpCaA3swrJcioc8Wl3', '2019-09-25 18:08:55', '2019-09-25 18:08:55', '84xs', 0, 'user', 'XII AP 1'),
(101, 'Gilang Nur Ikhsan', 14990, '14990', NULL, '$2y$10$JHNNSQpZ2I55IR8jFSdEJ.f78OqHLCZZpzS98McA0VaxftYByB.6u', 'HM02TJMmjLtzl1im9KvkpuvwOTFCEJM43Rt8vC7dfMF3YSkHIyAnjUeBVlC4', '2019-09-25 18:09:09', '2019-09-25 18:09:09', 'm0o0', 0, 'user', 'XII TKJ 2'),
(102, 'Yumna Rahmi Afanin', 14825, '14825', NULL, '$2y$10$bS2nbi6b98pPomqgpym...8zLTIvfU1YUyxL0OMo2u1mYWM0p.q8y', 'k55sG6p6PgGeA4IythIBD9B60sKQZO2j2xNnC538snt4y0HqVUWrWqwxAN0F', '2019-09-25 18:09:32', '2019-09-25 18:09:32', 'v1gu', 0, 'user', 'XII MT 1'),
(103, 'Bagus Putra O', 14942, '14942', NULL, '$2y$10$uUU0Tl81CDcIq00S3wS6a.OxOIXXFa/82Z7Y44T3yzoNvPBzAndYS', 'nfWU9sjeK7ZJM0eIpITqlxR62cTr30Z4r3yZIuxzgx3aAIgzfvqrNXAmXjdH', '2019-09-25 18:09:46', '2019-09-25 18:09:46', 'xq4a', 0, 'user', 'XII TKJ 1'),
(104, 'Ali Usman Muzakki', 14976, '14976', NULL, '$2y$10$GAyhDe9HdbYVB1n3Kt4m/uMVv/t2mQ7R.W/YRSI.ZtYYrPdxBNeEm', 'GlqX9bJ5Wn6PuqWV48wa4FnkwdMN9HywCzdOwzhpZqhBY5OIEhjPNGj03J4e', '2019-09-25 18:10:01', '2019-09-25 18:10:01', 'btcb', 0, 'user', 'XII TKJ 2'),
(105, 'Karina Diva Andienna', 14949, '14949', NULL, '$2y$10$m8qGMxscVdQxcBWZKkVlT.GxYLcnt6brhqCpw9hUmI0PVcCfbBG6W', 'ySca4UtzSEjQO9EerbTQCSD5V5i1itSfQWhTvadmqiV5xcn3jBUWho2KodfU', '2019-09-25 18:10:19', '2019-09-25 18:10:19', 'dyhf', 0, 'user', 'XII TKJ 1'),
(106, 'Muhammad Zidanne Galih Tegar', 14916, '14916', NULL, '$2y$10$AtFi54RG0Xr07JwQGcY6XuH.pxu7rPlh15Z7cINYYt42soGPN4Qma', 'ut0RyJjJnT1slCuVwKvCVXzBso6kOkWG4mePJaepL1JrR1q7XxckwwfaApbP', '2019-09-25 18:10:35', '2019-09-25 18:10:35', 'tmmd', 0, 'user', 'XII RPL 2'),
(107, 'Ika Siti Watiroh', 14910, '14910', NULL, '$2y$10$1eLyiDjV17TiCUuM9zNP4eGV/W.4q1M8QKLddAWyEwDe.iAsWG6T6', 'ZOO8hzWphlg43hIo1CCOvuIN9kYaQWAlyWuOkKnWKbPAWgSAJxvmvWmm3c7v', '2019-09-25 18:10:53', '2019-09-25 18:10:53', 'b2sv', 0, 'user', 'XII RPL 2'),
(108, 'Muhammad Saiful Abdulah', 14915, '14915', NULL, '$2y$10$7PcPf9XGaMWfbtOSotO3zu0iIq5c7Nv82hlPBuus8nbG55E33d1bC', 'WV3D9xxVhPtmHqdBAlSHawzFkjsITa02uFNhrkDoBTa8ylBVBmw3ZXD1pxLz', '2019-09-25 18:11:16', '2019-09-25 18:11:16', 'xouw', 0, 'user', 'XII RPL 2'),
(109, 'Silvester Erlangga Setya Pamungkas', 14925, '14925', NULL, '$2y$10$.Wf65Vuf4DKXZLWiA9az8emni5igS50/jjSRqztGJ3Lj5qUc1zOZW', 'dYhL9FWcP5IWt4TzkXz80nfIjl7HO5E0LOM3uuuMwwRX2lAXM2zgOhhmADEb', '2019-09-25 18:11:33', '2019-09-25 18:11:33', 'xz5n', 0, 'user', 'XII RPL 2'),
(110, 'Syaifulloh Abdul M', 14893, '14893', NULL, '$2y$10$GsQrj5Xts.ciGmc/YPKby.1WPk5YuHj3sjrnsMDS3pWD8TM9oM9ma', 'KAPdAONXIE3tH2JyMFnttTNatU78s4ZCMhEbebnstwAwnVz3HtcGGDW08QyN', '2019-09-25 18:11:48', '2019-09-25 18:11:48', 'aj77', 0, 'user', 'XII RPL 1'),
(111, 'Alfareza Lovena Fambella', 14975, '14975', NULL, '$2y$10$JRbRptEMbcCFXLye5OjsZOkcqRjuGZp2ydxB6Ma.AIR3m70qVxfha', 'h9upc7BjjwJGhHgmkXvc3U1X7Wej82Z7LxeLaYmFyDBpHXyaPQBig9yJ6qTl', '2019-09-25 18:12:08', '2019-09-25 18:12:08', 'h4fk', 0, 'user', 'XII TKJ 2'),
(112, 'Altar Adisty Prasetyo', 15354, '15354', NULL, '$2y$10$NVMUAr0HtAxSV88H8ns5EebFpmCpQw2Xcg2LT.hp/9Ms8KIAZkftO', 'wgQZ6rZPKQfsaZgwqHwaqWxZdwLvdcQKRxAZjVkGgIFV8CgydGWSU3lu646t', '2019-09-25 18:12:30', '2019-09-25 18:12:30', 'l3k2', 0, 'user', 'XII AK 3'),
(113, 'Novi Pitriana', 15125, '15125', NULL, '$2y$10$TFTMO/XYPIXwL.IIdNfgMeU6f38t.70zsU83I7hcbNQg0hIg/jY5C', '4b2RQTewLUOENeZrAaRzHVJDIoZw9kzrk4kqhmiqr8y4rKCVGohCKIqFCpYS', '2019-09-25 18:12:45', '2019-09-25 18:12:45', 'h4tj', 0, 'user', 'XII TN 1'),
(114, 'Galuh Dinawang A', 15295, '15295', NULL, '$2y$10$HmZjdsvnXkL1zKMuVl.JZeZktytvgl5TQAXEcJI28TcpEvgBpdfVi', 'ANftpXjZgSevsVg05OWM4bqyPUBFNH8X7aQpUDRW8fc5pZekQap4Sw2ftO9n', '2019-09-25 18:13:03', '2019-09-25 18:13:03', 'lsp4', 0, 'user', 'XII AK 3'),
(115, 'Hermawan Genta Arraihan', 14909, '14909', NULL, '$2y$10$wHpzNNNoKIfCPLeQaQD/e.jx5NPWsY5zSL0oJqLQere08MLAwjqtC', 'oLTDxn3p4XHwMhfPPu2UlLrapydLP9hyKBBnqYBDeaStps21bnXoZ9C7BFr1', '2019-09-25 18:13:18', '2019-09-25 18:13:18', 'ul3u', 0, 'user', 'XII RPL 2'),
(116, 'Fajar Ramadhan', 14947, '14947', NULL, '$2y$10$EKcm7jIDf/zkKIyGmhTZc.3y4crN4ZDr.OMAfFPvc.R6WxmvU218O', 'jgk66yFj04OmIBhENFt3LoSKg1H8KHnwC9LXEnxwHycEF4j1EQ0bucaxo8He', '2019-09-25 18:13:35', '2019-09-25 18:13:35', '0yw9', 0, 'user', 'XII TKJ 1'),
(117, 'Heri Fajar Hidayat', 14948, '14948', NULL, '$2y$10$/2wEpCAU6FTRbhM/k7FU5.EN69mXot8yFuP5Uz7hddZABl3ilhQIO', 'KgwHHrjyndhaugdwAhS959YxZ02wHb0fqnakGuDsVIvjMFsgKZ7i8XwFq829', '2019-09-25 18:13:48', '2019-09-25 18:13:48', 'aiy0', 0, 'user', 'XII TKJ 1'),
(118, 'Wisnu Putra Kurniawan', 14967, '14967', NULL, '$2y$10$zXIeBPF1g4FG/8zZdMhc9OBzJlGlWzTLL5cxqD4G8Lb4sDA/kN5tq', '76OqjWO8heoYdWjA33W7dGCBgI9NUG1kccBPkelwqiIc3OdT0bfsIjqPPsgr', '2019-09-25 18:14:02', '2019-09-25 18:14:02', 'dx03', 0, 'user', 'XII TKJ 1'),
(119, 'Muhammad Alwi Hidayat', 14952, '14952', NULL, '$2y$10$9EaSztUUWyenqNtp8RCnrewlc4wTqREOOvjnLkmQwm0mwuIkFSCE2', 'BShmjjWAZYygtbMunAkjnQL3l4cXSZXJtR0S4gMplMIicQ9SP9NShmo6Xuei', '2019-09-25 18:14:26', '2019-09-25 18:14:26', 'mn8x', 0, 'user', 'XII TKJ 1'),
(120, 'Ajeng Larasati', 15424, '15424', NULL, '$2y$10$qjW7A4rAouIvo0eHVmY15u6ypTT.7ozf5ROK.BsBK6dZRr2dPO5ci', 'M7jKkqa5wIDgzkDZ5k1oEYv921ymfDV1EvMD3Bp2JzMC1zUvfIjEcerV9H35', '2019-09-25 18:14:40', '2019-09-25 18:14:40', '2bny', 0, 'user', 'XII TB 2'),
(121, 'Lina Fitriani', 14815, '14815', NULL, '$2y$10$h0RRdPnWE3o8iiFnhpqFJeZxljdDMQBPH7R21Cx4v4Bt7oZWpRJJG', 'Bo6Aylh19LPuRcwtjB3ASIGNxaYYstxC9UrB85rgJnmqPDrm8VgvitTNh8gx', '2019-09-25 18:14:57', '2019-09-25 18:14:57', 'uwnc', 0, 'user', 'XII MT 1'),
(122, 'Jeny Dwi Wuriati', 14813, '14813', NULL, '$2y$10$c3Vww2ydzipSxP2J96YY3ul0sWMPWfVxdtHNh1UT.g/xy//Qp2yqy', 'RFpOohl7kykqoas4ja4EuVYDydUHqlVohqY0gFWVIqAwFEs6jN0SDaurpYae', '2019-09-25 18:15:14', '2019-09-25 18:15:14', '3bkm', 0, 'user', 'XII MT 1'),
(123, 'Galieh Setiawan', 14989, '14989', NULL, '$2y$10$5iSVtrrPYEIyvKrGYP9YJe7AbsMN3h0VPUrD2NPoFcIvSJPfYSDGW', 'lY49Zq2meYTNyrTmXPCmEb9J4yB1QM22kN89DqqLisuX8wUfHlZkqihYowzA', '2019-09-25 18:15:30', '2019-09-25 18:15:30', '45fa', 0, 'user', 'XII TKJ 2'),
(124, 'Dini Priliasari', 14985, '14985', NULL, '$2y$10$82CL1X7Qu88cpAGX5ou7KuKy4W/Z5o/qW7jYkCAWRXfbpUpBX9y5q', 'KgoI3PzOzYrVkxZ8UHckBMUQDCDiaJICZgJ1xVTIqjHOxKd8hS19KDfcfpjg', '2019-09-25 18:15:45', '2019-09-25 18:15:45', 'ejub', 0, 'user', 'XII TKJ 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active`
--
ALTER TABLE `active`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calon`
--
ALTER TABLE `calon`
  ADD PRIMARY KEY (`idcalon`),
  ADD UNIQUE KEY `no paslon` (`no_paslon`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_pilih`);

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
-- Indexes for table `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT for table `calon`
--
ALTER TABLE `calon`
  MODIFY `idcalon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_pilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
