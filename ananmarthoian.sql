-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2025 at 03:11 PM
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
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1740138041),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1740138041;', 1740138041),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:2;', 1739965289),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1739965289;', 1739965289);

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
(15, 2, '1', '123123123', '2509roblox@gmail.com', 'pending', '2250000.00', 'cod', '2025-02-21 14:42:22', '2025-02-21 14:42:22'),
(16, 2, '1', '123123123', '2509roblox@gmail.com', 'pending', '1125000.00', 'cod', '2025-02-21 14:50:27', '2025-02-21 14:50:27'),
(17, 2, '1', '123123123', '2509roblox@gmail.com', 'pending', '1125000.00', 'cod', '2025-02-21 14:50:30', '2025-02-21 14:50:30'),
(18, 2, '1', '123123123', '2509roblox@gmail.com', 'pending', '1500000.00', 'cod', '2025-02-21 15:11:28', '2025-02-21 15:11:28');

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
(6, 15, 628, 6, '375000.00', '2250000.00', '2025-02-21 14:42:22', '2025-02-21 14:42:22'),
(7, 16, 628, 3, '375000.00', '1125000.00', '2025-02-21 14:50:27', '2025-02-21 14:50:27'),
(8, 17, 628, 3, '375000.00', '1125000.00', '2025-02-21 14:50:30', '2025-02-21 14:50:30'),
(9, 18, 628, 4, '375000.00', '1500000.00', '2025-02-21 15:11:28', '2025-02-21 15:11:28');

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
(628, 'WI- Vang đỏ Markview Cabernet Merlot', 'wi-vang-do-markview-cabernet-merlot1', '375000.00', '01JMM4XZ4QJDXNE4P9WEYMJ4BG.png', 205, '2025-02-21 11:40:20', '2025-02-21 15:11:28', 34, 1, '<blockquote>&nbsp;Nét đặc trưng của Vang đỏ Markview Cabernet Merlot&nbsp;</blockquote><p>Rượu McWilliams Markview Cabernet Merlot là sự pha trộn của hai giống nho đỏ Cabernet Sauvignon và Merlot. Rượu có màu đỏ tím, hương thơm quả anh đào, việt quất và chút vị cam. Hương thơm hòa quyện với nhau, tăng thêm sự tinh tế với nốt hương vani và gỗ sồi</p><p>Nồng độ: 13.5%</p><p>Dung tích: 750ml</p><blockquote>Characteristics of Markview Cabernet Merlot Red Wine</blockquote><p>The characteristic of McWilliams Markview Cabernet Merlot Wine is a blend of two red grape varieties Cabernet Sauvignon and Merlot. The wine has a purple-red color, aromas of cherries, blueberries and a bit of orange. The scent blends together, adding sophistication with notes of vanilla and oak</p><p>ABV: 13.5%</p><p>Capacity: 750ml&nbsp;</p><p>&nbsp;</p>');

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
('C2euKpXljd2aJDhBenthBZc3ph5T4YGmgbt56Q1F', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 OPR/116.0.0.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQU5HQUpFM0FMOGJERFZhcERvYkc0eTI2ZHBNbHA2NGN4Q2JFYVJyRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1740144641),
('cJNdb4bvI9pjz97pRewPkSKBDFkf7j3T62VkTDNb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 OPR/116.0.0.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR2x1UEZmMmtlY3NUVVUxZUZ6OFhNQlpyS05BU3ljOVBmSzVMbGl0aCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1740144871),
('lz4hrMpfOhqJClPhXf11qwNvMPVl5W5dH8voSITB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 OPR/116.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFRsRzRaUURKTnB4NWhvdVRKcUlGM3p1TGdhakdhWmxMZ0JrT3FBMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740144871),
('nUowsA7BAZWhK7lMaORh04PfEEtIRIkd8HvwI83r', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 OPR/116.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUpPTzFDYUpLN2JDVVlubHVqQWQwbmZaSjBqVXMydFg5cDJZUmpzaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740144862),
('u0YLvnskDq1a3U0SwsXnPHv1DkDvmcP03NlxJWRA', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 OPR/116.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiYUJIc25GUEYzdWt5QkJJeFZOWGw0R2JpekRlZ0RZYUpCNGFjMDBzNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90aGFua3lvdS8xOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRoQnR4MlFUTEw4cUlXR1Z0bXNHcHFlYk51ZWtFeWFHVEZEelhEUkRIMmV5YUM3RHMuQzViYSI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1740150691);

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
(2, '2509roblox@gmail.com', '2509roblox@gmail.com', NULL, '$2y$12$hBtx2QTLL8qIWGVtmsGpqebNuekEyaGTFDzXDRDH2eyaC7Ds.C5ba', NULL, '2025-01-31 12:42:13', '2025-02-21 11:11:29', '1', '1', '123123123'),
(3, 'a@a', 'a@a', NULL, '$2y$12$hSyx0uu.jK6FygNpFqY30OBt0I3QqmXZHB1Y0CGvt4e2CivCGba5e', NULL, '2025-02-21 10:35:55', '2025-02-21 10:35:55', 'a@a', 'a@a', 'a@a');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=629;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
