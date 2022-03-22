-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2022 at 12:39 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_entries`
--

CREATE TABLE `book_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_return` tinyint(4) NOT NULL DEFAULT 0,
  `creator` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_entries`
--

INSERT INTO `book_entries` (`id`, `user_id`, `book_id`, `date`, `return_date`, `time`, `book_return`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-12-5', '2022-2-17', '4:26', 0, NULL, NULL, 1, NULL, NULL),
(2, 2, 26, '2022-9-9', '2022-8-3', '9:48', 0, NULL, NULL, 1, NULL, NULL),
(3, 3, 95, '2022-10-8', '2022-10-22', '9:3', 0, NULL, NULL, 1, NULL, NULL),
(4, 4, 60, '2022-7-11', '2022-8-28', '10:13', 1, NULL, NULL, 1, NULL, '2022-03-20 20:47:37'),
(5, 6, 18, '2022-03-23', '2022-03-29', '14:43', 0, NULL, NULL, 1, '2022-03-20 02:45:39', NULL),
(6, 6, 49, '2022-03-23', '2022-03-29', '14:43', 0, NULL, NULL, 1, '2022-03-20 02:45:39', NULL),
(7, 4, 81, '2022-03-21', '2022-03-31', '14:46', 1, NULL, NULL, 1, '2022-03-20 02:47:46', '2022-03-20 20:35:14'),
(8, 4, 7, '2022-03-21', '2022-03-31', '14:46', 0, NULL, NULL, 1, '2022-03-20 02:47:46', NULL),
(9, 4, 41, '2022-03-21', '2022-03-31', '14:46', 1, NULL, NULL, 1, '2022-03-20 02:47:46', '2022-03-20 20:35:18'),
(10, 5, 55, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:16:38', NULL),
(11, 5, 7, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:16:38', NULL),
(12, 5, 45, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:16:38', NULL),
(13, 5, 84, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:16:38', NULL),
(14, 5, 91, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:16:38', NULL),
(15, 5, 19, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:16:38', NULL),
(16, 5, 18, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:17:00', NULL),
(17, 5, 81, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:17:00', NULL),
(18, 5, 83, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:17:00', NULL),
(19, 5, 46, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:17:00', NULL),
(20, 5, 18, '2022-03-21', '2022-03-31', '15:00', 0, NULL, NULL, 1, '2022-03-20 03:58:58', NULL),
(21, 5, 55, '2022-03-21', '2022-03-31', '15:00', 0, NULL, NULL, 1, '2022-03-20 03:58:58', NULL),
(22, 5, 81, '2022-03-21', '2022-03-31', '15:00', 0, NULL, NULL, 1, '2022-03-20 03:58:58', NULL),
(23, 5, 63, '2022-03-21', '2022-03-31', '15:00', 0, NULL, NULL, 1, '2022-03-20 03:58:59', NULL),
(24, 5, 83, '2022-03-21', '2022-03-31', '15:00', 0, NULL, NULL, 1, '2022-03-20 03:58:59', NULL),
(25, 5, 55, '2022-03-21', '2022-03-31', '15:00', 0, NULL, NULL, 1, '2022-03-20 03:59:12', NULL),
(26, 5, 81, '2022-03-21', '2022-03-31', '15:00', 1, NULL, NULL, 1, '2022-03-20 03:59:12', '2022-03-20 04:28:02'),
(27, 5, 85, '2022-03-21', '2022-03-31', '15:00', 0, NULL, NULL, 1, '2022-03-20 03:59:12', NULL),
(28, 5, 98, '2022-03-21', '2022-03-31', '15:00', 1, NULL, NULL, 1, '2022-03-20 03:59:12', '2022-03-20 04:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `book_lists`
--

CREATE TABLE `book_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_lists`
--

INSERT INTO `book_lists` (`id`, `name`, `image`, `author`, `section`, `published_data`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Black Belt Web Programming Methods', 'covers.openlibrary.org/b/id/1633560-M.jpg', NULL, 'C', '1998', NULL, NULL, 1, NULL, NULL),
(4, 'The Philadelphia Negro A Social Study', 'covers.openlibrary.org/b/id/10996354-M.jpg', NULL, 'A', '2018', NULL, NULL, 1, NULL, NULL),
(5, 'The Philadelphia Negro a Social Study', 'covers.openlibrary.org/b/id/11167014-M.jpg', NULL, 'E', '2018', NULL, NULL, 1, NULL, NULL),
(7, 'From the Twisted Fabric of My Eye', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'B', '2021', NULL, NULL, 1, NULL, NULL),
(18, 'A Garden', 'covers.openlibrary.org/b/id/7396000-M.jpg', NULL, 'B', '2000', NULL, NULL, 1, NULL, NULL),
(19, 'Whispered Visions (Music of the Spheres)', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '1988', NULL, NULL, 1, NULL, NULL),
(20, 'The Lost Red Patriot', 'covers.openlibrary.org/b/id/1821261-M.jpg', NULL, 'E', '2007', NULL, NULL, 1, NULL, NULL),
(21, 'Pure Sawdust', 'covers.openlibrary.org/b/id/2778347-M.jpg', NULL, 'E', '2005', NULL, NULL, 1, NULL, NULL),
(27, 'Slow Cooker', 'covers.openlibrary.org/b/id/11216718-M.jpg', NULL, 'B', '2015', NULL, NULL, 1, NULL, NULL),
(28, 'IL SEGRETO DEL GRAN KAHAL', 'covers.openlibrary.org/b/id/10971494-M.jpg', NULL, 'B', '2016', NULL, NULL, 1, NULL, NULL),
(34, 'Spider\'s Web', 'covers.openlibrary.org/b/id/6881281-M.jpg', NULL, 'C', '2000', NULL, NULL, 1, NULL, NULL),
(35, 'Web of Dreams', 'covers.openlibrary.org/b/id/9355030-M.jpg', NULL, 'B', '1920', NULL, NULL, 1, NULL, NULL),
(38, 'Oxford Literacy Web', 'covers.openlibrary.org/b/id/2332842-M.jpg', NULL, 'D', '1999', NULL, NULL, 1, NULL, NULL),
(39, 'Web', 'covers.openlibrary.org/b/id/93663-M.jpg', NULL, 'D', '1979', NULL, NULL, 1, NULL, NULL),
(40, 'Web : The Web', 'covers.openlibrary.org/b/id/10653636-M.jpg', NULL, 'B', '1997', NULL, NULL, 1, NULL, NULL),
(41, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/10568821-M.jpg', NULL, 'A', '1999', NULL, NULL, 1, NULL, NULL),
(42, '********', 'upload/books/27IyDFCDPnVoG2YysVJcpXFJNFbs0u9GQkYM0dpf.png', 'tanvir', 'C', '2020', NULL, NULL, 1, NULL, '2022-03-19 19:39:14'),
(43, 'The web', 'covers.openlibrary.org/b/id/3812238-M.jpg', NULL, 'E', '1995', NULL, NULL, 1, NULL, NULL),
(44, 'Spider\'s Web', 'covers.openlibrary.org/b/id/1058043-M.jpg', NULL, 'B', '1956', NULL, NULL, 1, NULL, NULL),
(45, 'Oxford Literacy Web', 'covers.openlibrary.org/b/id/10562276-M.jpg', NULL, 'C', '1999', NULL, NULL, 1, NULL, NULL),
(46, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/11492239-M.jpg', NULL, 'C', '1999', NULL, NULL, 1, NULL, NULL),
(47, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '1999', NULL, NULL, 1, NULL, NULL),
(48, 'Web Design Annual 1999', 'covers.openlibrary.org/b/id/5196950-M.jpg', NULL, 'B', '1999', NULL, NULL, 1, NULL, NULL),
(49, 'Copy Bible', 'covers.openlibrary.org/b/id/11355808-M.jpg', NULL, 'C', '2019', NULL, NULL, 1, NULL, NULL),
(55, 'Best Hire Dedicated Website Designers in India', 'covers.openlibrary.org/b/id/7238434-M.jpg', NULL, 'B', '2008', NULL, NULL, 1, NULL, NULL),
(56, 'Poetry pages', 'covers.openlibrary.org/b/id/1796968-M.jpg', NULL, 'B', '1995', NULL, NULL, 1, NULL, NULL),
(60, 'Microsoft Word for Beginners', 'covers.openlibrary.org/b/id/2721908-M.jpg', NULL, 'E', '2004', NULL, NULL, 1, NULL, NULL),
(63, 'E-mail for Beginners', 'covers.openlibrary.org/b/id/2721909-M.jpg', NULL, 'D', '2005', NULL, NULL, 1, NULL, NULL),
(64, 'The Internet for Beginners', 'covers.openlibrary.org/b/id/1716597-M.jpg', NULL, 'B', '2005', NULL, NULL, 1, NULL, NULL),
(73, 'Poetry Pages', 'covers.openlibrary.org/b/id/1764428-M.jpg', NULL, 'E', '2003', NULL, NULL, 1, NULL, NULL),
(74, 'Poetry from the Dark Side', 'covers.openlibrary.org/b/id/1766437-M.jpg', NULL, 'D', '2004', NULL, NULL, 1, NULL, NULL),
(75, 'Synchronized Multimedia Integration Language Smil 1.0 Specification', 'covers.openlibrary.org/b/id/2525735-M.jpg', NULL, 'C', '2000', NULL, NULL, 1, NULL, NULL),
(81, 'Charlotte\'s Web', 'covers.openlibrary.org/b/id/38950-M.jpg', NULL, 'D', '2006', NULL, NULL, 1, NULL, NULL),
(83, 'Nature\'s Web', 'covers.openlibrary.org/b/id/1895630-M.jpg', NULL, 'D', '1992', NULL, NULL, 1, NULL, NULL),
(84, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'E', '2001', NULL, NULL, 1, NULL, NULL),
(85, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/10564103-M.jpg', NULL, 'A', '1999', NULL, NULL, 1, NULL, NULL),
(86, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/10392291-M.jpg', NULL, 'B', '1999', NULL, NULL, 1, NULL, NULL),
(88, 'Webs', 'upload/books/UWcJUpiIah5wUkZiO7ZexCrNqmHQrvzktDzBWKEQ.jpg', 'Tanvir', 'A', '1995', NULL, NULL, 1, NULL, '2022-03-18 21:54:58'),
(91, 'Webbed', 'covers.openlibrary.org/b/id/8846412-M.jpg', NULL, 'D', '2017', NULL, NULL, 1, NULL, NULL),
(93, 'Webs', 'upload/books/Iii7SjP2d0bbDYBcXHyOwTCQ1ribOwoxbJtHox6h.png', 'Al-Amin', 'A', '2019', NULL, NULL, 1, NULL, '2022-03-18 21:55:45'),
(98, 'Web', 'covers.openlibrary.org/b/id/8156714-M.jpg', NULL, 'A', '1999', NULL, NULL, 1, NULL, NULL),
(101, 'Rajat Chakraborty', 'upload/books/InZ3i5JFkODxN6tSUD5HD6l6WV2b3vmKu3ohJ0i6.png', 'Rajat', 'D', NULL, NULL, NULL, 1, '2022-03-18 20:11:37', '2022-03-18 20:11:38'),
(104, 'Tonny', 'upload/books/tAipRrkxmc862KM3yVYArueJKIlUKfyuPt8WMDxh.jpg', 'P', 'W', NULL, NULL, NULL, 1, '2022-03-18 20:28:08', '2022-03-18 21:32:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_03_15_075212_create_user_roles_table', 1),
(11, '2022_03_15_075307_create_book_lists_table', 1),
(12, '2022_03_15_075340_create_book_entries_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('06c86c3901a24e828b3f0f57d7cea33ebb2eabee6b8c540148408c47eca9fa04f9147e0864da391f', 4, 1, 'accessToken', '[]', 1, '2022-03-20 03:57:17', '2022-03-20 03:57:17', '2023-03-20 09:57:17'),
('07d2e998dfd10955bcd61005e590cf60275055100814b21db31b280d1ff099283d84ce791aa8dcc0', 3, 1, 'accessToken', '[]', 1, '2022-03-18 00:24:46', '2022-03-18 00:24:46', '2023-03-18 06:24:46'),
('085a223c309bf2f8411d2ef08c80d5cafca47a1f39882207e837f8072c6e1de20cee9adedaced628', 4, 1, 'accessToken', '[]', 1, '2022-03-18 00:17:29', '2022-03-18 00:17:29', '2023-03-18 06:17:29'),
('092fffb40f93c20f19c01e0d3cfa075618872d8b0a8fe368915585c0957f6c77901ca65e0c3c4d93', 4, 1, 'accessToken', '[]', 0, '2022-03-17 22:42:00', '2022-03-17 22:42:00', '2023-03-18 04:42:00'),
('0a626a8f652d461eb29e931dd97d7f7a80132e2c5fc1f2dc6d57c153fa5d417cbed35d2a73f5fd89', 4, 1, 'accessToken', '[]', 1, '2022-03-20 20:47:23', '2022-03-20 20:47:23', '2023-03-21 02:47:23'),
('0a7fe6dba7fb2a3fa936906f8660817dc7a88e9e2b73c832efef58dd60d72c6b6556fe7017c97633', 1, 1, 'accessToken', '[]', 0, '2022-03-16 05:12:29', '2022-03-16 05:12:29', '2023-03-16 11:12:29'),
('1cb166dc7621b2129c5f1fbf94224389f5ad59c151fa3ba9fb2e89889e2a28a4553281c3fb630afe', 2, 1, 'accessToken', '[]', 1, '2022-03-18 19:38:34', '2022-03-18 19:38:34', '2023-03-19 01:38:34'),
('2799f67bc166db50d3bb18b930795b9023cec58fdfce58e7af5a33f940019bb34ce181e2364c0f06', 4, 1, 'accessToken', '[]', 1, '2022-03-19 21:17:02', '2022-03-19 21:17:02', '2023-03-20 03:17:02'),
('27c41febcfdd7a16a965ba8108bc3ea281a5cafc69fc4fa0c834f57fcb836d8049512646d0ee5a59', 2, 1, 'accessToken', '[]', 1, '2022-03-18 01:15:59', '2022-03-18 01:15:59', '2023-03-18 07:15:59'),
('2c8ee17a6559889ffeff7c6b129e70c0988c6307e32ef321e28904be5453ed80d350f16eab74e3e6', 2, 1, 'accessToken', '[]', 1, '2022-03-20 03:58:10', '2022-03-20 03:58:10', '2023-03-20 09:58:10'),
('446b0531083f922e361d170964fa72dfb8177eff9a7b1c73ffeff57bbb681d91754195daf1636a34', 2, 1, 'accessToken', '[]', 1, '2022-03-19 21:05:10', '2022-03-19 21:05:10', '2023-03-20 03:05:10'),
('46372409cf0cafd488af6785b7483f15bff0bd3caa340052717789ddf3221b25da3fd66e5059e947', 1, 1, 'accessToken', '[]', 0, '2022-03-16 05:12:29', '2022-03-16 05:12:29', '2023-03-16 11:12:29'),
('4fe551e66147a648927f82ad2016dc3f7f6169f3b93bbee78591e6777f1cafd2a82ec41bab69fd13', 5, 1, 'accessToken', '[]', 0, '2022-03-18 00:31:32', '2022-03-18 00:31:32', '2023-03-18 06:31:32'),
('50255a5dfdfc1e03d8d56293ff8ff14022763ec972d61bc17ced80d09f418474629fe1f84a865371', 4, 1, 'accessToken', '[]', 1, '2022-03-20 03:18:12', '2022-03-20 03:18:12', '2023-03-20 09:18:12'),
('59bd0d6c7da1895017ba473bd2bdb41b0dd2e47222d21a647ef88a9f1235cc66607d6bea0a20cf2e', 2, 1, 'accessToken', '[]', 1, '2022-03-19 20:33:02', '2022-03-19 20:33:02', '2023-03-20 02:33:02'),
('619a031444cd9ceaf6d17eaf2deae4949587c1795e18fdb4cd830ccce2cd2369e0753b2b47b6f946', 6, 1, 'accessToken', '[]', 1, '2022-03-17 20:52:10', '2022-03-17 20:52:10', '2023-03-18 02:52:10'),
('687e4521d70f3f68da10526863e2ce0fe5e5b0a401b1b748a68d745da14967873b9e718c8b41b62b', 6, 1, 'accessToken', '[]', 1, '2022-03-17 21:35:13', '2022-03-17 21:35:13', '2023-03-18 03:35:13'),
('73a1c5bcda53ac7fbc9fa3c8192371f32f390cfdd37c44f702b95aea76cab7f280be60cb87837d56', 2, 1, 'accessToken', '[]', 1, '2022-03-18 21:26:44', '2022-03-18 21:26:44', '2023-03-19 03:26:44'),
('757cbfd2c3dae7496253301ff2c21220d555a32c2fa39d97debab888e9517579e230cc643b2b5e9a', 1, 1, 'accessToken', '[]', 0, '2022-03-16 05:12:28', '2022-03-16 05:12:28', '2023-03-16 11:12:28'),
('765738add77fe7b239d05c626f4ab8dfba02bfcf54531423c37b009ab7d4e176f6c5092c60538823', 6, 1, 'accessToken', '[]', 1, '2022-03-17 22:48:15', '2022-03-17 22:48:15', '2023-03-18 04:48:15'),
('77420e071274bb44c6739bc4f032ab2937ab0e136069fd2f33fc6b0428cd05aafae9304031c8df4b', 6, 1, 'accessToken', '[]', 1, '2022-03-19 19:40:10', '2022-03-19 19:40:10', '2023-03-20 01:40:10'),
('7cdb50c2d63374b7559fccbc0a58153678f4619d52632351fdbc07c2a1b7da1bd4817f7bd29516e8', 6, 1, 'accessToken', '[]', 0, '2022-03-17 22:35:45', '2022-03-17 22:35:45', '2023-03-18 04:35:45'),
('7e015a0ba0abcd47edab32ffd66d4834f8e73b3803c365471ad64584785b86c66931f6a5654ce480', 4, 1, 'accessToken', '[]', 1, '2022-03-19 21:05:25', '2022-03-19 21:05:25', '2023-03-20 03:05:25'),
('836dd218792cb4675e2d4ef52ab36f00f855c5e52b516120fe0f8642f2757f62f510cd2297218775', 2, 1, 'accessToken', '[]', 1, '2022-03-17 20:40:30', '2022-03-17 20:40:30', '2023-03-18 02:40:30'),
('8980ef2b2d19ba869b712e0c3634b2c7cb8d3a1289de1c46a50952707e0bb113f29a4b869fec0c54', 2, 1, 'accessToken', '[]', 1, '2022-03-18 21:26:09', '2022-03-18 21:26:09', '2023-03-19 03:26:09'),
('8a3b4cb7f33e16267d0f230f230efbcdcd7f41f5ffecc9ab5814d717934fe09f47e8d923c7c988f1', 4, 1, 'accessToken', '[]', 1, '2022-03-19 19:41:12', '2022-03-19 19:41:12', '2023-03-20 01:41:12'),
('8ad8fff32f3b2b13240099eebb17f2151b2cecdff6a8de49ec93bc790b4eb1c6491576f22d21fee5', 2, 1, 'accessToken', '[]', 1, '2022-03-19 21:17:23', '2022-03-19 21:17:23', '2023-03-20 03:17:23'),
('96beaaa95fc2319d637eae9c60ed3a944cec0096c1f4e7d32d8a1db7a9e9a8fdb215ee9cf1e8ff9b', 2, 1, 'accessToken', '[]', 1, '2022-03-17 19:51:14', '2022-03-17 19:51:14', '2023-03-18 01:51:14'),
('9a586a82c869e8fd3d4d51f7f1830a49c665a15be80ebb7b1ab598c461942a75c228504ce83906b1', 5, 1, 'accessToken', '[]', 1, '2022-03-20 03:57:50', '2022-03-20 03:57:50', '2023-03-20 09:57:50'),
('9e76902ca5ef7afad8e76b32d0866f367c3a4784ccd35c33c4dc775273a9e3039f731f2cfdc7c328', 4, 1, 'accessToken', '[]', 1, '2022-03-18 19:39:05', '2022-03-18 19:39:05', '2023-03-19 01:39:05'),
('a93498134f753310ca524c2e1e447c9ee6a494db710b096585ecb3dbbae1403013a935aac02bbddf', 5, 1, 'accessToken', '[]', 0, '2022-03-20 03:59:26', '2022-03-20 03:59:26', '2023-03-20 09:59:26'),
('b10ce5754f399e0547e666a954410e765de567a0102f916626a2d04a28953297ded7f963ee698e75', 4, 1, 'accessToken', '[]', 1, '2022-03-17 22:48:44', '2022-03-17 22:48:44', '2023-03-18 04:48:44'),
('b1855369516a70a0b873281f389240b012384fc10e1f6b267b65ac63048b91e47066a9551598a3fd', 2, 1, 'accessToken', '[]', 0, '2022-03-19 19:56:56', '2022-03-19 19:56:56', '2023-03-20 01:56:56'),
('b2f476c14f649cdcf7fa4600f51db70ee5ee87374efbe0913e2975c143a149fdd0ba428c645a4c98', 6, 1, 'accessToken', '[]', 0, '2022-03-17 20:56:57', '2022-03-17 20:56:57', '2023-03-18 02:56:57'),
('bc0b8870d6377060ea84f8202800fcae08af53972e574c064de610babb0cb9186d065e6c6e4aa9cd', 6, 1, 'accessToken', '[]', 1, '2022-03-20 03:29:47', '2022-03-20 03:29:47', '2023-03-20 09:29:47'),
('bc597625b27dd60e942274f5c58cd0d4215b08d71edbe154d2451feab24e93329fbe389b32d8f8f7', 3, 1, 'accessToken', '[]', 1, '2022-03-18 00:53:48', '2022-03-18 00:53:48', '2023-03-18 06:53:48'),
('bea5c372e5aea13b2d5bca869cdcad22ccaa2953befd995766d130cb57862474a291f020c6659e69', 1, 1, 'accessToken', '[]', 0, '2022-03-16 00:20:29', '2022-03-16 00:20:29', '2023-03-16 06:20:29'),
('cacdc23c9b362da24c9e42d6ec7cbf9cf055f31cb83e7828d586b4f080d005b7c39ed60f554820e9', 6, 1, 'accessToken', '[]', 1, '2022-03-18 00:29:47', '2022-03-18 00:29:47', '2023-03-18 06:29:47'),
('cb075b19695161f87a99221f5d6c26e27b043de76ce50790d7534786e619eaeddd22281e905f0414', 2, 1, 'accessToken', '[]', 0, '2022-03-18 02:26:22', '2022-03-18 02:26:22', '2023-03-18 08:26:22'),
('cf736c2912ed38048ad5c926eafc999fb01c9fa8d8aed5c0e235a210dee1dd178235e73ef54492b4', 5, 1, 'accessToken', '[]', 1, '2022-03-19 19:40:38', '2022-03-19 19:40:38', '2023-03-20 01:40:38'),
('d1482652f115a42f29a44af61ecc53808243b41bf8f76300fbfd07a0d80fed12eed9323fdcb3c4c5', 1, 1, 'accessToken', '[]', 0, '2022-03-16 00:23:45', '2022-03-16 00:23:45', '2023-03-16 06:23:45'),
('df8820d7664d529548098df839a0feedde1b11ddde21769ab3ef8f4e145bcd5d122350b186298fbe', 2, 1, 'accessToken', '[]', 1, '2022-03-18 01:25:50', '2022-03-18 01:25:50', '2023-03-18 07:25:50'),
('e9160d4db3213d9ac2218de16289603dd7ccf95d0c46770d1ca48dbe3a7914c31b236413196ad4f9', 6, 1, 'accessToken', '[]', 1, '2022-03-18 00:30:16', '2022-03-18 00:30:16', '2023-03-18 06:30:16'),
('ed5ff0ff8df55a35ab555570b69e293979ef85c475ea723ffc39384497a0b9b1f5d4d4f4d4cf3380', 2, 1, 'accessToken', '[]', 0, '2022-03-18 19:51:22', '2022-03-18 19:51:22', '2023-03-19 01:51:22'),
('ee0e45a75c27c284b8dc1eefc61b33da34ae4c6ff0cd87d8abebd8f2ace90fc2d01b2f03735192a0', 2, 1, 'accessToken', '[]', 1, '2022-03-19 19:37:54', '2022-03-19 19:37:54', '2023-03-20 01:37:54'),
('f07569427c5856aa55ebf775bd0fa998fcceaac89ab13732a5d879ed84ac942509149fb0d3ef14c6', 2, 1, 'accessToken', '[]', 1, '2022-03-18 19:51:23', '2022-03-18 19:51:23', '2023-03-19 01:51:23'),
('f46a7eda1f8dfacae9024146ce07635dada841de299ad4c631b323bc29a12d52e272cc83ece26a59', 4, 1, 'accessToken', '[]', 1, '2022-03-21 02:33:30', '2022-03-21 02:33:30', '2023-03-21 08:33:30'),
('f5fbf9379499ff446bccb5eebbfa3854875a8a27a79efcc3faaddab7b915146a844cf05c1e6d9b4a', 5, 1, 'accessToken', '[]', 0, '2022-03-17 20:46:56', '2022-03-17 20:46:56', '2023-03-18 02:46:56'),
('f98f7a973e952e856a50cddbf17b13d43f441ee05a1e7272e6d896a62a2a4a97c1258c3bc2a5f8db', 4, 1, 'accessToken', '[]', 1, '2022-03-20 20:34:50', '2022-03-20 20:34:50', '2023-03-21 02:34:50'),
('fbcfe7f237f204bd8e57cfb158f1080273b0cddad693eb70974c92da941426f954dbd7ac3955f67c', 6, 1, 'accessToken', '[]', 1, '2022-03-17 21:47:21', '2022-03-17 21:47:21', '2023-03-18 03:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'sdoOGnx6WcqkMiZaXSuNch3srQE40OPi1AwbbOGO', NULL, 'http://localhost', 1, 0, 0, '2022-03-16 00:18:54', '2022-03-16 00:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-03-16 00:18:54', '2022-03-16 00:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_serial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forget_token` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_serial`, `image`, `email`, `email_verified_at`, `password`, `forget_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', '1', NULL, 'superadmin@gmail.com', NULL, '$2y$10$JNZiEZIn74jeFY3j6gGX7ODF28WkJteuHJ46X8llguygBg7UhTSf.', NULL, NULL, NULL, NULL),
(2, 'admin', '2', NULL, 'admin@gmail.com', NULL, '$2y$10$nBPyA/OuYOxJ/YdQDgwGjOgNmpNFz4jKHeUworA/MOPkHKddFAZU6', NULL, NULL, NULL, NULL),
(3, 'management', '3', NULL, 'management@gmail.com', NULL, '$2y$10$kh6ZPzkd0sHfeOA2q3HipeZnSSYLvD7xo553D7zmAg3V4pePfUmku', '$2y$10$o5bS0jEt2M071vot0d3wa.IzNWN7gePP0xAlYDFQxl/cKMieJgcHC', NULL, NULL, '2022-03-18 00:22:55'),
(4, 'student', '4', 'uploads/XZYT9Y6dRP0n5RIGsbfOd6JYvNzRijBigNUP8KM1.jpg', 'student@gmail.com', NULL, '$2y$10$dKdJvkjJNEDOD8jv02HQMu88vjIo11HNUQnAelmGYkd9o5mMlnMTK', '$2y$10$tpLbN.Pg66W73VLyBpK41OPvfeW9TVh42.aGlAIJGOlc/KdRD04Tu', NULL, NULL, '2022-03-19 19:41:29'),
(5, 'user1', '4', 'uploads/pZdzhuwv1epAv9WdOYiaKJFxgm2WhcbkOP52D6wi.jpg', 'user1@gmail.com', NULL, '$2y$10$wLvDykFlEuXOqwBQbeYs8OFxv/EaOW.D0HkJIsyQJvuQKHeAu9iVe', '$2y$10$8PCsS6UaSTDFUVEVs76ZyeBsyv4PacZ3qu4bPPF6PDUbnlrQTIpdq', NULL, '2022-03-17 20:46:56', '2022-03-18 00:32:07'),
(6, 'user', '4', 'uploads/aN3xnyNW2K55nwLx91bsW7kkVTCePnAFKYdNonDk.png', 'user@gmail.com', NULL, '$2y$10$gu.Q9ntxz2FDnQUoVO8HEODqjohtKPYhgC0KHWCSIuUIp3qyWu5Hq', NULL, NULL, '2022-03-17 20:52:10', '2022-03-18 00:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_serial` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_serial`, `name`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'super_admin', NULL, NULL, 1, '2022-03-15 22:19:51', '2022-03-15 22:19:51'),
(2, 2, 'admin', NULL, NULL, 1, '2022-03-15 22:19:51', '2022-03-15 22:19:51'),
(3, 3, 'management', NULL, NULL, 1, '2022-03-15 22:19:52', '2022-03-15 22:19:52'),
(4, 4, 'student', NULL, NULL, 1, '2022-03-15 22:19:52', '2022-03-15 22:19:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_entries`
--
ALTER TABLE `book_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_lists`
--
ALTER TABLE `book_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`(191),`tokenable_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_entries`
--
ALTER TABLE `book_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `book_lists`
--
ALTER TABLE `book_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
