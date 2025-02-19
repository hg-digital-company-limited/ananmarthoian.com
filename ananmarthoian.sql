-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2025 at 03:21 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ananmarthoian`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_history`
--

CREATE TABLE `access_history` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `visit_count` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `access_history`
--

INSERT INTO `access_history` (`id`, `date`, `visit_count`, `created_at`, `updated_at`) VALUES
(3, '2025-02-01', 38, '2025-02-01 10:13:12', '2025-02-01 12:14:21'),
(4, '2025-02-02', 38, '2025-02-02 00:30:54', '2025-02-02 00:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1738030459),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1738030459;', 1738030459),
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1738333180),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1738333180;', 1738333180),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1738456505),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1738456505;', 1738456505);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image_link`, `created_at`, `updated_at`) VALUES
(189, 'F8', 'f8', 'categories/BxsT6dKA6F.jpg', '2025-01-31 13:56:53', '2025-01-31 13:56:53'),
(190, 'FSE', 'fse', 'categories/i1MKD9DRKD.jpg', '2025-01-31 13:56:53', '2025-01-31 13:56:53'),
(191, '28tech', '28tech', 'categories/ELpIXvc8Ji.jpg', '2025-01-31 13:56:53', '2025-01-31 13:56:53'),
(192, '200lab', '200lab', 'categories/ylqSeOvasn.jpg', '2025-01-31 13:56:53', '2025-01-31 13:56:53'),
(193, 'RoninHub', 'roninhub', 'categories/qKAHiJRGCp.jpg', '2025-01-31 13:56:54', '2025-01-31 13:56:54'),
(194, 'Engineer Pro', 'engineer-pro', 'categories/76Ee2w1rjF.jpg', '2025-01-31 13:56:54', '2025-01-31 13:56:54'),
(195, 'CyberSoft', 'cybersoft', 'categories/i2deJon49J.jpg', '2025-01-31 13:56:54', '2025-01-31 13:56:54'),
(196, 'Cole', 'cole', 'categories/2t89NnbpIs.jpg', '2025-01-31 13:56:54', '2025-01-31 13:56:54'),
(197, 'Hỏi Dân IT', 'hoi-dan-it', 'categories/UYt7E636xh.jpg', '2025-01-31 13:56:55', '2025-01-31 13:56:55'),
(198, 'EvonDev', 'evondev', 'categories/zgr0lyWOOD.jpg', '2025-01-31 13:56:55', '2025-01-31 13:56:55'),
(199, 'HoleTex', 'holetex', 'categories/6AqJGGvc7C.jpg', '2025-01-31 13:56:55', '2025-01-31 13:56:55'),
(200, 'Tây Java', 'tay-java', 'categories/K51QfJrMCZ.jpg', '2025-01-31 13:56:55', '2025-01-31 13:56:55'),
(201, 'Thân Triệu', 'than-trieu', 'categories/YH68DelDxh.jpg', '2025-01-31 13:56:56', '2025-01-31 13:56:56'),
(202, 'Dư Thanh Được', 'du-thanh-duoc', 'categories/e1nJE8IWiS.jpg', '2025-01-31 13:56:56', '2025-01-31 13:56:56'),
(203, 'Việt Nguyễn AI', 'viet-nguyen-ai', 'categories/yAUKdtgHql.jpg', '2025-01-31 13:56:56', '2025-01-31 13:56:56'),
(204, 'Maz Học Data', 'maz-hoc-data', 'categories/Oq8fHUnj7M.jpg', '2025-01-31 13:56:56', '2025-01-31 13:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_26_204642_create_categories_table', 2),
(5, '2025_01_26_214312_create_products_table', 3),
(6, '2025_01_28_075759_create_shopee_table', 4),
(7, '2025_02_02_073230_create_settings_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sold` int DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `discount_price`, `price`, `image`, `category_id`, `created_at`, `updated_at`, `sold`, `category_name`) VALUES
(41, 'Combo Full 5 Khóa Data của Cole', 'combo-full-5-khoa-data-cua-cole', '20990000.00', '0.00', 'products/Egh762aGMV.jpg', 189, '2025-01-31 14:18:44', '2025-01-31 14:18:44', 143, 'Cole'),
(42, 'Khóa Python for Data Analysis & Machine Learning', 'khoa-python-for-data-analysis-machine-learning', '5990000.00', '0.00', 'products/9zJMfr5qYJ.jpg', 189, '2025-01-31 14:18:44', '2025-01-31 14:18:44', 182, 'Cole'),
(43, 'Khóa học Data Analyst Cùng Cole', 'khoa-hoc-data-analyst-cung-cole', '5990000.00', '0.00', 'products/Y372tc01nO.jpg', 189, '2025-01-31 14:18:45', '2025-01-31 14:18:45', 187, 'Cole'),
(44, 'Khóa Học Phân tích dữ liệu – Thành thạo kỹ năng cùng chuyên gia Cole', 'khoa-hoc-phan-tich-du-lieu-thanh-thao-ky-nang-cung-chuyen-gia-cole', '4990000.00', '0.00', 'products/TZTwwJnds8.jpg', 189, '2025-01-31 14:18:45', '2025-01-31 14:18:45', 173, 'Cole'),
(45, 'Khóa Học Data Engineer – Cole – Trở thành kỹ sư dữ liệu Chuyên Nghiệp', 'khoa-hoc-data-engineer-cole-tro-thanh-ky-su-du-lieu-chuyen-nghiep', '4990000.00', '0.00', 'products/jZnB5qCu8H.jpg', 189, '2025-01-31 14:18:45', '2025-01-31 14:18:45', 198, 'Cole'),
(46, 'Khóa Học No Code Low Code Mới Nhất Cùng Cole', 'khoa-hoc-no-code-low-code-moi-nhat-cung-cole', '4990000.00', '0.00', 'products/83UF05wDeu.jpg', 189, '2025-01-31 14:18:45', '2025-01-31 14:18:45', 217, 'Cole'),
(47, 'Lập trình Back End Java Web chuyên nghiệp CyberSoft', 'lap-trinh-back-end-java-web-chuyen-nghiep-cybersoft', '24000000.00', '0.00', 'products/iGRckRz7y8.jpg', 189, '2025-01-31 14:18:46', '2025-01-31 14:18:46', 203, 'CyberSoft'),
(48, 'Lập trình Back End NodeJS viết API thực tế CyberSoft', 'lap-trinh-back-end-nodejs-viet-api-thuc-te-cybersoft', '7900000.00', '0.00', 'products/dpRSmeXZy6.jpg', 189, '2025-01-31 14:18:46', '2025-01-31 14:18:46', 187, 'CyberSoft'),
(49, 'Lập trình Front End ReactJS từ Zero đến có việc', 'lap-trinh-front-end-reactjs-tu-zero-den-co-viec', '7900000.00', '0.00', 'products/u2UUlzP3Td.jpg', 189, '2025-01-31 14:18:46', '2025-01-31 14:18:46', 190, 'CyberSoft'),
(50, 'Combo 6 khóa: Lập trình Front End VueJS', 'combo-6-khoa-lap-trinh-front-end-vuejs', '7900000.00', '0.00', 'products/fyz9OdTfZh.jpg', 189, '2025-01-31 14:18:46', '2025-01-31 14:18:46', 190, 'CyberSoft'),
(51, 'Khóa Học Backend Java With Spring Cùng 100% Mentor Đến Từ Big Tech', 'khoa-hoc-backend-java-with-spring-cung-100-mentor-den-tu-big-tech', '4999000.00', '0.00', 'products/9LB9oKPZVK.jpg', 189, '2025-01-31 14:18:47', '2025-01-31 14:18:47', 243, 'Engineer Pro'),
(52, 'Combo 8 Khóa Học Engineer Pro', 'combo-8-khoa-hoc-engineer-pro', '25999000.00', '0.00', 'products/xWr8YXEAjh.jpg', 189, '2025-01-31 14:18:47', '2025-01-31 14:18:47', 324, 'Engineer Pro'),
(53, 'Khóa học System Design Interview Level 2', 'khoa-hoc-system-design-interview-level-2', '4999000.00', '0.00', 'products/oumHK6X5VP.jpg', 189, '2025-01-31 14:18:47', '2025-01-31 14:18:47', 202, 'Engineer Pro'),
(54, 'Khóa học System Design Interview Big Tech', 'khoa-hoc-system-design-interview-big-tech', '4999000.00', '0.00', 'products/yBE2awLC4T.jpg', 189, '2025-01-31 14:18:48', '2025-01-31 14:18:48', 143, 'Engineer Pro'),
(55, 'Khóa Học Introduction to Programming with Python, Java Dành Cho Người Mới', 'khoa-hoc-introduction-to-programming-with-python-java-danh-cho-nguoi-moi', '4999000.00', '0.00', 'products/YBaPheT1G5.jpg', 189, '2025-01-31 14:18:48', '2025-01-31 14:18:48', 168, 'Engineer Pro'),
(56, 'Khóa Học Backend Golang Cùng 100% Mentor Đến Từ Big Tech', 'khoa-hoc-backend-golang-cung-100-mentor-den-tu-big-tech', '4999000.00', '0.00', 'products/VjRpjAbHCr.jpg', 189, '2025-01-31 14:18:48', '2025-01-31 14:18:48', 153, 'Engineer Pro'),
(57, 'Khóa Học Object - Oriented Design + Database Design', 'khoa-hoc-object-oriented-design-database-design', '4999000.00', '0.00', 'products/iIiyhHjEFg.jpg', 189, '2025-01-31 14:18:48', '2025-01-31 14:18:48', 144, 'Engineer Pro'),
(58, 'Khóa học DSA (Data Structure & Algorithms) Level 1', 'khoa-hoc-dsa-data-structure-algorithms-level-1', '4999000.00', '0.00', 'products/XIsVBnnZKo.jpg', 189, '2025-01-31 14:18:49', '2025-01-31 14:18:49', 142, 'Engineer Pro'),
(59, 'Khóa học DSA (Data Structure & Algorithms) Level 2', 'khoa-hoc-dsa-data-structure-algorithms-level-2', '4999000.00', '0.00', 'products/Ty1fM47GsK.jpg', 189, '2025-01-31 14:18:49', '2025-01-31 14:18:49', 130, 'Engineer Pro'),
(60, 'Khóa học Advanced Backend', 'khoa-hoc-advanced-backend', '4999000.00', '0.00', 'products/hLzBjCWYBx.jpg', 189, '2025-01-31 14:18:49', '2025-01-31 14:18:49', 238, 'RoninHub'),
(61, 'Khóa học System Design: Highly Concurrent Systems', 'khoa-hoc-system-design-highly-concurrent-systems', '4999000.00', '0.00', 'products/fBTQJWkvQo.jpg', 189, '2025-01-31 14:18:50', '2025-01-31 14:18:50', 198, 'RoninHub'),
(62, 'Combo 3 Khóa Học RoninHub', 'combo-3-khoa-hoc-roninhub', '14999000.00', '0.00', 'products/5gigJ3AJkw.jpg', 189, '2025-01-31 14:18:50', '2025-01-31 14:18:50', 225, 'RoninHub'),
(63, 'Khóa học Backend Cơ Bản (Mới)', 'khoa-hoc-backend-co-ban-moi', '4999000.00', '0.00', 'products/KSa68tcKJV.jpg', 189, '2025-01-31 14:18:50', '2025-01-31 14:18:50', 258, 'RoninHub'),
(64, 'Lập trình Backend Microservices với Typescript và Express', 'lap-trinh-backend-microservices-voi-typescript-va-express', '5990000.00', '0.00', 'products/rsBSfGl3vp.jpg', 189, '2025-01-31 14:18:50', '2025-01-31 14:18:50', 259, '200lab'),
(65, 'Khóa học DevOps For Backend Developer', 'khoa-hoc-devops-for-backend-developer', '2690000.00', '0.00', 'products/z6G8R7hAws.jpg', 189, '2025-01-31 14:18:51', '2025-01-31 14:18:51', 93, '200lab'),
(66, 'Khóa Học Golang Scalable Backend', 'khoa-hoc-golang-scalable-backend', '2690000.00', '0.00', 'products/hyEdXwjOQv.jpg', 189, '2025-01-31 14:18:51', '2025-01-31 14:18:51', 120, '200lab'),
(67, 'Khóa Học Bootcamp Data Analysis', 'khoa-hoc-bootcamp-data-analysis', '2290000.00', '0.00', 'products/zPvDgOc0PM.png', 189, '2025-01-31 14:18:51', '2025-01-31 14:18:51', 91, '200lab'),
(68, 'Combo Full 10 Khóa Lập Trình 28tech', 'combo-full-10-khoa-lap-trinh-28tech', '45000000.00', '0.00', 'products/0NUXEfOkd2.jpg', 189, '2025-01-31 14:18:51', '2025-01-31 14:18:51', 428, '28tech'),
(69, 'Lập trình Frontend (Mới)', 'lap-trinh-frontend-moi', '5800000.00', '0.00', 'products/9niq3lsY4C.jpg', 189, '2025-01-31 14:18:52', '2025-01-31 14:18:52', 183, '28tech'),
(70, 'Lập trình Back-end Java 2024', 'lap-trinh-back-end-java-2024', '14000000.00', '0.00', 'products/8XK0Lv4IHh.jpg', 189, '2025-01-31 14:18:52', '2025-01-31 14:18:52', 283, '28tech'),
(71, 'Cấu trúc dữ liệu và Giải thuật 2024', 'cau-truc-du-lieu-va-giai-thuat-2024', '6000000.00', '0.00', 'products/jART81Azau.jpg', 189, '2025-01-31 14:18:52', '2025-01-31 14:18:52', 208, '28tech'),
(72, 'Lập trình C++ Cơ bản tới Nâng cao', 'lap-trinh-c-co-ban-toi-nang-cao', '4800000.00', '0.00', 'products/s1SnRb3c1T.jpg', 189, '2025-01-31 14:18:52', '2025-01-31 14:18:52', 213, '28tech'),
(73, 'Lập trình C++ Nâng cao 2024', 'lap-trinh-c-nang-cao-2024', '5000000.00', '0.00', 'products/7V0D2TMLVv.jpg', 189, '2025-01-31 14:18:53', '2025-01-31 14:18:53', 118, '28tech'),
(74, 'Lập trình Back-end NodeJS', 'lap-trinh-back-end-nodejs', '14000000.00', '0.00', 'products/EcWLoMEaWw.jpg', 189, '2025-01-31 14:18:53', '2025-01-31 14:18:53', 209, '28tech'),
(75, 'Lập Trình Thi Đấu 2024', 'lap-trinh-thi-dau-2024', '12000000.00', '0.00', 'products/aabqVUfak2.jpg', 189, '2025-01-31 14:18:53', '2025-01-31 14:18:53', 87, '28tech'),
(76, 'Lập trình Hướng Đối Tượng với Java', 'lap-trinh-huong-doi-tuong-voi-java', '6000000.00', '0.00', 'products/JbwgrT779f.jpg', 189, '2025-01-31 14:18:53', '2025-01-31 14:18:53', 74, '28tech'),
(77, 'Lập Trình Python 2024 Từ Cơ Bản Tới Nâng Cao', 'lap-trinh-python-2024-tu-co-ban-toi-nang-cao', '24000000.00', '0.00', 'products/06Pf6vs2pk.jpg', 189, '2025-01-31 14:18:54', '2025-01-31 14:18:54', 143, '28tech'),
(78, 'Lập Trình C 2024 Từ Cơ Bản Tới Nâng Cao', 'lap-trinh-c-2024-tu-co-ban-toi-nang-cao', '2400000.00', '0.00', 'products/nIAMQDIkXX.jpg', 189, '2025-01-31 14:18:54', '2025-01-31 14:18:54', 201, '28tech'),
(79, 'Combo 2 Khóa Học DSA của FSE', 'combo-2-khoa-hoc-dsa-cua-fse', '25999000.00', '0.00', 'products/rytoo55lhQ.jpg', 189, '2025-01-31 14:18:54', '2025-01-31 14:18:54', 189, 'FSE'),
(80, 'Khoá học thuật toán thực chiến DSA for Coding Interview - Lớp Big Tech', 'khoa-hoc-thuat-toan-thuc-chien-dsa-for-coding-interview-lop-big-tech', '4999000.00', '0.00', 'products/YVF8bwRY7w.jpg', 189, '2025-01-31 14:18:55', '2025-01-31 14:18:55', 230, 'FSE'),
(81, 'Khoá học thuật toán thực chiến DSA for Coding Interview - Lớp FAANG', 'khoa-hoc-thuat-toan-thuc-chien-dsa-for-coding-interview-lop-faang', '6999000.00', '0.00', 'products/7ts2Zn82P9.jpg', 189, '2025-01-31 14:18:55', '2025-01-31 14:18:55', 225, 'FSE'),
(82, 'Combo Full 4 Khóa học Lập Trình F8', 'combo-full-4-khoa-hoc-lap-trinh-f8', '15999000.00', '0.00', 'products/sOaEnRL3pi.jpg', 189, '2025-01-31 14:18:55', '2025-01-31 14:18:55', 383, 'F8'),
(83, 'HTML CSS Pro - F8', 'html-css-pro-f8', '1299000.00', '0.00', 'products/plvcnDOdDM.jpg', 189, '2025-01-31 14:18:55', '2025-01-31 14:18:55', 294, 'F8'),
(84, 'JavaScript Pro - F8', 'javascript-pro-f8', '1399000.00', '0.00', 'products/TmoYYs50KJ.jpg', 189, '2025-01-31 14:18:56', '2025-01-31 14:18:56', 207, 'F8'),
(85, 'Khóa học Fullstack NodeJS - NextJS', 'khoa-hoc-fullstack-nodejs-nextjs', '30000000.00', '0.00', 'products/idrf1K8DUm.png', 189, '2025-01-31 14:18:56', '2025-01-31 14:18:56', 483, 'F8'),
(86, 'Ngôn ngữ Sass - F8', 'ngon-ngu-sass-f8', '490000.00', '0.00', 'products/pDHfJHBnc0.jpg', 189, '2025-01-31 14:18:56', '2025-01-31 14:18:56', 97, 'F8'),
(87, 'Combo Full 3 Khóa Maz Học Data', 'combo-full-3-khoa-maz-hoc-data', '4900000.00', '0.00', 'products/gmBDZdSme6.jpg', 189, '2025-01-31 14:18:57', '2025-01-31 14:18:57', 223, 'Maz Học Data'),
(88, 'Khóa Học Apply Python for Data Analytics', 'khoa-hoc-apply-python-for-data-analytics', '1699000.00', '0.00', 'products/SGU78y8S8n.jpg', 189, '2025-01-31 14:18:57', '2025-01-31 14:18:57', 236, 'Maz Học Data'),
(89, 'Khóa Học Practical SQL For Data Analytics', 'khoa-hoc-practical-sql-for-data-analytics', '1699000.00', '0.00', 'products/1rdhQwyuSy.jpg', 189, '2025-01-31 14:18:57', '2025-01-31 14:18:57', 201, 'Maz Học Data'),
(90, 'Khóa Học Data Analytics 101', 'khoa-hoc-data-analytics-101', '1099000.00', '0.00', 'products/GrePdoGJnY.jpg', 189, '2025-01-31 14:18:57', '2025-01-31 14:18:57', 197, 'Maz Học Data'),
(91, 'Combo Full 6 Khóa học Việt Nguyễn AI', 'combo-full-6-khoa-hoc-viet-nguyen-ai', '20000000.00', '0.00', 'products/0J6Z8O1azr.jpg', 189, '2025-01-31 14:18:58', '2025-01-31 14:18:58', 305, 'Việt Nguyễn AI'),
(92, 'Combo 2 khóa DL4CV cơ bản và nâng cao', 'combo-2-khoa-dl4cv-co-ban-va-nang-cao', '10000000.00', '0.00', 'products/PjlE7CCxzV.jpg', 189, '2025-01-31 14:18:58', '2025-01-31 14:18:58', 274, 'Việt Nguyễn AI'),
(93, 'Khóa học Python & AI cơ bản 2024', 'khoa-hoc-python-ai-co-ban-2024', '5900000.00', '0.00', 'products/MLbFZTZjKx.png', 189, '2025-01-31 14:18:58', '2025-01-31 14:18:58', 253, 'Việt Nguyễn AI'),
(94, 'Khóa học Data Science Machine Learning 2024', 'khoa-hoc-data-science-machine-learning-2024', '5900000.00', '0.00', 'products/ChtpvhnQfE.jpg', 189, '2025-01-31 14:18:59', '2025-01-31 14:18:59', 234, 'Việt Nguyễn AI'),
(95, 'Khóa học Toán AI/DS/ML/DL', 'khoa-hoc-toan-aidsmldl', '5900000.00', '0.00', 'products/nQXo0ywePf.jpg', 189, '2025-01-31 14:18:59', '2025-01-31 14:18:59', 188, 'Việt Nguyễn AI'),
(96, 'Khóa học DL4CV cơ bản', 'khoa-hoc-dl4cv-co-ban', '5900000.00', '0.00', 'products/7AXErbFlLZ.jpg', 189, '2025-01-31 14:18:59', '2025-01-31 14:18:59', 207, 'Việt Nguyễn AI'),
(97, 'Khóa học DL4CV nâng cao', 'khoa-hoc-dl4cv-nang-cao', '5900000.00', '0.00', 'products/Y8M0A8ekML.jpg', 189, '2025-01-31 14:18:59', '2025-01-31 14:18:59', 252, 'Việt Nguyễn AI'),
(98, 'Combo Full 4 Khóa React Next Node Deloy', 'combo-full-4-khoa-react-next-node-deloy', '5500000.00', '0.00', 'products/ecGMyuREhJ.jpg', 189, '2025-01-31 14:19:00', '2025-01-31 14:19:00', 168, 'Dư Thanh Được'),
(99, 'Khóa Học NextJs Super Dư Thanh Được', 'khoa-hoc-nextjs-super-du-thanh-duoc', '1590000.00', '0.00', 'products/l1t3W5XU0n.jpg', 189, '2025-01-31 14:19:00', '2025-01-31 14:19:00', 252, 'Dư Thanh Được'),
(100, 'Khóa Học CI/CD Deploy React, Next, Node lên VPS', 'khoa-hoc-cicd-deploy-react-next-node-len-vps', '1490000.00', '0.00', 'products/ELhXNsobq3.jpg', 189, '2025-01-31 14:19:00', '2025-01-31 14:19:00', 145, 'Dư Thanh Được'),
(101, 'Khóa học ReactJs Super - Shopee Clone Typescript', 'khoa-hoc-reactjs-super-shopee-clone-typescript', '1390000.00', '0.00', 'products/q7tywJcVHj.jpg', 189, '2025-01-31 14:19:01', '2025-01-31 14:19:01', 221, 'Dư Thanh Được'),
(102, 'Khóa học NodeJs Super - Twitter API', 'khoa-hoc-nodejs-super-twitter-api', '1590000.00', '0.00', 'products/VCVKMrMSgd.jpg', 189, '2025-01-31 14:19:01', '2025-01-31 14:19:01', 205, 'Dư Thanh Được'),
(103, 'Combo ReactJs Super x NodeJs Super', 'combo-reactjs-super-x-nodejs-super', '2900000.00', '0.00', 'products/LAsntLlws9.jpg', 189, '2025-01-31 14:19:01', '2025-01-31 14:19:01', 124, 'Dư Thanh Được'),
(104, 'Combo ReactJs Super x NextJs Super', 'combo-reactjs-super-x-nextjs-super', '2900000.00', '0.00', 'products/nGRm0Rc9n6.jpg', 189, '2025-01-31 14:19:01', '2025-01-31 14:19:01', 195, 'Dư Thanh Được'),
(105, 'Combo 4 Khóa Học Java Android-OOP-DSA-SQL của Thân Triệu', 'combo-4-khoa-hoc-java-android-oop-dsa-sql-cua-than-trieu', '7299000.00', '0.00', 'products/6mjnU6DNo3.jpg', 189, '2025-01-31 14:19:02', '2025-01-31 14:19:02', 224, 'Thân Triệu'),
(106, 'Khóa Học Android Kotlin Pro từ A-Z 2024', 'khoa-hoc-android-kotlin-pro-tu-a-z-2024', '2999000.00', '0.00', 'products/3bGKqpNubg.jpg', 189, '2025-01-31 14:19:02', '2025-01-31 14:19:02', 185, 'Thân Triệu'),
(107, 'Cấu trúc dữ liệu và giải thuật với Java', 'cau-truc-du-lieu-va-giai-thuat-voi-java', '1299000.00', '0.00', 'products/zmrQmNvQAY.jpg', 189, '2025-01-31 14:19:02', '2025-01-31 14:19:02', 165, 'Thân Triệu'),
(108, 'Lập trình Java OOP từ cơ bản đến nâng cao', 'lap-trinh-java-oop-tu-co-ban-den-nang-cao', '1999000.00', '0.00', 'products/HsjjyGgfS7.jpg', 189, '2025-01-31 14:19:02', '2025-01-31 14:19:02', 138, 'Thân Triệu'),
(109, 'CSDL SQL từ cơ bản đến nâng cao', 'csdl-sql-tu-co-ban-den-nang-cao', '1299000.00', '0.00', 'products/4h01aJXMmw.jpg', 189, '2025-01-31 14:19:03', '2025-01-31 14:19:03', 190, 'Thân Triệu'),
(110, 'Combo Full 4 Khóa học Tây Java', 'combo-full-4-khoa-hoc-tay-java', '5499000.00', '0.00', 'products/7q5mnHwMlo.jpg', 189, '2025-01-31 14:19:03', '2025-01-31 14:19:03', 155, 'Tây Java'),
(111, 'Java Core Tiếng Việt', 'java-core-tieng-viet', '1499000.00', '0.00', 'products/WH7fgQnQHC.jpg', 189, '2025-01-31 14:19:03', '2025-01-31 14:19:03', 122, 'Tây Java'),
(112, 'Spring Boot Full Skill\'s', 'spring-boot-full-skills', '1499000.00', '0.00', 'products/XbiUxG9chN.jpg', 189, '2025-01-31 14:19:03', '2025-01-31 14:19:03', 158, 'Tây Java'),
(113, 'Lập trình Java Backend Full Steps', 'lap-trinh-java-backend-full-steps', '1499000.00', '0.00', 'products/cJlU91Cxkt.jpg', 189, '2025-01-31 14:19:04', '2025-01-31 14:19:04', 175, 'Tây Java'),
(114, 'Bảo mật API Backend với Spring Security + JWT + RBAC', 'bao-mat-api-backend-voi-spring-security-jwt-rbac', '1499000.00', '0.00', 'products/0LLsVyV4fg.jpg', 189, '2025-01-31 14:19:04', '2025-01-31 14:19:04', 155, 'Tây Java'),
(115, 'Khóa Học React Pro 2024 HoleTex', 'khoa-hoc-react-pro-2024-holetex', '1990000.00', '0.00', 'products/HJ6h2qpBxI.jpg', 189, '2025-01-31 14:19:04', '2025-01-31 14:19:04', 196, 'HoleTex'),
(116, 'Combo Full 4 Khóa EvonDev', 'combo-full-4-khoa-evondev', '6990000.00', '0.00', 'products/2NGGvYztmG.jpg', 189, '2025-01-31 14:19:05', '2025-01-31 14:19:05', 180, 'EvonDev'),
(117, 'Khóa học Fullstack NextJS Pro - Xây dựng E Learning System hoàn chỉnh', 'khoa-hoc-fullstack-nextjs-pro-xay-dung-e-learning-system-hoan-chinh', '1490000.00', '0.00', 'products/jXtvsp2sf8.jpg', 189, '2025-01-31 14:19:05', '2025-01-31 14:19:05', 195, 'EvonDev'),
(118, 'Khóa học ReactJS cơ bản đến nâng cao', 'khoa-hoc-reactjs-co-ban-den-nang-cao', '1690000.00', '0.00', 'products/SFwmRmkK3O.jpg', 189, '2025-01-31 14:19:05', '2025-01-31 14:19:05', 165, 'EvonDev'),
(119, 'Khoá học Javascript từ cơ bản đến nâng cao dành cho người mới', 'khoa-hoc-javascript-tu-co-ban-den-nang-cao-danh-cho-nguoi-moi', '1690000.00', '0.00', 'products/E1zCrsxOcf.jpg', 189, '2025-01-31 14:19:05', '2025-01-31 14:19:05', 146, 'EvonDev'),
(120, 'Khóa học HTML CSS Master - from Zero to Hero', 'khoa-hoc-html-css-master-from-zero-to-hero', '1290000.00', '0.00', 'products/90EV7W47Cr.jpg', 189, '2025-01-31 14:19:06', '2025-01-31 14:19:06', 180, 'EvonDev'),
(121, 'Combo Full 13 Khóa Hỏi Dân IT Mới Nhất', 'combo-full-13-khoa-hoi-dan-it-moi-nhat', '29000000.00', '0.00', 'products/aJC6Texd6Z.jpg', 189, '2025-01-31 14:19:06', '2025-01-31 14:19:06', 234, 'Hỏi Dân IT'),
(122, 'Java Spring MVC - Xây Dựng FullStack Website với Spring Boot', 'java-spring-mvc-xay-dung-fullstack-website-voi-spring-boot', '1499000.00', '0.00', 'products/fo6Z0BAFrH.jpg', 189, '2025-01-31 14:19:06', '2025-01-31 14:19:06', 324, 'Hỏi Dân IT'),
(123, '(RENEW 2024) React Ultimate 2024 - ReactJS Cơ Bản Từ Z Đến A', 'renew-2024-react-ultimate-2024-reactjs-co-ban-tu-z-den-a', '1099000.00', '0.00', 'products/6sFIdI28ut.jpg', 189, '2025-01-31 14:19:07', '2025-01-31 14:19:07', 249, 'Hỏi Dân IT'),
(124, '(RENEW 2024) React Pro TypeScript - Thực Hành Dự Án Portfolio', 'renew-2024-react-pro-typescript-thuc-hanh-du-an-portfolio', '2490000.00', '0.00', 'products/yQgQ0d0Yyu.jpg', 189, '2025-01-31 14:19:07', '2025-01-31 14:19:07', 168, 'Hỏi Dân IT'),
(125, 'NestJs Zero - Xây Dựng Backend NodeJs Chuyên Nghiệp', 'nestjs-zero-xay-dung-backend-nodejs-chuyen-nghiep', '2199000.00', '0.00', 'products/1cK8deahZm.jpg', 189, '2025-01-31 14:19:07', '2025-01-31 14:19:07', 326, 'Hỏi Dân IT'),
(126, 'Java Spring RESTful APIs - Xây Dựng Backend với Spring Boot', 'java-spring-restful-apis-xay-dung-backend-voi-spring-boot', '1499000.00', '0.00', 'products/V0dyTcTXpL.jpg', 189, '2025-01-31 14:19:07', '2025-01-31 14:19:07', 298, 'Hỏi Dân IT'),
(127, 'Backend RESTFul Server với NodeJs và Express (SQL/MongoDB)', 'backend-restful-server-voi-nodejs-va-express-sqlmongodb', '1299000.00', '0.00', 'products/a7AcCBow76.jpg', 189, '2025-01-31 14:19:08', '2025-01-31 14:19:08', 181, 'Hỏi Dân IT'),
(128, '(RENEW 2024) Thực Hành Bài Test Fresher React Frontend', 'renew-2024-thuc-hanh-bai-test-fresher-react-frontend', '1299000.00', '0.00', 'products/PhcTkhbjpl.jpg', 189, '2025-01-31 14:19:08', '2025-01-31 14:19:08', 170, 'Hỏi Dân IT'),
(129, 'Git Zero - Tự Học Git Siêu Tốc với GitHub & GitLab', 'git-zero-tu-hoc-git-sieu-toc-voi-github-gitlab', '999000.00', '0.00', 'products/RoYYvrMBHy.jpg', 189, '2025-01-31 14:19:08', '2025-01-31 14:19:08', 125, 'Hỏi Dân IT'),
(130, 'React State Manager - Redux Toolkit, React Query, Redux Saga', 'react-state-manager-redux-toolkit-react-query-redux-saga', '999000.00', '0.00', 'products/aGZfs1I9zj.jpg', 189, '2025-01-31 14:19:09', '2025-01-31 14:19:09', 148, 'Hỏi Dân IT'),
(131, 'React Native Ultimate - Phát Triển Ứng Dụng Mobile', 'react-native-ultimate-phat-trien-ung-dung-mobile', '1099000.00', '0.00', 'products/9nCf6935Ki.jpg', 189, '2025-01-31 14:19:09', '2025-01-31 14:19:09', 98, 'Hỏi Dân IT'),
(132, 'Ultimate Guide To Deploy React/Node.JS', 'ultimate-guide-to-deploy-reactnodejs', '999000.00', '0.00', 'products/f7qME5cAFD.jpg', 189, '2025-01-31 14:19:09', '2025-01-31 14:19:09', 70, 'Hỏi Dân IT'),
(133, 'React Pro Max với NextJs - Làm Chủ ReactJs Hiện Đại', 'react-pro-max-voi-nextjs-lam-chu-reactjs-hien-dai', '2499000.00', '0.00', 'products/AHNSfg89aw.jpg', 189, '2025-01-31 14:19:09', '2025-01-31 14:19:09', 280, 'Hỏi Dân IT'),
(134, 'Kỹ Thuật Debugs Với Lập Trình FullStack Website', 'ky-thuat-debugs-voi-lap-trinh-fullstack-website', '999000.00', '0.00', 'products/ckqYKYByIo.jpg', 189, '2025-01-31 14:19:10', '2025-01-31 14:19:10', 64, 'Hỏi Dân IT');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('QFPaTfRAwakA2rQXivOte8ivBP1X0nd4w02GYnhs', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiOGhqMjdMZ3I4b2FTR2RWNVJ6SkhGc3QxQVZiTXhUOEV4WkEwaDRSOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcm9kdWN0L2NvbWJvLTgta2hvYS1ob2MtZW5naW5lZXItcHJvIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJGVEQ0VsM0ROQVEvTVo3OE83V3BTVi5ETTUxT015ZzByV04uNm15a28vLnJ1eHdmTENRbVYuIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1738457551);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `shopee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_shopee` tinyint(1) NOT NULL DEFAULT '0',
  `ads_google` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_ads_google` tinyint(1) NOT NULL DEFAULT '0',
  `link4m` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_link4m` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `shopee`, `is_shopee`, `ads_google`, `is_ads_google`, `link4m`, `is_link4m`, `created_at`, `updated_at`) VALUES
