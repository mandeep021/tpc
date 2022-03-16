-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 04:15 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tpc`
--

-- --------------------------------------------------------

--
-- Table structure for table `communities`
--

CREATE TABLE `communities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_comments` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL COMMENT '0=unpublished,1=published,2=suspended',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communities`
--

INSERT INTO `communities` (`id`, `user_id`, `title`, `content`, `total_comments`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'testing update', 'testing testing update', 0, 1, '2022-03-14 08:45:10', '2022-03-14 13:55:39', NULL),
(2, 1, 'here', 'sad', 0, 1, '2022-03-14 15:11:47', '2022-03-14 15:11:47', NULL),
(3, 4, 'Dr.', 'Quam illo eum sed necessitatibus nihil quae sint ea. Odio rerum aliquam cumque libero nulla optio libero quis. Facere recusandae repellendus aperiam ut deserunt.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(4, 11, 'Mr.', 'Impedit odit voluptatem eaque et eos dolor. Accusamus aliquid quod rerum harum.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(5, 14, 'Dr.', 'In et quos optio accusantium. Et non qui recusandae nihil asperiores.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(6, 6, 'Prof.', 'Consequatur voluptatem a pariatur omnis repellendus ut. Sed amet et delectus vel dolorem impedit et.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(7, 4, 'Prof.', 'Eos qui voluptas sint perferendis perferendis accusantium et. Vel quis voluptatem ea facere. Aut eos est id excepturi aut.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(8, 18, 'Dr.', 'Qui laborum est fugiat. Ea omnis laborum repellat dolor nesciunt sed quia. Corporis soluta cum quas vel consequatur minima.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(9, 6, 'Prof.', 'Ut occaecati nihil eos deserunt. Aut enim quasi dignissimos mollitia. Incidunt quia provident earum consectetur eos quo. Nihil iusto in ullam at amet.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(10, 10, 'Mr.', 'Quibusdam cum commodi laboriosam velit. Sunt adipisci illum voluptatem non fugiat voluptatem. Voluptate at quo accusamus sint eum harum qui.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(11, 2, 'Ms.', 'Totam fugit veritatis qui. Dicta optio nihil aut eligendi sit. Quo eius ea id tenetur excepturi consequatur exercitationem voluptatum. Porro qui dolorem eveniet tempore reiciendis.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(12, 5, 'Dr.', 'Excepturi sequi id nostrum nulla. Nam necessitatibus id quos expedita. Et fuga error sed dicta. Quam ad voluptas qui totam et officiis beatae rem.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(13, 15, 'Mrs.', 'Ipsa ut delectus ut consequatur quibusdam beatae nihil. In enim aut distinctio sapiente. Deserunt animi in alias exercitationem ullam animi.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(14, 21, 'Prof.', 'Eveniet quia earum et voluptatum. Illo esse amet mollitia a ab nihil rerum ipsa. Ex autem ea quibusdam sit nihil dolores adipisci dolores.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(15, 1, 'Prof.', 'Quasi occaecati nobis iure repellat quam in amet. Non fuga rerum unde qui odio. Et quia aperiam dolorum. Sit vero laborum cum voluptas error.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(16, 8, 'Dr.', 'Dolores voluptatum mollitia aliquam. Sequi facere voluptas cum impedit ut laboriosam incidunt nobis. Nihil adipisci facilis sequi.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(17, 9, 'Mrs.', 'Mollitia possimus beatae quo. Quae eos eos aperiam consequuntur minima reprehenderit nam. Praesentium quas consequuntur culpa dignissimos voluptatem non enim.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(18, 19, 'Prof.', 'Ut iure voluptas officiis ut est. Possimus est ipsa ea suscipit quo magnam in. Suscipit odio quia id aut. Possimus suscipit id sed ut.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(19, 9, 'Dr.', 'Natus neque minima voluptatem voluptatum optio mollitia perspiciatis. Voluptas iure non soluta quis. Ut consequatur non eos qui est magni itaque. Et dolorem illum ab rerum odit ut velit.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(20, 7, 'Prof.', 'Velit quod in voluptatem magni quae qui veritatis. Quas aliquam laborum repudiandae debitis nemo. Nihil sit sit iure occaecati quidem perspiciatis vel.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(21, 13, 'Prof.', 'A et ut magnam assumenda tenetur. Porro aut est et vero consectetur quia modi. Temporibus veritatis ullam autem nihil. Earum autem rerum quidem recusandae qui sint.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(22, 2, 'Dr.', 'Officia deleniti voluptatem cumque. Tempore non voluptatibus vero fugit dolorem. Nihil quia beatae omnis delectus. Facilis animi ipsa aspernatur rerum delectus.', 0, 1, '2022-03-14 15:17:25', '2022-03-14 15:17:25', NULL),
(23, 1, 'Testing', 'testing', 0, 1, '2022-03-15 09:25:15', '2022-03-15 09:25:15', NULL),
(24, 1, 'new', 'new', 0, 1, '2022-03-15 09:26:03', '2022-03-15 09:26:03', NULL),
(25, 1, 'new testing', 'new testing', 0, 1, '2022-03-15 09:31:46', '2022-03-15 09:31:46', NULL),
(26, 1, 'new testing details', 'new testing details', 0, 1, '2022-03-15 09:32:17', '2022-03-15 09:32:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `community_favorites`
--

CREATE TABLE `community_favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `community_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community_favorites`
--

INSERT INTO `community_favorites` (`id`, `user_id`, `community_id`, `created_at`, `updated_at`) VALUES
(5, 1, 22, '2022-03-15 09:11:40', '2022-03-15 09:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `community_like_dislikes`
--

CREATE TABLE `community_like_dislikes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `community_id` bigint(20) UNSIGNED NOT NULL,
  `like_dislike` tinyint(4) NOT NULL COMMENT '0=dislike,1=like',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community_like_dislikes`
--

INSERT INTO `community_like_dislikes` (`id`, `user_id`, `community_id`, `like_dislike`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 1, 0, '2022-03-14 15:00:12', '2022-03-14 15:00:12', NULL);

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
(10, '2022_03_14_110812_create_communities_table', 1),
(11, '2022_03_14_111048_create_community_favorites_table', 1),
(12, '2022_03_14_111131_create_community_like_dislikes_table', 1);

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
('070d815f753481752054e9fb77e4cae0833a3e60967379d642f8e4bfb59222550a4fcca46b644d05', 1, 1, 'Personal access token', '[]', 0, '2022-03-14 06:45:53', '2022-03-14 06:45:53', '2023-03-14 12:15:53'),
('0b4cb0753e33f9ff5f2973e7291953bc390a74fa78629db07747d4077d90523fafa05158621c275f', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 06:09:09', '2022-03-15 06:09:09', '2023-03-15 11:39:09'),
('2325e74a8300492d8051f1a88ad65ea25dfff13289457e729095ce572686d3429e55b6a611dacbf7', 1, 1, 'Personal access token', '[]', 0, '2022-03-14 06:45:09', '2022-03-14 06:45:09', '2023-03-14 12:15:09'),
('256162eb3e59d16d4f3756f5f796706b98195b9de349d0ef7b129a661d7bbfc2e1a6e950ebb4e0fa', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:45:11', '2022-03-15 05:45:11', '2023-03-15 11:15:11'),
('2bd7ed25623836a9a70cfe68c5ac9cf2f7d1dfdd160ccd03b32592e4e2f7be4d88ee1ec4d5e152c1', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:49:24', '2022-03-15 05:49:24', '2023-03-15 11:19:24'),
('360ca96d55ed4a2f7574390292b8022521c51a74f18eb1ca3491baeeda7fe8444426b095856b9611', 1, 1, 'Personal access token', '[]', 0, '2022-03-14 06:44:51', '2022-03-14 06:44:51', '2023-03-14 12:14:51'),
('3d4d34d90fe2df6333a6b23b537f5f00ebb54d927e542e9d58eabab6a28b4672ec6682af48503acc', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:59:50', '2022-03-15 05:59:50', '2023-03-15 11:29:50'),
('409511a196cba69086acf58370d51ad955965f60e4cad7da102e7f2556b2217c1d0e25072cc3b872', 1, 1, 'Personal access token', '[]', 0, '2022-03-14 14:17:28', '2022-03-14 14:17:28', '2023-03-14 19:47:28'),
('5234001725d784531bda4a8fb984de442efde34dcb34667390a1f47a40f9a4a5ca915740b9eb5435', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 06:22:54', '2022-03-15 06:22:54', '2023-03-15 11:52:54'),
('54c1e9a457368f0cab4c0a5902cb34368c692a17eaa97fafcaf7a4a4cbf78270b34b0675087dcea7', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:05:07', '2022-03-15 05:05:07', '2023-03-15 10:35:07'),
('5b598541d225ff3f1512ce1e0d4cd31db4650cc03a725094ef829a27cdfa231096cca3fa083fdecc', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:51:17', '2022-03-15 05:51:17', '2023-03-15 11:21:17'),
('6bdceb1d240523374edf5dfc88f7bcb3c9202889fe21c54f0de0e13679f6c4e7d3f88055dbfc530f', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 06:22:56', '2022-03-15 06:22:56', '2023-03-15 11:52:56'),
('73e8d96859d478b9f0964c92cd2cea476d7e0bbc21087f426f6e3a3da4273372f8460dd79072c1e1', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:59:14', '2022-03-15 05:59:14', '2023-03-15 11:29:14'),
('78cde0e0f260ec314e9c2a6e50051709cbfeb403f9496c7e0ecb898acf77d3b136b36d94c5c65914', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 06:00:20', '2022-03-15 06:00:20', '2023-03-15 11:30:20'),
('7f5e5e554d0684fdcf12391d355ecbc936f67106abe3c4fedba0b4a6360507ea3e32a56bc0c2dde4', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:22:35', '2022-03-15 05:22:35', '2023-03-15 10:52:35'),
('7f7a92ad6a833950e05d614694360ea72ab56ec9fa99eef48eb07285e989d523576a9a89160b379d', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:46:51', '2022-03-15 05:46:51', '2023-03-15 11:16:51'),
('882f129f298826ee702f754b9f9abd6c2e147e91ff5a9b05c576d9924fb8a69412e6708ce3958d6d', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:51:53', '2022-03-15 05:51:53', '2023-03-15 11:21:53'),
('8d6296a64300f2b10e800bb63f7d0cf25f38f87eb498f0c35ffdd654bf3ae74fab0e4268b82715af', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 06:25:25', '2022-03-15 06:25:25', '2023-03-15 11:55:25'),
('9a2a3b4b2700c07045d3477b828009ac6e89f457cc6e26cb6886c11f637e0ff21cc12ec313281634', 2, 1, 'Personal access token', '[]', 0, '2022-03-14 14:01:31', '2022-03-14 14:01:31', '2023-03-14 19:31:31'),
('b9ca745a65a45ff1d5a94914ba776c56051746ffff00ded925e3fe284e5ff2594e6a7ec3e55661e2', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:05:47', '2022-03-15 05:05:47', '2023-03-15 10:35:47'),
('bb39c53a54abc5f647f9b3e342548296fcdd0d292fa9742d933fc6117edbb2873877729a898cf485', 1, 1, 'Personal access token', '[]', 0, '2022-03-14 14:03:55', '2022-03-14 14:03:55', '2023-03-14 19:33:55'),
('bb98733c4ecc58aaaa4a69604ce7c68ef5a98bd15a7a50c9900ef5230a718dccdcd892d4311994e0', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:24:30', '2022-03-15 05:24:30', '2023-03-15 10:54:30'),
('cd9b04c66c8c4d023cc25945e8bb20c7421e6ef2d623b1860581e1683a0bd2f5f1da40830981171f', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:21:47', '2022-03-15 05:21:47', '2023-03-15 10:51:47'),
('ce7ee1b80714d56b29a7ef33f6472228e153d47d857319a6382a7191919c5fae89d152e2a921aec6', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:13:08', '2022-03-15 05:13:08', '2023-03-15 10:43:08'),
('d657626de65826e630fe0b37edad4ab51b7f8d86be64b1c3926f7e503f204e176116e054089466c3', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:24:03', '2022-03-15 05:24:03', '2023-03-15 10:54:03'),
('d6bf9eb930a15d86b6056667e1a59d8b48fa3231f21b08a4c489db8a369443b6103887a7ae6501e4', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:16:10', '2022-03-15 05:16:10', '2023-03-15 10:46:10'),
('d8a147cf4d0d6697127b042d73f8876c5aea9f1753b9d72cccd3aaed35518fa922a7ceea9d2f8fc4', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 06:27:41', '2022-03-15 06:27:41', '2023-03-15 11:57:41'),
('dde7eeb7a47fadea36c1ea7ba0957bd879023606e6206cb21b278ca3c8686b3ca1d713b2326da9a9', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:22:20', '2022-03-15 05:22:20', '2023-03-15 10:52:20'),
('e1cfc64bdf6beaa4a284abb5dbac706c18861beaac33a9de9bc8fb81afb28b39757874ce8b4117e9', 2, 1, 'Personal access token', '[]', 0, '2022-03-14 14:12:32', '2022-03-14 14:12:32', '2023-03-14 19:42:32'),
('e66c944c30b289af7984e2db6be49763b2d5fa75247c50fe610c0c210be9da6499799139a372876c', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:13:27', '2022-03-15 05:13:27', '2023-03-15 10:43:27'),
('e8308438cefb3d70b5966a5f14ba7687dd3a86c6fc2e67d77813b70fb15fdf2dda5560128f1555d0', 1, 1, 'Personal access token', '[]', 0, '2022-03-15 05:42:17', '2022-03-15 05:42:17', '2023-03-15 11:12:17');

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
(1, NULL, 'Laravel Personal Access Client', 'XETbFtP4pMrwoSFdBS7XJecd7S1n1MQMg5PeJdPJ', NULL, 'http://localhost', 1, 0, 0, '2022-03-14 06:21:39', '2022-03-14 06:21:39'),
(2, NULL, 'Laravel Password Grant Client', 'Ftas9OzoHooyTLn1FD5ZgOUXOScx4X9ZeQTmYnuV', 'users', 'http://localhost', 0, 1, 0, '2022-03-14 06:21:40', '2022-03-14 06:21:40');

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
(1, 1, '2022-03-14 06:21:39', '2022-03-14 06:21:39');

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Personal access token', '0e56f71f560b3f95b2750dbe57d2fb41c51328325aad0c21e46721c5bc1a8726', '[\"*\"]', NULL, '2022-03-14 06:12:01', '2022-03-14 06:12:01'),
(2, 'App\\Models\\User', 1, 'Personal access token', '5994d5bb43cade30f9888542609a70943ebaceddf9a3ab1de88e46fa55866e76', '[\"*\"]', NULL, '2022-03-14 06:21:43', '2022-03-14 06:21:43'),
(3, 'App\\Models\\User', 1, 'Personal access token', '9f22f94f3983fde305b57fc11897285554b445836818b385dc8c32be00fccab8', '[\"*\"]', NULL, '2022-03-14 06:22:03', '2022-03-14 06:22:03'),
(4, 'App\\Models\\User', 1, 'Personal access token', '0019aa7a656b7c556a9ea509d48fb3ee2dcc4f44287e17d50fd7899cfdc10e54', '[\"*\"]', NULL, '2022-03-14 06:23:03', '2022-03-14 06:23:03'),
(5, 'App\\Models\\User', 1, 'Personal access token', 'a5f530e1ef6db5289a69ab13a39c2102175869659c8e5b7d1e3c4040c9c67f2e', '[\"*\"]', NULL, '2022-03-14 06:24:33', '2022-03-14 06:24:33'),
(6, 'App\\Models\\User', 1, 'Personal access token', 'cc817510c2d59675ff6811be2ff153aa562649c260cfcb6f2c2d5eb902eb49db', '[\"*\"]', NULL, '2022-03-14 06:24:54', '2022-03-14 06:24:54'),
(7, 'App\\Models\\User', 1, 'Personal access token', 'efe63d07379bc6e7a979bec30cdaed04035cf8100a7a9bdf7e01b9f743aa29b3', '[\"*\"]', NULL, '2022-03-14 06:25:27', '2022-03-14 06:25:27'),
(8, 'App\\Models\\User', 1, 'Personal access token', 'dc83160bde452465dc60a4e68024f581147d9177f960ccfdba5f861a91a00148', '[\"*\"]', NULL, '2022-03-14 06:25:36', '2022-03-14 06:25:36'),
(9, 'App\\Models\\User', 1, 'Personal access token', 'ca14cb64f771361a166ad8050f3b54f3da777d9dc2f956ceb057cac03b3e853c', '[\"*\"]', NULL, '2022-03-14 06:26:01', '2022-03-14 06:26:01'),
(10, 'App\\Models\\User', 1, 'Personal access token', '181153a099ba6553d5fddc39ebb93915b5a22ca3f9c6538a68e48e189f800d8e', '[\"*\"]', NULL, '2022-03-14 06:26:14', '2022-03-14 06:26:14'),
(11, 'App\\Models\\User', 1, 'Personal access token', 'ddcd53f6b41e0b0a65fdc08ea02c772abeb8497dd4bc10041aefa4e1005da940', '[\"*\"]', NULL, '2022-03-14 06:26:26', '2022-03-14 06:26:26'),
(12, 'App\\Models\\User', 1, 'Personal access token', 'c4b0a6f2ebf429bfb36f122ef9676fd19d4845c7288c9912b011bf50f9f44df6', '[\"*\"]', NULL, '2022-03-14 06:31:03', '2022-03-14 06:31:03'),
(13, 'App\\Models\\User', 1, 'Personal access token', 'fb765cb6f1e39cc7e5e614aedff920f552899f29d2004d8ff578affbfba0f22a', '[\"*\"]', NULL, '2022-03-14 06:31:17', '2022-03-14 06:31:17'),
(14, 'App\\Models\\User', 1, 'Personal access token', 'aa1b3646d095a07b85e965a6326f8eb35228a339a822f0f9255dd5a047de9bd8', '[\"*\"]', NULL, '2022-03-14 06:38:01', '2022-03-14 06:38:01'),
(15, 'App\\Models\\User', 1, 'Personal access token', 'bf917f40a0a65beb4b860a7092ac0d86e523b2639b0c08389dcbc0d7db7b83f5', '[\"*\"]', NULL, '2022-03-14 06:43:02', '2022-03-14 06:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mandeep Aghera', 'mandeep.aghera@gmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL),
(2, 'Testing', 'testing@testing.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL),
(3, 'Aurelie Runte', 'nolan.jess@example.org', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TfE3ogkRkI', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(4, 'Myles Haag', 'ufunk@example.org', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UXShsK96H5', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(5, 'Aimee Feil Sr.', 'bmills@example.com', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SWX7AYZ0MU', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(6, 'Mrs. Yazmin Cremin II', 'kemmer.odessa@example.org', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AplHEZK65k', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(7, 'Mitchell Spinka', 'atrantow@example.org', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ilhBM8cSDH', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(8, 'Frederique Hills', 'kendall.volkman@example.net', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V9e0OFJtFJ', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(9, 'Felicity McKenzie', 'hodkiewicz.kaleigh@example.org', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gr6v4huSbx', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(10, 'Joanny Hodkiewicz', 'yhegmann@example.org', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6b2sIMdmDy', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(11, 'Miss Santina Toy I', 'gmorissette@example.com', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8jBL7qvybO', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(12, 'Granville Ondricka', 'jalon12@example.org', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wmbq9Ylug9', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(13, 'Prof. Marlin Kutch I', 'fahey.river@example.org', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sa8nP9Abee', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(14, 'Abbigail Nikolaus', 'ewald.bergstrom@example.org', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2N0HEGt412', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(15, 'Tatum Tremblay', 'joesph54@example.net', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Niv8zQyMGw', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(16, 'Melyna Boyle', 'lflatley@example.net', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o8T4TUpTt5', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(17, 'Bennett Frami Sr.', 'stiedemann.erin@example.net', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mTaywqcaow', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(18, 'Vanessa Jast', 'rratke@example.net', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bS4xEQPQGc', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(19, 'Wilber Huel', 'shirley.lind@example.com', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eoR18vBFjs', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(20, 'Mr. Terrell Satterfield', 'myron.kuhlman@example.net', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CZlZALSBxl', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(21, 'Kristy Altenwerth', 'xwyman@example.org', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0BdJDud5qw', '2022-03-14 15:17:24', '2022-03-14 15:17:24'),
(22, 'Mr. Chase Quitzon PhD', 'stamm.rylan@example.com', '2022-03-14 15:17:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BBF6fr2RED', '2022-03-14 15:17:24', '2022-03-14 15:17:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `communities_user_id_foreign` (`user_id`);

--
-- Indexes for table `community_favorites`
--
ALTER TABLE `community_favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `community_favorites_user_id_foreign` (`user_id`),
  ADD KEY `community_favorites_community_id_foreign` (`community_id`);

--
-- Indexes for table `community_like_dislikes`
--
ALTER TABLE `community_like_dislikes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `community_like_dislikes_user_id_foreign` (`user_id`),
  ADD KEY `community_like_dislikes_community_id_foreign` (`community_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `communities`
--
ALTER TABLE `communities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `community_favorites`
--
ALTER TABLE `community_favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `community_like_dislikes`
--
ALTER TABLE `community_like_dislikes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `communities`
--
ALTER TABLE `communities`
  ADD CONSTRAINT `communities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `community_favorites`
--
ALTER TABLE `community_favorites`
  ADD CONSTRAINT `community_favorites_community_id_foreign` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`),
  ADD CONSTRAINT `community_favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `community_like_dislikes`
--
ALTER TABLE `community_like_dislikes`
  ADD CONSTRAINT `community_like_dislikes_community_id_foreign` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`),
  ADD CONSTRAINT `community_like_dislikes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
