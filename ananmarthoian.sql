-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 22, 2025 at 02:01 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `description`, `short_description`, `banner`, `created_at`, `updated_at`) VALUES
(104, 'There is a heaven of snack in our mart ', 'huong-dan-su-dung-rainy-75', '<p>&nbsp;There is a heaven of snack in our mart <figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure><br><br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>Free Delivery In Hoi An<br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t6f/1/16/2602.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6f/1/16/2602.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>An An minimart<br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t4d/1/16/1f4de.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4d/1/16/1f4de.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>Phone Number/WhatsApp/ Zalo: +84976979546<br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>Address: 191B Lý Thường Kiệt, phường Cẩm Phô, tp Hội An<br><br><a href=\"https://www.facebook.com/hashtag/taphoahoian?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#taphoahoian</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianminimart?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianminimart</strong></a> <a href=\"https://www.facebook.com/hashtag/hoiangrocery?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoiangrocery</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianlocalmart?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianlocalmart</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianalcoholshop?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianalcoholshop</strong></a> <a href=\"https://www.facebook.com/hashtag/besthoianminimart?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#besthoianminimart</strong></a> <a href=\"https://www.facebook.com/hashtag/hoiansupermarket?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoiansupermarket</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianwine?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianwine</strong></a>&nbsp;</p><p><br></p>', 'There is a heaven of snack in our mart ', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-10-16 01:52:46', '2025-02-21 13:26:13'),
(124, 'There is a heaven of snack in our mart ', 'huong-dan-su-dung-rainy-751', '<p>&nbsp;There is a heaven of snack in our mart <figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure><br><br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>Free Delivery In Hoi An<br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t6f/1/16/2602.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6f/1/16/2602.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>An An minimart<br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t4d/1/16/1f4de.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4d/1/16/1f4de.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>Phone Number/WhatsApp/ Zalo: +84976979546<br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>Address: 191B Lý Thường Kiệt, phường Cẩm Phô, tp Hội An<br><br><a href=\"https://www.facebook.com/hashtag/taphoahoian?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#taphoahoian</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianminimart?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianminimart</strong></a> <a href=\"https://www.facebook.com/hashtag/hoiangrocery?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoiangrocery</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianlocalmart?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianlocalmart</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianalcoholshop?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianalcoholshop</strong></a> <a href=\"https://www.facebook.com/hashtag/besthoianminimart?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#besthoianminimart</strong></a> <a href=\"https://www.facebook.com/hashtag/hoiansupermarket?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoiansupermarket</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianwine?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianwine</strong></a>&nbsp;</p><p><br></p>', 'There is a heaven of snack in our mart ', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-10-16 01:52:46', '2025-02-21 13:26:13'),
(125, 'There is a heaven of snack in our mart ', 'huong-dan-su-dung-rainy-7511\r\n', '<p>&nbsp;There is a heaven of snack in our mart <figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure><br><br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>Free Delivery In Hoi An<br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t6f/1/16/2602.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6f/1/16/2602.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>An An minimart<br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t4d/1/16/1f4de.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4d/1/16/1f4de.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>Phone Number/WhatsApp/ Zalo: +84976979546<br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>Address: 191B Lý Thường Kiệt, phường Cẩm Phô, tp Hội An<br><br><a href=\"https://www.facebook.com/hashtag/taphoahoian?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#taphoahoian</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianminimart?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianminimart</strong></a> <a href=\"https://www.facebook.com/hashtag/hoiangrocery?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoiangrocery</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianlocalmart?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianlocalmart</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianalcoholshop?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianalcoholshop</strong></a> <a href=\"https://www.facebook.com/hashtag/besthoianminimart?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#besthoianminimart</strong></a> <a href=\"https://www.facebook.com/hashtag/hoiansupermarket?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoiansupermarket</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianwine?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianwine</strong></a>&nbsp;</p><p><br></p>', 'There is a heaven of snack in our mart ', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-10-16 01:52:46', '2025-02-21 13:26:13'),
(126, 'There is a heaven of snack in our mart ', 'huong-dan-su-dung-rainy-75111', '<p>&nbsp;There is a heaven of snack in our mart <figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure><br><br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>Free Delivery In Hoi An<br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t6f/1/16/2602.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6f/1/16/2602.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>An An minimart<br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t4d/1/16/1f4de.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4d/1/16/1f4de.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>Phone Number/WhatsApp/ Zalo: +84976979546<br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:16,&quot;url&quot;:&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" width=\"16\" height=\"16\"><figcaption class=\"attachment__caption\"></figcaption></figure>Address: 191B Lý Thường Kiệt, phường Cẩm Phô, tp Hội An<br><br><a href=\"https://www.facebook.com/hashtag/taphoahoian?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#taphoahoian</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianminimart?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianminimart</strong></a> <a href=\"https://www.facebook.com/hashtag/hoiangrocery?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoiangrocery</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianlocalmart?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianlocalmart</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianalcoholshop?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianalcoholshop</strong></a> <a href=\"https://www.facebook.com/hashtag/besthoianminimart?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#besthoianminimart</strong></a> <a href=\"https://www.facebook.com/hashtag/hoiansupermarket?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoiansupermarket</strong></a> <a href=\"https://www.facebook.com/hashtag/hoianwine?__eep__=6&amp;__cft__[0]=AZWMgjUJryl3YlG_Ah5TiJekvlm7RRRJgvx1IGLsEYJHZkKwKwuQOg9xDgc6QFp2dEP6iMdEK_FTIK8qGe9-ZqNWITy03yJTFSOtKmpVleHfHDVJ4_8aq4D7kHChBrguo0C4T9pdi5E7n8UpdhXZUEDvWrXDatdNAyTNJkDMoVPJs_JU1LhdWevph-7ktPDN6Ms&amp;__tn__=*NK*F\"><strong>#hoianwine</strong></a>&nbsp;</p><p><br></p>', 'There is a heaven of snack in our mart ', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-10-16 01:52:46', '2025-02-21 13:26:13');

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
('c1dfd96eea8cc2b62785275bca38ac261256e278', 'i:1;', 1740189205),
('c1dfd96eea8cc2b62785275bca38ac261256e278:timer', 'i:1740189205;', 1740189205),
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1740138041),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1740138041;', 1740138041),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:2;', 1740188113),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1740188113;', 1740188113);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `classification_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image_link`, `created_at`, `updated_at`, `classification_id`) VALUES
(205, 'Red Wine', 'red-wine', '01JMF2Y1TE66DKSPCQYAE2K1WY.png', '2025-02-19 11:52:59', '2025-02-19 12:29:13', 1),
(206, 'White Wine', 'white-wine', NULL, '2025-02-19 11:53:34', '2025-02-19 11:53:34', 1),
(207, 'Rose Wine', 'rose-wine', NULL, '2025-02-19 11:53:39', '2025-02-19 11:53:39', 1),
(208, 'Sparkling Wine', 'sparkling-wine', NULL, '2025-02-19 11:53:46', '2025-02-19 11:53:46', 1),
(209, 'Champagne', 'champagne', NULL, '2025-02-19 11:53:54', '2025-02-19 11:53:54', 1),
(210, 'Single Malt Whisky', 'single-malt-whisky', NULL, '2025-02-19 11:54:02', '2025-02-19 11:54:02', 2),
(211, 'Blended Whisky', 'blended-whisky', NULL, '2025-02-19 11:54:08', '2025-02-19 11:54:08', 2),
(212, 'Scotland Whisky', 'scotland-whisky', NULL, '2025-02-19 11:54:20', '2025-02-19 11:54:20', 2),
(213, 'Brandy', 'brandy', NULL, '2025-02-19 11:54:32', '2025-02-19 11:54:32', 2),
(214, 'Vodka', 'vodka', NULL, '2025-02-19 11:54:40', '2025-02-19 11:54:40', 3),
(215, 'Rum', 'rum', NULL, '2025-02-19 11:54:45', '2025-02-19 11:54:45', 3),
(216, 'Gin', 'gin', NULL, '2025-02-19 11:54:51', '2025-02-19 11:54:51', 3),
(217, 'Tequilla', 'tequilla', NULL, '2025-02-19 11:54:57', '2025-02-19 11:54:57', 3),
(218, 'Sake', 'sake', NULL, '2025-02-19 11:55:09', '2025-02-19 11:55:09', 3),
(219, 'Local Beer', 'local-beer', NULL, '2025-02-19 11:55:17', '2025-02-19 11:55:17', 4),
(220, 'Witbier Beer', 'witbier-beer', NULL, '2025-02-19 11:55:21', '2025-02-19 11:55:21', 4),
(221, 'Dark Beer', 'dark-beer', NULL, '2025-02-19 11:55:27', '2025-02-19 11:55:27', 4),
(222, 'Craft Beer', 'craft-beer', NULL, '2025-02-19 11:55:38', '2025-02-19 11:55:38', 4),
(223, 'Korean Soju', 'korean-soju', NULL, '2025-02-19 11:55:45', '2025-02-19 11:55:45', 4),
(224, 'Cigarrtette (Box)', 'cigarrtette-box', NULL, '2025-02-19 11:55:51', '2025-02-19 11:55:51', 5),
(225, 'Pesonal/Home use', 'pesonalhome-use', NULL, '2025-02-19 11:55:57', '2025-02-19 11:55:57', 5),
(226, 'Fresh Fruits/Vegetables', 'fresh-fruitsvegetables', NULL, '2025-02-19 11:56:05', '2025-02-19 11:56:05', 5),
(227, 'Dairy', 'dairy', NULL, '2025-02-19 11:56:13', '2025-02-19 11:56:13', 5),
(228, 'Meat/Fish', 'meatfish', NULL, '2025-02-19 11:56:19', '2025-02-19 11:56:19', 5),
(229, 'Ice Cream', 'ice-cream', NULL, '2025-02-19 11:56:28', '2025-02-19 11:56:28', 5);

-- --------------------------------------------------------

--
-- Table structure for table `classifications`
--

CREATE TABLE `classifications` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classifications`
--

INSERT INTO `classifications` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Wine', '2025-02-19 11:47:20', '2025-02-19 11:47:20'),
(2, 'Whiskey/Brandy', '2025-02-19 11:47:28', '2025-02-19 11:47:28'),
(3, 'Spirit', '2025-02-19 11:47:34', '2025-02-19 11:47:34'),
(4, 'Beers', '2025-02-19 11:47:39', '2025-02-19 11:47:39'),
(5, 'Others', '2025-02-19 11:47:46', '2025-02-19 11:47:46');

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
(7, '2025_02_02_073230_create_settings_table', 5),
(8, '2025_02_19_184426_create_classifications_table', 6),
(9, '2025_02_19_184914_add_classification_id_to_categories_table', 7),
(10, '2025_02_20_203604_add_full_name_address_phone_to_users_table', 8),
(11, '2025_02_20_214736_create_orders_table', 9),
(12, '2025_02_20_215123_add_shipping_method_to_orders_table', 10),
(13, '2025_02_20_215646_create_order_items_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address`, `phone`, `full_name`, `status`, `total`, `shipping_method`, `created_at`, `updated_at`) VALUES
(30, 6, '123', '123', 'admin@gmail.com', 'pending', '10370000.00', 'cod', '2025-02-22 01:59:39', '2025-02-22 01:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(30,2) NOT NULL,
  `total` decimal(30,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total`, `created_at`, `updated_at`) VALUES
(21, 30, 641, 61, '170000.00', '10370000.00', '2025-02-22 01:59:39', '2025-02-22 01:59:39');

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
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sold` int DEFAULT NULL,
  `is_stock` int DEFAULT '1',
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `image`, `category_id`, `created_at`, `updated_at`, `sold`, `is_stock`, `description`) VALUES
(627, 'WI- Vang đỏ Markview Cabernet Merlot', 'wi-vang-do-markview-cabernet-merlot', '375000.00', '01JMM4XZ4QJDXNE4P9WEYMJ4BG.png', 205, '2025-02-21 11:40:20', '2025-02-21 11:42:31', 10, 0, '<blockquote>&nbsp;Nét đặc trưng của Vang đỏ Markview Cabernet Merlot&nbsp;</blockquote><p>Rượu McWilliams Markview Cabernet Merlot là sự pha trộn của hai giống nho đỏ Cabernet Sauvignon và Merlot. Rượu có màu đỏ tím, hương thơm quả anh đào, việt quất và chút vị cam. Hương thơm hòa quyện với nhau, tăng thêm sự tinh tế với nốt hương vani và gỗ sồi</p><p>Nồng độ: 13.5%</p><p>Dung tích: 750ml</p><blockquote>Characteristics of Markview Cabernet Merlot Red Wine</blockquote><p>The characteristic of McWilliams Markview Cabernet Merlot Wine is a blend of two red grape varieties Cabernet Sauvignon and Merlot. The wine has a purple-red color, aromas of cherries, blueberries and a bit of orange. The scent blends together, adding sophistication with notes of vanilla and oak</p><p>ABV: 13.5%</p><p>Capacity: 750ml&nbsp;</p><p>&nbsp;</p>'),
(628, 'WI- Vang đỏ Markview Cabernet Merlot', 'wi-vang-do-markview-cabernet-merlot1', '375000.00', '01JMM4XZ4QJDXNE4P9WEYMJ4BG.png', 205, '2025-02-21 11:40:20', '2025-02-22 00:21:10', 127, 1, '<blockquote>&nbsp;Nét đặc trưng của Vang đỏ Markview Cabernet Merlot&nbsp;</blockquote><p>Rượu McWilliams Markview Cabernet Merlot là sự pha trộn của hai giống nho đỏ Cabernet Sauvignon và Merlot. Rượu có màu đỏ tím, hương thơm quả anh đào, việt quất và chút vị cam. Hương thơm hòa quyện với nhau, tăng thêm sự tinh tế với nốt hương vani và gỗ sồi</p><p>Nồng độ: 13.5%</p><p>Dung tích: 750ml</p><blockquote>Characteristics of Markview Cabernet Merlot Red Wine</blockquote><p>The characteristic of McWilliams Markview Cabernet Merlot Wine is a blend of two red grape varieties Cabernet Sauvignon and Merlot. The wine has a purple-red color, aromas of cherries, blueberries and a bit of orange. The scent blends together, adding sophistication with notes of vanilla and oak</p><p>ABV: 13.5%</p><p>Capacity: 750ml&nbsp;</p><p>&nbsp;</p>'),
(629, 'Rượu Whisky Single Malt Scotland Singleton 12Yo Dufftown Smsw 700Ml Hq F23 SP0001395-G-C', 'ruou-whisky-single-malt-scotland-singleton-12yo-dufftown-smsw-700ml-hq-f23-sp0001395-g-c', '1370000.00', '01JMNMQTGX4GQD2C0H8WQYGAX7.png', 210, '2025-02-22 01:35:50', '2025-02-22 01:35:50', 0, 1, '<p>Giới thiệu</p><p>Rượu Whisky Singleton 12Yo Dufftown là một sản phẩm nổi bật trong dòng whisky single malt của Scotland, đặc biệt đến từ vùng Dufftown, nơi được biết đến như là “thủ đô whisky” của Scotland. Với tuổi thọ 12 năm, Singleton 12Yo mang đến cho người thưởng thức trải nghiệm đậm đà, phong phú, thể hiện bản sắc văn hóa và truyền thống lâu đời của ngành công nghiệp sản xuất whisky Scotland. Chai rượu này không chỉ là sự kết hợp hoàn hảo của các thành phần tự nhiên mà còn là kết quả của quy trình sản xuất tỉ mỉ, đảm bảo mỗi ngụm rượu đều mang lại sự hài lòng tối đa cho người thưởng thức.</p><h3>Đặc điểm</h3><p>Rượu Whisky Singleton 12Yo sở hữu màu vàng rơm tự nhiên, phản ánh quá trình trưởng thành trong thùng gỗ sồi. Hương thơm đầu tiên mà người thưởng thức cảm nhận được là sự kết hợp giữa trái cây tươi mát như táo và lê, hòa quyện cùng với hương vani ngọt ngào. Khi tiếp tục thưởng thức, người dùng sẽ cảm nhận được những gợi ý của caramel, mật ong và một chút gia vị nhẹ, mang đến sự phong phú và chiều sâu cho mỗi ngụm rượu.</p><p>Khi nếm thử, rượu cho cảm giác mượt mà, êm dịu với cấu trúc cân bằng. Hương vị trái cây tiếp tục hiện lên, bổ sung thêm những nốt hương hạnh nhân và hạt dẻ, tạo ra một trải nghiệm độc đáo và hấp dẫn. Kết thúc của Singleton 12Yo là sự ấm áp kéo dài, với một chút vị ngọt nhẹ và gia vị, để lại ấn tượng sâu sắc trong lòng người thưởng thức.</p><h3>Phương thức sản xuất</h3><p>Quá trình sản xuất Singleton 12Yo bắt đầu từ việc chọn lựa nguyên liệu đầu vào chất lượng cao. Lúa mạch được chọn lọc kỹ càng, kết hợp với nước tinh khiết từ nguồn suối tự nhiên, đảm bảo rằng tất cả các thành phần đều đạt tiêu chuẩn cao nhất. Sau đó, lúa mạch được nghiền và trộn với nước nóng để tạo ra dịch chiết, quá trình này diễn ra trong các thùng lớn để tạo ra phần rượu ngâm.</p><p>Tiếp theo, dịch chiết này được lên men trong các thùng lên men bằng gỗ, nơi mà men sẽ chuyển hóa đường thành rượu. Sau khoảng thời gian từ 48 đến 72 giờ, quá trình lên men hoàn tất và sản phẩm thu được sẽ được chưng cất trong các nồi chưng cất đồng để tách ra rượu tinh khiết.</p><p>Rượu sau khi chưng cất sẽ được đưa vào các thùng gỗ sồi để trưởng thành. Thùng gỗ sồi thường được sử dụng là những thùng đã qua sử dụng, tạo ra các hương vị phức hợp từ những lần chưng cất trước đó. Singleton 12Yo được ủ trong khoảng 12 năm, cho phép rượu hấp thụ những đặc tính tốt nhất từ gỗ, mang lại hương vị và màu sắc đặc trưng.</p><p>Sau khi đủ thời gian ủ, rượu sẽ được kiểm tra và pha trộn để đảm bảo sự nhất quán về hương vị. Cuối cùng, rượu được đóng chai với nồng độ 40% ABV, sẵn sàng đến tay người tiêu dùng.</p><h3>Kết luận</h3><p>Rượu Whisky Singleton 12Yo Dufftown không chỉ là một lựa chọn tuyệt vời cho những ai yêu thích whisky mà còn là một món quà tinh tế cho những dịp đặc biệt. Với hương vị phong phú, quy trình sản xuất tỉ mỉ và lịch sử lâu đời, Singleton 12Yo chắc chắn sẽ làm hài lòng cả những người sành rượu lẫn những người mới bắt đầu khám phá thế giới whisky. Hãy thử một lần và để cho hương vị của nó đưa bạn vào một hành trình khám phá đầy thú vị.&nbsp;</p>'),
(630, 'Rượu Vang Mỹ Carlo Rossi California White', 'ruou-vang-my-carlo-rossi-california-white', '288000.00', '01JMNMV9AVX4VT6C994QBPG11H.png', 206, '2025-02-22 01:37:43', '2025-02-22 01:37:43', 0, 1, '<p>&nbsp;</p><p>Vang trắng Mỹ đã từ lâu trở thành đề tài mà nhiều khách hàng hướng đến bình phẩm. Có biết bao những sản phẩm rượu vang trắng khác nhau ra đời từ nhà làm rượu Carlo Rossi nước Mỹ được khách hàng đánh giá khá cao trên thị trường hiện nay. Và sản phẩm Rượu Vang Carlo Rossi California White sẽ là một gợi ý tuyệt vời cho khách hàng lựa chọn thưởng thức dành cho những bữa tiệc.</p><h2><strong>Thông Tin Chi Tiết Rượu Vang Carlo Rossi California White</strong></h2><p>► <strong>Xuất xứ:</strong> <a href=\"https://winevn.com/ruou-vang-my\"><strong style=\"text-decoration: underline;\">Mỹ</strong></a></p><p>► <strong>Vùng làm vang:</strong> <a href=\"https://winevn.com/vung-lam-vang/california\"><strong style=\"text-decoration: underline;\">California</strong></a></p><p>► <strong>Hãng sản xuất:</strong> Carlo Rossi</p><p>► <strong>Loại vang: </strong><a href=\"https://winevn.com/ruou-vang-trang\"><strong style=\"text-decoration: underline;\">Rượu vang Trắng</strong></a></p><p>► <strong>Giống nho:</strong> <a href=\"https://winevn.com/giong-nho/chardonnay\"><strong style=\"text-decoration: underline;\">Chardonnay</strong></a></p><p>► <strong>Nồng độ: </strong>10.5 %</p><p>► <strong>Dung tích: </strong>750 ml</p><h2><strong>Hương Vị – Mùi Vị Của Rượu Vang Carlo Rossi California White</strong></h2><p>Rượu vang Trắng nước Mỹ có những đóng góp rất quan trọng làm nên sự phong phú của hệ thống rượu vang thế giới. Dường như những sản phẩm rượu vang ra đời từ quốc gia này có được những đánh giá nhất định trên thị trường. Khi đến với chai rượu vang này chúng ta có thể cảm nhận được điều đó. Được làm nên hoàn toàn từ những trái nho trắng đó là nho Chardonnay, sản phẩm rượu vang ra đời là sự ghi chú đầy đủ từ hương vị của những trái nho. Ngoài ra khi thưởng thức vang còn lần lượt là những rung động đến từ hương vị của táo xanh, chanh dây, dứa, bưởi, xoài, cam hay quýt. Mang bao yêu thương trọn vẹn đến với khách hàng, chai rượu vang này sẽ để lại kết thúc lâu dài sâu sắc trong lòng khách hàng dùng vang trên thế giới. 10.5% làm nên sự cân bằng trong cấu trúc của rượu vang cũng như sự mượt mà phong phú trong lượng tanin mượt mà trong dư vị của rượu vang. Để cho sản phẩm rượu vang được ngon hơn thì việc dùng vang như thế nào cho đúng cách cũng rất cần thiết. Một số món ăn cơ bản có thể lựa chọn dùng kèm với chai rượu vang này đó là thịt trắng, hải sản, các món ăn khai vị nhẹ nhàng hay những món ăn như cá, tôm, cua biển hấp hay các món khai vị nhẹ nhàng sẽ rất tuyệt vời cho khách hàng lựa chọn dùng kèm cùng với sản phẩm rượu vang.&nbsp;</p>'),
(631, 'Vang hồng Chile VALDIVIESO ROSE', 'vang-hong-chile-valdivieso-rose', '310000.00', '01JMNMY7FCZPTWX5R7WJZJY90E.png', 207, '2025-02-22 01:39:20', '2025-02-22 01:39:20', 0, 1, '<p>&nbsp;</p><h1><strong>Vang hồng Chile VALDIVIESO ROSE</strong></h1><p><em>(Mã sản phẩm: HM-CL23)</em></p><p><em>V_VA_26</em></p><p>&nbsp;</p><h2><strong>Wine Tasting</strong></h2><p>NHÀ VANG: Valdivieso</p><p>VÙNG: Central Valley - Chile&nbsp;</p><p>NỒNG ĐỘ: &nbsp; 13%</p><p>GIỐNG NHO: Cabernet Sauvignon&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>LOẠI: Vang hồng</p><p>&nbsp;</p><p><strong>THỬ NẾM</strong></p><p>Màu sắc: màu hồng nhạt và tươi sáng.</p><p>Hương thơm: trái cây đỏ tươi như dâu tây, quả mâm xôi và quả lý chua lan tỏa trong không gian, tạo nên một bầu không khí tươi mới và đầy quyến rũ. Hương thơm của rượu vang này cũng có thể có sự gợi nhắc của các loại hoa như hoa hồng hoặc hoa tươi, tạo thêm sự phức tạp và sự nữ tính</p><p>Hương vị: kết hợp hoàn hảo giữa hương vị tươi mát và cấu trúc cân bằng. Với độ chua nhẹ và hương trái cây tươi ngon, rượu vang này mang lại cảm giác sảng khoái và thích thú trên đầu lưỡi.</p><p><strong>KẾT CẤU</strong></p><p>Kết cấu của rượu này rất vững chắc, với cấu trúc cân đối và mịn màng. Sự cân bằng giữa chua và ngọt, cùng với độ axit vừa phải, tạo nên một cảm giác cân đối và dễ uống.</p><p>Valdivieso Classic Rosé là một lựa chọn tuyệt vời để kết hợp với các món ăn nhẹ nhàng và thanh mát. Nó điểm thêm cho các món hải sản như tôm, cá sống và salad hải sản. Ngoài ra, rượu vang này cũng kết hợp tốt với các món salad trái cây, phô mai nhẹ, và món ăn Á-Âu như sushi và mì xào. Sự tươi mát và đa dạng hương vị của Valdivieso Classic Rosé làm cho nó trở thành một sự lựa chọn thú vị cho các dịp gặp gỡ bạn bè, cuộc họp mặt hoặc buổi tối thưởng thức nhẹ nhàng.</p><p>&nbsp;</p><p><strong><em>Quý Khách xin lưu ý</em></strong>:</p><p><strong>- Rượu bia không dành cho người dưới 18 tuổi và phụ nữ có thai.<br>- Không lái xe khi đã sử dụng rượu bia.</strong>&nbsp;</p>'),
(632, 'Vang Freixenet Italian Rosé Sparkling Wine', 'vang-freixenet-italian-rose-sparkling-wine', '650000.00', '01JMNN0HC9JS25X87YB2CKREVE.png', 208, '2025-02-22 01:40:35', '2025-02-22 01:40:35', 0, 1, '<p>&nbsp;</p><p><em>Rượu vang Freixenet Italian Rosé Sparkling Wine là một loại rượu vang hồng cao cấp của Ý&nbsp; được làm theo phong cách vang sparkling cực kì tươi mát từ nhà sản xuất rượu vang nổ hàng đầu thế giới Freixenet trụ sở tại Barcelona, Tây Ban Nha. Một trong những loại vang nổ đang ngày càng được ưa thích mặc dù thương hiệu mới chỉ xuất hiện trong một vài năm nay trên thế giới.</em><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:378,&quot;url&quot;:&quot;https://thinhvang.com/wp-content/uploads/2021/04/Vang-Freixenet-Italian-Rose%CC%81-Sparkling-Wine-Extra-Dry.jpg&quot;,&quot;width&quot;:378}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://thinhvang.com/wp-content/uploads/2021/04/Vang-Freixenet-Italian-Rose%CC%81-Sparkling-Wine-Extra-Dry.jpg\" width=\"378\" height=\"378\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Được đóng trong chai thủy tinh với những đường cắt nổi bật, Freixenet Italian Rosé pha trộn giữa chất lượng cao cấp với vẻ đẹp lộng lẫy. Sử dụng chuyên môn sâu rộng về sản xuất rượu vang sủi bọt của mình, nhà sản xuất danh tiếng Freixenet đã tạo ra một dòng rượu vang Rosé thành công tuyệt vời. Một màu hồng nổi bật hoàn hảo để làm cho bất kỳ dịp lễ nào trở nên đặc biệt hơn.</p><p>Freixenet là một doanh nghiệp thuộc sở hữu của gia đình với hơn 150 năm sản xuất rượu vang ở vùng Catalonia phía tây Barcelona. Freixenet nổi tiếng về chất lượng và tính nhất quán của rượu vang sủi bọt. Với sứ mệnh rõ ràng là giúp mọi người ăn mừng nhiều hơn, công ty tạo ra sự hấp dẫn chất lượng với phong cách riêng trong từng chai.</p><h2>Chi tiết về rượu vang nổ Freixenet Italian Rosé Sparkling Wine</h2><ul><li><strong>Xuất Xứ:</strong> Ý</li><li><strong>Thương hiệu:</strong> Freixenet</li><li><strong>Vùng sản xuất: </strong>Prosecco DOC, Veneto</li><li><strong>Loại Vang: </strong>Rượu Vang nổ</li><li><strong>Giống Nho: </strong>Glera và Pinot Noir</li><li><strong>Nồng Độ: </strong>11%</li><li><strong>Dung Tích:</strong> 750 ml</li><li><strong>Màu Sắc:</strong> Màu hồng phớt tươi tắn</li><li><strong>Nhiệt Độ Phục Vụ: </strong>Vang sẽ ngon nhất khi uống ở nhiệt độ từ 8-10 độ</li><li><strong>Quy Cách:</strong> thùng 6 chai</li></ul><h3>Mô tả hương vị rượu vang Freixenet Italian Rosé Sparkling Wine<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:285,&quot;url&quot;:&quot;https://thinhvang.com/wp-content/uploads/2021/04/Vang-Y%CC%81-Freixenet-Italian-Rose%CC%81-Sparkling-Wine-Extra-Dry.jpg&quot;,&quot;width&quot;:239}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://thinhvang.com/wp-content/uploads/2021/04/Vang-Y%CC%81-Freixenet-Italian-Rose%CC%81-Sparkling-Wine-Extra-Dry.jpg\" width=\"239\" height=\"285\"><figcaption class=\"attachment__caption\"></figcaption></figure></h3><p>Rượu vang Freixenet Italian Rosé Sparkling Wine là sự pha trộn tinh tế giữa nho Glera và Pinot Noir, được lựa chọn cẩn thận từ những vườn nho ngon nhất của Ý. Đây là một loại rượu vang nhẹ với những bọt sủi sang trọng, đẹp mắt cùng hương thơm đậm đà của các loại quả mọng đỏ và mùi cơ bản của hoa trắng và táo, lê, ổi. Một điểm nhấn của vang này là chiếc chai lung linh tuyệt đẹp sẽ trở thành tâm điểm tuyệt vời trong bất kỳ lễ kỷ niệm nào, hoặc để gây ấn tượng với gia đình và bạn bè trong một bữa ăn tối. Sự tươi mát và tinh tế của rượu vang biến nó trở thành đồ uống hoàn hảo với các món sò, hàu, các món tráng miệng hoặc sử dụng như một món khai vị cầu kỳ. Ướp lạnh ở nhiệt độ 6-8 độ C trước khi dùng.</p><h2>Quy trình sản xuất vang Freixenet Italian Rosé Sparkling Wine</h2><p>Các trái nho Glera và Pinot Noir được thu hoạch trong lúc mặt trời mọc để giữ cho trái cây nguyên vị tươi mát, sau khi đưa về hầm rượuc chúng được ép nhẹ để giữ được hương vị trái cây và màu hồng tinh tế. Sau đó nước ép nho được lên men ở nhiệt độ thấp để tạo ra hương thơm nồng nàn nhất. Quá trình lên men thứ hai diễn ra trong các thùng thép không gỉ được điều áp ở nhiệt độ được kiểm soát<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:292,&quot;url&quot;:&quot;https://thinhvang.com/wp-content/uploads/2021/04/Vang-Freixente-Sparkling-Rose%CC%81.jpeg&quot;,&quot;width&quot;:292}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://thinhvang.com/wp-content/uploads/2021/04/Vang-Freixente-Sparkling-Rose%CC%81.jpeg\" width=\"292\" height=\"292\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Loại rượu này rất lý tưởng để uống ngay bây giờ nhưng có thể giữ được đến 2-3 năm. Bảo quản vang ở nơi khô mát và tránh ánh sáng mặt trời trực tiếp. Để chai vang theo chiều dọc hoặc chiều ngang, ở nơi tối và mát mẻ.</p><h2>Đánh giá trên Vivino</h2><ul><li>Đáng yêu và sảng khoái, hương vị quả mâm xôi và táo, ga không quá nhiều, rất dễ uống, hoàn hảo vào buổi sáng, buổi chiều, buổi tối, bất cứ lúc nào.<br><strong>Colt Stallion</strong> (287 xếp hạng)</li><li>Hương vị đào, màu nhạt, khô, khá đẹp mắt.<br><strong>Adrian Wise</strong> (280 đánh giá)</li><li>Một chai Prosecco rất tốt. Mềm mại. Hương vị kem đào, táo ngọt và quả mâm xôi.<br><strong>Jonathan Attenborough</strong> (503 đánh giá)<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:341,&quot;url&quot;:&quot;https://thinhvang.com/wp-content/uploads/2021/04/Vang-Freixenet-Rose%CC%81-Sparkling-Wine-Extra-Dry.jpg&quot;,&quot;width&quot;:341}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://thinhvang.com/wp-content/uploads/2021/04/Vang-Freixenet-Rose%CC%81-Sparkling-Wine-Extra-Dry.jpg\" width=\"341\" height=\"341\"><figcaption class=\"attachment__caption\"></figcaption></figure></li></ul><p>&nbsp;</p>'),
(633, 'Rượu Champagne Moet & Chandon Imperial Brut', 'ruou-champagne-moet-chandon-imperial-brut', '1450000.00', '01JMNN245PQ6BA2DPE1MYDF2QK.png', 209, '2025-02-22 01:41:27', '2025-02-22 01:41:27', 0, 1, '<p>&nbsp;</p><p><a href=\"https://winevn.com/ruou-champagne-moet-chandon-imperial\"><strong style=\"text-decoration: underline;\">Rượu Champagne Moet &amp; Chandon Imperial</strong></a> là chai sâm panh nổi tiếng và được ưa chuộng nhất trên thế giới của nhà Moët &amp; Chandon đến từ Pháp. Champagne mang đến một hương vị cân bằng hoàn hảo giữa sự tươi mát của trái cây, hoa và mùi bánh mì nướng.</p><h2>Thông tin rượu Champagne Moet &amp; Chandon Imperial Brut</h2><p><strong>Xuất xứ</strong> | <a href=\"https://winevn.com/ruou-vang-phap\"><strong style=\"text-decoration: underline;\">Rượu vang Pháp</strong></a><br><strong>Thương hiệu</strong> | Moet &amp; Chandon<br><strong>Loại rượu</strong> | <a href=\"https://winevn.com/ruou-champagne\"><strong style=\"text-decoration: underline;\">Rượu Champagne</strong></a> – <a href=\"https://winevn.com/ruou-vang-trang\"><strong style=\"text-decoration: underline;\">Vang Trắng</strong></a><br><strong>Giống nho</strong> | Chardonnay, Pinot Noir, Pinot Meunier<br><strong>Nồng độ</strong> | 12 %<br><strong>Dung tích</strong> | 750 ml<br><strong>Quy cách </strong>&nbsp;| 6 chai/thùng<br><strong>Màu sắc</strong> | Vàng nhạt<br><strong>Nhiệt độ phục vụ</strong> | 6-10 độ C</p><h2>Hương vị Champagne Moet &amp; Chandon Imperial</h2><p>Rượu Champagne Moet &amp; Chandon Imperial được sản xuất từ các giống nho thượng hạng <a href=\"https://winevn.com/giong-nho/pinot-meunier\"><strong style=\"text-decoration: underline;\">Pinot Meunier</strong></a>, <a href=\"https://winevn.com/giong-nho/pinot-noir\"><strong style=\"text-decoration: underline;\">Pinnot Noir</strong></a> và <a href=\"https://winevn.com/giong-nho/chardonnay\"><strong style=\"text-decoration: underline;\">Chardonnay</strong></a> của vùng Champagne nước Pháp. Nhà sản xuất đã phối trộn theo tỷ lệ riêng để tạo nên hương vị tuyệt hảo của loại <a href=\"https://winevn.com/ruou-vang-trang\"><strong style=\"text-decoration: underline;\">vang trắng</strong></a> sủi bọt này.</p><p>Rượu Moët Chandon Rosé Impérial có màu sắc vàng nhạt tinh tế làm say lòng người cùng chất vang mềm mại. Khi rót ra ly, bạn sẽ thấy rõ dải bọt sinh động, lạ mắt quanh thành ly khiến khách hàng không thể rời mắt. Nồng độ rượu chỉ 12% đem lại cấu trúc rượu ổn định, độ cân bằng cao cùng dư vị đọng lại lâu trong khoang miệng.<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:800,&quot;url&quot;:&quot;https://winevn.com/wp-content/uploads/2020/08/R%C6%B0%E1%BB%A3u-Champagne-Moet-Chandon-Imperial-1.jpg&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://winevn.com/wp-content/uploads/2020/08/R%C6%B0%E1%BB%A3u-Champagne-Moet-Chandon-Imperial-1.jpg\" width=\"800\" height=\"800\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Rượu Champagne Moet &amp; Chandon Imperial là lựa chọn với hậu vị vô cùng ấn tượng</p><p>Moet Chandon Imperial Brut chinh phục thực khách bằng hương vị cân bằng tinh tế, kết hợp hài hòa giữa sự tươi mát của trái cây như táo xanh, cam quýt, sự phức hợp của hương hoa và một chút vị bánh mì nướng. Sự kết hợp độc đáo này mang đến một trải nghiệm vị giác khó quên, vừa tinh tế vừa đầy cuốn hút.</p><p>Không chỉ vậy, Moët &amp; Chandon Impérial Brut Champagne còn nổi bật với phong cách trẻ trung, sôi động và tràn đầy năng lượng, khiến nó trở thành lựa chọn hoàn hảo cho những ai yêu thích sự tươi mới và dễ uống. Đây là một loại rượu sâm panh linh hoạt, phù hợp với nhiều khẩu vị và hoàn hảo cho những dịp đặc biệt.</p><h2>Giá rượu Champagne Moet &amp; Chandon Imperial Brut</h2><p><strong>Tên sản phẩm</strong> | Rượu Champagne Moet &amp; Chandon Imperial 75cl<br><strong>Giá niêm yết</strong> | 1.750.000 đ<br><strong>Giá ưu đãi</strong> | Liên hệ<br><strong>Giá theo thùng</strong> | 1.450.000 đ/c<br><strong>Giá sỉ</strong> | Liên hệ</p><p>Chai rượu Champagne Moet &amp; Chandon Imperial đang được bán trên thị trường với mức giá là 1.450.000 VNĐ / chai 750ml (75cl). Với giá bán này đã kèm theo hộp túi quà sang trọng kèm theo. Mức giá của rượu khá mềm nếu so sánh với chất lượng và độ ngon mà sản phẩm đem lại cho khách hàng.<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:800,&quot;url&quot;:&quot;https://winevn.com/wp-content/uploads/2020/08/03-moet-chandon-imperial.jpg&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://winevn.com/wp-content/uploads/2020/08/03-moet-chandon-imperial.jpg\" width=\"800\" height=\"800\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><h2>Cách thưởng thức rượu Champagne Moet &amp; Chandon Imperial</h2><p>Chai Champagne Moet &amp; Chandon Imperial nên được thưởng thức trong ly chuyên dụng cho các loại sâm banh với dáng flute, tulip hoặc coupes. Sử dụng đúng loại ly giúp bạn cảm nhận trọn vẹn hương vị của rượu ngay sau khi bật nắp.</p><p>Chai rượu này là lựa chọn hoàn hảo để kết hợp với nhiều món ăn đa dạng như ức gà nướng, vịt áp chảo, khoai tây chiên gừng,… Bên cạnh đó, bạn nên ướp lạnh rượu trước khi uống để thưởng thức Champagne Moet &amp; Chandon Imperial trong điều kiện nhiệt độ lý tưởng từ 6 – 10 độ C.<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:796,&quot;url&quot;:&quot;https://winevn.com/wp-content/uploads/2020/08/02-moet-chandon-imperial-brut.jpg&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://winevn.com/wp-content/uploads/2020/08/02-moet-chandon-imperial-brut.jpg\" width=\"800\" height=\"796\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><h2>Địa chỉ mua Champagne Moet &amp; Chandon Imperial</h2><p><a href=\"https://winevn.com/\"><strong style=\"text-decoration: underline;\">Wine VN</strong></a> tự hào là địa chỉ phân phối các loại <a href=\"https://winevn.com/ruou-vang\"><strong style=\"text-decoration: underline;\">rượu vang</strong></a> nhập khẩu chính hãng từ những thương hiệu hàng đầu trên thế giới. Bên cạnh rượu vang Champagne Moet &amp; Chandon Imperial, bạn còn vô số lựa chọn tuyệt vời khác khi đến với cửa hàng Wine VN.</p><p>Chai<strong> rượu Champagne Moet &amp; Chandon Imperial</strong> nổi tiếng với ngoại hình đẹp, chi tiết đơn giản nhưng không kém phần sang trọng. Hương vị của rượu đầy đặn, cuốn hút chiếm giữ trái tim của khách hàng ngay trong lần trải nghiệm đầu tiên. Chai rượu có nồng độ nhẹ chỉ 12% là lựa chọn tuyệt vời để kết hợp với các món khai vị trong bữa tiệc.<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:603,&quot;url&quot;:&quot;https://winevn.com/wp-content/uploads/2019/06/winevn-dia-chi-mua-ruou-vang.webp&quot;,&quot;width&quot;:1600}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://winevn.com/wp-content/uploads/2019/06/winevn-dia-chi-mua-ruou-vang.webp\" width=\"1600\" height=\"603\"><figcaption class=\"attachment__caption\"></figcaption></figure>&nbsp;</p>'),
(634, 'BALLANTINE’S 12 NĂM (700ML/40%)', 'ballantines-12-nam-700ml40', '600000.00', '01JMNN5034F18HAE7XAEMYMB1J.png', 211, '2025-02-22 01:43:01', '2025-02-22 01:43:01', 0, 1, '<p>&nbsp;Rượu Ballantines 12 năm 1 lít có mầu nước vàng sáng , hương vị tinh tế và tao nhã của Mật ong , Socola , Táo đỏ và Vanilia. Đây được coi như là dòng rượu đáp ứng được nhu cầu của những ai có phong cách sống trẻ trung và hiện đại&nbsp;</p>'),
(635, 'Rượu Whisky Single Malt Scotland Aberlour A’Bunadh 74 Smsw 700Ml SP0001544-S-C', 'ruou-whisky-single-malt-scotland-aberlour-abunadh-74-smsw-700ml-sp0001544-s-c', '2950000.00', '01JMNN6JEYQF5J77HX247G6TCM.png', 212, '2025-02-22 01:43:53', '2025-02-22 01:43:53', 0, 1, '<p>&nbsp;</p><h3>Giới thiệu</h3><p>Rượu Whisky Single Malt Scotland Aberlour A’Bunadh 700ml là một sản phẩm đặc biệt đến từ nhà máy chưng cất Aberlour, nằm trong vùng Speyside, Scotland. Ra đời vào năm 1826, Aberlour đã nhanh chóng khẳng định được vị thế của mình trong thế giới whisky với những sản phẩm chất lượng cao và hương vị độc đáo. A’Bunadh, trong tiếng Gaelic có nghĩa là “từ nguồn gốc”, là một trong những dòng whisky nổi bật nhất của Aberlour, mang đến cho người thưởng thức một trải nghiệm sâu sắc và tinh tế. Đặc biệt, A’Bunadh được sản xuất theo phương pháp không pha loãng, giữ nguyên nồng độ cồn và hương vị tự nhiên, làm cho nó trở thành một lựa chọn hoàn hảo cho những tín đồ yêu thích whisky.</p><h3>Đặc điểm</h3><p>Aberlour A’Bunadh nổi bật với màu sắc hổ phách đậm, thể hiện rõ nét sự giàu có và phong phú của rượu. Khi mở nắp chai, bạn sẽ ngay lập tức cảm nhận được hương thơm nồng nàn của trái cây khô, nho và những nốt hương của gia vị ấm áp như quế và tiêu đen. Hương thơm này không chỉ đơn thuần mà còn mang đến chiều sâu với những nốt gỗ sồi nhẹ nhàng và hương vanilla ngọt ngào.</p><p>Khi đưa rượu vào miệng, bạn sẽ trải nghiệm được độ mượt mà và êm ái của whisky. Hương vị của A’Bunadh rất phong phú, với sự kết hợp tuyệt vời giữa vị ngọt của caramel và hương trái cây chín, cùng với một chút hương khói nhẹ nhàng. Hậu vị dài và ấm áp, để lại một cảm giác dễ chịu, khiến bạn không thể cưỡng lại việc muốn thưởng thức thêm. Sự cân bằng hoàn hảo giữa các hương vị và độ mạnh mẽ của nồng độ cồn 60% đã tạo nên một trải nghiệm whisky vô cùng đáng nhớ.</p><h3>Phương thức sản xuất</h3><p>Quy trình sản xuất Aberlour A’Bunadh bắt đầu từ việc lựa chọn nguyên liệu chất lượng cao. Nhà máy sử dụng lúa mạch chọn lọc để sản xuất whisky single malt. Sau khi thu hoạch, lúa mạch sẽ được nghiền và hòa trộn với nước để tạo ra dịch đường, sau đó trải qua quá trình lên men tự nhiên với men.</p><p>Sau khi quá trình lên men hoàn tất, rượu sẽ được chưng cất trong các thùng đồng truyền thống. Chưng cất được thực hiện hai lần để đảm bảo tách biệt các tạp chất và giữ lại hương vị tinh khiết. Sau khi chưng cất, rượu sẽ được ủ trong các thùng gỗ sồi, nơi nó sẽ phát triển hương vị và màu sắc trong một khoảng thời gian dài.</p><p>Một trong những điểm đặc biệt của Aberlour A’Bunadh là quá trình ủ rượu. Whisky này được ủ trong các thùng đã từng chứa rượu sherry, điều này không chỉ giúp tạo ra hương vị phong phú mà còn mang lại màu sắc đặc trưng cho rượu. Sau khi ủ, whisky sẽ được đóng chai mà không pha loãng, giữ nguyên nồng độ cồn cao, mang đến sự mạnh mẽ và đậm đà cho người thưởng thức.</p><p>Nghệ thuật pha trộn cũng đóng vai trò quan trọng trong sản xuất A’Bunadh. Mỗi lô whisky sẽ được kiểm tra cẩn thận để đảm bảo rằng hương vị và chất lượng đạt tiêu chuẩn cao nhất. Các bậc thầy pha chế tại Aberlour sẽ lựa chọn các thùng whisky có hương vị tương đồng để tạo ra sự hòa quyện hoàn hảo, làm nổi bật các đặc điểm của A’Bunadh.</p><h3>Kết luận</h3><p>Rượu Whisky Single Malt Scotland Aberlour A’Bunadh 700ml không chỉ là một loại đồ uống, mà còn là một tác phẩm nghệ thuật thể hiện sự tinh tế và đam mê trong sản xuất whisky. Với hương vị phong phú, màu sắc rực rỡ và quy trình sản xuất tỉ mỉ, A’Bunadh chắc chắn sẽ mang đến cho bạn những trải nghiệm tuyệt vời và khó quên. Đây là lựa chọn hoàn hảo cho những ai yêu thích sự mạnh mẽ và đậm đà trong từng giọt whisky, và là món quà ý nghĩa cho những dịp đặc biệt.&nbsp;</p>'),
(636, 'Rượu Brandy ST-Remy XO 700ml', 'ruou-brandy-st-remy-xo-700ml', '659000.00', '01JMNN8H9D9SQ0GW04B1W6HX2Y.png', 213, '2025-02-22 01:44:57', '2025-02-22 01:44:57', 0, 1, '<p>&nbsp;Đạt nhiều giải thưởng lớn trên toàn cầu, St-Rémy XO là dòng brandy mang hương vị phong phú và phức tạp cùng hương thơm quyến rũ đậm chất Pháp đặc trưng của nhà St-Rémy. Màu hổ phách sáng, ánh đỏ đậm tinh tế<br>Mô tả hương vị:<br>- Hương thơm: Tầng hương tinh tế chứa đựng vị gỗ sồi và vanilla xếp chồng lên những nốt hương trái cây chín và mật ong ngọt ngào.<br>- Hương vị: Mãnh liệt và nồng nàn. Những nốt hương gỗ hòa cùng vị vanilla tinh tế được đẩy lên cao trào bằng hương vị của bánh gừng, kẹo mơ, chà là, sung và các loại hạt tạo ra dư vị kéo dài, lan tỏa trong vòm họng.&nbsp;</p>'),
(637, 'Rượu Vodka Absolut Original', 'ruou-vodka-absolut-original', '350000.00', '01JMNNA8ADT0E59FEPNWZ3G8N6.png', 214, '2025-02-22 01:45:54', '2025-02-22 01:45:54', 0, 1, '<p>&nbsp;</p><p><strong>Rượu vodka Absolut Original</strong> là dòng rượu vodka Absolut của Thụy Điển và ngày nay thuộc sở hữu của Pernod Ricard Pháp (Tập đoàn này mua lại Absolut vào năm 2008) là dòng rượu mạnh đứng thứ 3 thế giới sau Bacardi và Smirnoff, được bán ra trên 126 quốc gia.</p><p><strong>Rượu vodka Absolut</strong> được thành lập năm 1879 bởi Lars Olsson Smith, tại Åhus, ở phía Nam Thụy Điển.</p><p>Điểm làm nên chất lượng của <strong>rượu vokda Absolut Original</strong> là rượu lên men hoàn toàn từ các thành phần tự nhiên không thêm thêm bất cứ các loại đường nào (thêm đường vào quá trình lên men để tăng độ rượu). Nước dùng để sản xuất được lấy từ các giếng sâu ở Åhus (đảm bảo ít lẫn các tạp chất) và lúa mì vụ đông (chất lượng tốt nhất để làm rượu). Trong canh tác, các loại phân bón được giảm thiểu đến mức tối đa.&nbsp;</p>'),
(638, 'Saigon Special Beer 330ml', 'saigon-special-beer-330ml', '50000.00', '01JMNNC78Y54FWYZNF78VP3JGV.png', 219, '2025-02-22 01:46:58', '2025-02-22 01:46:58', 0, 1, '<p>&nbsp;</p><h3>SAIGON SPECIAL BEER 330ML</h3><p>Produced in Vietnam from water, barley malt, cereals and hops, genuine Saigon beer brand. 24 cans of Saigon Special 330ml beer has a rich, delicious taste, with a grainy aroma easy willing to help you sublimate, more refreshing in the fun with family and friends.</p><p><strong>Brand:</strong> Sai Gon (Viet Nam)</p><p><strong>Weight: </strong>330ml</p><p><strong>Packing: </strong>24 cans/carton</p><p><strong>Alcohol: </strong>4.9%</p><p><strong>Shelf Life: </strong>12 months</p><p><strong>Storage:</strong> Store in a cool, dry place, away from direct sunlight or high temperature. Do not keep frozen beer in the freezer compartment of the refrigerator.</p><p><strong>Note:</strong> Not for use by pregnant and lactating women, people under 18 years old .</p>'),
(639, 'Thuốc Lá 555 State Express Signature - Thuốc Lá Chính Hãng', 'thuoc-la-555-state-express-signature-thuoc-la-chinh-hang', '45000.00', '01JMNNGRTJRDRRR99PK0S31WQ5.png', 224, '2025-02-22 01:49:27', '2025-02-22 01:49:27', 0, 1, '<p>&nbsp;</p><p><strong>Thông tin chi tiết Thuốc Lá 555 State Express Signature - Thuốc Lá Chính Hãng:&nbsp;</strong></p><ul><li><strong>Tên thuốc lá:</strong> 555 State Express Signature / 555 State Express / Ba số 5 dài / 555 Signature / Ba số xanh dài / 555 dài</li><li><strong>Thương hiệu:</strong> No 555</li><li><strong>Nguồn gốc:</strong> Anh</li><li><strong>Xuất xứ:</strong> Việt Nam</li><li><strong>Nhà máy:</strong> Công ty TNHH Liên Doanh VINA BAT</li><li><strong>Kích thước hộp: </strong>95 x 55 x 20 (mm)</li><li><strong>Kích thước điếu:</strong> Cigarette size slim (nhỏ, cao)</li><li><strong>Chiều dài:</strong> 3 3/4 inch (95 mm)</li><li><strong>Vòng ring:</strong> 18</li><li><strong>Hương vị:</strong> Mùi thơm từ lá thuốc mang đến hương vị tự nhiên của mộc mạnh mẽ nhưng đầm khi hút</li><li><strong>Viên bấm:</strong> N/A</li><li><strong>Độ nặng: </strong>Trung bình nhẹ - 2/5</li><li><strong>Nicotine:</strong> 1 mg</li><li><strong>Đóng gói:</strong> Hộp giấy 20 điếu</li><li><strong>Thời gian hút:</strong> 5 - 10 Phút</li><li><strong>Đánh giá:</strong> 95 Điểm bởi <a href=\"https://xiganghiepdu.com/\">XGND</a> Cigarette: Jan 01, 2024</li></ul><p>Thuốc lá <strong>555 State Express Signature</strong> là một thương hiệu thuốc lá nổi tiếng và được biết đến trên toàn thế giới. Được sản xuất bởi công ty British American Tobacco (BAT), một trong những tập đoàn hàng đầu trong ngành công nghiệp thuốc lá, <strong>555 State Express Signature</strong> nổi tiếng với chất lượng cao. Được ra đời từ nước Anh, <strong>555 State Express</strong> đã tồn tại và phát triển từ những năm 1895.&nbsp;</p>'),
(640, 'VE- Bông lơ trắng - White Cauliflower', 've-bong-lo-trang-white-cauliflower', '21500.00', '01JMNNKYDB9J9MY34N45W2V2D3.png', 226, '2025-02-22 01:51:11', '2025-02-22 01:51:11', 0, 1, '<p>&nbsp;</p><p><strong>Bông lơ trắng</strong></p><p>Bông lơ trắng đã được biết đến từ lâu là mang lại giá trị dinh dưỡng và có lợi cho sức khỏe. Với hàm lượng calo và chất xơ ít (khoảng 25 calo và 2g chất xơ), đây là món ăn tuyệt vời cho người muốn giảm cân. Một số hoạt chất trong cải đã được chứng minh hoạt động rất hiệu quả trên hệ miễn dịch, tăng cường kháng viêm, chống vi trùng và vi khuẩn và điều trị chứng loạn sản cổ tử cung.</p><p>Bông lơ trắng cung cấp một lượng lớn vitamin C giúp chống oxy hóa đã được chứng minh giúp chống lại các gốc tự do có hại, tăng cường khả năng miễn dịch, ngăn ngừa các bệnh nhiễm trùng và ngừa ung thư.</p><p>Bông lơ trắng giúp làm bền các thành mạch máu. Một số vitamin khác giúp kích hoạt hoạt động chống viêm trong mao mạch và ngăn ngừa tổn thương mạch máu...</p><p><strong>White Cauliflower</strong></p><p>Cauliflower has long been known to provide nutritional value and health benefits. With a low calorie and fiber content (about 25 calories and 2g of fiber), this is a great dish for people who want to lose weight. Some active ingredients in cabbage have been shown to work very effectively on the immune system, increasing anti-inflammation, fighting germs and bacteria and treating cervical dysplasia.</p><p>Cauliflower provides large amounts of antioxidant vitamin C, which has been proven to help fight harmful free radicals, boost immunity, prevent infections and prevent cancer.</p><p>Cauliflower helps strengthen blood vessel walls. Some other vitamins help activate anti-inflammatory activity in capillaries and prevent blood vessel damage...&nbsp;</p>'),
(641, 'ME.B- Beef Short Loin Steak Fuji 200g (GREEN PACKAGE) T7', 'meb-beef-short-loin-steak-fuji-200g-green-package-t7', '170000.00', '01JMNNPYBPH7FBCWQP8HTA07QS.png', 226, '2025-02-22 01:52:50', '2025-02-22 01:59:39', 61, 1, '<p>&nbsp;<strong>Thịt Bò FUJI Bít Tết</strong></p><p>Làm bít tết chuẩn vị châu Âu không khó với thịt bò FUJI. Chỉ với 30 phút chế biến, bạn hoàn toàn có thể dành tặng cho bản thân và gia đình một phần bít tết đủ chất dinh dưỡng, đúng vị mong muốn của riêng gia đình bạn trong không gian ấm cúng. Bạn có thể mua kèm gói sốt FUJI chuẩn vị đang được bán tại FujiFoods để dễ dàng chế biến.<br><strong><em>Gợi ý các món ăn</em></strong></p><p>Bít tết salad</p><p>Bít tết sốt vang</p><p>Bít tết bánh mì Pháp</p><p>Các loại Bít tết khác ...</p><p><strong>FUJI Beef Steak</strong><br>Making European-style steak is not difficult with FUJI beef. With only 30 minutes of cooking, you can completely gift yourself and your family a nutritious steak, just the right taste for your family in a cozy space. You can buy the standard FUJI sauce package sold at FujiFoods for easy preparation.<br><strong><em>Suggested dishes</em></strong></p><p>Steak salad</p><p>Steak with wine sauce</p><p>French bread steak</p><p>Other types of Steaks...&nbsp;</p>');

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
('5yzonilWypfSQ88fA01ffJzM3URZuUGdfWhFi8DK', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 OPR/116.0.0.0', 'YTo3OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJiRjFVdE04VUhqamNDN0lCc0VwZlc4R3Q4Rks2T0tuRFVRUlc5cmRyIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo2O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkZXh6dUpNeHh0bGUyT1FXck0yam5ZLnRvQW1DTExSU3VOTVZ5TmlQRWZEWFFGRzJ5RDVzc20iO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1740189687);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `full_name`, `address`, `phone`) VALUES
(6, 'admin@gmail.com', 'admin@gmail.com', NULL, '$2y$12$exzuJMxxtle2OQWrM2jnY.toAmCLLRSuNMVyNiPEfDXQFG2yD5ssm', NULL, '2025-02-22 01:34:10', '2025-02-22 01:34:10', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_history`
--
ALTER TABLE `access_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

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
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_classification_id_foreign` (`classification_id`);

--
-- Indexes for table `classifications`
--
ALTER TABLE `classifications`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `classifications`
--
ALTER TABLE `classifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=642;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_classification_id_foreign` FOREIGN KEY (`classification_id`) REFERENCES `classifications` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