(1, 'https://s.shopee.vn/30Yh2gQ5dj', 1, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-5973230244058066\"\n     crossorigin=\"anonymous\"></script>', 1, 'https://link4m.com/go/hpQ5wYF', 1, '2025-02-02 00:37:08', '2025-02-02 00:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `shopee`
--

CREATE TABLE `shopee` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopee`
--

INSERT INTO `shopee` (`id`, `link`, `created_at`, `updated_at`) VALUES
(5, 'https://s.shopee.vn/30Yh2gQ5dj', '2025-01-28 02:13:21', '2025-01-28 02:13:21'),
(6, 'https://s.shopee.vn/9f5aysXfrm', '2025-01-28 02:13:21', '2025-01-28 02:13:21'),
(7, 'https://s.shopee.vn/8UtdaoE1pv', '2025-01-28 02:13:21', '2025-01-28 02:13:21'),
(8, 'https://s.shopee.vn/30Yh2iTkaz', '2025-01-28 02:13:21', '2025-01-28 02:13:21'),
(9, 'https://s.shopee.vn/5fZSDd5zoW', '2025-01-28 02:13:21', '2025-01-28 02:13:21'),
(10, 'https://s.shopee.vn/6plPbnFJOo', '2025-01-28 02:13:21', '2025-01-28 02:13:21'),
(11, 'https://s.shopee.vn/2qFGqSPBai', '2025-01-28 02:13:21', '2025-01-28 02:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, '2509roblox@gmail.com', '2509roblox@gmail.com', NULL, '$2y$12$eDCEl3DNAQ/MZ78O7WpSV.DM51OMyg0rWN.6myko/.ruxwfLCQmV.', NULL, '2025-01-31 12:42:13', '2025-01-31 12:42:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_history`
--
ALTER TABLE `access_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopee`
--
ALTER TABLE `shopee`
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
-- AUTO_INCREMENT for table `access_history`
--
ALTER TABLE `access_history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shopee`
--
ALTER TABLE `shopee`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
