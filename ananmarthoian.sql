-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2025 at 02:25 PM
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
(4, '2025-02-02', 38, '2025-02-02 00:30:54', '2025-02-02 00:52:31'),
(5, '2025-02-19', 30, '2025-02-19 04:11:35', '2025-02-19 11:40:16');

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
(104, 'Hướng dẫn sử dụng  Rainy75', 'huong-dan-su-dung-rainy-75', '<h3>Hướng Dẫn Sử Dụng Bàn Phím <strong>Rainy75</strong></h3><p>Chiếc bàn phím <strong>Rainy75</strong> đang gây sốt trong phân khúc giá 2 triệu đồng nhờ hiệu suất vượt trội và nhiều tính năng tùy chỉnh chuyên sâu. Dưới đây là hướng dẫn chi tiết giúp bạn sử dụng tối ưu chiếc bàn phím này!</p><h3><strong>I. Những Lưu Ý Quan Trọng Khi Sử Dụng</strong></h3><ol><li><strong>Chỉ sạc bàn phím qua cổng USB của máy tính.</strong><ul><li><strong>Không sử dụng</strong> sạc dự phòng, sạc laptop, hay sạc của điện thoại để tránh hỏng pin.</li></ul></li><li><strong>Mở/khóa phím Windows:</strong><ul><li>Nhấn tổ hợp <strong>FN + WIN</strong> để mở hoặc khóa phím WIN. Đây là giải pháp cho tình trạng không bấm được phím Windows.</li></ul></li><li><strong>Chuyển đổi giữa layout Windows và Mac:</strong><ul><li>Nhấn giữ tổ hợp <strong>FN + M</strong> trong 5 giây để chuyển đổi layout. (Rất hữu ích nếu bạn hay bị nhầm vị trí phím WIN và ALT.)</li></ul></li><li><strong>Chế độ phản hồi cao (Ultra-low latency):</strong><ul><li>Nhấn tổ hợp <strong>FN + H</strong>, đèn nút <strong>CAPS</strong> sẽ nháy trắng 3 lần (hoặc đèn ESC nháy nếu bản no-LED). Nhấn lại tổ hợp này để trở về chế độ thường.</li></ul></li><li><strong>Tự động ngủ:</strong><ul><li>Bàn phím sẽ tự tắt sau 5 phút không sử dụng. Đánh thức bằng cách nhấn bất kỳ phím nào.</li></ul></li></ol><h3><strong>II. Cách Sạc Và Kiểm Tra Pin</strong></h3><ol><li><strong>Sạc pin:</strong><ul><li>Khi đèn <strong>ESC</strong> nháy đỏ liên tục, hãy sạc ngay để đảm bảo hoạt động ổn định.</li><li>Khi sạc đầy, đèn ESC sẽ nháy <strong>5 lần màu xanh lá</strong>.</li></ul></li><li><strong>Kiểm tra % pin:</strong><ul><li>Nhấn tổ hợp <strong>FN + Space</strong> để xem trạng thái pin.</li></ul></li></ol><h3><strong>III. Hướng Dẫn Cài Đặt Phần Mềm VIA/QMK</strong></h3><p><strong>Rainy75</strong> hỗ trợ <strong>VIA/QMK</strong>, cho phép tùy chỉnh layout, macro, và LED RGB dễ dàng.</p><ol><li><strong>Flash firmware mới nhất:</strong><ul><li>Tải firmware tại trang chủ hoặc file JSON từ nguồn cung cấp.</li><li>Tắt công tắc dưới nút <strong>Caps Lock</strong>, kết nối bàn phím qua dây USB.</li><li>Nhấn tổ hợp <strong>FN + TAB</strong> để bật chế độ kết nối dây (ESC sẽ nháy).</li><li>Cài đặt file firmware và chạy flash đến khi 100%.</li></ul></li><li><strong>Cài VIA:</strong></li></ol><p>Nếu JSON không hoạt động thì update firmware laster version:<br><strong>Flash Firmware mới nhất:</strong><br><strong>RGB Version: </strong><a href=\"https://1drv.ms/u/s!AkEcbLykHOXxi61LGGAKLGiRFfw7XQ?e=6wObba\"><strong>RGB Firmware 20240121 (Standard Pro Versions).exe</strong></a><br><strong>No Led Version: </strong><a href=\"https://1drv.ms/u/s!AkEcbLykHOXxi61MRiUb7ZyJGdH9eg?e=WRsziD\"><strong>NON-RGB Firmware 20241117 (Lite Versions).exe</strong></a></p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/png&quot;,&quot;filename&quot;:&quot;image.png&quot;,&quot;filesize&quot;:21594,&quot;height&quot;:317,&quot;href&quot;:&quot;https://thebabustore.vn/storage/TFGBl1BHWtAwofuZUyRi7wy8kMyZ8xVWKPA3OqIt.png&quot;,&quot;url&quot;:&quot;https://thebabustore.vn/storage/TFGBl1BHWtAwofuZUyRi7wy8kMyZ8xVWKPA3OqIt.png&quot;,&quot;width&quot;:193}\" data-trix-content-type=\"image/png\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--png\"><a href=\"https://thebabustore.vn/storage/TFGBl1BHWtAwofuZUyRi7wy8kMyZ8xVWKPA3OqIt.png\"><img src=\"https://thebabustore.vn/storage/TFGBl1BHWtAwofuZUyRi7wy8kMyZ8xVWKPA3OqIt.png\" width=\"193\" height=\"317\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">image.png</span> <span class=\"attachment__size\">21.09 KB</span></figcaption></a></figure></p><ol><li>Truy cập <a href=\"https://usevia.app\"><span style=\"text-decoration: underline;\">usevia.app</span></a>.</li><li>Bật tab <strong>Settings</strong>, chọn <strong>Show Tab Design</strong>, sau đó vào tab <strong>Design</strong> và load file JSON phù hợp.</li><li><strong>Tùy chỉnh nút và chế độ LED:</strong><ul><li>Sau khi kết nối thành công, bạn có thể remap phím, cài macro, và điều chỉnh LED RGB tùy ý.</li></ul></li></ol><h3><strong>IV. Chế Độ Kết Nối Với Thiết Bị</strong></h3><ul><li><strong>Công tắc bật tắt Pin ở dưới nút Caplock (nếu bạn muốn kết nối không dây thì bật on</strong><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:480,&quot;url&quot;:&quot;https://bizweb.dktcdn.net/thumb/large/100/436/596/files/z5113245212745-4303a231dab76a7059635753fb8fab50.jpg?v=1706415955239&quot;,&quot;width&quot;:480}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://bizweb.dktcdn.net/thumb/large/100/436/596/files/z5113245212745-4303a231dab76a7059635753fb8fab50.jpg?v=1706415955239\" width=\"480\" height=\"480\"><figcaption class=\"attachment__caption\"></figcaption></figure></li></ul><p><br></p><ol><li><strong>Bluetooth:</strong><ul><li>Nhấn <strong>FN + Tab</strong> đến khi đèn <strong>F1</strong> nháy nhanh.</li><li>Bật Bluetooth trên thiết bị, ghép nối.</li><li>Có thể kết nối tối đa <strong>3 thiết bị</strong>, chuyển đổi bằng <strong>FN + F1/F2/F3</strong>.</li></ul></li><li><strong>Wireless 2.4G:</strong><ul><li>Sử dụng đầu thu Receiver kèm theo.</li><li>Nhấn <strong>FN + TAB</strong> để chuyển chế độ, cắm receiver vào cổng USB máy tính.</li><li>Nếu không kết nối được, nhấn giữ <strong>FN + F4</strong> trong 5 giây và thử lại.</li></ul></li><li><strong>Kết nối dây:</strong><ul><li>Cắm dây và nhấn <strong>FN + TAB</strong> để chuyển qua chế độ dây. Đèn ESC sẽ nháy báo hiệu thành công.</li></ul></li></ol><h3><strong>V. Các Tổ Hợp Phím Hữu Ích</strong></h3><ul><li><strong>FN + M:</strong> Chuyển đổi layout Windows/Mac.</li><li><strong>FN + ESC (giữ 5s):</strong> Reset cài đặt mặc định.</li><li><strong>FN + WIN:</strong> Mở/khóa phím WIN.</li><li><strong>FN + \\ |:</strong> Thay đổi chế độ LED.</li><li><strong>FN + ENTER:</strong> Chuyển LED sang chế độ tĩnh và đổi màu LED.</li><li><strong>FN + Backspace:</strong> Tắt/bật LED để tiết kiệm pin.</li><li><strong>Điều chỉnh LED:</strong><ul><li>Tăng độ sáng: <strong>FN + phím mũi tên lên</strong></li><li>Giảm độ sáng: <strong>FN + phím mũi tên xuống</strong></li><li>Tăng tốc nháy: <strong>FN + phím mũi tên phải</strong></li><li>Giảm tốc nháy: <strong>FN + phím mũi tên trái</strong></li></ul></li></ul><h3><strong>VI. Lời Kết</strong></h3><p><strong>Rainy75</strong> không chỉ là một chiếc bàn phím cơ thông thường mà còn là công cụ mạnh mẽ để tùy chỉnh theo nhu cầu cá nhân. Hãy sử dụng đúng cách và tận dụng hết tính năng của nó để có trải nghiệm tốt nhất!</p><p>Nếu bạn gặp vấn đề khi sử dụng, hãy liên hệ với cửa hàng nơi mua để được hỗ trợ. ❤️</p><p><br></p>', 'Nihao! Rainy75 là bàn phím cơ quốc dân với thiết kế nhôm nguyên khối đang làm mưa làm gió ở phần khúc 75% hiện tại', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-10-16 01:52:46', '2025-02-19 13:50:19'),
(105, 'Hướng dẫn sử dụng Mchose Fury Cube F75', 'huong-dan-su-dung-fury-cube-f75', '<p><strong>Kết nối Bluetooth (gạt công tắc nguồn ở dưới Caplock):</strong></p><p><strong>①</strong> Bấm FN và số 1 cho đến khi nháy số 1, sau đó nhấn và giữ phím FN và 1 trong 3-5 giây đến khi đèn nút 1 nháy nhanh.</p><p><strong>② </strong>Mở thiết bị cần kết nối Bluetooth (chẳng hạn như điện thoại di động, máy vi tính).</p><p><strong>③</strong> Thiết bị đã được kết nối và quá trình ghép nối hoàn tất.</p><p><strong>④ </strong>Kết nối với thiết bị thứ hai (ví dụ: điện thoại). Nếu thiết bị thứ nhất (ví dụ laptop) được kết nối với phím 1, hãy bấm Fn và 2 cho đèn báo của số 2 nhấp nháy, nếu không nhấp nháy nhanh thì ấn giữ khoảng 5s cả 2 nút FN và 2. Sau đó lặp lại các bước ② và ③.</p><p><strong>⑤ </strong>Kết nối thiết bị thứ ba (ví dụ: máy tính bảng) và giữ phím kết hợp FN và 3 tương tự với nút 1 và 2 ở trên</p><p><strong>⑥ </strong>Bây giờ hãy bật bluetooth của ba thiết bị được kết nối cùng một lúc và chuyển kết nối thiết bị bằng cách nhấn FN + 1 hoặc 2 hoặc 3 (khi chuyển thiết bị chỉ ấn Fn và 1 hoặc 2 hoặc 3 một lần, KHÔNG phải ấn giữ như lúc ghép nối)</p><p><strong>Kết nối Wireless 2.4G (nhớ bật công tắc nguồn ở dưới Caplock):</strong></p><p>Đầu thu wireless USB ở ngay ở trong hộp phụ kiện</p><p>Cắm đầu thu USB vào máy tính, nhấn tổ hợp FN và 4 , sau khi đèn nút 4 sẽ hết nhấp nháy thì kết nối thành công</p><p>Reset lại kết nối bằng cách bấm và giữ đồng thời FN và 4 cho đến khi đèn ở trên phím điều hướng nháy nhanh thì cắm đầu thu vào cổng USB máy tính là có thể sử dụng được rồi.</p><p><strong>Kết nối bằng dây:</strong></p><p>Cắm dây và sử dụng.</p><p><strong><em>Các tổ hợp phím tắt thường dùng</em></strong></p><p><strong>F</strong>N + ESC: bấm giữ 3s sẽ reset lại bàn phím</p><p><strong>F</strong>N + WIN (bên trái): Khoá hoặc mở khoá phím WIN&nbsp;</p><p><strong>F</strong>N + Page Down: Thay đổi chế độ LED trên bàn phím</p><p><strong>F</strong>N + Shift trái: Thay đổi chế độ LED trên dải LED cạnh nút ESC</p><p><strong>F</strong>N + điều hướng lên: Tăng độ sáng LED</p><p><strong>F</strong>N + điều hướng xuống: Giảm độ sáng LED</p><p><strong>F</strong>N + điều hướng trái: Giảm tốc độ nháy LED</p><p><strong>F</strong>N + điều hướng phải: Tăng tốc độ nháy LED</p><p><strong>F</strong>N + P: Chụp màn hình</p><p><strong>F</strong>N + L: Insert</p><p><strong>F</strong>N + { [: ScrLK&nbsp;</p><p><strong>F</strong>N + : ; = Home</p><p><strong>F</strong>N + } ]: Pause</p><p><strong>F</strong>N + “ ‘: End</p><p><strong>Dành cho Windows:</strong></p><p><strong>F</strong>N + F1: Giảm độ sáng&nbsp;</p><p><strong>F</strong>N + F2: Tăng độ sáng</p><p><strong>F</strong>N + F3: Đa nhiệm windows</p><p><strong>F</strong>N + F4: Nhập liệu bằng giọng nói (hỗ trợ từ windows 10 trở lên) <strong>&nbsp;</strong></p><p><strong>F</strong>N + F5: Trở về desktop</p><p><strong>F</strong>N + F6: Tìm kiếm</p><p><strong>F</strong>N + F7: Media bài trước</p><p><strong>F</strong>N + F8: Dừng/Phát nhạc, video</p><p><strong>F</strong>N + F9: Media bài sau</p><p><strong>F</strong>N + F10: Tắt tiếng</p><p><strong>F</strong>N + F11: Giảm âm lượng</p><p><strong>F</strong>N + F12: Tăng âm lượng</p><p><strong>&nbsp;Dành cho Mac:</strong></p><p><strong>F</strong>1: Giảm độ sáng&nbsp;</p><p><strong>F</strong>2: Tăng độ sáng</p><p><strong>F</strong>3: Đa nhiệm</p><p><strong>F</strong>4: Siri</p><p><strong>F</strong>5: Trở về desktop</p><p><strong>F</strong>6: Tìm kiếm</p><p><strong>F</strong>7: Media bài trước</p><p><strong>F</strong>8: Dừng/Phát nhạc, video</p><p><strong>F</strong>9: Media bài sau</p><p><strong>F</strong>10: Tắt tiếng</p><p><strong>F</strong>11: Giảm âm lượng</p><p><strong>F</strong>12: Tăng âm lượng</p><p><br><br></p>', 'Nihao! Fury cube f75 là một trong những chiếc bàn phím ngon ở phân khúc. Với thiết kế layout 75%, đèn nền RGB, 3 chế độ,....Fury chắc chắn sẽ làm người dùng thấy thỏa mãn khi sử dụng.', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-10-16 01:52:46', '2024-12-10 05:54:06'),
(106, 'Hướng dẫn sử dụng Weika Lucky65', 'huong-dan-su-dung-lucky-65', '<p><strong>Phương thức kết nối Bluetooth</strong><br>Gạt công tắt \" BẬT \"</p><p>Sau đó nhấn và giữ FN + Q / W / E , cho tới khi đèn nhấp nháy nhanh . Sau khi đèn nhấp nháy nhanh chúng ta vô phần BT trên máy tính sẽ hiện lên thiết bị&nbsp;<br>Nhấn nhanh FN+Q,W,E để chuyển kênh Bluetooth, kết nối lại kênh Bluetooth tương. ứng và đèn báo tương ứng sẽ nhấp nháy chậm . Sau khi kết nối thành công, nó sẽ ngựng nhấp nháy.</p><p><strong>Phương thức kết nối 2.4G</strong><br>Gạt công tắt \" BẬT \"<br>Sau đó nhân và giữ FN + R cho tới khi đèn nhấp nháy nhanh<br>Sau đó chúng ta cắm đầu USB vào máy tính ( khi đen trên phím R tắt và không còn nhấp nháy thì đã hoàn thành kết nối và có thể sử dụng )<br><br><strong>Lưu ý : </strong>Hướng dẫn tiết kiệm năng lượng:</p><ol><li>Thiết kế tiết kiệm năng lượng: ở chế độ không dây, không nhấn phim trong 2 phút, đèn nền bàn phím sẽ tự động tắt và bàn phím sẽ chuyển sang chế độ chờ; không hoạt động trong 30 phút, bàn phím sẽ chuyển sang trạng thái ngủ đồng sâu, đồng thời ngắt kết nối 2.4G hoă̆c Bluetooth, tắt toàn bộ đèn LED; nhấn phím bất kỳ để thoát khỏi chế độ ngư đống.</li><li>Chế độ có dây USB không bao giờ ngủ.</li></ol><p><strong>Phương thức kết nối Dây</strong><br>Gạt công tắt \" TẮT \"</p><ol><li>Kết nối bàn phim với máy tinh bằng cáp dữ liệu và đợi trinh điêu khiển được cài đặt tự động, sau đó bạn có thể sử dụng bàn phim.</li><li>Công tắc hai vị tri yêu câu nhấn nhanh FN+FN+ TAB đê chuyên sang chê độ có đây</li></ol><p><strong>Đèn báo :</strong><br>- Đèn báo Caps Lock ở phím, phím sáng màu trắng khi bật lên, túy theo hiệu ứng thực tế.<br>- Đèn báo Win lock ở phím, phím sáng màu trắng<br>- Đèn sạc ở bên cạnh FN, đèn đỏ khi sac, màu xanh lá cây khi được sạc đầy và nhấp nháy màu đỏ khi điện áp thấp.<br>- Đèn ghép nối mã không dây nằm ở phím Q/W/E/R, phím này sẽ nhấp nháy đèn trắng khi ghép nối mã, tùy thuộc vào hiệu ứng vật lý.<br><br>&nbsp;</p><p><strong>Điều chỉnh ánh sáng:</strong></p><p>Fn + |\\ : Thay đổi hiệu ứng ánh sáng<br>Fn + ]} : Thay đổi màu đèn<br>Fn + ↓/↑ : Thay đổi độ sáng của đèn<br>Fn + &lt;-/-&gt; : Thay đổi tốc độ hiệu ứng đèn<br>Fn + Shift phải+1 = Tùy chỉnh ánh sáng 1<br>Fn + Shift phải+2 = Ánh sáng tùy chỉnh 2<br>Fn + Shift phải +3=+3= Đèn trò chơi 3<br>Fn+Shift phải+3 = Đèn trò chơi 4<br>Fn+Shift phải +3=+3= Đèn trò chơi 5<br>Fn+Shift phải +3=+3= Đèn trò chơi 6</p><p>Tổ hợp chức năng<br>Fn + A : Chuyển sang Window<br>Fn + S : Chuyển sang MAC<br>Fn + Win : Lock WIN<br>Fn + Space : Tắt mở đèn nền</p>', 'Nihao! WEIKA Lucky65 là một trong những chiếc bàn phím ngon ở phân khúc. Với thiết kế layout 65%, đèn nền RGB, 3 chế độ,.... Lucky65 chắc chắn sẽ làm người dùng thấy thỏa mãn khi sử dụng. ', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-10-16 01:52:46', '2024-12-10 05:54:20'),
(107, 'Hướng dẫn sử dụng Monsgeek M1W', 'huong-dan-su-dung-monsgeek-M1W', '<h1>Bàn phím cơ MONSGEEK M1W: Hướng dẫn sử dụng và cài đặt đầy đủ chức năng<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:372,&quot;url&quot;:&quot;https://bizweb.dktcdn.net/thumb/large/100/508/744/files/2024-02-02-15-20-07.jpg?v=1706862171312&quot;,&quot;width&quot;:480}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://bizweb.dktcdn.net/thumb/large/100/508/744/files/2024-02-02-15-20-07.jpg?v=1706862171312\" width=\"480\" height=\"372\"><figcaption class=\"attachment__caption\"></figcaption></figure></h1><h2><strong>Chuyển đổi chế độ kết nối:</strong><br>Công tắc chế độ kết nối nằm dưới nút Capslock. Để thay đổi chế độ kết nối, nhổ keycap Capslock ra.<br>Điều chỉnh chế độ kết nối với các thiết bị:<br><strong>a. Kết nối có dây:</strong><br>Gạt công tắc ở giữa: Mặc định Windows.<br>Gạt công tắc lên trên: MacOS.<br>Sau đó, cắm dây cáp USB Type-C đi kèm hoặc bất kỳ cáp Type-C nào.<br><strong>b. Kết nối Bluetooth:</strong><ul><li>Gạt công tắc xuống dưới cùng, sau đó bấm FN + E/R/T để vào chế độ Bluetooth.</li><li>Bấm giữ (khoảng 3s) FN + E/R/T để kích hoạt Bluetooth.</li><li>Kết nối với thiết bị cần thiết (ví dụ: điện thoại) và chờ thông báo kết nối.</li><li>Đối với các thiết bị tiếp theo, giữ FN + R hoặc FN + T và lặp lại các bước.</li></ul></h2><h2><strong>c. Kết nối Wireless 2.4G:</strong><ul><li>Gạt công tắc xuống dưới cùng, sau đó bấm FN + Y để vào chế độ Wireless.</li><li>Bấm giữ (khoảng 3s) FN + Y để kích hoạt sóng wireless, sau đó cắm đầu thu vào cổng USB máy tính.</li></ul></h2><h2><strong>Tổ hợp phím tắt thường dùng:</strong><br>Điều chỉnh hiệu ứng, độ sáng, hướng hiệu ứng, thay đổi hiệu ứng LED, và nhiều tính năng khác.<ul><li>Fn + =/-: tăng giảm hiệu ứng</li><li>Fn + Điều hướng lên xuống: tăng giảm độ sáng</li><li>Fn + điều hướng trái phải: chuyển hướng hiệu ứng</li><li>Fn + home, pgup, end, pgdw: thay đổi hiệu ứng led</li><li>Fn + \\: set led đơn sắc, cho chọn 7 mầu</li><li>Fn + L: tắt bật led</li></ul></h2><h2><strong>a. Phím tắt trên windows</strong><ul><li>Fn + F1: my computer</li><li>Fn + F2: email</li><li>Fn + F3: Windows search</li><li>Fn + F4: Browser homepage</li><li>Fn + F5: Multimedia player</li><li>Fn + F6: Play/pause</li><li>Fn + F7: previous song</li><li>Fn + F8: next song</li><li>Fn + P: print screen</li><li>Fn + C: mở máy tính</li><li>Fn + I: insert</li><li>Fn + M: mute</li><li>Fn + &lt; &gt;: tăng giảm âm lượng</li><li>Fn + W: swap ASWD thành điều hướng</li><li>Fn + win: khóa win</li><li>Reset phím: Hold FN + ~ ( khoảng 5 giấy ) :</li><li>Biến nút Ctrl thành nút Menu: Hold Fn + Ctrl khoảng 3 giây</li></ul></h2><h2><strong>b. Phím tắt trên MacOs</strong><ul><li>F1, F2: tăng giảm độ sáng màn hình</li><li>F3: Open missin control</li><li>F4: Siri</li><li>F7: Skip back audio</li><li>F8: Pause/play</li><li>F9: Skip forward audio</li><li>F10: mute</li><li>F11, F12: tăng giảm âm lượng</li><li>Win trái: Option</li><li>Alt trái: Command</li></ul></h2><h2><strong>Kiểm tra pin:</strong><br>Bấm giữ FN + Space để kiểm tra dung lượng pin dựa theo màu sắc hiển thị:<br>- Màu đỏ: dưới 30% pin<br>- Màu cam: 30-50%<br>- Màu tím: 50-70%<br>- Màu vàng: 70-90%<br>- Màu xanh lá: trên 90%<br><strong>Lưu ý:</strong><br>Chỉ sạc qua dây cáp kết nối với máy tính, không sạc trực tiếp bằng củ sạc để đảm bảo an toàn cho pin<br><strong>Cài đặt phần mềm, driver:</strong><br><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:287,&quot;url&quot;:&quot;https://bizweb.dktcdn.net/thumb/large/100/508/744/files/2024-02-02-15-31-06.jpg?v=1706862713493&quot;,&quot;width&quot;:480}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://bizweb.dktcdn.net/thumb/large/100/508/744/files/2024-02-02-15-31-06.jpg?v=1706862713493\" width=\"480\" height=\"287\"><figcaption class=\"attachment__caption\"></figcaption></figure><br>M1W hỗ trợ phần mềm Custom. Link drive tải tại <a href=\"https://www.monsgeek.com/download/\"><span style=\"text-decoration: underline;\">đây</span></a></h2><h2><br></h2><p><br></p>', 'Nihao! Mchose GX87 là một trong những chiếc bàn phím ngon ở phân khúc. Với thiết kế layout TKL, đèn nền RGB, 3 chế độ,.... Mchose GX87 chắc chắn sẽ làm người dùng thấy thỏa mãn khi sử dụng. KICAP rất hân hạnh được đồng hành cùng Mchose mang tới sản phẩm này tới tay người dùng.', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-10-16 01:52:46', '2024-12-10 06:19:11'),
(108, 'Hướng dẫn sử dụng Monka K100', 'huong-dan-su-dung-monka-k100', '<p><strong><em>I. Cài đặt phần mềm, driver&nbsp;</em></strong></p><p><strong>Link tải phần mềm cho window: </strong><a href=\"https://1drv.ms/u/s!ArBdNZiG4mlDg71ihQ-ma-FFmZddLQ?e=g6lj6m\"><strong>Monka K100</strong></a><strong> (tải xong nhớ đọc tiếp phần dưới nhé)</strong></p><p>Sau khi tải phần mềm, các bạn kết nối bàn phím với máy tính qua dây cáp USB của hãng cung cấp (không kết nối bằng bluetooth hoặc wireless 2.4). Sau đó, bật phần mềm lên và thực hiện chỉnh LED cũng như keymap theo nhu cầu sử dụng của cá nhân. Trong trường hợp có phiên bản firmware mới thì các bạn cần đảm bảo kết nối dây USB ổn định thì mới cập nhật.</p><p><strong><em>II. Điều chỉnh chế độ kết nối với các thiết bị</em></strong></p><p><strong>Kết nối Bluetooth (gạt công tắc ở mặt dưới bàn phím sang BT):</strong></p><p><strong>①</strong> Nhấn và giữ đồng thời phím FN + Q trong vài giây (đèn báo trạng thái sẽ nháy xanh)</p><p><strong>②</strong> Mở thiết bị cần kết nối Bluetooth và chọn K100-5.0 hoặc K100-3.0 .</p><p><strong>③ </strong>Kết nối với thiết bị thứ hai, hãy giữ FN + W trong vài giây và đèn báo nháy tím nhanh. Sau đó kết nối như trên ②.</p><p><strong>④ </strong>Kết nối thiết bị thứ ba giữ phím kết hợp FN + E trong vài giây cho đến khi đèn báo nhấp nháy xanh. Sau đó lặp lại các bước ②.</p><p>Bây giờ hãy bật bluetooth của ba thiết bị được kết nối cùng một lúc và chuyển kết nối thiết bị bằng cách nhấn FN + Q/W/E (khi chuyển thiết bị chỉ ấn Fn Q/W/E một lần, KHÔNG phải ấn giữ như lúc ghép nối)</p><p><strong>Kết nối Wireless 2.4G (gạt công tắc ở mặt dưới bàn phím sang icon wifi):</strong></p><p>Hãng thiết kế chỗ để đầu thu wireless ở ngay ở cạnh chỗ công tắc BT</p><p>Bấm và giữ đồng thời FN và R cho đến khi đèn trạng thái nháy nhanh thì cắm đầu thu vào cổng USB máy tính là có thể sử dụng được rồi.</p><p><strong>Kết nối bằng dây (gạt công tắc ở mặt dưới bàn phím về vị trí giữa Line):</strong></p><p>Cắm dây và sử dụng.</p><p><strong>Chế độ Win/Mac (gạt công tắc ở cạnh công tắc chế độ kết nối)</strong></p><p><strong><em>II. Các tổ hợp phím tắt thường dùng</em></strong></p><p><strong>F</strong>N + ESC: reset lại về chế độ xuất xưởng</p><p><strong>F</strong>N + Ctrl phải: Check pin</p><p><strong>F</strong>N + WIN (bên trái): Khóa hoặc mở khóa phím WIN</p><p><strong>F</strong>N + Page Up: Chụp màn hình</p><p><strong>F</strong>N + Page Down: Pause</p><p><strong>F</strong>N + End: Scroll Lock &nbsp;</p><p><strong>F</strong>N + |\\ : Thay đổi chế độ LED trên bàn phím</p><p><strong>F</strong>N + Delete: Đổi màu LED</p><p><strong>F</strong>N + Tab : Đổi LED sang màu trắng</p><p><strong>F</strong>N + điều hướng lên: Tăng độ sáng LED&nbsp;</p><p><strong>F</strong>N + điều hướng xuống: Giảm độ sáng LED</p><p><strong>F</strong>N + điều hướng trái: Giảm tốc độ nháy LED</p><p><strong>F</strong>N + điều hướng phải : Tăng tốc độ nháy LED</p><p><strong>Phím tắt của chế độ Windows</strong></p><p><strong>F</strong>N + F1 : Giảm độ sáng màn hình</p><p><strong>F</strong>N + F2 : Tăng độ sáng màn hình</p><p><strong>F</strong>N + F3 : Máy tính</p><p><strong>F</strong>N + F4 : Win+E</p><p><strong>F</strong>N + F5 : Media</p><p><strong>F</strong>N + F6 : Media bài trước</p><p><strong>F</strong>N + F7 : Media qua bài&nbsp;</p><p><strong>F</strong>N + F8 : Pause/Play</p><p><strong>F</strong>N + F9 : Stop</p><p><strong>F</strong>N + F10 : Mute&nbsp;</p><p><strong>F</strong>N + F11 : Giảm âm lượng</p><p><strong>F</strong>N + F12 : Tăng âm lượng</p><p><strong>Phím tắt của chế độ Mac</strong></p><p><strong>F</strong>1 : Giảm độ sáng màn hình</p><p><strong>F</strong>2 : Tăng độ sáng màn hình</p><p><strong>F</strong>3 : Folder</p><p><strong>F</strong>5 : Đa nhiệm</p><p><strong>F</strong>6 : Siri</p><p><strong>F</strong>7 : Media bài trước</p><p><strong>F</strong>8 : Media Pause/Play</p><p><strong>F</strong>9 : Media qua bài</p><p><strong>F</strong>10 : Mute&nbsp;</p><p><strong>F</strong>11 : Giảm âm lượng</p><p><strong>F</strong>12 : Tăng âm lượng</p><p><strong><em>IV. Các TIPS và lưu ý nhỏ trong quá trình sử dụng</em></strong></p><p><strong>*</strong>Giữ núm 3s để chuyển giữa 2 chế độ : Chỉnh volume và chỉnh độ sáng của led</p><p><strong>*</strong>Khi thấy nút Alt và Win đổi chỗ cho nhau tức là bạn ở chế độ MAC, hãy chuyển qua chế độ Win nhé</p><p><strong>*Lưu ý:</strong> luôn luôn sạc bàn phím thông qua cổng USB của máy tính, không sạc bằng cái củ sạc khác như sạc dự phòng, sạc laptop, tai nghe, điện thoại v.v</p>', 'Nihao! Mchose GX87 là một trong những chiếc bàn phím ngon ở phân khúc. Với thiết kế layout TKL, đèn nền RGB, 3 chế độ,.... Mchose GX87 chắc chắn sẽ làm người dùng thấy thỏa mãn khi sử dụng. KICAP rất hân hạnh được đồng hành cùng Mchose mang tới sản phẩm này tới tay người dùng.', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-10-16 01:52:46', '2024-12-10 06:09:26'),
(109, 'Hướng dẫn sử dụng Crush80', 'huong-dan-su-dung-crush-80', '<p><a href=\"https://thebabustore.vn/product/ban-phim-co-crush-80\"><span style=\"text-decoration: underline;\">Crush80</span></a> - Một chiếc bàn phím TKL ngon nhất tầm giá 3tr đổ lại</p><p>Dưới đây là phần hướng dẫn sử dụng chiếc bàn phím<strong> CRUSH80 </strong>chi tiết nhất!</p><p><strong>=&gt;&gt; Các TIPS và lưu ý quan trọng trong quá trình sử dụng &lt;==</strong></p><p>Tuyên bố trách nhiệm: Bài viết này chỉ hướng dẫn cho anh em cách sử dụng bàn phím. KICAP chỉ tiếp nhận và giải đáp những thắc mắc về lỗi bàn phím khi mọi người mua bàn phím bên shop. Trân trọng cảm ơn anh&nbsp; hhem &lt;3</p><p><strong>Lưu ý</strong>: luôn luôn sạc bàn phím thông qua cổng USB của máy tính, không sạc bằng cái củ sạc khác như sạc dự phòng, sạc laptop, tai nghe, điện thoại v.v</p><p>Tổ hợp khoá hoặc mở khoá nút WIN: FN + WIN (<em>anh em hay bấm nhầm dẫn đến không bấm được nút WIN</em>)</p><p>Chuyển đổi layout MAC hoặc WIN: bấm giữ FN và M trong 5s (<em>anh em hay bấm nhầm dẫn đến việc hoán đổi 2 nút WIN và ALT</em>)</p><p>Tính năng đặc biệt: <strong>Ultra-low latency mode: </strong>bấm đồng thời FN và H, dải led trang trí nháy đèn trắng. Sau đó, bàn phím chuyển qua <strong><em>chế độ phản hồi cao. </em></strong><em>Bấm 1 lần nữa tương tự để chuyển về chế độ thường.&nbsp;</em></p><p>Khi không sử dụng, bàn phím sẽ tự động ngủ sau 5 phút. Để đánh thức, bạn chỉ cần gõ vào phím bất kỳ là được.</p><p>Trong quá trình sử dụng, <strong>khi bạn thấy đèn LED nút ESC nháy đỏ liên tục</strong>, bạn nên sạc bàn phím ngay khi có thể để đảm bảo chúng hoạt động ổn định và tăng tuổi thọ của pin.</p><p>Khi sạc đầy, đèn nút ESC sẽ nháy 5 lần màu xanh lá, bạn có thể rút sạc nhé</p><p>Kiểm tra % pin bằng cách bấm giữa FN và Space (đèn sáng từ 1-5, mỗi nút tương ứng 20% pin)</p><p><strong>1. Điều chỉnh chế độ kết nối với các thiết bị</strong></p><p><strong>Công tắc bật tắt Pin ở dưới nút Caplock, phải dùng dụng cụ nhổ keycap lên (nếu bạn muốn kết nối không dây thì bật on)</strong></p><p><strong><em>Kết nối Bluetooth:</em></strong></p><p>① Bấm FN và Tab cho đến khi nháy nút 1, <strong>nếu 1 nháy đèn nhanh thì chuyển qua bước 2</strong> <em>còn nếu không thì</em> <strong>nhấn và giữ phím FN và 1 trong 3-5 giây đến khi đèn nút 1 nháy nhanh.</strong></p><p>② Mở thiết bị cần kết nối Bluetooth (chẳng hạn như điện thoại di động, máy vi tính).</p><p>③ Thiết bị đã được kết nối và quá trình ghép nối hoàn tất.</p><p>④ Kết nối với thiết bị thứ hai (ví dụ: điện thoại). Nếu thiết bị thứ nhất (ví dụ laptop) được kết nối với phím 1, hãy bấm Fn và 2 cho đèn báo của chữ 2 nhấp nháy, nếu không nhấp nháy nhanh thì ấn giữ khoảng 5s cả 2 nút FN và 2. Sau đó lặp lại các bước ② và ③.</p><p>⑤ Kết nối thiết bị thứ ba (ví dụ: máy tính bảng) và giữ phím kết hợp FN + 3 tương tự với nút 1 và 2 ở trên</p><p>⑥ Bây giờ hãy bật bluetooth của ba thiết bị được kết nối cùng một lúc và chuyển kết nối thiết bị bằng cách nhấn FN + 1 hoặc 2 hoặc 3 (khi chuyển thiết bị chỉ ấn Fn và 1 hoặc 2 hoặc 3 một lần, <strong>KHÔNG</strong> phải ấn giữ như lúc ghép nối)</p><p><strong><em>Kết nối Wireless 2.4G :</em></strong></p><p>Đầu thu Receiver để trong hộp phụ kiện.</p><p>Sau khi tìm được đầu cắm receiver, bạn hãy bấm giữ Fn và bấm tab nhanh để bàn phím chuyển qua nháy đèn nút 4.</p><p>Sau đó bạn cắm receiver vào cổng usb của máy tính (nhớ cắm vào hết cỡ)</p><p>Trong trường hợp không kết nối được thì bấm giữ FN và 4 trong 5s, sau đó cắm receiver vào máy tính là dùng được.</p><p><strong><em>Kết nối dây:</em></strong></p><p>Các bạn sử dụng dây đi kèm trong hộp phụ kiện, kết nối bàn phím và máy tính rồi bấm giữ FN rồi bấm nút Tab nhanh để chuyển qua đèn nháy nút 5.</p><p>Sau đó bạn sử dụng bàn phím bình thường.</p><p><strong><br>2. Cài đặt phầm mềm, driver,</strong> <strong>VIA<br></strong><br></p><p>Nếu JSON không hoạt động thì update firmware laster version:</p><p><strong>Flash Firmware mới nhất: </strong><a href=\"https://1drv.ms/u/s!ArBdNZiG4mlDg71eiY-ibTxK3NuWTw?e=Uhvg9s\"><strong>No LED</strong></a><strong> </strong><a href=\"https://1drv.ms/u/s!ArBdNZiG4mlDg71daf9XZbEuIPEUKQ?e=Al7cIa\"><strong>RGB</strong></a></p><p>Làm theo từng bước dưới đây:</p><ol><li>Tắt công tắc bàn phím Crush80 (Công tắc dưới nút Caps Lock)</li><li>Kết nối với máy tính của bạn bằng chế độ dây (không phải là cắm dây và kết nối bằng bluetooth hoặc 2.4) bằng cách FN + TAB cho đến khi nháy nút ESC</li><li>Cài đặt file flash firmware rồi mở lên</li><li>Bấm Start (Đảm bảo kết nối dây ổn định cho đến khi chạy được 100%)</li><li>Hoàn thành</li></ol><p>Đầu tiên các bạn tải file JSON keymap ở đây: <a href=\"https://1drv.ms/u/s!ArBdNZiG4mlDg71YEgVUKA7Ck9LTOg?e=PPe1DB\"><span style=\"text-decoration: underline;\">crush80.rar</span></a></p><p>Crush80 hỗ trợ phần mềm QMK/VIA, các bạn vào đường link web:</p><p><a href=\"https://usevia.app/\"><span style=\"text-decoration: underline;\">https://usevia.app/</span></a></p><p>Tiếp theo, bạn chọn tab <strong>SETTINGS</strong>, bật Show tab design, sau đó chuyển qua tab <strong>DESIGN</strong></p><p>Bấm chọn <strong>Load</strong> rồi chọn file JSON tương ứng với chế độ kết nối và phiên bản PCB (USB json dành cho chế độ dùng dây, 2.4G json dành cho chế độ 2.4G; No LED ứng load 2 file No LED, PCB có hỗ trợ RGB thì load 2 file RGB)</p><p>Khi quá trình load file json thành công, phần mềm sẽ hiển thị giao diện hình bàn phím mô phòng các nút trên màn hình.</p><p>Sau khi load thành công, bạn chuyển qua tab <strong>CONFIGURE</strong></p><p><strong>Kết nối bàn phím bằng chế độ dây hoặc 2.4G,&nbsp;</strong></p><p>Sau đó bấm <strong>authorize</strong> rồi thêm thiết bị Crush80 vào.</p><p>Tiếp theo, bạn có thể remap lại các nút trên bàn phím theo sợ thích cá nhân, hỗ trợ cài đặt các tổ hợp phím Macro, tuỳ chỉnh chế độ led RGB theo các lựa chọn sẵn hoặc tự custom từng nút.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:317,&quot;url&quot;:&quot;https://bizweb.dktcdn.net/thumb/large/100/436/596/files/screenshot-2024-01-28-at-11-09-55.png?v=1706415159064&quot;,&quot;width&quot;:193}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://bizweb.dktcdn.net/thumb/large/100/436/596/files/screenshot-2024-01-28-at-11-09-55.png?v=1706415159064\" width=\"193\" height=\"317\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Đặt biệt, VIA hỗ trợ người dùng tạo các layout khác nhau để tuỳ chỉnh cho nhiều thời điểm như làm việc, chơi game, v.v</p><p><strong><br>III. Các tổ hợp phím tắt thường dùng<br></strong><br></p><p>FN + M: bấm giữ 2 nút trong vòng 5s, chuyển đổi layout từ WIN sang MAC và ngược lại</p><p>FN + ESC giữ trong 5s: reset lại cài đặt mặc định của nhà sản xuất</p><p>FN + WIN (bên trái): Khoá hoặc mở khoá phím WIN</p><p>FN + \\ | (Bản RGB): Thay đổi chế độ LED</p><p>FN + \\ | (Bản no led): Bật/tắt LED của ICON</p><p>FN + P (Bản RGB): Bật/tắt LED của ICON</p><p>FN + ENTER (Bản RGB): Đổi LED về chế độ LED tĩnh, đổi giữa các màu LED</p><p>FN + ENTER (Bản no led): Bật/tắt LED viền</p><p>FN + điều hướng lên: Tăng độ sáng LED</p><p>FN + điều hướng xuống: Giảm độ sáng LED</p><p>FN + điều hướng trái: Giảm tốc độ nháy LED</p><p>FN + điều hướng phải: Tăng tốc độ nháy LED</p><p>FN + Backspace: Tắt/bật LED&nbsp;</p><p>FN + L: Tắt/bật chế độ tiết kiệm pin</p><p>FN + [{: Chỉnh chế độ LED của ICON</p><p>FN + }]: Chỉnh chế màu LED của ICON</p><p>FN + ;: Chỉnh chế độ LED của dải led viền</p><p>FN + \": Chỉnh chế màu của dải led viền</p>', 'Nihao! Mchose GX87 là một trong những chiếc bàn phím ngon ở phân khúc. Với thiết kế layout TKL, đèn nền RGB, 3 chế độ,.... Mchose GX87 chắc chắn sẽ làm người dùng thấy thỏa mãn khi sử dụng. KICAP rất hân hạnh được đồng hành cùng Mchose mang tới sản phẩm này tới tay người dùng.', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-10-16 01:52:46', '2024-12-10 06:09:59'),
(110, 'HSSD Xinmeng A66', 'hssd-xinmeng-a66', '<p>Xinmeng A66 là bàn phím có chất lượng cùng giá thành tốt nhất trên thị trường hiện nay. Với thiết kế 66 nút bấm,khung viền nhôm, đèn nền RGB, 3 chế độ, núm xoay nhiều chức năng,.... Xinmeng A66 chắc chắn sẽ làm người dùng thấy thỏa mãn khi sử dụng. Rất hân hạnh được đồng hành cùng Xinmeng mang tới sản phẩm này tới tay người dùng.<br>Hãng cũng cung cấp một quyển sổ hướng dẫn sử dụng chi tiết với rất nhiều thứ tiếng. Tuy nhiên để tiện theo dõi và sử dụng, tóm tắt lại những tip sử dụng chính cho mọi người dễ hiểu.<br><strong>I. Cài đặt phần mềm, driver</strong> <br>Link tải phần mềm cho window: https://drive.google.com/file/d/15IS8OsnW-i-iUKvtON90P8imEVHxrmZW/view?usp=drive_link<br>Sau khi tải phần mềm, các bạn kết nối bàn phím với máy tính qua dây cáp USB của hãng cung cấp. Sau đó, bật phần mềm lên và thực hiện chỉnh LED cũng như keymap theo nhu cầu sử dụng của cá nhân. Trong trường hợp có phiên bản firmware mới thì các bạn cần đảm bảo kết nối dây USB ổn định thì mới cập nhật.<br><strong>II. Điều chỉnh chế độ kết nối với các thiết bị</strong><br><strong><em>Kết nối Bluetooth (gạt công tắc ở mặt dưới bàn phím sang hình icon bluetooth):</em></strong><br>① Nhấn và giữ đồng thời phím FN + Q trong vài giây.<br>② Mở thiết bị cần kết nối Bluetooth (chẳng hạn như điện thoại di động, máy vi tính).<br>③ Thiết bị đã được kết nối và quá trình ghép nối hoàn tất.<br>④ Kết nối với thiết bị thứ hai (ví dụ: điện thoại). Nếu thiết bị thứ nhất (ví dụ laptop) được kết nối với số 1, hãy giữ FN + W trong vài giây và đèn báo của số 2 nhấp nháy nhanh. Sau đó lặp lại các bước ② và ③.<br>⑤ Kết nối thiết bị thứ ba (ví dụ: máy tính bảng) và giữ phím kết hợp FN + E trong vài giây cho đến khi đèn báo (3) nhấp nháy trong khoảng thời gian ngắn. Sau đó lặp lại các bước (2) và (3).<br>⑥ Bây giờ hãy bật bluetooth của ba thiết bị được kết nối cùng một lúc và chuyển kết nối thiết bị bằng cách nhấn FN + Q/W/E (khi chuyển thiết bị chỉ ấn Fn Q/W/E một lần, KHÔNG phải ấn giữ như lúc ghép nối)<br><strong><em>Kết nối Wireless 2.4G (gạt công tắc ở mặt dưới bàn phím sang hình wifi):</em></strong><br>Hãng thiết kế chỗ để đầu thu wireless ở ngay ở cạnh chỗ công tắc win/mac<br>Sau khi tìm được đầu cắm receiver, bạn hãy cắm đầu thu vào cổng USB máy tính là có thể sử dụng được rồi.<br><strong><em>Kết nối bằng dây (gạt công tắc ở mặt dưới bàn phím về vị trí giữa):</em></strong><br>Cắm dây và sử dụng.<br><strong>II. Các tổ hợp phím tắt thường dùng</strong><br><strong>Double click FN</strong>: chuyển layout phím số thành hàng F và ngược lại<br>FN + ESC: reset lại cài đặt mặc định của nhà sản xuất<br>FN + WIN (bên trái): Khoá hoặc mở khoá phím WIN <br>FN + \\ |:&nbsp; Thay đổi chế độ LED trên bàn phím<br>FN + ENTER: Thay đổi màu LED <br>FN + CAPS giữ trong 5s: Reset màu LED<br>FN + điều hướng lên: Tăng độ sáng LED<br>FN + điều hướng xuống: Giảm độ sáng LED<br>FN + điều hướng trái: Giảm tốc độ nháy LED<br>FN + điều hướng phải: Tăng tốc độ nháy LED<br>FN + G: Chế độ Test <br><strong>Núm xoay</strong>: <br>1.Chế độ điều chỉnh đèn bàn phím: Mỗi lần nhấn núm sẽ thay đổi chế độ đèn LED. Xoay núm trái phải để điều chỉnh độ sáng hoặc tốc độ đèn LED (tùy theo chế độ đèn).<br>2.Chế độ đa phương tiện: Nhấn giữ núm nhiều hơn 3 giây sẽ chuyển sang chế độ đa phương tiện. Lúc này nhấn núm để tắt/mở âm thanh và xoay núm điều chỉnh âm lượng.<br><strong>IV. Các TIPS và lưu ý nhỏ trong quá trình sử dụng</strong><br><strong>Khi thấy nút Alt và Win đổi chỗ cho nhau tức là bạn ở chế độ MAC, hãy gạt công tắc ở mặt bên phía trước qua chế độ Win nhé</strong><br>Trong quá trình sử dụng, khi bạn thấy đèn báo ở hàng dưới cùng màu đỏ tức là đã cạn pin, bạn nên sạc bàn phím ngay khi có thể để đảm bảo chúng hoạt động ổn định và tăng tuổi thọ của pin.<br>Khi pin được sạc đầy, đèn báo ở hàng dưới cùng sẽ chuyển sang màu xanh, bạn có thể rút sạc ra nhé.<br>Tips nhỏ để check dung lượng pin còn lại thông qua kết nối Bluetooth, bạn vào cài đặt bluetooth và tìm thiết bị bàn phím của bạn sẽ thấy thông số pin đó.<br><strong>Lưu ý</strong>: l<strong>uôn luôn sạc bàn phím thông qua cổng USB của máy tính, không sạc bằng cái củ sạc khác như sạc dự phòng, sạc laptop, tai nghe, điện thoại v.v</strong><br>Còn nếu bạn là người mới chơi, chưa tìm hiểu nhiều về bàn phím cũng như cách mods phím cơ, hay inbox cho BABU để được tư vấn cụ thể nhiệt tình nhất</p>', 'Nihao! a66 là bàn phím cơ quốc dân với thiết kế nhôm nguyên khối đang làm mưa làm gió ở phần khúc 55% hiện tại', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-11-23 21:51:08', '2024-11-23 21:52:34'),
(111, 'HDSD Xinmeng M87 ', 'hdsd-xinmeng-m87', '<p><a href=\"https://thebabustore.vn/product/ban-phim-co-lucky65-v2-only-kit-ecegq8FHrZR0ZdgB5H33\">Xinmeng M87</a> Pro là một trong những chiếc bàn phím ngon nhất ở phân khúc giá chỉ 700K. Với thiết kế layout TKL, đèn nền RGB, 3 chế độ,.... Xinmeng M87 Pro chắc chắn sẽ làm người dùng thấy thỏa mãn khi sử dụng. KICAP rất hân hạnh được đồng hành cùng Xinmeng mang tới sản phẩm này tới tay người dùng.</p><p>Hãng cũng cung cấp một quyển sổ hướng dẫn sử dụng chi tiết với rất nhiều thứ tiếng. Tuy nhiên để tiện theo dõi và sử dụng, KICAP sẽ tóm tắt lại những tip sử dụng chính cho mọi người dễ hiểu.</p><p><strong>I. Cài đặt phần mềm, driver</strong>&nbsp;</p><p>Link tải phần mềm cho window: <a href=\"https://1drv.ms/u/s!ArBdNZiG4mlDg70QP0yM0eoBb3CgoQ?e=7FcOai\"><span style=\"text-decoration: underline;\">Xm87 bản không dây.exe.zip</span></a></p><p>Sau khi tải phần mềm, các bạn <strong>kết nối bàn phím với máy tính qua dây cáp USB của hãng cung cấp (không kết nối bằng bluetooth hoặc wireless 2.4)</strong>. Sau đó, bật phần mềm lên và thực hiện chỉnh LED cũng như keymap theo nhu cầu sử dụng của cá nhân. Trong trường hợp có phiên bản firmware mới thì các bạn cần đảm bảo kết nối dây USB ổn định thì mới cập nhật.</p><p><strong>II. Điều chỉnh chế độ kết nối với các thiết bị</strong></p><p><strong><em>Kết nối Bluetooth (gạt công tắc ở mặt dưới bàn phím sang BT):</em></strong></p><p>① Nhấn và giữ đồng thời phím FN + Q trong vài giây.</p><p>② Mở thiết bị cần kết nối Bluetooth (chẳng hạn như điện thoại di động, máy vi tính).</p><p>③ Thiết bị đã được kết nối và quá trình ghép nối hoàn tất.</p><p>④ Kết nối với thiết bị thứ hai (ví dụ: điện thoại). Nếu thiết bị thứ nhất (ví dụ laptop) được kết nối với số 1, hãy giữ FN + W trong vài giây và đèn báo của số 2 nhấp nháy nhanh. Sau đó lặp lại các bước ② và ③.</p><p>⑤ Kết nối thiết bị thứ ba (ví dụ: máy tính bảng) và giữ phím kết hợp FN + E trong vài giây cho đến khi đèn báo (3) nhấp nháy trong khoảng thời gian ngắn. Sau đó lặp lại các bước (2) và (3).</p><p>⑥ Bây giờ hãy bật bluetooth của ba thiết bị được kết nối cùng một lúc và chuyển kết nối thiết bị bằng cách nhấn FN + Q/W/E (khi chuyển thiết bị chỉ ấn Fn Q/W/E một lần, KHÔNG phải ấn giữ như lúc ghép nối)</p><p><strong><em>Kết nối Wireless 2.4G (gạt công tắc ở mặt dưới bàn phím sang 2.4G):</em></strong></p><p>Hãng thiết kế chỗ để đầu thu wireless ở ngay ở cạnh chỗ công tắc BT</p><p>Bấm và giữ đồng thời FN và R cho đến khi đèn ở trên phím điều hướng nháy nhanh thì cắm đầu thu vào cổng USB máy tính là có thể sử dụng được rồi.</p><p><strong><em>Kết nối bằng dây (gạt công tắc ở mặt dưới bàn phím về vị trí giữa Line):</em></strong></p><p>Cắm dây và sử dụng.</p><p><strong>II. Các tổ hợp phím tắt thường dùng</strong></p><p>FN + ESC: reset lại chế độ LED</p><p>FN + WIN (bên trái): Khoá hoặc mở khoá phím WIN&nbsp;</p><p>FN + \\ |:&nbsp; Thay đổi chế độ LED trên bàn phím</p><p>FN + END:&nbsp; Thay đổi chế độ LED của dải led phía trên phím điều hướng</p><p>FN + ENTER: Thay đổi màu LED&nbsp;</p><p>FN + CAPS giữ trong 5s: Reset màu LED</p><p>FN + điều hướng lên: Tăng độ sáng LED</p><p>FN + điều hướng xuống: Giảm độ sáng LED</p><p>FN + điều hướng trái: Giảm tốc độ nháy LED</p><p>FN + điều hướng phải: Tăng tốc độ nháy LED</p><p>FN + Alt phải: Kiểm tra pin. Nếu dải đèn màu xanh lá thì còn đầy pin, màu vàng thì ở mức bình thường còn màu đỏ là sắp hết pin.</p><p><strong>IV. Các TIPS và lưu ý nhỏ trong quá trình sử dụng</strong></p><p><strong>Khi thấy nút Alt và Win đổi chỗ cho nhau tức là bạn ở chế độ MAC, hãy gạt công tắc ở mặt bên phía trước qua chế độ Win nhé</strong></p><p>Trong quá trình sử dụng, khi bạn thấy đèn báo ở dải led màu đỏ tức là đã cạn pin, bạn nên sạc bàn phím ngay khi có thể để đảm bảo chúng hoạt động ổn định và tăng tuổi thọ của pin.</p><p><strong>Lưu ý</strong>: l<strong>uôn luôn sạc bàn phím thông qua cổng USB của máy tính, không sạc bằng cái củ sạc khác như sạc dự phòng, sạc laptop, tai nghe, điện thoại v.v</strong></p>', 'Nihao! Xinmeng m87 là bàn phím cơ quốc dân đang làm mưa làm gió ở phần khúc TKL hiện tại', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-11-23 21:57:00', '2024-11-23 21:57:00'),
(112, 'Cách vệ sinh bàn phím cơ đúng cách', 'cach-ve-sinh-ban-phim-co-dung-cach', '<p><strong><em>Với thời tiết nóng ẩm thất thường như ở Việt Nam, việc các thiết bị điện tử nhanh chóng bám bụi và chập hỏng rất hay xảy ra, đặc biệt với những thiết bị như bàn phím, chuột. Để tránh việc này và nâng cao tuổi thọ thiết bị bạn nên vệ sinh chúng thường xuyên.</em></strong></p><p><em>Ở bài viết này, Kicap sẽ hướng dẫn anh em cách vệ sinh bàn phím cơ đúng cách để bảo quản thiết bị tốt nhất, kéo dài độ bền thiết bị.</em></p><p>Bàn phím cơ là loại bàn phím rời cao cấp với đặc điểm nổi bật là các phím được cấu tạo riêng biệt với từng nút switch riêng. Vì được cấu tạo riêng biệt nên bàn phím cơ rất đắt và nặng, nhưng bù lại việc vệ sinh lại khá dễ dàng vì bạn có thể tháo rời từng phím một ra mà không sợ bị hỏng lây ra cả bàn phím.</p><p>Trước hết bạn cần chuẩn bị các dụng cụ sau:</p><p>– 1 chiếc keycap puller.</p><p>– 1 chiếc cọ mềm (dùng bàn chải đánh răng cũng được nhưng phải chọn loại mềm).</p><p>– 1 máy hút bụi máy tính cầm tay. (Nếu có điều kiện)</p><p>– 1 chậu nước.</p><p>– Tăm bông, khăn mềm, khăn giấy.</p><p>Cùng bắt đầu nhé.</p><p><strong>I. Vệ sinh bàn phím hàng ngày</strong></p><p>Để vệ sinh bàn phím cơ hằng ngày, anh em chỉ cần sử dụng chổi quét bàn phím, quét nhẹ nhàng qua 1 2 lượt. Nếu có thể, hãy đặt mua 1 tấm chắn mica đúng size với bàn phím để giúp che bụi bàn phím khi không sử dụng đến nhé.<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:2000,&quot;url&quot;:&quot;https://sapo.dktcdn.net/100/497/225/variants/792be7f1-5228-4ab1-a3c9-3627bdc4ccd9.jpg&quot;,&quot;width&quot;:3000}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://sapo.dktcdn.net/100/497/225/variants/792be7f1-5228-4ab1-a3c9-3627bdc4ccd9.jpg\" width=\"3000\" height=\"2000\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>II. Vệ sinh bàn phím định kì</strong></p><p><strong>Bước 1:</strong> Dùng Keycap puller tháo toàn bộ keycap ra.</p><p>Đối với loại wire thì anh em bắt nó vào 2 góc đối diện của keycap mà nhổ lên. Đối với các phím dài như Shift, CapsLock, Enter thì bắt vào 2 đầu, nhớ là làm thật chậm thôi, coi chừng gãy chân chữ thập của stab hoặc tét chân keycap. Đối với space thì thua, một là bạn gỡ bằng tay, 2 là dùng đến loại ring.</p><p>Đối với loại ring thì anh em bắt ngạng của nó vào 2 cạch đối diện của nó rồi giật lên. Đối với phím dàu thì bắt vào 2 cạch trên dưới, bắt ngay giữa phím và kép lên thật chậm. Đối với phím space thì anh em có thể nhổ lần lượt 2 đầu của nó.<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:800,&quot;url&quot;:&quot;https://sapo.dktcdn.net/100/497/225/variants/451ac850-3b94-4224-ad01-ec99d7161b37.jpg&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://sapo.dktcdn.net/100/497/225/variants/451ac850-3b94-4224-ad01-ec99d7161b37.jpg\" width=\"800\" height=\"800\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p><strong>Bước 2:</strong> Đổ keycap vào chậu nước ngâm khoảng nửa tiềng rồi vớt ra dùng bàn chải cọ nhẹ các mặt cho sạch. Sau đó rửa lại lần nữa và úp ngược keycap để ráo nước và hong nắng. Không phơi nắng trực tiếp mà chỉ hong thôi nhé.</p><p>Lưu ý dùng nước sạch và lạnh, không dùng chất tẩy rửa vì có thể ăn mòn nhựa hoặc bay màu keycap.</p><p><strong>Bước 3:</strong> Để tiếp tục vệ sinh case, anh em có thể sử dụng cồn, nồng độ càng cao càng tốt. Vì sao phải là cồn? Vì nó tẩy được dầu và bay hơi nhanh hơn nước rất nhiều, có lỡ để thấm vài gọt vào bàn phím cũng không sao, chờ một chút là khô ngay.</p><p><strong>Bước 4:</strong> Dùng tăm bông thấm cồn rửa lau các khoảng trống giữa các switch. Sau đó dùng tăm khô để thấm hết nước tại các vùng đó.</p><p><strong>Bước 5:</strong> Để case khô tự nhiên trong khoảng 1 tiếng và mang keycap vào lắp lại. Trước khi lắp nên kiểm tra kĩ xem keycap và case đã khô hẳn hay chưa.</p><p>Vậy là đã hoàn thành việc vệ sinh bàn phím cơ, chúc anh em có những trải nghiệm tốt nhất với chiếc bàn phím cơ của mình ;)</p>', 'Cách sử dụng bàn phím cơ đúng cách', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-11-23 21:58:49', '2024-11-23 21:58:49');
INSERT INTO `blogs` (`id`, `title`, `slug`, `description`, `short_description`, `banner`, `created_at`, `updated_at`) VALUES
(113, 'Hướng dẫn sử dụng KIT Lucky v2', 'huong-dan-su-dung-kit-lucky-v2', '<p><br></p><h1>Hướng dẫn sử dụng <a href=\"https://thebabustore.vn/product/ban-phim-co-lucky65-v2-mach-16mm\">Lucky65v2</a></h1><h1><strong>Phần mềm keymap</strong></h1><ul><li>Phần mềm keymap: <a href=\"http://usevia.app/\"><span style=\"text-decoration: underline;\">VIA</span></a> (cần load file json)</li><li><a href=\"https://mega.nz/folder/qvZQXIDb#Vqamxe2788N-6TqJTtMxzg\"><span style=\"text-decoration: underline;\">Json</span></a></li></ul><h1><strong>Layout mặc định của Lucky65v2</strong><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:400,&quot;url&quot;:&quot;https://bizweb.dktcdn.net/100/484/752/files/layer0.jpg?v=1731816179581&quot;,&quot;width&quot;:968}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://bizweb.dktcdn.net/100/484/752/files/layer0.jpg?v=1731816179581\" width=\"968\" height=\"400\"><figcaption class=\"attachment__caption\"></figcaption></figure></h1><p><strong>Vị trí mặc định của Fn ở sát nút ctrl phải</strong> và bạn sẽ không thể kiểm tra nút này trên các phần mềm key test thông thường (Có thể kiểm tra trên VIA khi bật matrix test)</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:371,&quot;url&quot;:&quot;https://bizweb.dktcdn.net/100/484/752/files/power-switch-lucky65v2.jpg?v=1731813230667&quot;,&quot;width&quot;:625}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://bizweb.dktcdn.net/100/484/752/files/power-switch-lucky65v2.jpg?v=1731813230667\" width=\"625\" height=\"371\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Vị trí công tắc bật pin trên bàn phím (Gần vị trí tab)</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:431,&quot;url&quot;:&quot;https://bizweb.dktcdn.net/100/484/752/files/layer3.jpg?v=1731816466424&quot;,&quot;width&quot;:1004}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://bizweb.dktcdn.net/100/484/752/files/layer3.jpg?v=1731816466424\" width=\"1004\" height=\"431\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Khi ấn giữ Fn + Tab bạn sẽ chuyển sang layer 3 (layout được set sẵn dành cho MacOS)</p><p>&nbsp;</p><p>&nbsp;</p><h1>Hướng dẫn kết nối 3 chế độ<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:394,&quot;url&quot;:&quot;https://bizweb.dktcdn.net/100/484/752/files/layer-1.jpg?v=1731816228627&quot;,&quot;width&quot;:1036}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://bizweb.dktcdn.net/100/484/752/files/layer-1.jpg?v=1731816228627\" width=\"1036\" height=\"394\"><figcaption class=\"attachment__caption\"></figcaption></figure></h1><h2>Cách chuyển chế độ kết nối và kết nối các thiết bị</h2><h3><strong>Kết nối dây</strong></h3><ul><li>Cắm dây usb type C</li><li>Ấn Fn + T để chuyển về chế độ kết nối dây</li></ul><h3><strong>Kết nối Bluetooth</strong></h3><p>Nếu bàn phím chưa pair bluetooth với thiết bị nào bạn cần pair theo hướng dẫn:</p><ul><li>Hãy chắc chắn bàn phím không cắm sạc và công tắc pin đã bật</li><li>Ấn và giữ FN + <strong>1 trong 3</strong> nút <strong>Q, W hoặc E</strong> (tương ứng với 3 thiết bị bàn phím có thể lưu) đến khi đèn tại <strong>1 trong 3</strong> nút <strong>Q, W hoặc E</strong> nháy nhanh</li><li>Trên thiết bị cần kết nối (PC, điện thoại....) bật bluetooth và tìm thiết bị tên Lucky65v2 chọn kết nối và làm theo hướng dẫn</li><li>Sau khi kết nối thành công đèn LED sẽ tắt</li></ul><h3><strong>Kết nối 2.4 Ghz</strong></h3><p>Nếu bàn phím của bạn mới mua về và chưa bao giờ kết nối 2.4 Ghz bạn cần pair bàn phím với usb receiver. Cách pair như sau:</p><ul><li><strong>Chưa cắm</strong> usb receiver vào máy tính</li><li>Ấn <strong>FN + R </strong>để chuyển phím về mode 2.4 Ghz</li><li>Ấn và giữ <strong>FN + R </strong>trong 3s đèn ở nút R nháy nhanh báo bắt đầu pair</li><li>Bắt đầu cắm dongle vào máy tính</li><li>Sau khi pair thành công đèn LED sẽ tắt, bạn có thể gõ vài nút trên phím để thử</li></ul><p><em>Lưu ý:</em></p><ul><li><em>Nếu máy tính của bạn cắm nhiều receiver (chuột, tai nghe...) hãy thử rút tất cả các receiver đó ra và pair lại</em><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:394,&quot;url&quot;:&quot;https://bizweb.dktcdn.net/100/484/752/files/layer-1.jpg?v=1731816228627&quot;,&quot;width&quot;:1036}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://bizweb.dktcdn.net/100/484/752/files/layer-1.jpg?v=1731816228627\" width=\"1036\" height=\"394\"><figcaption class=\"attachment__caption\"></figcaption></figure></li></ul><h2>Các phím tắt chức năng (Trên Windows)</h2><ul><li>Fn+1 = My computer</li><li>Fn+2 = Home</li><li>Fn+3 = E-mail</li><li>Fn+4 = Calculator</li><li>Fn+5 = Player</li><li>Fn+6 = Stop</li><li>Fn+7 = Previous</li><li>Fn+8 = Play / Pause</li><li>Fn+9 = Next</li><li>Fn+0 = Volume -</li><li>Fn+- = Volume +</li><li>Fn+H = Scroll lock</li><li>Fn+J = Pause Break</li><li>Fn+K = Home</li><li>Fn+L = End</li><li>Fn+Tab (ấn và giữ 3s) = Chuyển chế độ Windows / MacOS</li><li>Fn+Esc (ấn và giữ 5s) = Reset bàn phím về mặc định</li><li>Fn+Win trái = Khoá nút win</li><li>Fn+Space = Hiển thị % pin</li></ul><h2>Các phím tắt chức năng (Trên MacOS)</h2><ul><li>Fn+1 = Tăng độ sáng màn hình</li><li>Fn+2 = Giảm độ sáng màn hình</li><li>Fn+7 = Previous</li><li>Fn+8 = Play / Pause</li><li>Fn+9 = Next</li><li>Fn+0 = Volume -</li><li>Fn+- = Volume +</li><li>Fn+Tab (ấn và giữ 3s) = Chuyển chế độ Windows / MacOS</li><li>Fn+Esc (ấn và giữ 5s) = Reset bàn phím về mặc định</li><li>Fn+Win trái = Khoá nút win</li><li>Fn+Space = Hiển thị % pin</li><li>Fn+Tab (ấn và giữ 3s) = Chuyển chế độ Windows / MacOS</li><li>Fn+Esc (ấn và giữ 5s) = Reset bàn phím về mặc định</li><li>Fn+Win trái = Khoá nút win</li><li>Fn+Space = Hiển thị % pin</li></ul><h2>Các phím tắt điều khiển LED</h2><ul><li>Fn+\\| = Thay đổi hiệu ứng LED</li><li>FN+Back space = Bật / tắt LED</li><li>FN+Enter = Thay đổi màu LED sang đơn sắc (có 7 màu LED)</li><li>Fn+↑↓ = Tăng / giảm độ sáng LED</li><li>Fn+→← = Tăng / giảm tốc độ hiệu ứng LED</li></ul>', 'Hướng dẫn sử dụng KIT Lucky v2', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-12-10 06:21:29', '2025-01-01 12:53:48'),
(114, 'Hướng dẫn sử dụng bàn phím cơ AL65', 'huong-dan-su-dung-ban-phim-co-al65', '<h2><strong>HƯỚNG DẪN SỬ DỤNG KIT AL65</strong></h2><h3><strong>Phương thức kết nối Bluetooth</strong></h3><p>Gạt công tắc sang phải</p><p>Sau đó nhấn và giữ FN + Q / W / E , cho tới khi đèn nháy nhanh . Sau khi đèn nháy nhanh chúng ta vào phần BT trên máy tính/ laptop/ điện thoại/ máy tính bảng sẽ hiện lên thiết bị. Lúc này có thể chọn và kết nối<br>Nhấn nhanh FN+Q,W,E để chuyển kênh Bluetooth, kết nối lại kênh Bluetooth tương ứng và đèn báo tương ứng sẽ nháy chậm . Sau khi kết nối thành công, nó sẽ ngưng nháy.</p><h3><strong>Phương thức kết nối 2.4G</strong></h3><p><br>Gạt công tắc sang phải</p><p>Bấm Fn + R là có thể sử dụng, nếu không được làm theo dưới đây:</p><p><br><em>Nhấn và giữ FN + R cho tới khi đèn nháy nhanh<br>Cắm đầu USB vào máy tính ( khi đen trên phím R tắt và không còn nhấp nháy thì đã hoàn thành kết nối và có thể sử dụng )</em><br>&nbsp;</p><p><br><strong>Lưu ý :&nbsp;</strong></p><ol><li>Khi pin yếu, đèn báo sẽ nháy đỏ</li><li>Dòng sạc tối đa: DC 5V - 1A. Chỉ nên sử dụng cổng sạc từ máy tính để sạc cho bàn phím, dùng củ sạc điện thoại, ipad (sạc nhanh) có thể làm hỏng bàn phím</li></ol><h3><strong>Phương thức kết nối Dây</strong></h3><p><br>Gạt công tắc sang trái</p><ol><li>Kết nối bàn phim với máy tinh bằng cáp dữ liệu.</li><li>Bấm Fn + Tab để chuyển bàn phím về chế độ cắm dây</li></ol><h3><strong>Sử dụng núm bàn phím:</strong></h3><p><br>- Bấm và giữ núm xuống trong khoảng 5 giây để chuyển đổi giữa điều khiển led và âm lượng (Led mode và Volume mode)<br>- Volume mode: bấm núm: mute on/ off, xoay để tăng giảm âm lượng<br>- Led mode: bấm núm để đổi kiểu led, xoay để tăng giảm độ sáng<br><br><br>&nbsp;</p><h3><strong>Điều chỉnh đèn led:</strong></h3><p>Fn + |\\ : Thay đổi hiệu ứng ánh sáng<br>Fn + ]} : Thay đổi màu đèn<br>Fn + ↓/↑ : Thay đổi độ sáng của đèn<br>Fn + &lt;-/-&gt; : Thay đổi tốc độ hiệu ứng đèn</p><p><strong>Tổ hợp chức năng</strong></p><p>Fn + A : Chuyển sang Window<br>Fn + S : Chuyển sang MAC<br>Fn + Win : Lock WIN<br>Fn + Space : Tắt mở đèn nền</p><h3><strong>Link tải phần mềm driver:</strong></h3><p><a href=\"https://hcmusshedu-my.sharepoint.com/:u:/g/personal/1656100109_hcmussh_edu_vn/EfPL9QC5BlJCpRev8Kl90ZgB4TYHUqThJRBUfn-njiWw2Q?e=eFqDn6\"><strong>AL65 driver software</strong></a></p><p><br></p>', 'Hướng dẫn sử dụng bàn phím cơ AL65', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-12-10 06:28:41', '2024-12-21 07:09:34'),
(115, 'Hướng dẫn update firmware Lucky65 V1', 'huong-dan-update-firmware-lucky65', '<h3><strong>LƯU Ý:</strong></h3><p>Nếu bàn phím đang sử dụng bình thường, ổn định thì không nên update firmware, áp dụng cho tất cả các bàn phím cũng như thiết bị khác.</p><p>Đang sử dụng bình thường không update.</p><h3><strong>CHUẨN BỊ:</strong></h3><p>1. Tất nhiên là bàn phím Lucky65 và Receiver của nó</p><p>2. Tải firmawre tại đây: <a href=\"https://hcmusshedu-my.sharepoint.com/:u:/g/personal/1656100109_hcmussh_edu_vn/EftCej8wbJlCt2UkxBYGatIBSh8dENu_Y1Ilx-19oKsLoA?e=wQ3gcc\"><strong>FIRMWARE LUCKY65</strong></a></p><p>3. Sau khi tải về và giải nén sẽ được 2 file:</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:48,&quot;url&quot;:&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAO4AAAAwCAIAAACZuNEqAAAIIUlEQVR4Ae1cSa7bRhBVVt7lPLoPL/CXDmAgKy8+5AvkFjpDEOQEH7BzAV9BgFZBVfWrej1Q1EDJEtmC8dmsrno1vW5SA715e3s79FevwOtXYNOp/PpN7BlIBTqVOw8WUoGSyl/fv130byFl6Gm8fgWuofLf//z79f2b/X39CvQMFlKBBpV/nv36+v4NZdgPm+3uA2fTx3P198NGXwn8Y7e1881m2De8xDymFQAnbqF6zYA5MNWqbB0kH7BhPnP92SgmykJFh8izgoB0NBLJqlJyweFwgCHJRBSFgELAXJ/ifJanqHycet2bynUn9wNVtFGF/d4ILu2y0gvGdktdESvrRSE0uPAZo4ajWnSheg3QkIxgfux2aR27ghcGkoaOOdDcU+qVlZYmr4ut5yEKP4rcSOCRogkqbz5/93/H4/Eveh2PxztTeT/kRVUOVqJ2tbImDUPOZZkcRi4jiQqxFtr4tRQcqmeul0xifuwsM0/3cIDIvWaCj9122CUjWdHYaqHUqLkCkaoD165i6heMpqn8+5//ffryY/P5e71Ht6jM1eexLm69OdDq+ZRuElJdryp2hkS49v3FBKOj8uYoztFrD6Aousp3Fc+z8HOeJyQ97NMNUIQXhpGgX6AhEtth2KaLOEy2uzqOOlopJ4ios5yrCOhciLx37YaV6A75PZ15JJAIoSVE8JqLnKRSpCqpcaYTcDeOpqn86cuP3/6Qvfm8XZlD9jGllOK1KZGnfYHKkobS8EYdFMCRy/RTlbDZYFlQP1MDxxASzQJAPJCybVt1tKKDeCNdESaoEHrMDkupKo6ZaC6xKNzMB27fICWUXCcID20cVdUyokDIMF8PDWSI6kKJZNinv6ZGwGPXAMe7ZDBNZePxTbuy9CTnhua89SUrETs7kJ8LeBK5UT0g4mO0BIroG1AhZysZq1w2V+KQcgpvN42bgDkgWjPEG980nSfuNqKbXuaFgkGcGhfJyzgF2kMsjVqrJ3QwwhGuaspF0yJ21c68R2iNQmlFfT0fdEEheTmGi4C5bjRN5ea9st1snHuDkXdUA1WubTOGW2Wjvlw9HsP+dBFg4WxQ4D1uE3PmUe2gLwHCQyP+dJWOaDNAGOBo+CmkELo1nFqnnaEZJsXotwguQ7YE4ODunBmkF5DaiiTiHAWgjYY8uHcfRGoualI5cEnv1uFlVC5ul1tUpmxiaxRhNEhiTs2jHtoFkN+h+SRhWr41nsnxAYbj0yDVFGE4eFHBkJOTyCS0hSpFtMgx4qUF4UL3EA5cZJVJFJJ5QIbf1jVKuJ2MAJURMbOOhVBboS+2eRLjCI6GwIVTMS8iNm22qXUAc9txgsoFd4vTFpUTY/TawZ8SSAL20gJ58lm/qPOalk4qlH34VIBUqbt+7KjuyLYT7w7LGSeTR9UJ2feqPFox1LduFK/5THljESnvRBYrIXOqfND5kbd9HIvfn7uVZdjWsUR5v0ZFvS4enaepRsHFFjLFz9P6bt7SFnFVgLxS3IVrxg0q/8IvrqNg1+TyaJvXivbR1Xm4v5LKDw+AHPJuQeLxIbaUtO3FzjJuUszcgHBxtIXr809vCPJ8J6+v+SRUtsuSX4GevK6vFe2TF3O28J6EyrPl04FWW4FO5dW2fmmJdyovraOrzadTebWtX1rincpL6+hq8ympfNGHyvQVyWoL2BN/lgpcQ+X+QNSzdK/HQRVoUPns56F+0q5MX10S+vjwXH18PZA+cqavRZtfiEBdvzSZ72Pqc6NNP6EovCMojweC+CrXCpV9uwsltyJwkolalAJGJfJ4I5Yzc4rKxS8u6tN7U7lm0NR3xWyhbY0u39Izhj2J03hYyEMGSEPHMDXgxNLKKvthlOnrupZfyiPJUeSTMS9lcoLK/gvPs396f2Zh0NdT6v5T4FBqiGLSti3asaTXaHOmdunJOdEWmPhe2zkZP313TeioYMGPKnnCdx1MU/mlHogqOEdc1i3MfqwBdqvyrnr8B5r0PBLBYpYv660OJQpnbCVaqwmdL/pRpVZ95pdNU/mlHogizkmtnMp0Ryky27npDiTmY6Skdc1iINd72v/LxngcJ6jsOrFfQxtHhTXCS1zJIRk2f7wcPzqmsMgoRe64WNpsdzI7gn2i4TSVX+qBKGqYFBmUcEpr5bEZsjLGsIBizmBld/od3ujDPLFWKALgJdqM6MA7jmSFoEXE4/zEVm9jjTUjp7UssE0dDeEl/kxT2W+X+TFVewvYetsHTqSSa1WlRr70rSy6ycz/QBR7t96o3zwAMIGVMS5JVFO5SKTocmafagALzOGYTJVQsT4W+KhSUaM7nV5G5eJDjBaViTVxTRRhvlUk6oBBmp20uHjEyIwI08pQ46XyMJ64B4toHGCFsrM2WYli3IrEbJ5I3heskpDW7mod13aS11Zx9Y85tSM4GgLSc4xm0FT9YGrRJui+wnGCygV3i9MWlX/pA1HSb3/llFNi6pzLvc35Rx/AmHrbFwvFGx1O2BMAbV21dQzCqWwRKQhWI90AhCi722ghU448/dhHlbw+dx00qHzRd9fzBtfYVuZ1cBGa9D5jzUXWXfnBFSip/GD3mTvek7KJsRNsd2kjnpl2gu47eDuE+wbQ9tmlIxV4EirbxW+COCMpzCvOLsOt/yx0XncdbbYKPAmVZ8unA622Ap3Kq2390hLvVF5aR1ebT6fyalu/tMQ7lZfW0dXm06m82tYvLfFO5aV1dLX5dCqvtvVLS7xTeWkdXW0+ncqrbf3SEu9UXlpHV5tPp/JqW7+0xP8Hml4DDdtid64AAAAASUVORK5CYII=&quot;,&quot;width&quot;:238}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAO4AAAAwCAIAAACZuNEqAAAIIUlEQVR4Ae1cSa7bRhBVVt7lPLoPL/CXDmAgKy8+5AvkFjpDEOQEH7BzAV9BgFZBVfWrej1Q1EDJEtmC8dmsrno1vW5SA715e3s79FevwOtXYNOp/PpN7BlIBTqVOw8WUoGSyl/fv130byFl6Gm8fgWuofLf//z79f2b/X39CvQMFlKBBpV/nv36+v4NZdgPm+3uA2fTx3P198NGXwn8Y7e1881m2De8xDymFQAnbqF6zYA5MNWqbB0kH7BhPnP92SgmykJFh8izgoB0NBLJqlJyweFwgCHJRBSFgELAXJ/ifJanqHycet2bynUn9wNVtFGF/d4ILu2y0gvGdktdESvrRSE0uPAZo4ajWnSheg3QkIxgfux2aR27ghcGkoaOOdDcU+qVlZYmr4ut5yEKP4rcSOCRogkqbz5/93/H4/Eveh2PxztTeT/kRVUOVqJ2tbImDUPOZZkcRi4jiQqxFtr4tRQcqmeul0xifuwsM0/3cIDIvWaCj9122CUjWdHYaqHUqLkCkaoD165i6heMpqn8+5//ffryY/P5e71Ht6jM1eexLm69OdDq+ZRuElJdryp2hkS49v3FBKOj8uYoztFrD6Aousp3Fc+z8HOeJyQ97NMNUIQXhpGgX6AhEtth2KaLOEy2uzqOOlopJ4ios5yrCOhciLx37YaV6A75PZ15JJAIoSVE8JqLnKRSpCqpcaYTcDeOpqn86cuP3/6Qvfm8XZlD9jGllOK1KZGnfYHKkobS8EYdFMCRy/RTlbDZYFlQP1MDxxASzQJAPJCybVt1tKKDeCNdESaoEHrMDkupKo6ZaC6xKNzMB27fICWUXCcID20cVdUyokDIMF8PDWSI6kKJZNinv6ZGwGPXAMe7ZDBNZePxTbuy9CTnhua89SUrETs7kJ8LeBK5UT0g4mO0BIroG1AhZysZq1w2V+KQcgpvN42bgDkgWjPEG980nSfuNqKbXuaFgkGcGhfJyzgF2kMsjVqrJ3QwwhGuaspF0yJ21c68R2iNQmlFfT0fdEEheTmGi4C5bjRN5ea9st1snHuDkXdUA1WubTOGW2Wjvlw9HsP+dBFg4WxQ4D1uE3PmUe2gLwHCQyP+dJWOaDNAGOBo+CmkELo1nFqnnaEZJsXotwguQ7YE4ODunBmkF5DaiiTiHAWgjYY8uHcfRGoualI5cEnv1uFlVC5ul1tUpmxiaxRhNEhiTs2jHtoFkN+h+SRhWr41nsnxAYbj0yDVFGE4eFHBkJOTyCS0hSpFtMgx4qUF4UL3EA5cZJVJFJJ5QIbf1jVKuJ2MAJURMbOOhVBboS+2eRLjCI6GwIVTMS8iNm22qXUAc9txgsoFd4vTFpUTY/TawZ8SSAL20gJ58lm/qPOalk4qlH34VIBUqbt+7KjuyLYT7w7LGSeTR9UJ2feqPFox1LduFK/5THljESnvRBYrIXOqfND5kbd9HIvfn7uVZdjWsUR5v0ZFvS4enaepRsHFFjLFz9P6bt7SFnFVgLxS3IVrxg0q/8IvrqNg1+TyaJvXivbR1Xm4v5LKDw+AHPJuQeLxIbaUtO3FzjJuUszcgHBxtIXr809vCPJ8J6+v+SRUtsuSX4GevK6vFe2TF3O28J6EyrPl04FWW4FO5dW2fmmJdyovraOrzadTebWtX1rincpL6+hq8ympfNGHyvQVyWoL2BN/lgpcQ+X+QNSzdK/HQRVoUPns56F+0q5MX10S+vjwXH18PZA+cqavRZtfiEBdvzSZ72Pqc6NNP6EovCMojweC+CrXCpV9uwsltyJwkolalAJGJfJ4I5Yzc4rKxS8u6tN7U7lm0NR3xWyhbY0u39Izhj2J03hYyEMGSEPHMDXgxNLKKvthlOnrupZfyiPJUeSTMS9lcoLK/gvPs396f2Zh0NdT6v5T4FBqiGLSti3asaTXaHOmdunJOdEWmPhe2zkZP313TeioYMGPKnnCdx1MU/mlHogqOEdc1i3MfqwBdqvyrnr8B5r0PBLBYpYv660OJQpnbCVaqwmdL/pRpVZ95pdNU/mlHogizkmtnMp0Ryky27npDiTmY6Skdc1iINd72v/LxngcJ6jsOrFfQxtHhTXCS1zJIRk2f7wcPzqmsMgoRe64WNpsdzI7gn2i4TSVX+qBKGqYFBmUcEpr5bEZsjLGsIBizmBld/od3ujDPLFWKALgJdqM6MA7jmSFoEXE4/zEVm9jjTUjp7UssE0dDeEl/kxT2W+X+TFVewvYetsHTqSSa1WlRr70rSy6ycz/QBR7t96o3zwAMIGVMS5JVFO5SKTocmafagALzOGYTJVQsT4W+KhSUaM7nV5G5eJDjBaViTVxTRRhvlUk6oBBmp20uHjEyIwI08pQ46XyMJ64B4toHGCFsrM2WYli3IrEbJ5I3heskpDW7mod13aS11Zx9Y85tSM4GgLSc4xm0FT9YGrRJui+wnGCygV3i9MWlX/pA1HSb3/llFNi6pzLvc35Rx/AmHrbFwvFGx1O2BMAbV21dQzCqWwRKQhWI90AhCi722ghU448/dhHlbw+dx00qHzRd9fzBtfYVuZ1cBGa9D5jzUXWXfnBFSip/GD3mTvek7KJsRNsd2kjnpl2gu47eDuE+wbQ9tmlIxV4EirbxW+COCMpzCvOLsOt/yx0XncdbbYKPAmVZ8unA622Ap3Kq2390hLvVF5aR1ebT6fyalu/tMQ7lZfW0dXm06m82tYvLfFO5aV1dLX5dCqvtvVLS7xTeWkdXW0+ncqrbf3SEu9UXlpHV5tPp/JqW7+0xP8Hml4DDdtid64AAAAASUVORK5CYII=\" width=\"238\" height=\"48\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><h3><strong>Tiến hành Update firwmware:</strong></h3><p>1. Tắt công tắc trên bàn phím, rút receiver khỏi máy, kết nối bàn phím với máy tính bằng chế độ cắm dây.</p><p>2. Chạy file <strong>lucky65_3M_Keyboard_20240612.exe </strong>sẽ ra giao diện sau:</p><p>và bấm các nút theo thứ tự trên ảnh:</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:295,&quot;url&quot;:&quot;https://bizweb.dktcdn.net/100/503/209/files/update-firmware-lucky65-1.png?v=1718940728156&quot;,&quot;width&quot;:807}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://bizweb.dktcdn.net/100/503/209/files/update-firmware-lucky65-1.png?v=1718940728156\" width=\"807\" height=\"295\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>&nbsp;</p><p>Đợi chạy xong 100% như hình dưới là được:</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:295,&quot;url&quot;:&quot;https://bizweb.dktcdn.net/100/503/209/files/update-firmware-lucky65-2.png?v=1718940743635&quot;,&quot;width&quot;:807}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://bizweb.dktcdn.net/100/503/209/files/update-firmware-lucky65-2.png?v=1718940743635\" width=\"807\" height=\"295\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>3. Tiếp đến ta cần update cho Receiver, rút bàn phím ra, cắm receiver vào máy (lưu ý không bật phím), chạy file <strong>lucky65_Dongle_20240612.exe:</strong></p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:295,&quot;url&quot;:&quot;https://bizweb.dktcdn.net/100/503/209/files/update-firmware-lucky65-3.png?v=1718940756561&quot;,&quot;width&quot;:807}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://bizweb.dktcdn.net/100/503/209/files/update-firmware-lucky65-3.png?v=1718940756561\" width=\"807\" height=\"295\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Làm tương tự như trên và đợi nó chạy xong 100%:</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:295,&quot;url&quot;:&quot;https://bizweb.dktcdn.net/100/503/209/files/update-firmware-lucky65-4.png?v=1718940769045&quot;,&quot;width&quot;:807}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://bizweb.dktcdn.net/100/503/209/files/update-firmware-lucky65-4.png?v=1718940769045\" width=\"807\" height=\"295\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Nếu khi chạy xảy ra lỗi thì có thể rút Receiver ra cắm lại làm lại từ đầu.</p><p>&nbsp;</p><h3><strong>1 số vấn đề khác:</strong></h3><p>Nếu trước hoặc sau khi update firmware mà Bàn phím và Receiver không kết nối được với nhau:</p><p>1. Rút receiver ra khỏi máy tính.</p><p>2. Bật công tắc bàn phím</p><p>3. <strong>Bấm và Giữa đồng thời </strong>Fn+R trong 3 giây, lúc này đèn nút R sẽ nháy nhanh hơn bình thường.</p><p>4. Cắm Receiver vào máy tính, đưa bàn phím lại gần receiver, nút R không nháy nữa là đã ghép nối thành công.</p><p>5. Nếu không được làm lại từ B1</p><p>&nbsp;</p><p>Chúc các bạn thành công</p><p>Cre: MKSHOP</p>', 'Update firmware Lucky65 v1 fix các lỗi không nhận reciever 2.4ghz', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-12-21 07:20:45', '2024-12-21 07:39:53'),
(116, 'Hướng dẫn sử dụng Aula F98 Pro V2', 'huong-dan-su-dung-aula-f98-pro-v2', '<p>Dưới đây là phần hướng dẫn sử dụng chiếc bàn phím <a href=\"https://thebabustore.vn/product/ban-phim-co-f98-pro-only-kit-67WiaMGJyiWW46gH82ex\"><strong>Aula F98 Pro V2</strong></a><strong> </strong>chi tiết nhất!</p><p><strong>=&gt;&gt; Các TIPS và lưu ý quan trọng trong quá trình sử dụng &lt;==</strong></p><p>Tuyên bố trách nhiệm: Bài viết này chỉ hướng dẫn cho anh em cách sử dụng bàn phím. MKShop chỉ tiếp nhận và giải đáp những thắc mắc về lỗi bàn phím khi mọi người mua bàn phím bên shop. Trân trọng cảm ơn anh em &lt;3</p><p><br></p><p><strong>Lưu ý</strong>: luôn luôn sạc bàn phím thông qua cổng USB của máy tính, không sạc bằng cái củ sạc khác như sạc dự phòng, sạc laptop, tai nghe, điện thoại v.v</p><p>Tổ hợp khoá hoặc mở khoá nút WIN: FN + WIN (<em>anh em hay bấm nhầm dẫn đến không bấm được nút WIN</em>)</p><p>Khi không sử dụng, bàn phím sẽ tự động ngủ sau 5 phút. Để đánh thức, bạn chỉ cần gõ vào phím bất kỳ là được.</p><h3><strong>I.Phần mềm driver:</strong></h3><p>- Có thể tải tại trang chủ của hãng:&nbsp; https://www.aulacn.com/</p><p>hoặc trực tiếp tại <a href=\"https://hcmusshedu-my.sharepoint.com/:u:/g/personal/1656100109_hcmussh_edu_vn/EU2dJh6ZZDREi5eMPywVg-IBXjNXGf30tAmmwcXIupsy8Q?e=iNpiNO\"><span style=\"text-decoration: underline;\">Aula F98 Pro V2 Driver</span></a></p><h3><strong>II. TỔ HỢP PHÍM Fn</strong></h3><p>Fn + ESC: giữ 3 giây để reset bàn phím</p><p>Fn + Windows trái: khóa/ mở khóa nút windows</p><p>Fn + Del: Insert</p><p>Fn + Shift phải: đổi chế độ led cạnh</p><p>Fn + Alt phải: đổi độ sáng led cạnh</p><p>Fn + Ctrl phải: đổi tốc độ chạy led cạnh</p><p>Fn + ?/: đổi màu dải led cạnh</p><p>Fn + U: Print Screen</p><p>Fn + I: Scrlk</p><p>Fn + O: Pause</p><p>Fn + K: Home</p><p>Fn + L: End</p><p>Fn + &lt;: page up</p><p>Fn + &gt;: page down</p><h3><strong>III. CHỨC NĂNG HÀNG F Ở CÁC HỆ ĐIỀU HÀNH WIN/ MAC/ ANDROID/ IOS:</strong><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:2137,&quot;url&quot;:&quot;https://bizweb.dktcdn.net/100/503/209/files/1.jpg?v=1729586570117&quot;,&quot;width&quot;:2560}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://bizweb.dktcdn.net/100/503/209/files/1.jpg?v=1729586570117\" width=\"2560\" height=\"2137\"><figcaption class=\"attachment__caption\"></figcaption></figure><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:2105,&quot;url&quot;:&quot;https://bizweb.dktcdn.net/100/503/209/files/2.jpg?v=1729586582447&quot;,&quot;width&quot;:2560}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://bizweb.dktcdn.net/100/503/209/files/2.jpg?v=1729586582447\" width=\"2560\" height=\"2105\"><figcaption class=\"attachment__caption\"></figcaption></figure></h3><p>&nbsp;</p><h3><strong>IV. SỬ DỤNG NÚM VÀ MÀN HÌNH:</strong></h3><p>Hầu hết các chức năng của bàn phím có thể điều chỉnh thông qua màn hình phụ. Để sử dụng nó, các bạn dùng núm xoay bên cạnh để di chuyển và chọn chức năng phù hợp. <strong>Xoay núm để di chuyển, ấn xuống để chọn</strong></p><p><strong><em>Núm xoay có thể chuyển từ điều chỉnh màn hình phụ sang chỉnh trực tiếp volume = cách giữ Fn và Ấn núm</em></strong></p><ol><li><strong>Đổi ngôn ngữ màn hình sang tiếng Anh:&nbsp;</strong></li><li>&nbsp;</li></ol><p>&nbsp;</p><h3><strong>IV. CÁC TỔ HỢP PHÍM TẮT</strong></h3><p><strong>FN+A : Layout MAC</strong> | <strong>FN+W : LAYOUT WIN</strong><br><strong>&nbsp;</strong>&nbsp;| <strong>F1</strong> | Tăng độ sáng màn hình | <strong>Fn</strong> | <strong>F1</strong> | Tăng độ sáng màn hình<br><strong>F2</strong> | Giảm độ sáng màn hình | <strong>F2</strong> | Giảm độ sáng màn hình<br><strong>F3</strong> | Cửa sổ đa nhiệm | <strong>F3</strong> | Cửa sổ đa nhiệm<br><strong>F4</strong> | Siri | <strong>F4</strong> | Voice<br><strong>F5</strong> | Màn hình chính | <strong>F5</strong> | Màn hình chính<br><strong>F6</strong> | Tìm kiếm | <strong>F6</strong> | Tìm kiếm<br><strong>F7</strong> | Prev track | <strong>F7</strong> | Prev track<br><strong>F8</strong> | Play/Pause | <strong>F8</strong> | Play/Pause<br><strong>F9</strong> | Next Track | <strong>F9</strong> | Next Track<br><strong>F10</strong> | Tắt tiếng | <strong>F10</strong> |&nbsp; <br><strong>F11</strong> | Giảm âm lượng | <strong>F11</strong> | Giảm âm lượng<br><strong>F12</strong> | Tăng âm lượng | <strong>F12</strong> | Tăng âm lượng</p><p><strong>&nbsp;</strong></p><ul><li><strong>CÁC TỔ HỢP PHÍM TẮT KHÁC</strong></li></ul><p>Fn + P: Chụp ảnh màn hình</p><p>Fn + [: ScrLk</p><p>Fn + ]: Pause</p><p>Fn + L: Ins</p><p>Fn + Win: Khóa/Mở phím WIN</p><p>Fn + ESC: giữ 3 giây để RESET bàn phím</p>', 'Hướng dẫn sử dụng Aula F98 Pro v2', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-12-21 07:41:48', '2024-12-21 07:41:48'),
(117, 'Hướng dẫn sử dụng Alice record V2', 'huong-dan-su-dung-alice-record-v2', '<h2><strong>HƯỚNG DẪN SỬ DỤNG KIT WEIKAV RECORD ALICE V2</strong></h2><p>Dưới đây là phần hướng dẫn sử dụng chiếc bàn phím <a href=\"https://mkshop.vn/recordalicev2\"><span style=\"text-decoration: underline;\">Record Alice V2</span></a> chi tiết nhất!</p><p><strong>=&gt;&gt; Các TIPS và lưu ý quan trọng trong quá trình sử dụng &lt;==</strong></p><p>Tuyên bố trách nhiệm: Bài viết này chỉ hướng dẫn cho anh em cách sử dụng bàn phím. MKShop chỉ tiếp nhận và giải đáp những thắc mắc về lỗi bàn phím khi mọi người mua bàn phím bên shop. Trân trọng cảm ơn anh em &lt;3</p><p>&nbsp;</p><h3><a href=\"https://s.shopee.vn/20dVZEuzs2\"><span style=\"text-decoration: underline;\">S</span></a><a href=\"https://shopee.vn/Record-Alice-V2-3-mode-k%E1%BA%BFt-n%E1%BB%91i-Keyboard-Kit-Keymap-VIA-Nh%C3%B4m-CNC-RGB-xu%C3%B4i-i.385511331.25431545491\"><span style=\"text-decoration: underline;\">hopee</span></a></h3><p>&nbsp;</p><p><strong>Lưu ý</strong>: luôn luôn sạc bàn phím thông qua cổng USB của máy tính, không sạc bằng cái củ sạc khác như sạc dự phòng, sạc laptop, tai nghe, điện thoại v.v</p><h3><strong>Phương thức kết nối Bluetooth</strong></h3><p>Gạt công tắt \" ON \"/ Bấm Fn + Pgdn để chuyển qua lại 2.4 và bluetooth</p><p>Sau đó nhấn và giữ FN + Q / W / E , cho tới khi đèn báo nháy nhanh . Sau khi đèn nháy nhanh chúng ta vào phần BT trên máy tính/ laptop/ điện thoại/ máy tính bảng sẽ hiện lên thiết bị. Lúc này có thể chọn và kết nối<br>Nhấn nhanh FN+Q,W,E để chuyển kênh Bluetooth, kết nối lại kênh Bluetooth tương ứng và đèn báo tương ứng sẽ nháy chậm . Sau khi kết nối thành công, nó sẽ ngưng nháy.</p><h3><strong>Phương thức kết nối 2.4G</strong></h3><p><br>Gạt công tắt \" ON \"/ Bấm Fn + Pgdn để chuyển qua lại 2.4 và bluetooth<br>Nhấn và giữ FN + R cho tới khi đèn nháy nhanh<br>Cắm đầu USB vào máy tính ( khi đen trên phím R tắt và không còn nhấp nháy thì đã hoàn thành kết nối và có thể sử dụng )<br>&nbsp;</p><h3><strong>Phương thức kết nối Dây</strong></h3><p>&nbsp;</p><ol><li>Kết nối bàn phim với máy tinh bằng cáp dữ liệu và đợi trình điêu khiển được cài đặt tự động, sau đó bạn có thể sử dụng bàn phim.</li><li>Bấmn nhanh FN+ Capslock đê chuyển sang chế độ có đây</li></ol><h3>&nbsp;</h3><h3><strong>Điều chỉnh đèn led:</strong></h3><p>Fn + Enter : Thay đổi hiệu ứng ánh sáng</p><p>Fn + Backspace: tắt/ bật đèn led nền<br>Fn + |\\ : Thay đổi màu đèn<br>Fn + ~ : đồi hiệu ứng led cạnh<br>Fn + &lt;-/-&gt; : Thay đổi tốc độ hiệu ứng đèn<br>Fn + lên/ xuống: thay đổi độ sáng<br><br><strong>Tổ hợp chức năng</strong></p><p>Fn + Tab : chuyển hàng số thành F1 ~ F12 và ngược lại<br>Fn + ESC : bấm giữ trong 3 giây để reset<br>Fn + Win : Lock WIN<br>Fn + Space : chỉ hoạt động ở chế độ không dây, bấm giữ để kiểm tra pin, đèn ở hàng số hiện đến bao nhiêu là còn báy nhiêu %, ví dụ sáng đến số 3 là còn 30%</p><p>Fn + Pgup: chuyển đổi Win/ MAC</p><p>&nbsp;</p><h3><strong>Link tải phần mềm driver:</strong></h3><p>Record Alice V2 sử dụng VIA để keymap chức năng, các bạn tải file Json tại đây và import vào VIA để sử dụng:</p><p><a href=\"https://drive.google.com/file/d/1pLiWCzIjB1cB6ccKDfMfJMaTfQAfstMu/view?usp=sharing\"><strong>Link tải Json Record Alice V2</strong></a></p><p><br></p>', 'Hướng dẫn sử dụng Alice record V2 chi tiết nhất!!! ', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-12-21 07:46:13', '2024-12-21 07:46:13'),
(118, 'Hướng dẫn sử dụng bàn phím Aula F87', 'huong-dan-su-dung-ban-phim-aula-f87', '<p><a href=\"https://thebabustore.vn/product/ban-phim-co-aula-f75-b0AKxpY0YCS0nl2AVm8k\"><strong>AULA F87 PRO</strong></a></p><p>Bàn phím cơ Aula là một trong những bàn phím ở phân khúc tầm trung được nhiều người ưa chuộng. Bên cạnh bàn phím Aula F75 thì bàn phím Aula F87 Pro với layout 87% cũng có độ hot không kém. Bàn phím có kiểu dáng Tenkeyless và độ bền cao với 60 triệu lần bấm. Aula F87 sử dụng switch loại Grey Wood V3 và có hiệu ứng âm thanh linear khi gõ. Màu sắc độc đáo từ gradient đen đến đen space tím hay đen space xanh lá cũng là yếu tố khiến Aula F87 được yêu thích. Hôm nay hãy cùng Gọn Gàng Shop tìm hiểu về cách sử dụng đầy đủ của chiếc bàn phím này nhé.</p><p>&nbsp;</p><h3><strong>1. Hướng dẫn kết nối bàn phím với thiết bị</strong></h3><p>&nbsp;</p><p>Kết nối bàn phím với thiết bị qua Bluetooth<br><br></p><p>&nbsp;</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:110,&quot;url&quot;:&quot;https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-bluetooth-1024x141.webp&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-bluetooth-1024x141.webp\" width=\"800\" height=\"110\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>⊳ Gạt công tác qua [BT] để chuyển đổi sang chế độ Bluetooth</p><p>⊳ Bấm và giữ tổ hợp phím Fn + 1 trong khoảng 3 giây. Phím 1 bắt đầu nhấp nháy màu lục lam và chuyển sang trạng thái ghép nối mã.</p><p>⊳ Mở Bluetooth trên thiết bị (máy tính, điện thoại, tablet) và tìm kiếm tên ghép nối. Chọn [AULA-F87 Pro 3.0] hoặc [AULA-F87 Pro 5.0] từ danh sách thiết bị và kết nối. Đèn xanh sẽ sáng trong khoảng 2 giây sau khi kết nối thành công.</p><p>⊳ Kết nối với thiết bị thứ 2: Bấm giữ tổ hợp phím Fn + 2 và làm tương tự.</p><p>⊳ Kết nối với thiết bị thứ 3: Bấm giữ tổ hợp phím Fn + 3 và làm tương tự.</p><p>⊳ Ở chế độ Bluetooth, bàn phím có thể kết nối với 3 thiết bị. Để chuyển đổi giữa các thiết bị, bấm tổ hợp phím Fn +1 hoặc Fn + 2 hoặc Fn + 3. Bạn có thể kiểm tra mức pin của bàn phím được hiển thị trên máy tính.</p><p>&nbsp;</p><p>Kết nối bàn phím với thiết bị qua Wireless 2.4G<br><br></p><p>&nbsp;</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:124,&quot;url&quot;:&quot;https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-2.4G.webp&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-2.4G.webp\" width=\"800\" height=\"124\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>⊳ Gạt công tác qua [2.4G] để chuyển đổi sang chế độ Wireless 2.4G</p><p>⊳ Tháo đầu thu [USB receiver] ở khe góc bên phải bàn phím</p><p>⊳ Cắm đầu thu [USB receiver] vào cổng USB của máy tính</p><p>⊳ Ghép nối thủ công: Bấm và giữ tổ hợp phím Fn + ~ trong khoảng 3 giây. Phím ~ nhấp nháy màu lục lam và bàn phím vào trạng thái ghép nối mã. Lúc này bạn hãy cắm đầu thu vào cổng USB của máy tính, kết nối 2.4G thành công.</p><p>&nbsp;</p><p>Kết nối bàn phím với thiết bị qua dây<br><br></p><p>&nbsp;</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:121,&quot;url&quot;:&quot;https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-co-day.webp&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-co-day.webp\" width=\"800\" height=\"121\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>⊳ Gạt công tác về [USB/OFF] để chuyển đổi sang chế độ dây</p><p>⊳ Cắm cổng Type-C của dây USB vào cổng tương ứng trên bàn phím</p><p>⊳ Cắm đầu còn lại của dây vào cổng USB của máy tính</p><p>Đồng thời khi bạn để công tắc ở vị trí [USB/OFF] và không cắm vào nguồn điện USB thì bàn phím được tắt. Lúc này pin tích hợp sẽ ngừng cấp nguồn cho bàn phím.</p><p>&nbsp;</p><h3><strong>2. Hướng dẫn điều chỉnh hiệu ứng đèn nền</strong></h3><p>Bạn có thể sử dụng tổ hợp phím Fn + Ins để chuyển đổi giữa 16 hiệu ứng đèn nền.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:338,&quot;url&quot;:&quot;https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-Hieu-ung-den-nen-tv.png&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-Hieu-ung-den-nen-tv.png\" width=\"800\" height=\"338\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>&nbsp;</p><p>Ngoài ra bạn có thể sử dụng các tổ hợp phím Fn + Delete/↑/↓/←/→ để chuyển đổi màu hay tăng giảm độ sáng, tăng giảm tốc độ. Thông qua driver, bạn còn có thể tùy chỉnh và sử dụng 10 hiệu ứng đèn nền RGB mang giai điệu âm nhạc khác nhau.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:167,&quot;url&quot;:&quot;https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-To-hop-phim-den-nen-tv-1024x214.png&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-To-hop-phim-den-nen-tv-1024x214.png\" width=\"800\" height=\"167\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>&nbsp;</p><p>Bên cạnh đó, bạn có thể sử dụng các tổ hợp phím như đưới dây để điều chỉnh dải ánh sáng RGB và ánh sáng bên RGB.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:203,&quot;url&quot;:&quot;https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-Dai-anh-sang-tv-1024x260.png&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-Dai-anh-sang-tv-1024x260.png\" width=\"800\" height=\"203\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>&nbsp;</p><h3><strong>3. Hướng dẫn chuyển đổi hệ điều hành</strong></h3><p>⊳ Tổ hợp phím Fn + Q: Androi</p><p>⊳ Tổ hợp phím Fn + W: Windows</p><p>⊳ Tổ hợp phím Fn + E: MAC</p><p>⊳ Tổ hợp phím Fn + R: IOS</p><p>Ngoài ra bạn có thể bấm tổ hợp phím Fn + WIN để khóa hoặc mở khóa phím WIN. Trong hệ điều hành WIN, khi phím WIN bị khóa, đèn báo sẽ luôn sáng. Bạn không thể sử dụng phím WIN ở trạng thái này. Khi đang ở hệ điều hành Windows, nếu chuyển sang hệ điều hành MAC/IOS thì vị trí của phím WIN và ALT sẽ bị hoán đổi. Các phím từ F1-F12 lúc này là các nút chức năng multimedia.</p><p>&nbsp;</p><h3><strong>4. Tổng hợp các phím tắt</strong></h3><p>Dưới đây là tổng hợp các phím tắt của bàn phím Aula F87 Pro. Khi bạn bấm và giữ Fn + ESC trong vòng 3 giây, trạng thái mặc định được khôi phục. Các thiết bị Bluetooth đã kết nối không bị xóa.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:244,&quot;url&quot;:&quot;https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-To-hop-phim-tat-tv-1024x313.png&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-To-hop-phim-tat-tv-1024x313.png\" width=\"800\" height=\"244\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>&nbsp;</p><p>Fn + Q: Hệ điều hành Androi<br><br></p><p>Khi bấm Fn + Q để chuyển sang hệ điều hành Androi, đèn đỏ của phím Q nhấp nháy trong 3 giây. Sau đó bạn có thể sử dụng hệ thống phím tắt của bàn phím Aula F87 Pro như dưới đây.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:375,&quot;url&quot;:&quot;https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-Androi-tv-1024x480.png&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-Androi-tv-1024x480.png\" width=\"800\" height=\"375\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>&nbsp;</p><p>Fn + W: Hệ điều hành Windows<br><br></p><p>Khi bấm Fn + W để chuyển sang hệ điều hành Windows, đèn đỏ của phím W nhấp nháy trong 3 giây. Sau đó bạn có thể sử dụng hệ thống phím tắt của bàn phím như dưới đây.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:375,&quot;url&quot;:&quot;https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-Window-tv-1024x480.png&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-Window-tv-1024x480.png\" width=\"800\" height=\"375\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>&nbsp;</p><p>Fn + E: Hệ điều hành MAC<br><br></p><p>Khi bấm Fn + E để chuyển sang hệ điều hành MAC, đèn đỏ của phím E nhấp nháy trong 3 giây. Sau đó bạn có thể sử dụng hệ thống phím tắt của bàn phím như dưới đây.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:377,&quot;url&quot;:&quot;https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-MAC-tv-1024x483.png&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-MAC-tv-1024x483.png\" width=\"800\" height=\"377\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>&nbsp;</p><p>Fn + R: Hệ điều hành IOS<br><br></p><p>Khi bấm Fn + R để chuyển sang hệ điều hành IOS, đèn đỏ của phím R nhấp nháy trong 3 giây. Sau đó bạn có thể sử dụng hệ thống phím tắt của bàn phím như dưới đây.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:374,&quot;url&quot;:&quot;https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-IOS-tv-1024x479.png&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-IOS-tv-1024x479.png\" width=\"800\" height=\"374\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>&nbsp;</p><h3><strong>5. Đèn báo trạng thái hiện tại của bàn phím</strong></h3><p>&nbsp;</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:315,&quot;url&quot;:&quot;https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-den-bao-1024x403.webp&quot;,&quot;width&quot;:800}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://gongangshop.vn/wp-content/uploads/2024/08/Aula-F87-den-bao-1024x403.webp\" width=\"800\" height=\"315\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Bấm và giữ phím Fn để xem chế độ kết nối hiện tại (Bluetooth, 2.4G, có dây), kênh Bluetooth hiện tại (kênh 1/2/3), hệ điều hành hiện tại (Androi, Win, MAC, IOS). Khi bấm giữ phím Fn, phím tương ứng với từng trạng thái sẽ sáng lên. Khi thả phím Fn, hiệu ứng ánh sáng sẽ được khôi phục.</p><p>⊳ Phím ~: đèn sáng báo chế độ 2.4G</p><p>⊳ Phím 4: đèn sáng báo chế độ có dây</p><p>⊳ Phím 1, 2, 3: đèn sáng báo kênh Bluetooth</p><p>⊳ Phím Q, W, E, R: đèn sáng báo chế độ hệ điều hành.</p><p>&nbsp;</p><h3><strong>6. Chế độ ngủ và hướng dẫn sạc bàn phím</strong></h3><p>⊳ FN + B để bật chế độ xem pin =&gt; Hiển thị ở thanh LED RGB ( chế độ đơn sắc).<br>⊳ FN + Shift để tắt chế độ xem pin =&gt; Hiển thị ở thanh LED RGB ( chế độ đa sắc).</p><p>Chế độ Bluetooth/2.4G sẽ tự động chuyển sang chế độ tiết kiệm năng lượng (tắt đèn) khi bạn không có bất kỳ thao tác nào trong vòng một phút. Bạn chỉ cần bấm vào phím bất kỳ để đánh thức bàn phím. Để sạc bàn phím, hãy kết nối bàn phím với máy tính thông qua cáp USB. Thanh RGB ở bên cạnh thể hiện bàn phím đang được sạc và khi đầy, đèn sáng màu xanh lá cây.</p><p>Ở chế độ Bluetooth/2.4G (không cắm USB), sử dụng tổ hợp phím Fn + B để xem mức pin của bàn phím qua thanh RGB ở bên cạnh. Khi sạc đầy, đèn hiển thị màu xanh lá cây. Khi năng lượng được tiêu thụ dần, ánh sáng đèn xanh cũng giảm dần. Đèn chuyển sang màu đỏ khi pin yếu.</p>', 'Dưới đây là cách sử dụng bàn phím AULA F87 chi tiết nhất. Một con bàn phím đáng sử dụng đáng sử dụng trong tầm giá 1 triệu đồng !', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-12-21 07:53:45', '2024-12-21 07:53:45'),
(119, 'Hướng dẫn sử dụng bàn phím AULA F75', 'huong-dan-su-dung-ban-phim-aula-f7 ', '<h3><a href=\"https://thebabustore.vn/product/ban-phim-co-aulaf75-v2-only-kit-R0mi1NwrRs1dmemtIfEp\"><strong>AULA F75</strong></a><strong> – Bàn Phím Tối Ưu trong Phân Khúc 1 Triệu Đồng</strong></h3><p>AULA F75 là một trong những bàn phím cơ đáng mua nhất trong tầm giá 1 triệu đồng. Với thiết kế layout 75%, tích hợp núm xoay điều chỉnh âm lượng, đèn nền RGB sáng rực, và hỗ trợ 3 chế độ kết nối linh hoạt, AULA F75 chắc chắn sẽ mang đến trải nghiệm sử dụng tuyệt vời.</p><p><strong>KICAP hân hạnh đồng hành cùng AULA để mang sản phẩm này đến tay người dùng.</strong></p><blockquote><strong>Lưu ý:</strong><ul><li>Bài viết này chỉ cung cấp hướng dẫn sử dụng bàn phím.</li><li>THE BABU chỉ hỗ trợ các vấn đề liên quan đến sản phẩm được mua tại cửa hàng BABU.</li><li>Đối với sản phẩm mua từ các sàn thương mại điện tử như Shopee, Lazada, TikTok, vui lòng liên hệ trực tiếp với gian hàng đã đặt hàng để được hỗ trợ.</li></ul></blockquote><h3><strong>Các Lưu Ý và Mẹo Quan Trọng Khi Sử Dụng</strong></h3><p><strong>1. Sạc Pin Bàn Phím</strong></p><ul><li><strong>Chỉ sạc qua cổng USB của máy tính.</strong></li><li><strong>Không sử dụng các củ sạc khác</strong> như sạc dự phòng, laptop, tai nghe, điện thoại, v.v.</li></ul><p><strong>2. Kiểm Tra Dung Lượng Pin</strong></p><ul><li>Rút sạc, bật chế độ không dây.</li><li>Nhấn giữ tổ hợp <strong>FN + B</strong>. Đèn sáng đến phím nào thì tương ứng với mức pin hiện tại (%). Ví dụ: nếu đèn sáng đến phím số 8, bàn phím còn 80% pin.</li></ul><p><strong>3. Chỉnh Chức Năng Núm Xoay</strong></p><ul><li>Nhấn giữ núm xoay trong <strong>5 giây</strong>.</li><li>Đèn phím <strong>Win</strong> sẽ nhấp nháy 3 lần để chuyển đổi chức năng giữa tăng giảm âm lượng và tăng giảm độ sáng LED.</li></ul><p><strong>4. Khóa/Mở Khóa Phím WIN</strong></p><ul><li>Nhấn <strong>FN + WIN</strong> để bật/tắt phím Win.</li></ul><p><strong>5. Chuyển Đổi Layout MAC/WIN/Android</strong></p><ul><li><strong>MAC:</strong> Nhấn giữ <strong>FN + E</strong> trong 5 giây.</li><li><strong>Windows:</strong> Nhấn giữ <strong>FN + W</strong> trong 5 giây.</li><li><strong>Android:</strong> Nhấn giữ <strong>FN + Q</strong> trong 5 giây.</li></ul><p>(Lưu ý: Khi chuyển layout, có thể xảy ra hiện tượng hoán đổi vị trí phím WIN và ALT.)</p><h3><strong>Cài Đặt Phần Mềm &amp; Driver</strong></h3><p><strong>1. Tải Phần Mềm</strong></p><ul><li>Link tải cho Windows: <strong>AULA F75</strong></li><li>Nếu gặp lỗi khi nâng cấp firmware qua ứng dụng, tải file khôi phục firmware tại: <strong>Flash FW AULA F75.exe</strong>.</li></ul><p><strong>2. Hướng Dẫn Cài Đặt</strong></p><ul><li>Kết nối bàn phím với máy tính bằng dây cáp USB (không kết nối qua Bluetooth hoặc wireless).</li><li>Mở phần mềm, tùy chỉnh LED và keymap theo nhu cầu.</li><li>Nếu có bản firmware mới, đảm bảo kết nối USB ổn định để cập nhật thành công.</li></ul><h3><strong>Các Chế Độ Kết Nối</strong></h3><p><strong>1. Kết Nối Bluetooth</strong></p><ul><li><strong>Bước 1:</strong> Gạt công tắc ở mặt dưới bàn phím sang chế độ <strong>BT</strong>.</li><li><strong>Bước 2:</strong> Nhấn <strong>FN + 1</strong> đến khi đèn phím số 1 nháy. Sau đó giữ <strong>FN + 1</strong> trong 3-5 giây cho đèn nháy nhanh.</li><li><strong>Bước 3:</strong> Mở Bluetooth trên thiết bị và thực hiện kết nối.</li><li><strong>Bước 4:</strong> Với các thiết bị khác, lặp lại tương tự với <strong>FN + 2</strong> hoặc <strong>FN + 3</strong>.</li></ul><p>(Để chuyển đổi giữa các thiết bị, chỉ cần nhấn <strong>FN + 1</strong>, <strong>FN + 2</strong> hoặc <strong>FN + 3</strong> mà không cần giữ.)</p><p><strong>2. Kết Nối Wireless 2.4G</strong></p><ul><li>Gạt công tắc sang chế độ <strong>2.4G</strong>.</li><li>Lấy đầu thu USB (nằm cạnh công tắc BT), cắm vào máy tính.</li><li>Khi đèn nút <strong>~</strong> ngừng nhấp nháy, kết nối thành công.</li></ul><p><strong>3. Kết Nối Dây USB</strong></p><ul><li>Gạt công tắc về chế độ <strong>Line</strong>.</li><li>Cắm dây và sử dụng.</li></ul><h3><strong>Các Phím Tắt Thường Dùng</strong></h3><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/png&quot;,&quot;filename&quot;:&quot;{4E41A048-1EE5-4CC0-93C8-36578C198D01}.png&quot;,&quot;filesize&quot;:23563,&quot;height&quot;:401,&quot;href&quot;:&quot;https://thebabustore.vn/storage/lY8U2SVLliBIibmmiYWqqrg90rSg0x2zhKEDU6EO.png&quot;,&quot;url&quot;:&quot;https://thebabustore.vn/storage/lY8U2SVLliBIibmmiYWqqrg90rSg0x2zhKEDU6EO.png&quot;,&quot;width&quot;:732}\" data-trix-content-type=\"image/png\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--png\"><a href=\"https://thebabustore.vn/storage/lY8U2SVLliBIibmmiYWqqrg90rSg0x2zhKEDU6EO.png\"><img src=\"https://thebabustore.vn/storage/lY8U2SVLliBIibmmiYWqqrg90rSg0x2zhKEDU6EO.png\" width=\"732\" height=\"401\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">{4E41A048-1EE5-4CC0-93C8-36578C198D01}.png</span> <span class=\"attachment__size\">23.01 KB</span></figcaption></a></figure></p><p><br></p>', 'Hướng dẫn sử dụng bàn phím AULA F75. Một bàn phím cơ đang rất hot gần đây và đang top 1 trong phân khúc dưới 1 triệu đồng mà ae đang săn đón !!!. Hãy để THE BABU hướng dẫn bạn cách sử dụng nhé !!!', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-12-21 08:00:40', '2024-12-21 08:00:40'),
(120, 'Hướng dẫn sử dụng bàn phím AULA F99 PRO', 'huong-dan-su-dung-ban-phim-aula-f99-pro', '<h1>Hướng dẫn sử dụng bàn phím AULA F99 PRO V2</h1><p><em>Lưu ý: * Không sạc trực tiếp bằng củ sạc mà hãy sạc qua laptop hoặc PC</em></p><p><strong><em>Hướng dẫn hoạt động</em></strong></p><p><strong>Chế độ 2.4G:</strong><br>Công tắc phía trên bên trái được quay sang chế độ 2.4G, đèn màu lục lam của phím ‘~ nhấp nháy chậm, sau đó nhấn phím FN + ~ trong 3 giây để vào trạng thái ghép nối mã, sau đó cắm bộ thu để hoàn tất ghép nối mã, đèn màu lục lam của phím ‘~ bật trong 2 giây, kết nối 2.4G thành công. Mã ghép nối mặc định của nhà sản xuất.</p><p><strong>Chế độ BT:</strong><br>Công tắc trên cùng bên trái chuyển sang chế độ Bluetooth BLE5.0/BLE3.0 (tên thiết bị AULA-F99 3.0/AULA-F99 5.0), có thể kết nối 3 thiết bị:</p><ul><li>FN+1=BT 1, đèn báo màu xanh lam dưới phím nhấp nháy nhanh, quay lại kết nối nhấp nháy chậm và đèn xanh lam sáng trong 2 giây khi được kết nối.</li><li>FN+2=BT 2, đèn báo màu xanh dưới phím nhấp nháy nhanh, quay lại kết nối nhấp nháy chậm, kết nối với đèn xanh 2s.</li><li>FN+3=BT 3, đèn xanh dưới phím nhấp nháy nhanh, quay lại kết nối đèn flash chậm, kết nối đèn xanh 2s.</li></ul><p><strong>Chế độ có dây:</strong><br>Công tắc trên cùng bên trái sang vị trí chính giữa = chế độ có dây, đèn trắng trên nút “4” sáng trong 2 giây.</p><p>Các tổ hợp phím thường dùng:</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/png&quot;,&quot;filename&quot;:&quot;{566D26F4-42DE-4793-A309-8DA3E2F58DCA}.png&quot;,&quot;filesize&quot;:50593,&quot;height&quot;:508,&quot;href&quot;:&quot;https://thebabustore.vn/storage/11yyCOIJVOwPRulaP6Pn5QGHsqwBqIooJsFhJzw9.png&quot;,&quot;url&quot;:&quot;https://thebabustore.vn/storage/11yyCOIJVOwPRulaP6Pn5QGHsqwBqIooJsFhJzw9.png&quot;,&quot;width&quot;:878}\" data-trix-content-type=\"image/png\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--png\"><a href=\"https://thebabustore.vn/storage/11yyCOIJVOwPRulaP6Pn5QGHsqwBqIooJsFhJzw9.png\"><img src=\"https://thebabustore.vn/storage/11yyCOIJVOwPRulaP6Pn5QGHsqwBqIooJsFhJzw9.png\" width=\"878\" height=\"508\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">{566D26F4-42DE-4793-A309-8DA3E2F58DCA}.png</span> <span class=\"attachment__size\">49.41 KB</span></figcaption></a></figure></p>', 'Hướng dẫn sử dụng bàn phím AULA F99 PRO', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-12-21 08:02:35', '2024-12-23 05:50:03');
INSERT INTO `blogs` (`id`, `title`, `slug`, `description`, `short_description`, `banner`, `created_at`, `updated_at`) VALUES
(121, 'Hướng dẫn sử dụng Xinmeng M71', 'huong-dan-su-dung-xinmeng-m71', '<h1>Hướng dẫn sử dụng bàn phím cơ M71</h1><p><br></p><p><strong>I. Cài đặt phầm mềm, driver</strong>&nbsp;<br><br></p><p>Link tải phầm mềm cho window: https://drive.google.com/file/d/18eagEnCuSuSH2mvd48ow4w73mC9Y9A08/view?usp=drive_link</p><p>Sau khi tải phần mềm, các bạn kết nối bàn phím với máy tính qua dây cáp USB của hãng cung cấp. Sau đó, bật phầm mềm lên và thực hiện chỉnh LED cũng như keymap theo nhu cầu sử dụng của cá nhân. Trong trường hợp có phiên bản firmware mới thì các bạn cần đảm bảo kết nối dây USB ổn định thì mới cập nhật nha &lt;3</p><p><strong>II. Điều chỉnh chế độ kết nối với các thiết bị</strong></p><p><strong><em>Kết nối Bluetooth (gạt công tắc ở mặt dưới bàn phím sang hình icon bluetooth):</em></strong></p><p>① Nhấn và giữ phím FN + Q trong vài giây.</p><p>② Mở thiết bị cần kết nối Bluetooth (chẳng hạn như điện thoại di động, máy vi tính).</p><p>③ Thiết bị đã được kết nối và quá trình ghép nối hoàn tất.</p><p>④ Kết nối với thiết bị thứ hai (ví dụ: điện thoại). Nếu thiết bị thứ nhất (ví dụ laptop) được kết nối với số 1, hãy giữ FN + W trong vài giây và đèn báo của số 2 nhấp nháy nhanh. Sau đó lặp lại các bước ② và ③.</p><p>⑤ Kết nối thiết bị thứ ba (ví dụ: máy tính bảng) và giữ phím kết hợp FN + E trong vài giây cho đến khi đèn báo (3) nhấp nháy trong khoảng thời gian ngắn. Sau đó lặp lại các bước (2) và (3).</p><p>⑥ Bây giờ hãy bật bluetooth của ba thiết bị được kết nối cùng một lúc và chuyển kết nối thiết bị bằng cách nhấn FN + Q/W/E (khi chuyển thiết bị chỉ ấn Fn Q/W/E một lần, KHÔNG phải ấn giữ như lúc ghép nối)</p><p><strong><em>Kết nối Wireless 2.4G (gạt công tắc ở mặt dưới bàn phím sang hình wifi):</em></strong></p><p>Hãng thiết kế chỗ để đầu thu wireless ở ngay ở cạnh chỗ công tắc win/mac</p><p>Sau khi tìm được đầu cắm receiver, bạn hãy cắm đầu thu vào cổng USB máy tính là có thể sử dụng được rồi.</p><p><strong><em>Kết nối bằng dây (gạt công tắc ở mặt dưới bàn phím về vị trí giữa):</em></strong></p><p>Cắm dây và sử dụng.</p><p><strong><br>II. Các tổ hợp phím tắt thường dùng<br></strong><br></p><p><strong>Double click FN</strong>: chuyển layout phím số thành hàng F và ngược lại</p><p>FN + ESC: reset lại cài đặt mặc định của nhà sản xuất</p><p>FN + WIN (bên trái): Khoá hoặc mở khoá phím WIN&nbsp;</p><p>FN + \\ |:&nbsp; Thay đổi chế độ LED trên bàn phím</p><p>FN + Ctrl phải: Thay đổi màu LED viền</p><p>FN + DEL: Thay đổi màu LED các nút</p><p>FN + CAPS giữ trong 5s: Reset màu LED</p><p>FN + điều hướng lên: Tăng độ sáng LED</p><p>FN + điều hướng xuống: Giảm độ sáng LED</p><p>FN + điều hướng trái: Giảm tốc độ nháy LED</p><p>FN + điều hướng phải: Tăng tốc độ nháy LED</p><p>FN + G: Chế độ Test&nbsp;</p><p><strong>IV. Các TIPS và lưu ý nhỏ trong quá trình sử dụng</strong></p><p><strong>Khi thấy nút Alt và Win đổi chỗ cho nhau tức là bạn ở chế độ MAC, hãy gạt công tắc ở mặt bên phía trước qua chế độ Win nhé</strong></p><p>Trong quá trình sử dụng, khi bạn thấy đèn báo ở hàng dưới cùng màu đỏ tức là đã cạn pin, bạn nên sạc bàn phím ngay khi có thể để đảm bảo chúng hoạt động ổn định và tăng tuổi thọ của pin.</p><p>Khi pin được sạc đầy, đèn báo ở hàng dưới cùng sẽ chuyển sang màu xanh, bạn có thể rút sạc ra nhé.</p><p><br></p>', 'Hướng dẫn sử dụng bàn phím cơ nhôm M71 chi tiết!!', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-12-23 05:49:01', '2024-12-23 05:49:01'),
(122, 'Hướng dẫn sử dụng Mchose G75 Pro', 'huong-dan-su-dung-mchose-g75-pro', '<p><strong><em>I. Cài đặt phần mềm, driver&nbsp;</em></strong></p><p><strong>Link tải phần mềm cho window: </strong><a href=\"https://1drv.ms/u/c/4369e28698355db0/EZBb70DA8UFBv_APRsACIicB1Uh0r2Czl0RxLEFVecrlfg?e=Owft5Q\"><strong><em>Mchoose Hub</em></strong></a></p><p>Sau khi tải phần mềm, các bạn kết nối bàn phím với máy tính qua dây cáp USB của hãng cung cấp (không kết nối bằng bluetooth hoặc wireless 2.4). Sau đó, bật phần mềm lên và thực hiện chỉnh LED cũng như keymap theo nhu cầu sử dụng của cá nhân. Trong trường hợp có phiên bản firmware mới thì các bạn cần đảm bảo kết nối dây USB ổn định thì mới cập nhật.</p><p><strong><em>II. Điều chỉnh chế độ kết nối với các thiết bị</em></strong></p><p><strong>Công tắc chuyển mode ở canh sườn phím bên trái</strong></p><p><strong>Kết nối Bluetooth (biểu tượng B dưới cùng):</strong></p><p><strong>① </strong>Nhấn và giữ đồng thời phím FN + ( 1 or 2 or 3 ) trong 3 giây.</p><p><strong>②</strong> Mở thiết bị cần kết nối Bluetooth (chẳng hạn như điện thoại di động, máy vi tính).</p><p><strong>③</strong> Tìm tên GX87 3.0 hoặc GX87 5.0 và kết nối.</p><p><strong>Kết nối Wireless 2.4G (biểu tượng sóng trên cùng):</strong></p><p>Hãng thiết kế chỗ để đầu thu wireless ở ngay ở cạnh chỗ công tắc BT</p><p>Cắm đầu thu vào cổng USB máy tính là có thể sử dụng được rồi.</p><p><strong>Kết nối bằng dây (biểu tượng hình dây ở giữa):</strong></p><p>Cắm dây và sử dụng.</p><p><strong>I</strong><strong><em>I. Các tổ hợp phím tắt thường dùng</em></strong></p><p><strong>F</strong>N + A : Chế độ WIN</p><p><strong>F</strong>N + S : Chế độ MAC</p><p><strong>F</strong>N + ESC: reset lại phím</p><p><strong>F</strong>N + WIN (bên trái): Khoá hoặc mở khoá phím WIN&nbsp;</p><p><strong>F</strong>N + \\|:&nbsp; Thay đổi chế độ LED trên bàn phím</p><p><strong>F</strong>N + =+ : Thay đổi màu LED&nbsp;</p><p><strong>F</strong>N + điều hướng lên: Tăng độ sáng LED</p><p><strong>F</strong>N + điều hướng xuống: Giảm độ sáng LED</p><p><strong>F</strong>N + điều hướng trái: Giảm tốc độ nháy LED</p><p><strong>F</strong>N + điều hướng phải: Tăng tốc độ nháy LED&nbsp;</p><p><strong><em>IV. Các TIPS và lưu ý nhỏ trong quá trình sử dụng</em></strong></p><p>Khi thấy nút Alt và Win đổi chỗ cho nhau tức là bạn ở chế độ MAC</p><p><strong>Lưu ý:</strong> luôn luôn sạc bàn phím thông qua cổng USB của máy tính, không sạc bằng cái củ sạc khác như sạc dự phòng, sạc laptop, tai nghe, điện thoại v.v</p>', 'Hướng dẫn sử dụng G75 pro con phím đáng giá đến từ nhà Mchose với kiểu dáng thiết kế 75%', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2024-12-25 15:27:31', '2024-12-25 15:27:55'),
(123, 'Hướng dẫn sử dụng Riccks RS8', 'huong-dan-su-dung-riccks-rs8', '<p><strong>Lưu ý</strong>: luôn luôn sạc bàn phím thông qua cổng USB của máy tính, không sạc bằng cái củ sạc khác như sạc dự phòng, sạc laptop, tai nghe, điện thoại v.v</p><p>Tổ hợp khoá hoặc mở khoá nút WIN: FN + WIN (<em>anh em hay bấm nhầm dẫn đến không bấm được nút WIN</em>)</p><p>Chuyển đổi layout MAC hoặc WIN: Gạt công tắc ở phía trên bàn phím</p><p>&nbsp;</p><p>Khi không sử dụng, bàn phím sẽ tự động ngủ sau 5 phút. Để đánh thức, bạn chỉ cần gõ vào phím bất kỳ là được.</p><p>Trong quá trình sử dụng, <strong>khi bạn thấy dải đèn led bên trên tổ hợp nút đều hướng nháy đỏ liên tục</strong>, bạn nên sạc bàn phím ngay khi có thể để đảm bảo chúng hoạt động ổn định và tăng tuổi thọ của pin.</p><p>Kiểm tra % pin bằng cách bấm giữa FN và Backspace</p><p><strong><br>I. Cài đặt phầm mềm, driver,</strong> <strong>VIA&nbsp;<br></strong><br></p><p>Làm theo từng bước dưới đây:</p><p>Đầu tiên các bạn tải file JSON keymap ở đây: <a href=\"http://www.riccks.com/col.jsp?id=110\">json via rs8</a></p><ol><li>Kết nối với máy tính của bạn bằng chế độ dây (không phải là cắm dây và kết nối bằng bluetooth hoặc 2.4) bằng cách gạt công tắc về phía OFF và cắm dây vào.</li><li>Mở trang web <a href=\"https://usevia.app/test\">VIA</a> và chọn mục Settings hình bánh răng ở phía trên bên phải của trang web, mở mục \"Show Design Tab\"</li><li>Sau khi phần \"Show Design Tab\" đã được bật, lúc này ở phía bên trên sẽ xuất hiện tab Design với icon hình cây chổi <figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:46,&quot;url&quot;:&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD8AAAAuCAYAAACf1cHhAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAKcSURBVGhD7ZoxaBNhFMdf46BUotZCpDodVUSwg0HrIkoSpSJFcBDMJrg4OLgJoiAoBbcODi5C6WAGwaKIGiSBgiA6xIIuitFJhGAbtXtr/vEFzmJy+X93l5z97gcl777kmv//u++9u36vA5lMZlUsJaGvVhKbtxWrzQdW8I6lxyS9d1RGd43IUDIpicSAvhMMKyurUl9elurXb1L5UJX5yjt9xxzf5mH6bPaIDG/doiO9YfHnL3lQfulrEjY4jnNDY5rzkyfk3PGjMrhpo470DnznwX17JLl5UBY+ftZRDuOch/GJw2k96h/QAC0mGJnHUo+C8RbQAk0sRuaR41HDRBNd8DDDF8+c0qPO1BbrUiiWpfTmrUxduiD7dzvy/tMXuXrnXjPGGMAxxt2ktm+TscZn8hNZSQ0P6Whn7s49pQogfeVxO+uW6cLDpnFw/3n5r1eYdf+spbb0o3kufke3MNoAbR738W5xm0JcaBh3j2EiWpPRjtpSXSNvGG2ANo8HGFNg3k27q+4GK6BbWG20+aCf3IKE1WZU7dcLsXlbic3bSmzeVuhn+8LNKxpFk/z12xp5E6r5tU90puRPZjXyJjLmT1++ppE/Hk/f0sgbxnyoOY8/S6NMqOZz4/53e5glzxKu+UMHmuJNVgDOwblhmu9LtW9XC5jcbkeoOY/mQVRhtdHm0TUJitz4n7QIClYbbR7tIr+4awCzTeUFq402jz6ZX1p3AWxQtjY4g1gBrDbaPLaG0Sfzg/suEFRVhya2b0dXe8Ds3fcKds8e0Fce4EuKryt61H+ghTUOjMyDmScvIjEB0AAtJvhqUaM1/L2Ra87OHT1vUyPHZ5+V5NH8Kx3hMcr5f4E6YN1/ZvzPGOf8eiA2byuxeTsR+Q2hYQkhgRY/tAAAAABJRU5ErkJggg==&quot;,&quot;width&quot;:63}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD8AAAAuCAYAAACf1cHhAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAKcSURBVGhD7ZoxaBNhFMdf46BUotZCpDodVUSwg0HrIkoSpSJFcBDMJrg4OLgJoiAoBbcODi5C6WAGwaKIGiSBgiA6xIIuitFJhGAbtXtr/vEFzmJy+X93l5z97gcl777kmv//u++9u36vA5lMZlUsJaGvVhKbtxWrzQdW8I6lxyS9d1RGd43IUDIpicSAvhMMKyurUl9elurXb1L5UJX5yjt9xxzf5mH6bPaIDG/doiO9YfHnL3lQfulrEjY4jnNDY5rzkyfk3PGjMrhpo470DnznwX17JLl5UBY+ftZRDuOch/GJw2k96h/QAC0mGJnHUo+C8RbQAk0sRuaR41HDRBNd8DDDF8+c0qPO1BbrUiiWpfTmrUxduiD7dzvy/tMXuXrnXjPGGMAxxt2ktm+TscZn8hNZSQ0P6Whn7s49pQogfeVxO+uW6cLDpnFw/3n5r1eYdf+spbb0o3kufke3MNoAbR738W5xm0JcaBh3j2EiWpPRjtpSXSNvGG2ANo8HGFNg3k27q+4GK6BbWG20+aCf3IKE1WZU7dcLsXlbic3bSmzeVuhn+8LNKxpFk/z12xp5E6r5tU90puRPZjXyJjLmT1++ppE/Hk/f0sgbxnyoOY8/S6NMqOZz4/53e5glzxKu+UMHmuJNVgDOwblhmu9LtW9XC5jcbkeoOY/mQVRhtdHm0TUJitz4n7QIClYbbR7tIr+4awCzTeUFq402jz6ZX1p3AWxQtjY4g1gBrDbaPLaG0Sfzg/suEFRVhya2b0dXe8Ds3fcKds8e0Fce4EuKryt61H+ghTUOjMyDmScvIjEB0AAtJvhqUaM1/L2Ra87OHT1vUyPHZ5+V5NH8Kx3hMcr5f4E6YN1/ZvzPGOf8eiA2byuxeTsR+Q2hYQkhgRY/tAAAAABJRU5ErkJggg==\" width=\"63\" height=\"46\"><figcaption class=\"attachment__caption\"></figcaption></figure><br> lúc này bạn nhấn vào nút load bên dưới và mở file json đã download sẵn từ trước đó vào.</li><li>Cuối cùng, nhấn vào phần Configure bên trái và chọn \" Authorize Device+\", chọn thiết bị RS8 và nhấn connect, tới đây bạn đã kết nối thành công RS8 với VIA và có thể nhấn về mục Configure để sử dụng VIA.&nbsp;</li></ol><p>&nbsp;</p><p>Đặc biệt, VIA hỗ trợ người dùng tạo các layout khác nhau để tuỳ chỉnh cho nhiều thời điểm như làm việc, chơi game, v.v</p><p><strong>II. Điều chỉnh chế độ kết nối với các thiết bị</strong></p><p><strong>Công tắc gạt chuyển chế độ nằm ở phía trên cạnh cổng cắm dây của bàn phím.</strong></p><p><strong><em>Kết nối Bluetooth:</em></strong></p><p>① Gạt công tắc về giữa (BT) và bật Bluetooth của thiết bị cần kết nối</p><p>② Mở thiết bị cần kết nối Bluetooth (chẳng hạn như điện thoại di động, máy vi tính) Sau đó nhấn giữ tổ hợp FN +1/2/3 cho tới khi đèn led màu xanh blue ở 3 nút 1/2/3 ( tương thích với 3 thiết bị cần kết nối) nháy nhanh.</p><p>③ Thiết bị đã được kết nối và quá trình ghép nối hoàn tất.</p><p>④ Nhấn Fn + 1/2/3 để chuyển kết nối giữa các thiết bị (Chỉ cần nhấn và thả luôn, không cần giữ tổ hợp như khi kết nối)</p><p><strong><em>Kết nối Wireless 2.4G :</em></strong></p><p>Đầu thu Receiver để trong hộp phụ kiện.</p><p>Sau đó bạn cắm receiver vào cổng usb của máy tính (nhớ cắm vào hết cỡ)</p><p>Gạt công tắc chuyển chế độ sang 2.4 rồi sau đó nhấn nhanh tổ hợp Fn + 4 ( Không cần nhấn giữ )<br>Khi đèn của phím 4 không còn nháy và đứng hẳn thì lúc này bạn đã kết nối thành công.</p><p><strong><em>Kết nối dây:</em></strong></p><p>Các bạn sử dụng dây đi kèm trong hộp phụ kiện, kết nối bàn phím và máy tính rồi gạt công tắc chuyển chế độ sang OFF, lúc này bàn phím đã kết nối qua chế độ dây.</p><p>Sau đó bạn sử dụng bàn phím bình thường.</p><p><strong><br>III. Các tổ hợp phím tắt thường dùng<br></strong><br></p><p>FN + END : Reset lại cài đặt mặc định của nhà sản xuất</p><p>FN + F1 :Giảm sáng led nền</p><p>FN + F2 :Tăng sáng led nền</p><p>FN + F3 :Home page</p><p>FN + F4:Mail</p><p>FN + F5:Máy tính</p><p>FN + F6:Media Player</p><p>FN + F7:Chuyển về bài hát trước</p><p>FN + F8:Tạm dừng/Phát</p><p>FN + F9:Chuyển tới bài hát sau</p><p>FN + F10:Tắt âm</p><p>FN + F11:Giảm âm lượng</p><p>FN + F12:Tăng âm lượng<br>FN + WIN trái : Khóa/ mở nút win<br>FN + Backspace : kiểm tra dung lượng còn lại của pin<br><br><strong>IV. Các tổ hợp phím tắt để điều chỉnh đèn led</strong></p><p>FN + [ ,] : Giảm , tăng tốc độ của dải led Logo<br>FN + (-,=) : Giảm, tăng độ sáng dải led logo<br>FN + ;&nbsp; \' : Tinh chỉ độ sắc nét của dải led logo<br>FN + Mũi tên lên/ xuống : Tăng/ giảm độ sáng của led nền<br>FN + Mũi tên trái/phải : Giảm/ tăng tốc độ của led nền<br>FN + |\\ : Chuyển chế độ led nền<br>FN + enter : Chuyển màu led nền<br>FN + page up/ down : Tăng giảm độ sắc nét của led nền<br>FN + delete : Tắt bật led<br>FN + space : Chuyển hiệu ứng dải led logo<br>FN + shift phải : Chuyển màu deri led logo<br>FN + ? : Chuyển hiệu ứng led viền<br>FN + ctrl phải : Chuyển màu led viền<br>FN + &lt;&gt; : Tăng giảm độ sáng led viền<br>FN + Print/Scroll: Tăng giảm tốc độ led viền<br>FN + Insert/Home : Tăng giảm độ sắc nét led viền&nbsp;</p>', 'Cách sử dụng bàn phím Riccks r87 ông vua phím cơ nhựa layout TKL 2025', '01JMF7JJ6DAY209G8TW4Q44Q79.png', '2025-01-22 11:03:51', '2025-01-22 11:03:51');

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
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1739973077),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1739973077;', 1739973077),
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
(9, '2025_02_19_184914_add_classification_id_to_categories_table', 7);

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
  `is_stock` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `image`, `category_id`, `created_at`, `updated_at`, `sold`, `is_stock`) VALUES
(1, 'Paolo Scavino, Dolcetto d\'Alba DOC', 'paolo-scavino-dolcetto-dalba-doc', '1000000.00', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:15:15', '2025-02-19 12:15:15', 1, 1),
(2, 'Vida Rohan', 'voluptatibus-neque-dolorum-voluptas-enim-molestiae-qui', '397.03', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 89, 1),
(3, 'Dr. Kendrick McClure IV', 'expedita-aut-id-a', '619.07', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 74, 1),
(4, 'Mr. Jared Bernhard', 'consequuntur-nostrum-quibusdam-et-amet-est-rerum', '179.91', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 25, 1),
(5, 'Marcelle Beier', 'sed-quos-sit-error-eius-excepturi', '67.59', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 66, 1),
(6, 'Haskell Wilderman', 'qui-dolores-dolore-sint-non-ut', '343.26', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 23, 1),
(7, 'Lottie Goodwin', 'aliquam-ut-ipsam-dolorem-minus-qui', '868.50', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 66, 1),
(8, 'Kameron Kassulke', 'magni-id-iste-cumque-et-voluptatem', '68.17', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 90, 1),
(9, 'Bernardo Walker', 'odit-ad-vero-necessitatibus-qui', '461.03', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 38, 1),
(10, 'Shaun Rosenbaum IV', 'sit-maiores-et-aut-et-omnis-delectus-voluptatem', '475.44', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 66, 1),
(11, 'Rowland Murazik I', 'fugiat-sed-error-molestiae-sunt-fugiat', '479.76', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 22, 1),
(12, 'Emmanuelle Keebler', 'quis-qui-necessitatibus-aut-commodi-fugiat-nihil-ut', '367.73', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 30, 1),
(13, 'Angie Abbott', 'ut-ipsa-at-voluptatibus-soluta', '707.27', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 93, 1),
(14, 'Estefania Moen', 'provident-eum-impedit-nesciunt-consequatur-quia-voluptatum-et-dolorum', '418.36', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 7, 1),
(15, 'Ms. Dannie Mante', 'dolor-voluptas-velit-consequatur-ut-voluptates-aut', '79.01', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 81, 1),
(16, 'Cierra Kreiger MD', 'eveniet-dolore-ut-quas-eligendi-eos-optio-ea', '98.92', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 18, 1),
(17, 'Maia Gerhold', 'iste-asperiores-nihil-similique', '864.82', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 22, 1),
(18, 'Maybell Rice', 'necessitatibus-deleniti-perspiciatis-nemo-non-repellendus', '503.35', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 68, 1),
(19, 'Prof. Cesar Ledner', 'molestias-est-vitae-reprehenderit-itaque-dolores', '664.36', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 97, 1),
(20, 'Reta Brown', 'nulla-nulla-qui-rem-accusamus-voluptas', '88.35', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 11, 1),
(21, 'Fred Swift', 'sed-maiores-quasi-deleniti-non-ut-ut', '834.04', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 91, 1),
(22, 'Glennie Mraz', 'quia-non-nihil-sit-aspernatur-tempora-et-voluptatem', '384.37', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 13, 1),
(23, 'Mr. Kale Johns Sr.', 'est-nihil-hic-culpa-vitae-atque', '439.77', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 38, 1),
(24, 'Mr. Adam Murray', 'nisi-aut-amet-in-nisi-necessitatibus', '376.72', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 77, 1),
(25, 'Anita Moore I', 'et-qui-id-neque-deserunt-labore-sint-rem', '703.41', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 76, 1),
(26, 'Aubrey Prosacco', 'quo-vero-dolor-tempore-doloribus-et-sit-quo', '23.43', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 205, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 7, 1),
(27, 'Jamar Funk Sr.', 'tenetur-est-esse-sit-numquam-doloremque', '69.07', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 28, 1),
(28, 'Mrs. Lillie Marquardt', 'tempora-voluptas-doloribus-vero-quisquam-et-aspernatur', '361.38', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 82, 1),
(29, 'Miss Luna Abshire', 'sint-omnis-pariatur-rem-iusto-nihil-cupiditate-voluptate', '12.24', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 66, 1),
(30, 'Carmelo Gutmann III', 'voluptatem-velit-consequuntur-sequi-velit-alias-labore-rem', '212.02', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 51, 1),
(31, 'Harley Witting', 'quis-distinctio-ipsam-in-odio-ullam-nesciunt-quibusdam', '656.90', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 76, 1),
(32, 'Kurtis White', 'culpa-debitis-quos-ut-voluptas-ipsum', '415.74', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 50, 1),
(33, 'Mr. Hunter Lynch', 'veritatis-at-qui-vitae', '600.16', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 48, 1),
(34, 'Holden Considine', 'fugiat-nobis-ipsa-vero-vitae-vitae', '789.27', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 25, 1),
(35, 'Granville Rau DVM', 'odio-rerum-voluptates-libero-et-non', '318.44', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 92, 1),
(36, 'Dr. Everardo Turner IV', 'alias-perspiciatis-esse-molestias-voluptas-ut-ratione', '686.72', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 33, 1),
(37, 'Miss Aliyah Hoeger V', 'sit-cupiditate-quam-asperiores-suscipit-et-deleniti-id', '335.18', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 37, 1),
(38, 'Neha Gleichner', 'quisquam-nemo-laudantium-aut-ea', '544.49', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 98, 1),
(39, 'Mattie McLaughlin', 'tenetur-repellendus-nesciunt-fuga-rerum-magnam-itaque-dolorem', '661.23', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 43, 1),
(40, 'Elise Windler Jr.', 'reprehenderit-quo-autem-voluptatem-alias-vero', '367.64', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 63, 1),
(41, 'Dr. Newell Jaskolski MD', 'animi-eaque-assumenda-nihil-rerum-vitae-neque-libero', '568.66', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 36, 1),
(42, 'Jillian Larkin', 'sint-dolores-ullam-deleniti', '510.46', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 37, 1),
(43, 'Prof. Eldridge Price DDS', 'maiores-et-temporibus-rerum-vero-sequi-beatae-et', '762.50', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 16, 1),
(44, 'Prof. Ryleigh Runolfsdottir Jr.', 'modi-vitae-alias-est-dolorum-quam', '771.93', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 41, 1),
(45, 'Prof. Uriel Dooley DDS', 'quia-sed-molestiae-nihil-quibusdam-non', '423.78', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 31, 1),
(46, 'Dr. Karolann Hartmann DDS', 'recusandae-sapiente-qui-voluptas-dolores-nobis', '975.55', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 75, 1),
(47, 'Ms. Bridie Schultz', 'eum-eius-perferendis-aspernatur-perspiciatis-iusto', '415.20', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 52, 1),
(48, 'Isabella Cummings', 'aut-quidem-magni-porro-et', '48.30', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 72, 1),
(49, 'Mr. Martin Gaylord', 'optio-voluptatum-nihil-explicabo-nihil-odit', '309.78', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 33, 1),
(50, 'Adan Aufderhar PhD', 'dolorum-et-similique-hic-eos', '898.87', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 5, 1),
(51, 'Pietro Pouros', 'laboriosam-sequi-cum-eum-temporibus-esse', '844.90', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 206, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 94, 1),
(52, 'Brooks Goldner II', 'saepe-aut-quibusdam-fuga-voluptatibus-doloribus-perspiciatis', '739.31', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 63, 1),
(53, 'Ms. Alexandra Kilback', 'blanditiis-odio-exercitationem-fugiat-praesentium', '370.36', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 46, 1),
(54, 'Anabelle Pouros', 'magni-optio-vero-porro-fugit', '185.74', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 27, 1),
(55, 'Margret Kiehn', 'ut-asperiores-tenetur-doloremque-neque-omnis', '587.91', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 87, 1),
(56, 'Mr. Santiago Yundt Jr.', 'consectetur-dolorum-eum-consectetur-magni-molestiae', '978.05', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 93, 1),
(57, 'Magali Pacocha', 'similique-consequuntur-ex-et-nisi', '805.89', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 66, 1),
(58, 'Zelda Wehner V', 'iusto-placeat-placeat-voluptas-qui-quia', '276.53', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 47, 1),
(59, 'Vickie Turner', 'eaque-id-inventore-sed-cumque-voluptas-quia-eos', '71.20', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 77, 1),
(60, 'Miss Tiana Schmeler Jr.', 'sint-accusamus-eum-vel-ut', '967.38', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 76, 1),
(61, 'Blair Schmeler', 'reiciendis-et-eligendi-voluptatem-sunt-qui', '859.30', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 3, 1),
(62, 'Dr. Madyson Koss DDS', 'ut-est-ea-ut-porro-ab', '72.80', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 21, 1),
(63, 'Jessy Dibbert PhD', 'molestiae-dolore-explicabo-earum-exercitationem-facere', '501.37', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 48, 1),
(64, 'Tyson Buckridge Sr.', 'nisi-dicta-eum-fugit-porro', '876.40', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 99, 1),
(65, 'Bridie Goyette', 'commodi-rerum-et-sit-asperiores', '124.01', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 56, 1),
(66, 'Oran Abbott MD', 'quam-veniam-est-aut-minus-eius-sequi-eius-ipsa', '224.56', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 62, 1),
(67, 'Ellsworth Jerde', 'eius-iusto-sit-possimus-impedit-est-quos', '954.07', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 53, 1),
(68, 'Vena Parker', 'sapiente-et-doloremque-accusantium-et-temporibus-laudantium', '777.84', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 51, 1),
(69, 'Sally Ernser', 'voluptatum-tempore-et-nihil-odit-magni-laborum-sit-eos', '615.30', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 86, 1),
(70, 'Mr. Junius Erdman III', 'reprehenderit-asperiores-ut-enim-facilis-asperiores-iusto-fugiat', '728.25', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 44, 1),
(71, 'Scarlett Kertzmann I', 'minus-id-reiciendis-omnis-non', '25.29', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 95, 1),
(72, 'Mr. Mark Tremblay Jr.', 'culpa-veritatis-earum-temporibus-odit-quia-laudantium-quisquam-nam', '35.46', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 87, 1),
(73, 'Dr. Christine Hintz MD', 'ea-odit-ex-similique-aut-aspernatur-incidunt-beatae', '407.23', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 6, 1),
(74, 'Ms. Brooklyn Brekke MD', 'dolorem-assumenda-est-ad-est-excepturi-delectus-doloribus-tenetur', '565.86', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 44, 1),
(75, 'Dr. Naomie Bauch', 'voluptatum-molestiae-cumque-illo-optio', '524.35', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 30, 1),
(76, 'Miss Rebekah Farrell DVM', 'voluptatum-officia-nesciunt-veniam-necessitatibus', '247.86', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 207, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 99, 1),
(77, 'Dr. Collin Schroeder', 'eos-veniam-voluptatem-tempora-eveniet-doloremque-voluptatem-aut', '226.24', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 49, 1),
(78, 'Mrs. Kaitlin Howe', 'et-et-ut-dolore-ut-eum', '965.64', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 54, 1),
(79, 'Miss Kelsie Greenfelder', 'sapiente-dolorum-consequatur-modi', '994.57', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 24, 1),
(80, 'Prof. Jamison Armstrong', 'officiis-totam-iste-enim-cum', '512.69', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 97, 1),
(81, 'Demetris Corwin', 'consequatur-molestias-et-ea', '301.47', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 100, 1),
(82, 'Faustino Goyette', 'natus-iste-ex-earum-et-illo-eaque', '297.08', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 86, 1),
(83, 'Prof. Angelo Cremin DDS', 'id-aperiam-consequatur-ut-asperiores-sit-maiores-iusto-corporis', '829.39', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 63, 1),
(84, 'Faustino Corwin I', 'ea-itaque-esse-omnis', '744.18', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 87, 1),
(85, 'Tillman Lubowitz', 'ipsa-in-molestiae-placeat-quisquam-error-recusandae', '940.61', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 15, 1),
(86, 'Wade Lockman', 'facilis-quia-voluptas-sit-qui-voluptas', '713.90', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 83, 1),
(87, 'Liza Strosin', 'nam-laboriosam-enim-nihil-tempore-perferendis-corporis', '636.04', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 83, 1),
(88, 'Dorothy Cole MD', 'quo-et-vero-quae-consequatur-modi', '575.63', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 69, 1),
(89, 'Ivory Klein', 'molestiae-asperiores-sunt-id-voluptatem-asperiores-qui-nam', '729.24', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 59, 1),
(90, 'Mrs. Gloria Barton PhD', 'adipisci-soluta-sapiente-vel-ea', '888.14', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 87, 1),
(91, 'Daphne Morissette II', 'asperiores-accusantium-possimus-consequatur-quam-et-animi-iusto-et', '333.10', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 27, 1),
(92, 'Ruby Gleichner', 'sit-esse-non-inventore-aut-corporis', '438.17', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 85, 1),
(93, 'Evangeline Schmitt', 'ea-maiores-laudantium-mollitia-consequuntur-cum-ipsam', '984.44', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 66, 1),
(94, 'Miss Alize Cole PhD', 'recusandae-quia-consequatur-eius-ipsa', '476.64', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 68, 1),
(95, 'Naomie Steuber', 'aut-quod-quaerat-et-dolorem-occaecati-veritatis-expedita', '345.17', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 23, 1),
(96, 'Sean Barrows', 'id-sint-et-exercitationem-eum-ratione', '717.37', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 51, 1),
(97, 'Scotty Becker', 'itaque-corporis-alias-ipsa', '684.56', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 57, 1),
(98, 'Mr. Ali Emmerich V', 'debitis-fugit-possimus-animi-inventore-consectetur-totam-et', '284.80', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 48, 1),
(99, 'Wade Bechtelar', 'deleniti-illo-vitae-et-quis-laborum-reprehenderit-totam', '607.35', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 49, 1),
(100, 'Mr. Junior Walsh MD', 'sit-eos-consequatur-eum-sit-blanditiis', '858.86', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 32, 1),
(101, 'Ines McDermott', 'quasi-accusantium-deleniti-earum-odit-mollitia-molestias-ut', '452.61', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 208, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 24, 1),
(102, 'Nicholaus Bins', 'velit-voluptas-cum-cum-sunt-neque-et', '674.02', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 56, 1),
(103, 'Mr. Ludwig Hansen DDS', 'suscipit-maxime-doloremque-aut-sequi-explicabo-recusandae-in', '90.06', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 44, 1),
(104, 'Porter Eichmann', 'eveniet-quisquam-est-explicabo-error-ipsum', '952.60', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 23, 1),
(105, 'Georgianna Davis III', 'rerum-dolor-quibusdam-eum-assumenda-tempora-nam', '775.82', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 94, 1),
(106, 'Nedra Walter', 'consectetur-aut-vitae-architecto-nisi', '29.21', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 28, 1),
(107, 'Amparo McCullough', 'nobis-sint-eius-delectus-pariatur-autem-voluptate-eos-architecto', '81.19', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 63, 1),
(108, 'Connie Heathcote', 'non-qui-voluptatem-ut-quidem-omnis', '106.79', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 77, 1),
(109, 'Joanie Hills', 'cum-culpa-eum-fugiat-veritatis-error', '664.64', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 20, 1),
(110, 'Daphne Cummerata', 'ad-deserunt-et-sapiente-pariatur-omnis-saepe', '956.32', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 18, 1),
(111, 'Dr. Katelynn Fadel III', 'nostrum-iste-vitae-quis-non-commodi-vero', '618.51', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 58, 1),
(112, 'Hiram Welch', 'magni-et-sit-iusto-nam-voluptatum-modi', '952.17', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 77, 1),
(113, 'Ms. Cassidy Fisher V', 'qui-et-alias-id-quibusdam-quas-qui-blanditiis', '356.95', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 4, 1),
(114, 'Jazlyn Moen', 'repudiandae-aut-provident-consequatur-quo-qui-eum-dolore', '847.24', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 82, 1),
(115, 'Jewell Kuvalis', 'blanditiis-ipsum-sunt-velit-quos-et-quis', '323.24', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 68, 1),
(116, 'Anika Jast', 'qui-quis-sint-non-itaque-ipsam', '449.57', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 52, 1),
(117, 'Alysson Mohr', 'laudantium-cum-fugiat-unde-enim-ut-accusamus', '743.43', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 98, 1),
(118, 'Daija Watsica', 'eum-voluptas-consequuntur-vel-id-alias', '228.65', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 29, 1),
(119, 'Prof. Levi Ratke DVM', 'eaque-sunt-possimus-dolor-consequuntur-sed-error', '608.86', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 46, 1),
(120, 'Joey Strosin', 'voluptatem-dolores-officiis-tempore-dolorum-fugiat-dolor', '719.40', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 78, 1),
(121, 'Aimee Maggio', 'nostrum-placeat-et-atque-velit-commodi', '543.01', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 37, 1),
(122, 'Francis O\'Keefe IV', 'at-quia-voluptatem-esse-aut', '635.64', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 26, 1),
(123, 'Myrtie Heathcote', 'quia-consectetur-impedit-quam', '942.70', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 36, 1),
(124, 'Carmen Sanford', 'non-ut-placeat-voluptas-laboriosam-eius', '680.11', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 33, 1),
(125, 'Mrs. Cora Price Jr.', 'voluptate-id-qui-voluptas', '769.79', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 70, 1),
(126, 'Ms. Marian Morar MD', 'sit-accusamus-omnis-et-est-autem-doloremque-voluptas', '716.57', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 209, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 37, 1),
(127, 'Carolanne Hoeger Jr.', 'velit-ab-possimus-asperiores-nisi-ab-sit', '627.70', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 79, 1),
(128, 'Jermey Dickinson', 'necessitatibus-ea-rerum-nostrum-et-ea-hic-commodi', '509.44', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 73, 1),
(129, 'Dr. Jaylan Schamberger Jr.', 'voluptas-rerum-accusamus-quod-nulla-qui-iusto-aliquam', '795.67', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 86, 1),
(130, 'Ernestine Schinner', 'suscipit-debitis-dolores-eveniet-ex-vitae-est-nam', '330.34', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 39, 1),
(131, 'Garland Herzog', 'nesciunt-totam-voluptas-corporis-dolores-eaque-dolores-voluptatem', '962.43', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 5, 1),
(132, 'Virgil Collier', 'molestiae-eveniet-eius-in-adipisci-praesentium-beatae-et', '195.04', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 28, 1),
(133, 'Prof. Wilfredo Abernathy Jr.', 'aut-voluptatem-enim-sint-error-iure-reiciendis', '777.97', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 73, 1),
(134, 'Dr. Bryce Johns PhD', 'numquam-quibusdam-itaque-est-vel-pariatur', '920.88', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 9, 1),
(135, 'Prof. Lauryn Haley I', 'repellat-et-expedita-facere-ea-aut-deserunt', '355.53', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 63, 1),
(136, 'Dr. Javon Heidenreich', 'voluptatum-ex-nobis-rerum-ut-dignissimos', '153.42', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 2, 1),
(137, 'Orville Fay', 'qui-accusamus-quaerat-iure-illum-excepturi-hic-facere', '152.36', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 3, 1),
(138, 'Maida Toy', 'sed-tempora-et-esse-et-aut-ea-doloribus', '849.26', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 3, 1),
(139, 'Vinnie Langosh', 'repellat-soluta-ut-omnis-dicta', '923.22', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 0, 1),
(140, 'Mr. Theo Donnelly DDS', 'vitae-cumque-dolores-ullam-aut-laboriosam-et', '837.61', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 76, 1),
(141, 'Dr. Jeffry Daniel', 'sit-accusamus-aut-corporis-nisi', '420.77', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 93, 1),
(142, 'Arlene Treutel', 'facilis-ut-accusamus-velit-id-suscipit-vitae', '964.15', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 39, 1),
(143, 'Ms. Shanny Hand', 'magnam-quam-numquam-voluptatum-culpa-temporibus-sapiente', '121.06', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 24, 1),
(144, 'Bradley Kihn', 'reiciendis-sequi-id-sed-ratione-eos', '687.97', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 17, 1),
(145, 'Estefania Trantow', 'et-officia-deleniti-eos-ea', '36.21', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 77, 1),
(146, 'Jermain Konopelski', 'soluta-qui-sed-provident-rerum-et-quos', '54.83', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 89, 1),
(147, 'Yesenia Windler', 'quos-iste-ad-ut-dolorem-illo-ad', '310.35', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 29, 1),
(148, 'Maye Homenick', 'iusto-dignissimos-ea-perferendis-rerum-earum-totam-aliquid', '707.48', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 67, 1),
(149, 'Josiah Jast', 'ut-accusamus-corporis-natus-delectus-necessitatibus', '881.94', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 12, 1),
(150, 'Hortense Waters', 'aut-minus-rem-explicabo-sed-id-explicabo-non-itaque', '727.71', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 52, 1),
(151, 'Juliana Torphy', 'molestiae-cupiditate-voluptas-modi', '828.90', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 210, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 42, 1),
(152, 'Gussie Murazik', 'fugit-blanditiis-sit-numquam-aperiam-soluta-esse-laudantium-accusamus', '969.59', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 13, 1),
(153, 'Ian Tillman', 'similique-magni-deleniti-aut-doloremque-at-non-ut', '339.33', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 85, 1),
(154, 'Dr. Jamal Cassin Sr.', 'qui-recusandae-consequatur-laborum-est-expedita-delectus-atque-est', '741.98', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 44, 1),
(155, 'Dr. Irma Wolff Jr.', 'iusto-officiis-iste-soluta', '331.28', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 26, 1),
(156, 'Kathlyn Huels', 'culpa-quis-ratione-quaerat-incidunt', '683.06', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 82, 1),
(157, 'Ms. Aileen Ondricka Sr.', 'non-voluptas-occaecati-est-ipsum-quod-quo-quaerat-quia', '195.21', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 41, 1),
(158, 'Miles Sipes', 'itaque-culpa-quo-quos-inventore-accusamus-voluptas-in-est', '980.93', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 66, 1),
(159, 'Mrs. Alyson Christiansen', 'voluptatem-dolorum-et-dolorem-temporibus-mollitia', '314.02', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 8, 1),
(160, 'Mrs. Kiera Crist', 'est-magnam-enim-velit-nihil', '822.63', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 0, 1),
(161, 'Lucile Nader', 'provident-voluptatem-explicabo-corporis-aut-dolorem-aperiam', '791.40', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 63, 1),
(162, 'Edd Nikolaus', 'qui-dolore-esse-doloremque-consequatur-culpa-ut-in', '36.62', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 26, 1),
(163, 'Nadia Monahan', 'molestiae-qui-ut-voluptatem-voluptatem', '757.79', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 69, 1),
(164, 'Gonzalo Flatley', 'hic-aliquid-quibusdam-sint-aut-fugiat-dolor-distinctio', '742.87', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 67, 1),
(165, 'Dayne Swaniawski', 'vel-neque-sed-nisi-voluptatum-rem', '960.70', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 68, 1),
(166, 'Merlin Ortiz', 'maiores-blanditiis-dolorem-laudantium', '194.39', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 43, 1),
(167, 'Derick Senger', 'aperiam-voluptas-libero-rerum-possimus-voluptatem-facilis', '261.51', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 9, 1),
(168, 'Dr. Clementina Kihn III', 'officia-praesentium-beatae-iure-in-et-quidem', '732.16', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 54, 1),
(169, 'Mr. Kim Schaden Sr.', 'eveniet-minima-corrupti-eveniet-atque', '729.17', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 38, 1),
(170, 'Thora Hackett', 'quod-beatae-eveniet-explicabo-ut-dolore-dignissimos', '75.66', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 32, 1),
(171, 'Emmitt Schroeder III', 'iste-nihil-omnis-voluptas-ex-impedit', '464.52', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 84, 1),
(172, 'Alba Senger DDS', 'alias-qui-temporibus-impedit-architecto-dolore-pariatur-et-magni', '690.13', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 58, 1),
(173, 'Ms. Earnestine Murazik', 'ipsa-provident-est-autem-ratione-fugiat-voluptas-doloribus-unde', '170.05', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 14, 1),
(174, 'Brandi Bode', 'qui-cum-fugit-consequatur-qui-ea-totam-quia', '980.39', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 36, 1),
(175, 'Betty Kilback', 'praesentium-deserunt-et-qui-at-rerum-consectetur-odit', '447.73', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 39, 1),
(176, 'Conrad Christiansen Sr.', 'dolor-corporis-sed-enim-quia-debitis-qui-sint', '201.60', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 211, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 27, 1),
(177, 'Dr. Serena Willms IV', 'laborum-qui-sunt-itaque-rerum', '287.84', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 5, 1),
(178, 'Hanna Volkman', 'cumque-voluptatem-nostrum-consequatur-et-dolorem-quaerat', '42.38', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 66, 1),
(179, 'Ms. Johanna Osinski Sr.', 'quia-qui-eligendi-sed-ab', '230.61', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 71, 1),
(180, 'Wayne Littel', 'itaque-porro-autem-nihil-dolorem', '457.68', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 52, 1),
(181, 'Gregory Morissette Sr.', 'et-inventore-aperiam-omnis-non-velit-ut', '135.21', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 30, 1),
(182, 'Bruce Lang', 'numquam-beatae-a-quis-quidem-ipsum-impedit', '293.93', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 11, 1),
(183, 'Adriel Stamm', 'eveniet-facilis-quam-est-assumenda-maiores', '695.06', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 6, 1),
(184, 'Alfred Stracke', 'sint-natus-aut-qui', '325.49', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 49, 1),
(185, 'Myrtis Hagenes', 'voluptatibus-ab-dignissimos-voluptatibus', '792.26', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 56, 1),
(186, 'Catalina Cole', 'vel-quibusdam-architecto-dolores-nulla', '411.46', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 76, 1),
(187, 'Gregoria Konopelski', 'eveniet-perferendis-id-minima-harum-excepturi-facilis', '435.34', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 62, 1),
(188, 'Jaleel Green Sr.', 'error-quasi-facilis-fuga-officiis-sed-vero-fugiat', '885.28', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 30, 1),
(189, 'Jose Batz', 'et-et-quidem-ut', '824.93', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 74, 1),
(190, 'Kylee Herman', 'vel-aut-fugit-illo-facere', '918.06', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 46, 1),
(191, 'Kaleigh Bins', 'rem-beatae-ullam-aut-eos', '510.39', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 68, 1),
(192, 'Miss Ludie Schowalter', 'voluptatem-ipsum-qui-dolore-vel-aut-fugiat-quae', '849.92', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 91, 1),
(193, 'Kiana Marks', 'veritatis-quasi-dolor-sunt-saepe', '882.00', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 77, 1),
(194, 'Bria Boehm', 'veritatis-deserunt-nisi-autem-voluptatem-voluptatum-inventore-velit', '392.15', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 13, 1),
(195, 'Peggie Kunze', 'quia-blanditiis-voluptas-optio-ratione-officiis-eum-optio', '224.07', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 6, 1),
(196, 'Jenifer Gibson', 'voluptate-molestiae-est-recusandae-suscipit-qui-fugit-quis-amet', '735.07', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 49, 1),
(197, 'Ocie Glover', 'dolor-quisquam-fugit-enim-totam-nisi', '727.98', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 51, 1),
(198, 'Ana Pollich', 'nesciunt-est-rerum-ad-vero-voluptate-aut-fuga', '479.72', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 87, 1),
(199, 'Alexander Brekke', 'enim-minima-qui-repellendus-quis-cum', '542.68', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 40, 1),
(200, 'Mr. Mose Macejkovic DVM', 'et-est-exercitationem-officia-vitae-impedit', '346.84', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 97, 1),
(201, 'Rosalind Veum', 'omnis-iure-et-unde-amet-veritatis', '480.76', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 212, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 99, 1),
(202, 'Miss Janet Stracke', 'quia-nobis-et-est-amet', '31.00', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 40, 1),
(203, 'Halie Gulgowski', 'laborum-culpa-natus-ratione-magni-dignissimos', '959.72', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 61, 1),
(204, 'Dr. Tyson Rogahn Sr.', 'officiis-deserunt-totam-numquam-amet-dolores', '869.45', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 54, 1),
(205, 'Dusty Bernier', 'voluptas-impedit-at-quo', '631.09', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 30, 1),
(206, 'Dr. Ebba Labadie', 'laudantium-ipsum-eaque-commodi-blanditiis', '55.80', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 26, 1),
(207, 'Ms. Eulah Grimes Sr.', 'pariatur-molestiae-et-ut-quia-occaecati-id-natus', '527.98', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 33, 1),
(208, 'Dennis Zieme', 'minima-et-sunt-magnam-suscipit', '497.85', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 46, 1),
(209, 'Rachael McDermott', 'ex-suscipit-laborum-qui-asperiores', '260.22', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 31, 1),
(210, 'Prof. Jessie Connelly', 'expedita-nam-sed-dolore', '301.58', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 87, 1),
(211, 'Benjamin Hoppe', 'voluptate-dolor-magni-quisquam-eos-totam-nemo', '120.35', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 30, 1),
(212, 'Laverna Breitenberg', 'consequatur-id-iste-ipsa-voluptatibus-natus', '71.03', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 73, 1),
(213, 'Robyn Bashirian', 'aut-ea-eos-sequi-non-atque-earum-libero-dolor', '292.95', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 80, 1),
(214, 'Genesis Hamill', 'et-ut-eum-occaecati-impedit-magni-sed-laudantium', '165.88', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 39, 1),
(215, 'Thaddeus Ward', 'minima-a-quaerat-facere-dolore-pariatur-assumenda-amet', '542.20', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 71, 1),
(216, 'Dr. Verda Gaylord', 'fuga-qui-aut-dicta-ea-nostrum-molestiae-dolor', '922.47', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 59, 1),
(217, 'Chanel Kemmer', 'praesentium-ad-sed-est-quia-exercitationem', '867.56', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 9, 1),
(218, 'Prof. Erick Abernathy IV', 'qui-recusandae-molestiae-mollitia-molestiae-qui', '470.27', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 39, 1),
(219, 'Leora Breitenberg', 'quia-beatae-sed-doloremque-iste-ducimus-tempore', '70.35', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 14, 1),
(220, 'Eldridge Halvorson', 'facilis-voluptates-possimus-veniam-debitis-sunt-dolorum-velit-nihil', '82.59', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 46, 1),
(221, 'Prof. Dane Gibson', 'quia-cum-dolorem-consectetur-laborum-autem-dicta', '987.39', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 4, 1),
(222, 'Myron Beer', 'mollitia-reprehenderit-labore-quam-animi-non-corporis-sint', '254.85', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 58, 1),
(223, 'Prof. Jakob Batz', 'inventore-laborum-optio-sed-voluptatem', '70.74', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 85, 1),
(224, 'Maggie Fisher II', 'nostrum-eveniet-rerum-quod', '89.60', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 2, 1),
(225, 'Breanne Bogisich', 'ut-est-commodi-praesentium-est-voluptate-accusantium-nemo-consequatur', '250.70', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 65, 1),
(226, 'Moses Walsh', 'rerum-architecto-quia-dolor-rem-atque', '745.92', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 213, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 20, 1),
(227, 'Marian King', 'debitis-ut-non-mollitia-cum-saepe-fuga-ratione', '59.63', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 79, 1),
(228, 'Anabel Wilkinson', 'eos-eos-labore-odio-omnis-assumenda-quia-voluptates', '323.38', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 83, 1),
(229, 'Prof. Deanna Zemlak', 'rerum-nemo-dolorum-fugit-incidunt-est-dolore-ipsa', '132.29', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 49, 1),
(230, 'Ms. Jayda Welch', 'optio-magni-inventore-consectetur-debitis-fugiat', '788.43', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 72, 1),
(231, 'Xander Jakubowski V', 'ducimus-illum-dolor-et-tempora-illum-nesciunt', '825.20', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 81, 1),
(232, 'Kathryne Connelly', 'dolorum-expedita-mollitia-omnis-autem-quasi', '736.77', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 94, 1),
(233, 'Ursula Ryan', 'veritatis-non-dolore-culpa-eaque-optio-at', '297.58', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 56, 1),
(234, 'Ernestina Krajcik Sr.', 'voluptate-vitae-libero-doloribus-explicabo-cum', '973.81', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 0, 1),
(235, 'Prof. Gaston Boyle III', 'illo-accusamus-exercitationem-dolorem-omnis', '76.14', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 86, 1),
(236, 'Janelle Treutel', 'sunt-consequatur-repellendus-aut-voluptatem', '297.09', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 91, 1),
(237, 'Dominic Grant', 'nihil-ipsam-placeat-aut-voluptatibus-in-repellendus-quo-harum', '987.20', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 38, 1),
(238, 'Garrison Rolfson', 'rerum-architecto-autem-iste-error-distinctio', '133.20', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 89, 1),
(239, 'Ms. Electa Kling', 'voluptatum-ut-rem-blanditiis-animi-ut-explicabo', '497.82', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 40, 1),
(240, 'Concepcion McKenzie', 'laborum-ut-aut-at-enim-tempore-error', '14.53', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 87, 1),
(241, 'Noemie Okuneva V', 'architecto-odio-asperiores-ad-eaque', '878.67', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 13, 1),
(242, 'Isabella Bogan PhD', 'maiores-illo-vitae-corrupti-qui-rerum-et-architecto-et', '275.52', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 9, 1),
(243, 'Prof. Herman Goyette', 'nihil-rem-eveniet-voluptas-necessitatibus-nostrum-rerum', '116.56', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 0, 1),
(244, 'Tyra Mayer', 'corporis-velit-nostrum-deleniti-ut', '530.97', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 56, 1),
(245, 'George Hettinger', 'aut-similique-optio-et-velit-mollitia-molestias-provident', '742.09', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 8, 1),
(246, 'Vern Wiza', 'deleniti-molestias-voluptatem-ratione-iusto-consequatur-vitae-rerum-nihil', '82.31', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 96, 1),
(247, 'Prof. Astrid Gleichner DDS', 'facere-eum-vero-repellat-quia-fugit', '449.20', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 3, 1),
(248, 'Syble Armstrong', 'consectetur-voluptas-modi-eius-et-et-laborum', '124.60', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 42, 1),
(249, 'Treva Towne', 'exercitationem-voluptates-ipsam-velit-doloremque-reiciendis', '421.76', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 48, 1),
(250, 'Mr. Keeley Bradtke Jr.', 'quibusdam-dolore-sunt-dolore-ullam-voluptatem-rerum-numquam', '933.87', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 40, 1),
(251, 'Geovanni Macejkovic MD', 'qui-illo-modi-placeat-atque-est-distinctio-pariatur', '373.31', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 214, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 47, 1),
(252, 'Prof. Dee Moen PhD', 'tempore-reiciendis-temporibus-esse-aut', '428.89', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 72, 1),
(253, 'Marco Williamson', 'quis-aut-magni-sequi-quos-similique-accusamus-asperiores', '154.79', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 83, 1),
(254, 'Lera Bergnaum', 'distinctio-perferendis-est-optio-minus-ab', '419.80', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 41, 1),
(255, 'Isabell Walker', 'architecto-necessitatibus-architecto-similique-dicta-et-ducimus', '572.16', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 93, 1),
(256, 'Deborah Wintheiser', 'sed-ea-id-sit-facere-rerum-voluptatem', '751.10', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 79, 1),
(257, 'Adelbert Pacocha', 'nihil-et-quae-nihil-quos', '963.89', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 29, 1),
(258, 'Rowland Prosacco', 'itaque-totam-expedita-aut-assumenda', '318.40', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 92, 1),
(259, 'Keeley Nienow', 'aut-corporis-a-labore-dolorem-illo-sed-aspernatur-labore', '934.81', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 18, 1),
(260, 'Cassidy Aufderhar', 'enim-ea-ea-rerum-voluptatum', '630.14', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 73, 1),
(261, 'Ms. Billie Hand', 'ad-enim-tempore-amet-ut', '756.41', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 82, 1),
(262, 'Lyric Hackett', 'est-nam-temporibus-voluptatem-exercitationem-saepe', '223.68', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 83, 1),
(263, 'Kyleigh Nolan', 'dignissimos-aliquam-est-incidunt-qui', '716.69', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 61, 1),
(264, 'Jody Keeling', 'non-vel-vitae-omnis-quia-consequatur-dolores-consequuntur', '514.23', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 74, 1),
(265, 'Dr. Floy Casper', 'et-id-delectus-accusantium-iste-alias', '52.48', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 65, 1),
(266, 'Ms. Della Stroman PhD', 'eveniet-at-officia-et-fugiat-saepe', '977.90', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 23, 1),
(267, 'Whitney Okuneva', 'ipsam-alias-voluptatum-ut-qui', '319.63', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 58, 1),
(268, 'Cassie Quigley', 'est-velit-voluptatem-tenetur-fugit-pariatur-qui', '488.72', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 3, 1),
(269, 'May Kutch', 'voluptatem-temporibus-ea-iusto-aut', '136.69', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 55, 1),
(270, 'Griffin Jacobi', 'modi-consequatur-saepe-ratione-maxime', '923.21', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 7, 1),
(271, 'Maryjane Harris', 'quidem-doloribus-labore-ullam-laborum', '778.96', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 89, 1),
(272, 'Frederik Littel IV', 'neque-quam-quas-aut-nemo-sit-nostrum', '270.72', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 32, 1),
(273, 'Andreane Welch PhD', 'cumque-rerum-hic-molestiae', '576.95', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 12, 1),
(274, 'Abagail Funk', 'asperiores-quia-rem-sit-voluptas-commodi-cupiditate-nihil-molestiae', '251.59', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 50, 1),
(275, 'Danyka Collier', 'veritatis-et-maxime-doloribus-culpa-impedit', '721.55', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 4, 1),
(276, 'Dr. Jean Hammes', 'quod-rerum-quos-est-et', '763.63', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 215, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 70, 1),
(277, 'Lenna Ward V', 'laborum-ipsa-ullam-omnis-molestiae-itaque', '257.69', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 67, 1),
(278, 'Oral Bradtke', 'et-corporis-qui-reprehenderit-et', '350.28', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 17, 1),
(279, 'Angelina Bartell', 'itaque-sed-nemo-eos-quidem', '415.85', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 1, 1),
(280, 'Keaton Rath Sr.', 'veniam-labore-recusandae-sequi-sequi-incidunt-et-dolor', '48.95', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 34, 1),
(281, 'Zion Purdy', 'ab-qui-quod-omnis-sunt', '136.28', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 49, 1),
(282, 'Bobbie Harris', 'et-voluptas-minus-numquam-est-tempora-et-adipisci', '91.10', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 88, 1),
(283, 'Lavern Swift', 'tenetur-odit-quaerat-deleniti-neque-vitae-soluta-exercitationem', '610.65', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 14, 1),
(284, 'Dr. Delaney Nienow', 'modi-quia-beatae-assumenda-molestias-unde-itaque', '387.68', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 94, 1),
(285, 'Genoveva Yundt', 'qui-alias-doloribus-recusandae-est-fugit', '339.94', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 74, 1),
(286, 'Dr. Cora Howe MD', 'aut-corrupti-architecto-odit-dolorum-cum-est-ipsa', '827.06', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 40, 1),
(287, 'Peggie Lynch', 'excepturi-doloremque-in-repellat-eum', '913.63', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 37, 1);
INSERT INTO `products` (`id`, `name`, `slug`, `price`, `image`, `category_id`, `created_at`, `updated_at`, `sold`, `is_stock`) VALUES
(288, 'Prof. Mitchell Little', 'quia-harum-itaque-inventore-eos', '368.61', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 17, 1),
(289, 'Lenna Kautzer', 'voluptate-placeat-accusamus-reiciendis-in', '36.81', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 8, 1),
(290, 'Shaylee Bartell', 'non-quae-ut-beatae', '893.10', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 19, 1),
(291, 'Wilhelmine Fay', 'qui-qui-dicta-illo-qui-aspernatur-accusamus', '874.46', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 27, 1),
(292, 'Micheal Cassin', 'eos-quisquam-sit-omnis-quos', '37.94', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 40, 1),
(293, 'Veda Zieme', 'beatae-temporibus-quam-quasi-deleniti-nisi-repellat-et', '503.02', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 23, 1),
(294, 'Blair Roberts', 'ad-eius-expedita-vel-voluptatum', '321.92', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 1, 1),
(295, 'Mr. Trent Hamill', 'ex-ad-culpa-qui-qui', '190.78', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 53, 1),
(296, 'Susie Gusikowski', 'quis-quas-beatae-odio', '297.28', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 11, 1),
(297, 'Prof. Georgette Bergnaum', 'tempore-ut-qui-in-sint-et-natus', '445.84', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 79, 1),
(298, 'Tyree Rowe', 'voluptatem-molestias-assumenda-aut-omnis-praesentium', '710.16', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 62, 1),
(299, 'Prof. Vena Kuvalis Sr.', 'quasi-qui-reprehenderit-aut', '517.77', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 70, 1),
(300, 'Telly Walker', 'debitis-ut-et-nulla-veniam-modi-doloribus-cumque-dolor', '312.21', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 90, 1),
(301, 'Dr. Davonte Adams DDS', 'tenetur-dolor-et-qui-laudantium-ratione-ipsam-ipsa-ipsum', '60.53', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 216, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 63, 1),
(302, 'Frieda Walker', 'qui-totam-itaque-totam-ut-suscipit-dicta', '388.96', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 29, 1),
(303, 'Aric Daugherty', 'officia-ipsa-et-tenetur-a-nulla-doloribus-repellat-magnam', '282.46', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 88, 1),
(304, 'Abbigail Denesik I', 'illo-quas-tenetur-voluptatum-cumque', '674.25', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 63, 1),
(305, 'Wallace Kertzmann', 'qui-aut-quia-deleniti-eos-vero', '67.87', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 75, 1),
(306, 'Sincere Rutherford DVM', 'dolores-adipisci-et-explicabo', '737.74', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 86, 1),
(307, 'Mylene Smitham', 'itaque-dolores-sed-nemo-blanditiis', '870.09', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 81, 1),
(308, 'Mr. Keagan Rosenbaum DDS', 'rerum-unde-voluptas-voluptatem-vel-ab-eos', '295.53', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 68, 1),
(309, 'Dr. Eula Goyette III', 'consequuntur-quia-voluptas-eum-commodi-in-at', '266.08', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 83, 1),
(310, 'Hank Nienow', 'dolores-minus-et-aperiam-minus-ex-molestiae', '867.68', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 86, 1),
(311, 'Miss Lempi Reinger', 'odio-non-nisi-nisi-possimus-hic-necessitatibus-aut', '184.54', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 53, 1),
(312, 'Justen Prohaska', 'sapiente-qui-et-laborum', '124.09', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 94, 1),
(313, 'Cali Lemke', 'ea-quas-mollitia-at-perspiciatis-cupiditate-quae-facilis', '894.61', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 28, 1),
(314, 'Imogene Reynolds', 'rerum-ullam-adipisci-ea-dolorem', '944.07', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 31, 1),
(315, 'Henri Olson', 'earum-occaecati-officiis-soluta-et-nulla-asperiores-odio', '62.88', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 97, 1),
(316, 'Daniela Krajcik II', 'voluptatem-omnis-officia-maxime-illum-sunt', '279.84', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 42, 1),
(317, 'Shaun Bartell', 'quas-deserunt-tempore-ipsam-quis-eos-debitis-accusantium', '706.16', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 84, 1),
(318, 'Alexandrea White', 'sit-in-eos-perspiciatis-et', '226.31', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 41, 1),
(319, 'Garfield Russel', 'saepe-blanditiis-quo-vitae-natus', '356.97', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 69, 1),
(320, 'Jerod Ritchie', 'asperiores-culpa-sint-voluptas-ipsum-eos', '735.05', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 71, 1),
(321, 'Mr. Graham Kub Jr.', 'libero-suscipit-ut-placeat-numquam-facere-suscipit-hic', '586.93', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 74, 1),
(322, 'Corrine Kiehn', 'aut-modi-asperiores-rerum-cumque-nemo', '629.43', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 2, 1),
(323, 'Brennan Kuphal', 'ipsam-distinctio-non-quia-non', '158.13', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 19, 1),
(324, 'Mrs. Tia Oberbrunner', 'hic-iste-excepturi-deserunt', '864.20', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 45, 1),
(325, 'Laurie Torp', 'rem-quisquam-voluptatem-tenetur-iusto-aut-sequi-vero', '657.89', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 66, 1),
(326, 'Lilyan Rosenbaum', 'corrupti-ea-in-sint', '861.97', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 217, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 31, 1),
(327, 'Etha O\'Keefe', 'et-consequatur-explicabo-eum-incidunt-perferendis', '933.50', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 21, 1),
(328, 'Lori Bernier V', 'quidem-dolorum-rerum-id-suscipit', '382.55', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 14, 1),
(329, 'Ivah Wunsch', 'fuga-id-tenetur-nam-quo-sed-qui-quae-et', '814.92', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 86, 1),
(330, 'Mrs. Magali Legros', 'ex-animi-id-nulla-vitae-aut-illo', '68.75', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 62, 1),
(331, 'Clemmie Stroman', 'aperiam-provident-excepturi-non-itaque-molestias-veniam-eaque', '15.24', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 21, 1),
(332, 'Ms. Daphnee Grimes II', 'modi-et-tenetur-maxime-error', '35.10', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 61, 1),
(333, 'Fredrick Frami', 'vitae-odio-quaerat-eos-alias-nam', '587.32', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 73, 1),
(334, 'Sheldon Stark V', 'similique-quam-provident-veniam-qui-dignissimos', '23.75', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 62, 1),
(335, 'Dylan Grimes', 'rerum-dolorem-eos-ut-libero-atque-rerum', '246.37', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 91, 1),
(336, 'Rosetta Buckridge', 'aliquid-iure-omnis-dolores', '97.88', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 26, 1),
(337, 'Unique Muller', 'qui-et-eos-natus-et-voluptatem-quo-fugit', '36.43', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 81, 1),
(338, 'Ms. Vickie Lebsack III', 'sunt-ducimus-eius-molestiae-expedita-nesciunt-eum-numquam', '551.68', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 11, 1),
(339, 'Blanca Kirlin', 'aut-quo-qui-qui-minima-at-non', '859.03', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 61, 1),
(340, 'Ericka Graham', 'exercitationem-officia-ab-dolore-quis-accusamus-consequatur', '245.10', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 70, 1),
(341, 'Jameson Padberg IV', 'iure-quis-nulla-debitis-et-et', '931.30', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 41, 1),
(342, 'Guillermo Bruen', 'aut-quae-voluptatibus-non', '661.37', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 0, 1),
(343, 'Dr. Rod Erdman', 'ex-ut-nihil-repellat-voluptas-unde-vitae-porro', '540.64', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 52, 1),
(344, 'Mr. Bertrand Rutherford II', 'ut-perspiciatis-nesciunt-eius-autem-velit', '192.88', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 39, 1),
(345, 'Mr. Lenny Bashirian DVM', 'vel-reiciendis-vel-aut-sed-placeat-est-nam', '197.31', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 77, 1),
(346, 'Dr. Jeffrey Franecki IV', 'fugiat-cupiditate-molestiae-animi-est-asperiores-culpa-ea', '341.65', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 66, 1),
(347, 'Amy Sporer', 'velit-reiciendis-voluptatem-non', '368.15', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 93, 1),
(348, 'Ernestine Sanford Sr.', 'error-optio-quaerat-et-vel-et-facere', '272.12', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 64, 1),
(349, 'Ulises Kshlerin', 'quisquam-ut-deserunt-beatae-ex-voluptas-ad', '580.53', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 64, 1),
(350, 'Prof. Cole Hills', 'debitis-neque-error-molestias-et', '835.68', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 61, 1),
(351, 'Marisa Kirlin', 'deleniti-perferendis-adipisci-sit-eveniet-quam-nulla-omnis', '786.10', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 218, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 7, 1),
(352, 'Jayce Stanton', 'numquam-aperiam-iusto-dolor-et-eligendi', '247.21', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 27, 1),
(353, 'Kathryn Marquardt', 'aliquid-quia-laboriosam-repellendus-modi-eius-consequatur-modi', '483.46', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 51, 1),
(354, 'Prof. Elva Bernier IV', 'fugiat-dolor-cumque-incidunt-nihil-quis-deleniti-possimus', '514.06', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 30, 1),
(355, 'Prof. Fausto Goodwin I', 'quam-quam-aut-sed-voluptas', '768.81', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 75, 1),
(356, 'Dale Dietrich', 'impedit-ex-ut-eaque-aperiam', '299.82', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 53, 1),
(357, 'Helga Schmidt', 'amet-et-officiis-est-velit-aut', '334.08', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 40, 1),
(358, 'Nannie Ziemann', 'veniam-optio-in-quas-vel', '566.33', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 47, 1),
(359, 'Jarod Davis', 'dolore-vel-amet-omnis-quia-iste-voluptas', '924.79', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 96, 1),
(360, 'Corine Kuhic', 'accusamus-in-vitae-sit', '17.49', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 92, 1),
(361, 'Mr. Eliezer Roberts PhD', 'quam-ipsa-omnis-quibusdam-non', '556.71', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 26, 1),
(362, 'Russ Watsica DDS', 'distinctio-voluptates-placeat-est-tempora-accusamus-soluta-itaque-vitae', '393.08', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 45, 1),
(363, 'Fausto Mraz', 'eos-adipisci-et-sed-temporibus-enim-tempore', '697.71', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 82, 1),
(364, 'Gabrielle Kohler', 'molestiae-reiciendis-qui-sed-totam-quia-commodi-vitae-possimus', '289.56', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 93, 1),
(365, 'Adell Haley', 'accusamus-qui-sit-explicabo-dolore-dolor-eligendi-voluptas', '119.91', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 34, 1),
(366, 'Ms. Suzanne Schinner II', 'voluptatem-ut-itaque-quaerat-ut', '718.22', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 2, 1),
(367, 'Dr. Suzanne Rogahn', 'cupiditate-sapiente-quisquam-ea-non-fuga-qui', '272.03', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 77, 1),
(368, 'Ms. Josianne Funk PhD', 'quis-recusandae-ducimus-enim-nobis', '275.28', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 40, 1),
(369, 'Carley Hamill', 'numquam-consequatur-corrupti-omnis-possimus-sapiente', '817.38', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 32, 1),
(370, 'Prof. Neha Rempel II', 'voluptas-eaque-eum-sunt-iste-voluptatem-in', '870.70', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 56, 1),
(371, 'Alexane Howell', 'harum-tenetur-quaerat-alias-at-ex-eaque', '44.10', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 16, 1),
(372, 'Mrs. Lizzie Welch', 'magni-qui-officia-aperiam-omnis-molestiae-blanditiis-excepturi', '489.07', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 67, 1),
(373, 'Prof. Keyshawn Mayer', 'fugiat-ullam-voluptatem-vel-maiores-impedit', '266.87', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 43, 1),
(374, 'Amiya Ankunding', 'quia-illum-earum-quibusdam-cumque-dolorem', '362.71', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 44, 1),
(375, 'Blaise Considine', 'est-labore-laboriosam-exercitationem', '563.04', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 77, 1),
(376, 'Alden Ernser DVM', 'pariatur-quisquam-necessitatibus-odit-facilis-quis', '541.24', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 219, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 18, 1),
(377, 'Dr. Kiel Raynor Jr.', 'odit-consequatur-magnam-excepturi-neque-quis-nesciunt', '411.87', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 58, 1),
(378, 'Prof. King Braun III', 'ut-in-alias-culpa-consequuntur-rem-quia', '200.47', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 93, 1),
(379, 'Marlin McDermott', 'similique-dolor-porro-voluptatem-excepturi-eligendi-harum-voluptatum', '17.18', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 25, 1),
(380, 'Sharon Hahn', 'animi-ipsam-vel-exercitationem', '366.98', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 51, 1),
(381, 'Virginie Adams', 'neque-dolorem-in-fugiat-ratione', '641.44', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 84, 1),
(382, 'Crawford Armstrong', 'quos-deleniti-suscipit-minus-voluptatem-quia-hic-eligendi', '201.87', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 41, 1),
(383, 'Prof. Zakary Auer I', 'quos-aut-repellendus-ut-quia-voluptatum-ullam', '517.06', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 2, 1),
(384, 'Evan Bins', 'est-nihil-sint-consequatur-tenetur', '241.26', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 45, 1),
(385, 'Sarai Gottlieb', 'qui-corporis-pariatur-ex-porro', '872.31', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 69, 1),
(386, 'Myrl Wolf', 'corrupti-et-dolores-voluptatem', '617.44', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 58, 1),
(387, 'Ressie Herman', 'et-occaecati-eligendi-tempora-porro-iste-itaque', '496.43', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 26, 1),
(388, 'Elias Wolf DDS', 'quod-qui-illo-neque-aspernatur-molestiae-qui-atque', '56.96', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 47, 1),
(389, 'Miss Genesis Huels I', 'enim-labore-voluptatibus-aut-molestiae-ipsam', '316.28', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 84, 1),
(390, 'Prof. Ursula Kshlerin', 'nulla-aperiam-sapiente-dicta-doloremque-ut-possimus', '73.76', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 80, 1),
(391, 'Alisa Larson V', 'eos-eligendi-animi-delectus-dolore', '764.85', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 38, 1),
(392, 'Irma DuBuque', 'dolores-et-maxime-dolores-quam-aliquam', '579.85', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 59, 1),
(393, 'Dr. Reed Prohaska', 'esse-perspiciatis-modi-rerum-quasi-est', '796.26', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 99, 1),
(394, 'Sterling Mertz', 'perspiciatis-omnis-et-ea-pariatur-expedita-nesciunt-similique-distinctio', '904.29', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 60, 1),
(395, 'Reed Barton', 'consequatur-quos-aut-et-commodi-distinctio-soluta-corrupti', '124.90', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 78, 1),
(396, 'Lamont Swift Jr.', 'eum-enim-ad-aut-eveniet', '220.37', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 54, 1),
(397, 'Zena Cartwright', 'ut-voluptate-eius-minus-qui-odit-et-vero', '540.54', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 75, 1),
(398, 'Ryan Trantow', 'hic-ex-asperiores-expedita-sed-magnam-et-facilis', '953.94', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 63, 1),
(399, 'Carmine Donnelly', 'non-commodi-et-dolor-unde', '945.46', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 23, 1),
(400, 'Rowena Schimmel', 'tenetur-est-exercitationem-sunt-qui-alias-omnis', '182.20', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 10, 1),
(401, 'Abbey Bergnaum', 'voluptate-sunt-quisquam-autem-et-architecto-non-in', '63.24', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 220, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 45, 1),
(402, 'Joaquin Barrows', 'cum-placeat-rerum-ut-culpa-fugiat', '266.79', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 12, 1),
(403, 'Hardy Waelchi', 'dolorem-et-molestiae-nemo-consectetur-omnis-dicta-veritatis', '256.16', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 24, 1),
(404, 'Cornelius Mitchell', 'voluptatem-repudiandae-sunt-earum-numquam-odio-cumque', '19.72', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 71, 1),
(405, 'Dr. Hobart Wyman II', 'qui-dolorem-sint-similique-consequuntur-quidem-aut', '333.93', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 14, 1),
(406, 'Mr. Damien Walsh IV', 'sed-numquam-sapiente-fugiat', '813.46', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 94, 1),
(407, 'Florine Mraz', 'laboriosam-sed-blanditiis-qui-voluptates-quo-et-fugiat', '861.94', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 48, 1),
(408, 'Chloe Greenholt', 'provident-quae-exercitationem-iste-odit-officiis', '438.81', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 30, 1),
(409, 'Dr. Emilio Anderson', 'voluptatem-repellendus-cumque-ut-quis-quaerat', '546.14', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 65, 1),
(410, 'Prof. Adell Jacobi', 'impedit-quis-facere-hic-impedit-voluptatem-occaecati-minima', '248.58', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 88, 1),
(411, 'Edna Witting', 'minima-ab-consequatur-molestiae-ea-tempore', '639.28', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 99, 1),
(412, 'Tressie Funk', 'nesciunt-molestiae-atque-amet-officia-impedit-sunt-sint', '175.66', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:51', '2025-02-19 12:25:51', 46, 1),
(413, 'Freeman Schiller', 'voluptatem-minus-veritatis-dolorem-iste', '645.35', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 2, 1),
(414, 'Dashawn Nikolaus', 'aliquid-id-quo-rem-sint-eveniet-quis-porro', '54.42', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 97, 1),
(415, 'Susana Murazik', 'reiciendis-sequi-ducimus-itaque-nihil-possimus-nihil-est', '406.34', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 90, 1),
(416, 'Lynn Koch', 'voluptas-molestiae-quae-est-ut-molestias-modi-ea-odit', '671.94', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 54, 1),
(417, 'Gracie Volkman IV', 'deleniti-et-quisquam-autem-debitis', '340.71', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 46, 1),
(418, 'Delphia Hauck', 'corporis-veritatis-voluptas-omnis-repellat', '874.42', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 15, 1),
(419, 'Aniya Gusikowski', 'aut-quia-mollitia-dolorem-libero-quo-quos-officiis-aut', '393.27', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 56, 1),
(420, 'Rafaela Tremblay I', 'accusantium-ipsum-doloribus-ipsum-consequuntur-itaque-sit-voluptatem', '242.75', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 15, 1),
(421, 'Faye Kulas PhD', 'sint-eveniet-ut-sint', '568.71', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 32, 1),
(422, 'Obie Kihn', 'placeat-dignissimos-aut-est-est-veritatis-ut-debitis-doloremque', '956.17', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 75, 1),
(423, 'Miss Fleta Connelly', 'suscipit-occaecati-placeat-quidem-inventore-vitae', '222.44', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 14, 1),
(424, 'Mr. Chester Blick MD', 'autem-corrupti-consectetur-aut-et', '212.45', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 7, 1),
(425, 'Alexandre Daniel', 'animi-consequatur-ducimus-eos-nihil', '363.18', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 22, 1),
(426, 'Brandon Hermiston', 'maiores-ad-est-facilis-qui', '547.71', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 221, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 85, 1),
(427, 'Dr. Howell Windler Jr.', 'dignissimos-in-sed-distinctio-sequi-aut-maiores-sit', '979.56', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 32, 1),
(428, 'Joe Schowalter', 'dolorum-velit-aliquam-laborum-explicabo-velit-deserunt', '283.64', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 26, 1),
(429, 'Talon Kautzer', 'consequatur-corporis-nobis-quae-aliquam-tenetur-reiciendis-qui', '841.38', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 92, 1),
(430, 'Delores Legros', 'et-omnis-nobis-et-est-aliquam', '688.19', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 15, 1),
(431, 'Ethyl Abbott', 'nulla-aut-vel-a-est', '937.52', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 15, 1),
(432, 'Alexie Daniel', 'ut-porro-explicabo-cupiditate-quasi-praesentium-sit-est-maxime', '643.39', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 86, 1),
(433, 'Peter Christiansen', 'nam-deleniti-perferendis-nostrum', '450.98', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 49, 1),
(434, 'Domenico O\'Reilly', 'aspernatur-omnis-minima-voluptates-nihil-dolorem-fugit-aperiam-beatae', '790.86', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 9, 1),
(435, 'Josiah Price DVM', 'et-recusandae-dolorum-laborum-aut-amet-laboriosam-eos', '494.57', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 66, 1),
(436, 'Prof. Shakira Weber', 'deleniti-doloremque-sit-deserunt-ut-quo', '572.94', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 88, 1),
(437, 'Lazaro Kohler', 'qui-velit-quasi-commodi-ab-et', '39.36', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 29, 1),
(438, 'Maurine Renner', 'earum-sed-magni-iusto-aperiam-et-perferendis', '303.69', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 69, 1),
(439, 'Vincenza Cormier', 'aliquid-sint-deleniti-unde-iure-animi', '405.47', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 92, 1),
(440, 'Rogers Gibson', 'cum-qui-dolor-perspiciatis-pariatur-molestias-iure', '201.71', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 19, 1),
(441, 'Rickie Harris', 'quaerat-quia-eveniet-eligendi-repellendus-dicta', '633.98', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 15, 1),
(442, 'Brisa Emard I', 'eveniet-ipsa-dignissimos-ratione-alias-autem-nobis-reiciendis-velit', '166.19', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 54, 1),
(443, 'Pink Anderson PhD', 'voluptatem-eligendi-dolor-ut-ut-eligendi-quam-et', '923.22', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 55, 1),
(444, 'Mrs. Kaela Glover', 'sed-aut-perferendis-est-blanditiis-facilis-quo', '624.79', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 61, 1),
(445, 'Austyn Langosh', 'eum-eos-quis-recusandae-nisi-et', '362.31', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 88, 1),
(446, 'Dr. Claudine Keeling', 'omnis-odio-rem-repellendus-ex', '504.17', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 18, 1),
(447, 'Dr. Edythe Boehm III', 'error-assumenda-et-eius-minima-et-qui-tempora', '352.85', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 62, 1),
(448, 'Della Bechtelar III', 'omnis-eum-dolorum-voluptates-dicta-eum-enim-a', '502.78', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 60, 1),
(449, 'Dr. Melyssa McCullough', 'et-itaque-id-voluptatem', '110.60', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 81, 1),
(450, 'Giovanny Emard', 'corrupti-beatae-consequuntur-eligendi', '226.09', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 83, 1),
(451, 'Wanda Oberbrunner', 'aliquam-eum-ea-vero-autem-qui-ut-ipsa', '821.82', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 222, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 83, 1),
(452, 'Antonette Bradtke', 'porro-quidem-molestiae-voluptates-dolore', '598.07', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 77, 1),
(453, 'Mr. Antonio Grimes', 'et-voluptas-quos-labore', '252.17', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 74, 1),
(454, 'Dr. Buster Beatty', 'dolores-corporis-deleniti-blanditiis-sit-vel-quae', '683.78', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 26, 1),
(455, 'Prof. Alverta Sauer', 'voluptas-et-minus-voluptatem-quia-delectus', '492.96', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 47, 1),
(456, 'Miss Jayda Hagenes Jr.', 'quia-sed-et-repellendus-eveniet-sint', '347.90', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 7, 1),
(457, 'Easton Jerde', 'repellendus-non-aperiam-ut-alias-quia', '647.65', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 25, 1),
(458, 'Americo Beahan', 'perferendis-veritatis-aspernatur-velit-quis-quo-quia-quidem', '865.18', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 74, 1),
(459, 'Dixie Carter', 'facere-vero-pariatur-eius-reprehenderit-in-nemo-nam', '234.32', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 63, 1),
(460, 'Zack Mills', 'molestias-tenetur-ex-praesentium-reprehenderit', '511.41', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 62, 1),
(461, 'Brennon Spinka', 'ex-quas-et-consequuntur-nihil-mollitia', '260.59', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 26, 1),
(462, 'Mr. Carmel Legros I', 'exercitationem-dolorum-occaecati-fuga-ducimus-fugit-necessitatibus', '32.67', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 82, 1),
(463, 'Kris Rodriguez', 'impedit-animi-commodi-deserunt-tempore', '166.46', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 82, 1),
(464, 'Mr. Wilson Beer DDS', 'in-illum-ad-nihil-harum-quasi-minima-odio', '454.24', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 37, 1),
(465, 'Santiago O\'Kon', 'rerum-nulla-et-qui-nostrum-voluptatem-quam-unde', '393.38', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 41, 1),
(466, 'Kirsten Johns', 'dolorem-harum-enim-sunt-consectetur-sunt-molestiae', '657.79', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 38, 1),
(467, 'Bertram Weimann', 'aliquam-nam-optio-ad-qui-veritatis-non-iusto', '435.25', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 92, 1),
(468, 'Betsy Hirthe', 'laudantium-quod-nobis-accusantium-id-impedit-aut-officia', '902.25', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 39, 1),
(469, 'Oliver Leuschke', 'voluptas-aut-veritatis-ut-quia-nobis-fugit-quaerat', '293.58', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 36, 1),
(470, 'Jarrod Waters', 'cupiditate-corrupti-id-iure-quam-quisquam-accusantium', '919.44', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 51, 1),
(471, 'Maxine Schaefer', 'corrupti-totam-quos-architecto-velit-velit-distinctio-deleniti', '789.98', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 28, 1),
(472, 'Gerda Satterfield Sr.', 'incidunt-molestias-et-dolorem', '322.12', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 29, 1),
(473, 'Dr. Blaze Conroy II', 'atque-inventore-enim-atque', '185.67', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 46, 1),
(474, 'Kaycee White MD', 'repellendus-eum-sunt-nisi-aut', '685.53', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 2, 1),
(475, 'Madisyn Rau Jr.', 'voluptatem-consectetur-ratione-blanditiis', '753.16', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 72, 1),
(476, 'Mr. Fidel Shanahan V', 'ipsam-incidunt-quia-iusto-quam-quasi-consequatur-quisquam', '724.41', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 223, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 72, 1),
(477, 'Della Jacobson', 'perferendis-ipsa-dolor-eum-amet-error-illo-commodi', '953.33', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 85, 1),
(478, 'Mathias Altenwerth', 'dolorem-eveniet-qui-fugiat-eaque-et-et-quasi-sit', '33.43', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 83, 1),
(479, 'Lupe Rippin', 'sint-modi-sit-non-facilis', '765.91', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 26, 1),
(480, 'Jensen Rippin', 'eos-sit-nesciunt-nihil-iusto-sed', '355.96', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 26, 1),
(481, 'Demetris Nikolaus', 'recusandae-est-est-est-quod-et-et-corrupti', '334.48', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 99, 1),
(482, 'Dr. Constance Jacobi II', 'accusamus-ut-aut-reprehenderit-repudiandae-rem', '211.93', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 0, 1),
(483, 'Norene Lebsack III', 'aut-ea-fugiat-ratione-quaerat-et-sequi', '666.97', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 90, 1),
(484, 'Stacy Bergnaum', 'hic-sunt-non-voluptatibus-aspernatur-harum', '639.64', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 32, 1),
(485, 'Lafayette Kemmer IV', 'et-aut-similique-numquam-molestias-porro-omnis-hic', '625.72', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 95, 1),
(486, 'Dr. Taryn Williamson', 'sapiente-quis-deleniti-quas-omnis', '955.80', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 2, 1),
(487, 'Ceasar O\'Reilly', 'ad-quibusdam-dolorum-sed-minus-corporis', '104.30', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 56, 1),
(488, 'Kaycee Homenick', 'laboriosam-quaerat-et-et-accusamus-sed-inventore-quia', '353.48', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 45, 1),
(489, 'Tobin Walsh IV', 'fugiat-aut-voluptas-aspernatur-eum', '704.26', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 9, 1),
(490, 'Kristin Runolfsdottir', 'reiciendis-eum-id-voluptatem-est-cum-consectetur', '918.48', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 99, 1),
(491, 'Mac Jakubowski', 'aut-illum-fugit-eum-qui-quasi-vel', '397.99', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 76, 1),
(492, 'Mrs. Dakota Rau', 'sint-et-aliquid-dolores-dolores-soluta-eius-ipsam-omnis', '389.63', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 20, 1),
(493, 'Dr. Lionel Upton V', 'nihil-dolores-aut-aut-et', '60.46', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 69, 1),
(494, 'Alda Goldner', 'eos-dolorem-laboriosam-amet', '217.99', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 56, 1),
(495, 'Cierra Predovic', 'animi-sit-mollitia-et-sit-beatae-in', '517.97', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 98, 1),
(496, 'Annamae Bauch', 'vel-quam-non-totam-voluptate', '839.04', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 60, 1),
(497, 'Quincy Medhurst', 'aspernatur-similique-sed-dolor-amet-sunt-dignissimos-pariatur', '469.62', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 50, 1),
(498, 'Morton McGlynn', 'inventore-laboriosam-corporis-facere', '709.82', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 65, 1),
(499, 'Delphia Zboncak', 'et-eum-consequatur-libero-quis-voluptatem', '535.82', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 30, 1),
(500, 'Madalyn Bradtke IV', 'est-sequi-porro-ut-vitae', '45.94', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 88, 1),
(501, 'Obie Reinger', 'distinctio-quos-fugit-saepe-voluptates-sit', '271.15', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 224, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 31, 1),
(502, 'Prof. Kraig Bergstrom MD', 'dignissimos-nemo-delectus-qui-consequatur-voluptatum-quo-dolores', '409.84', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 94, 1),
(503, 'Maverick Bernier', 'saepe-nihil-ut-deserunt', '253.44', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 16, 1),
(504, 'Prof. Timothy Harvey DDS', 'vel-quibusdam-beatae-ducimus-culpa-aliquam-esse', '70.40', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 9, 1),
(505, 'Minnie Bogan', 'temporibus-ullam-sint-id-nihil-ut-doloribus-laudantium-expedita', '415.00', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 45, 1),
(506, 'Roderick Marvin', 'maxime-omnis-facilis-molestiae-est', '544.03', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 53, 1),
(507, 'Brooks Von', 'nihil-quae-blanditiis-voluptatem-qui', '108.17', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 30, 1),
(508, 'Jasper Dickinson PhD', 'quis-alias-consequatur-facilis-necessitatibus-ea-tenetur', '431.92', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 53, 1),
(509, 'Dillan Breitenberg DDS', 'cupiditate-itaque-quo-in-expedita', '794.51', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 96, 1),
(510, 'Prof. Kaden Hermiston PhD', 'voluptas-quos-omnis-qui-numquam-est-amet', '968.54', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 5, 1),
(511, 'Theresia Schiller', 'necessitatibus-asperiores-nihil-et-deleniti-perspiciatis-ipsam', '227.16', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 63, 1),
(512, 'Gus Cruickshank', 'earum-maiores-officiis-ut-delectus-optio-harum-nemo', '254.11', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 7, 1),
(513, 'Prof. Gage Breitenberg', 'et-et-enim-enim-aspernatur-quae-eos-omnis-aliquid', '357.69', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 0, 1),
(514, 'Aiyana Maggio', 'quam-cum-ut-quod-placeat-vitae-qui-et-corrupti', '537.94', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 67, 1),
(515, 'Mossie Williamson', 'vero-sed-quisquam-consequatur', '476.95', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 44, 1),
(516, 'Solon Dickinson', 'cumque-atque-nihil-sed-nam-atque-nesciunt-reprehenderit-dolorem', '844.94', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 92, 1),
(517, 'Aimee Buckridge', 'odio-unde-quos-saepe-accusamus', '850.66', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 26, 1),
(518, 'Christian Purdy', 'sint-aut-et-suscipit-dolore', '30.85', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 15, 1),
(519, 'Rosalinda Kihn', 'autem-ut-officia-incidunt-eius', '975.16', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 68, 1),
(520, 'Prof. Nasir Swift MD', 'fugit-nostrum-quia-iste-fuga-est-quod', '806.44', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 36, 1),
(521, 'Santa Wiegand', 'cum-at-et-dolore-ipsum-hic', '803.42', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 38, 1),
(522, 'Madelynn Hilpert', 'minima-voluptatum-cum-maxime-sit-quas-aut', '876.54', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 79, 1),
(523, 'Miss Genesis Fadel PhD', 'repellat-voluptas-blanditiis-odio-distinctio-voluptatem-numquam-saepe-velit', '24.99', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 3, 1),
(524, 'Rodolfo Brakus', 'id-ut-necessitatibus-assumenda-tempore', '851.15', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 75, 1),
(525, 'Mr. Trystan Bogisich', 'atque-eligendi-et-fugit-aut-veritatis-aut-recusandae-commodi', '900.06', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 77, 1),
(526, 'Mr. Cleo Keeling', 'eius-quas-dicta-totam-et-omnis-nihil', '368.48', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 225, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 2, 1),
(527, 'Judah Nikolaus', 'aut-aliquam-quisquam-sed-perspiciatis-dolores-est-a', '414.81', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 72, 1),
(528, 'Jensen Koepp', 'velit-animi-ea-voluptates', '644.88', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 41, 1),
(529, 'Ms. Kyla Muller DVM', 'repellendus-culpa-eos-minus-minima-dicta-recusandae-voluptatem-dignissimos', '969.57', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 89, 1),
(530, 'Kiel Bahringer', 'quo-cum-consequuntur-pariatur-placeat-dignissimos', '11.55', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 49, 1),
(531, 'Lourdes Gutkowski', 'aut-rem-assumenda-ut-culpa-qui', '488.73', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 11, 1),
(532, 'Jeremy Orn', 'sit-quam-optio-necessitatibus-aperiam', '329.56', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 87, 1),
(533, 'Emanuel Zemlak', 'nesciunt-non-molestias-unde-ex-non-praesentium-numquam', '373.17', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 63, 1),
(534, 'Tess Lynch', 'sed-nulla-labore-rerum-quibusdam', '847.49', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 88, 1),
(535, 'Prof. Delphine Krajcik', 'iste-repudiandae-ea-illo-odit-laboriosam-dolore-nihil', '859.33', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 22, 1),
(536, 'Marcelle Larson', 'voluptate-sit-et-ut-aut', '737.26', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 45, 1),
(537, 'Virgil Kunze Sr.', 'sint-modi-est-eos-veritatis-est-quos-qui', '481.01', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 81, 1),
(538, 'Vickie Kozey MD', 'suscipit-facere-sed-corporis-esse-non-soluta-praesentium-et', '945.95', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 88, 1),
(539, 'Payton Bahringer', 'autem-enim-molestias-saepe-quia-aliquid-asperiores-dolores', '553.64', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 81, 1),
(540, 'Miss Vilma Littel', 'suscipit-itaque-aut-veniam-ad-odit', '107.23', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 13, 1),
(541, 'Kaleigh Leannon', 'quia-rem-aspernatur-non', '212.53', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 40, 1),
(542, 'Adaline Moore', 'fuga-nemo-modi-amet-accusantium-id-recusandae', '918.14', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 70, 1),
(543, 'Jo Fisher', 'consectetur-eius-unde-id-nulla-deserunt-iusto', '738.78', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 21, 1),
(544, 'Leanna Kutch', 'repudiandae-dicta-veniam-qui-et-debitis-laboriosam', '57.80', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 21, 1),
(545, 'Marcel Bernier I', 'sint-est-amet-nulla-laudantium-dolor', '100.43', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 98, 1),
(546, 'Hunter Prosacco V', 'nesciunt-possimus-rerum-quia-et-reiciendis-dolorem', '498.86', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 4, 1),
(547, 'Dr. Makenna Simonis', 'sint-nihil-deserunt-velit', '247.58', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 1, 1),
(548, 'Trever Pagac', 'quo-aperiam-asperiores-et-praesentium-deserunt-fuga-voluptas', '180.93', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 69, 1),
(549, 'Evans Stoltenberg III', 'saepe-dolore-eum-ex-quo', '330.00', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 10, 1),
(550, 'Mable Beatty', 'provident-ut-dolorem-sequi-dolorem-dolores', '402.70', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 69, 1),
(551, 'Emilio Hamill', 'soluta-aut-vero-sunt-voluptas-nesciunt', '297.67', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 226, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 8, 1),
(552, 'Mattie Ebert Sr.', 'est-non-provident-occaecati-architecto-libero-expedita-nesciunt-itaque', '777.40', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 83, 1),
(553, 'Kathryn Harris', 'culpa-dignissimos-et-sit-porro', '936.02', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 16, 1),
(554, 'Charley Mohr', 'sunt-eos-doloribus-quis-alias-quis-non-consequatur', '111.12', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 69, 1),
(555, 'Mrs. Gail Willms', 'inventore-aperiam-illo-et-in-soluta-delectus-et', '727.38', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 23, 1),
(556, 'Kevin Emmerich', 'tempore-consectetur-magnam-sed-delectus-delectus-sit', '720.95', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 16, 1),
(557, 'Rhea Marvin', 'molestias-sint-eos-expedita-aperiam-et-commodi', '798.26', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 12, 1),
(558, 'Madyson Schimmel', 'quia-debitis-voluptatum-ducimus-deserunt-omnis-voluptate', '993.48', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 62, 1),
(559, 'Donald Becker', 'voluptas-excepturi-similique-consequatur-quia', '163.28', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 88, 1),
(560, 'Dr. Amani Brekke I', 'dolor-sed-perferendis-iste-recusandae-ratione', '44.67', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 55, 1),
(561, 'Magnolia Nicolas', 'porro-earum-quis-quia-officia-dicta', '391.66', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 84, 1),
(562, 'Janet Sauer', 'nesciunt-sapiente-voluptas-quo-numquam', '382.95', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 55, 1),
(563, 'Dr. Isaias Padberg', 'eveniet-eius-dignissimos-cupiditate-quia-laudantium-modi', '854.86', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 7, 1),
(564, 'Adell Block', 'deserunt-illum-minima-optio-iste-aut-eaque-cumque', '797.72', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 87, 1),
(565, 'Janae Schowalter I', 'quas-aperiam-illo-ut-saepe-corrupti', '624.67', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 49, 1),
(566, 'Mrs. Marcia Murray', 'et-eum-eveniet-dolor-facilis', '761.68', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 58, 1),
(567, 'Yvonne Kub', 'aut-consequatur-esse-ut-et', '974.70', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 86, 1),
(568, 'Mrs. Carolyn Harber', 'modi-est-ad-voluptas-ut-rerum-animi-iste', '412.25', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 11, 1),
(569, 'Jaydon Schaden', 'ad-perspiciatis-veniam-odio-dolores-nesciunt', '642.86', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 89, 1),
(570, 'Mr. Filiberto Ortiz', 'minima-laborum-asperiores-culpa-recusandae-id-est-dolor', '890.58', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 13, 1),
(571, 'Jenifer Corwin', 'libero-minima-delectus-nam-aut', '652.31', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 53, 1),
(572, 'Dina Gerhold', 'repudiandae-corrupti-natus-molestias-veniam', '543.34', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 23, 1),
(573, 'Mr. Francesco Erdman', 'libero-optio-magni-porro-deleniti-sunt-in-sunt', '321.63', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 34, 1),
(574, 'Shea Johnston', 'sit-et-saepe-laborum', '758.46', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 73, 1),
(575, 'Ron Roob', 'pariatur-et-dolore-enim-rem', '732.36', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 14, 1);
INSERT INTO `products` (`id`, `name`, `slug`, `price`, `image`, `category_id`, `created_at`, `updated_at`, `sold`, `is_stock`) VALUES
(576, 'Adrien Walsh', 'qui-voluptatibus-ut-consequuntur-aperiam-consequuntur-sit-laudantium', '452.75', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 227, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 13, 1),
(577, 'Ramon Purdy', 'hic-est-veritatis-amet-omnis-vel-velit-cupiditate-voluptatem', '527.94', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 70, 1),
(578, 'Mrs. Ofelia O\'Conner I', 'maiores-consequatur-aspernatur-excepturi-consectetur-dignissimos', '24.14', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 36, 1),
(579, 'Dr. Dewitt Flatley', 'fugiat-ullam-ut-voluptates', '429.17', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 14, 1),
(580, 'Dr. Alexandre Boyer', 'aut-vero-quia-corporis-a-officiis', '250.04', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 96, 1),
(581, 'Prof. Oran Fay MD', 'dolorem-quidem-necessitatibus-modi-quo-non-ab', '268.35', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 12, 1),
(582, 'Justice Aufderhar', 'necessitatibus-velit-aut-placeat-vero-magni-ad-iste', '232.99', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 13, 1),
(583, 'Miss Robyn Wiegand I', 'et-aut-quo-aut-libero', '208.45', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 52, 1),
(584, 'Dr. Florencio Sawayn', 'qui-sequi-et-eum-rerum-distinctio-omnis-harum', '146.42', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 24, 1),
(585, 'Ronaldo Schmidt PhD', 'tempora-qui-fuga-iusto-consequatur', '728.22', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 4, 1),
(586, 'Carlotta Parker', 'aut-incidunt-est-dolorum-et-inventore-accusantium-est', '22.91', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 74, 1),
(587, 'Mr. Malachi Ziemann', 'ipsa-eaque-itaque-quo-aut-beatae', '57.75', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 35, 1),
(588, 'Maurine Cormier', 'rerum-quae-voluptatem-harum-necessitatibus-voluptatibus', '246.02', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 60, 1),
(589, 'Mrs. Athena Fay', 'quia-explicabo-qui-rem-ipsam-quia', '775.54', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 80, 1),
(590, 'Dr. Diamond Welch', 'non-quibusdam-consequatur-ea-laudantium-facere-excepturi-ut', '31.54', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 86, 1),
(591, 'Rico Heaney', 'id-ea-non-dolorum', '975.38', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 84, 1),
(592, 'Marisol Schulist II', 'rem-nostrum-rerum-officia-provident-dolore-laborum', '546.23', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 37, 1),
(593, 'Dr. Javier Greenfelder MD', 'aliquam-voluptatem-illum-tempora-eius-labore-officiis-quo', '543.51', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 71, 1),
(594, 'Ms. Mia Mosciski II', 'molestiae-incidunt-vel-aut-fugiat', '502.26', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 59, 1),
(595, 'Ms. Brandi Kohler IV', 'blanditiis-perferendis-ea-necessitatibus-dolorem-saepe-incidunt', '78.89', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 28, 1),
(596, 'Araceli Brekke DDS', 'corrupti-rerum-quia-deserunt-aut-dignissimos', '76.48', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 73, 1),
(597, 'Lynn Hansen', 'itaque-quasi-saepe-facilis-laborum-officiis', '18.56', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 20, 1),
(598, 'Carlee Bauch', 'in-neque-vitae-repellat', '227.32', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 66, 1),
(599, 'Flavio Kshlerin III', 'corrupti-recusandae-qui-voluptatibus-qui-totam-commodi-accusantium-quo', '723.37', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 19, 1),
(600, 'Ava Adams V', 'dolores-aut-similique-facere-nam-nihil', '677.69', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 12, 1),
(601, 'Mariela Rutherford', 'fugiat-et-sit-quae-et-et-accusamus-in-saepe', '709.43', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 228, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 60, 1),
(602, 'Wendell McGlynn', 'qui-deserunt-a-ex-provident-odio', '409.07', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 11, 1),
(603, 'Name Roberts', 'doloremque-omnis-ut-eum-molestiae-consectetur-veniam-voluptas', '849.41', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 95, 1),
(604, 'Dr. Kellen Grady PhD', 'at-dolores-occaecati-officiis-eum-consequatur-veniam', '612.99', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 31, 1),
(605, 'Valentin Runolfsdottir', 'placeat-at-repellendus-facere-qui-repellat', '783.22', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 11, 1),
(606, 'Alfred Heller', 'culpa-quo-hic-vel-enim-quo-minus-ipsa', '386.95', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 23, 1),
(607, 'Lelia Franecki', 'inventore-rem-voluptatem-voluptates-sed-cum-ut', '975.78', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 70, 1),
(608, 'Annalise Feil Jr.', 'accusantium-quos-sunt-debitis', '993.70', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 46, 1),
(609, 'Nyah Leffler', 'autem-ut-eaque-aut-enim-sapiente-autem-delectus-et', '359.99', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 70, 1),
(610, 'Lucie Boyer', 'sed-dolor-consequatur-nihil-sequi-sint', '477.20', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 13, 1),
(611, 'Lisette Wolf', 'esse-nihil-ullam-nisi-rerum-quidem-est-quia-alias', '103.46', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 6, 1),
(612, 'Mr. Nikolas Nolan PhD', 'est-enim-est-voluptas-maxime-accusamus', '143.85', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 17, 1),
(613, 'Miss Mireille Hyatt', 'fugiat-est-perferendis-voluptatibus-fuga-quos-rerum', '119.48', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 70, 1),
(614, 'Edison Purdy', 'sed-sint-ea-rem-cumque', '580.65', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 28, 1),
(615, 'Ernesto Hudson', 'iste-tempore-dolor-qui-assumenda-ratione-veniam', '465.29', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 50, 1),
(616, 'Mrs. Kendra Abbott DDS', 'aut-illo-ea-consequuntur-provident-saepe-aliquam', '574.27', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 76, 1),
(617, 'Prof. Lisa Dickinson', 'maiores-in-porro-modi-reprehenderit-facere-vel', '372.83', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 64, 1),
(618, 'Mr. Jaron Kilback DVM', 'incidunt-sequi-illo-natus-sit-fuga-ut', '36.69', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 25, 1),
(619, 'Vivian Hahn', 'aliquid-quo-facilis-iure-dolorem-qui', '818.06', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 66, 1),
(620, 'Leonor Corwin', 'fuga-libero-temporibus-dolorem', '778.98', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 63, 1),
(621, 'Melisa Dach MD', 'sint-sint-adipisci-rem-non-odio', '607.03', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 78, 1),
(622, 'Dr. Antoinette Nikolaus V', 'qui-eius-non-a-atque', '982.30', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 14, 1),
(623, 'Cleve Boyle IV', 'possimus-impedit-beatae-officiis-debitis', '740.08', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 51, 1),
(624, 'Retta Marvin', 'laboriosam-omnis-asperiores-aliquid-omnis', '145.22', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 13, 1),
(625, 'Mr. Eduardo Romaguera', 'est-iste-modi-enim-atque-ipsa-molestiae-non-dicta', '974.20', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 28, 1),
(626, 'Prof. Keven Heidenreich II', 'odio-laudantium-perferendis-quo-earum-impedit', '799.58', '01JMF24FBRTVE0WQN4JBTV6PN1.png', 229, '2025-02-19 12:25:52', '2025-02-19 12:25:52', 5, 1);

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
('kZsBrPMiaHuCAe59eSZy6IEIfh7Xuw6ujr7oqhRK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 OPR/116.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamxJdFg0RHJFQkZUZEJlUWhzNlY1SXdxbUx6TmFxcjA1dnl1S05LZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1739972556),
('WOWGpkkAbloQCMG42yc1WqwPABNepCeShLGy6B20', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 OPR/116.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiMDhnZzgyR2ZQRmoxc000VnR6cktnZDNCejhrSnowenFmMTByTmZlMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wP2NhdD0yMDgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJGVEQ0VsM0ROQVEvTVo3OE83V3BTVi5ETTUxT015ZzByV04uNm15a28vLnJ1eHdmTENRbVYuIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1739975110);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=627;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_classification_id_foreign` FOREIGN KEY (`classification_id`) REFERENCES `classifications` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
