-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2014 at 05:22 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aiw2014`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_admin_comments`
--

CREATE TABLE IF NOT EXISTS `active_admin_comments` (
`id` int(11) NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `news_is` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
`id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2a$10$u5iCbevMgdpUlDFnheRpR.V10jQqcr4TlL64Oc0N8HZNr6KG8SK62', NULL, NULL, NULL, 16, '2014-12-21 15:58:05', '2014-12-21 13:51:55', '127.0.0.1', '127.0.0.1', '2014-11-04 16:34:06', '2014-12-21 15:58:05'),
(2, 'ptxuxu@gmail.com', '$2a$10$RpQb.WkEugxgPI/k8uO8/.MV6qMtRnGKqS0jmaiI./Ex9J.JUi/yu', NULL, NULL, NULL, 7, '2014-12-12 16:12:23', '2014-12-09 08:29:19', '127.0.0.1', '127.0.0.1', '2014-12-06 10:10:15', '2014-12-12 16:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE IF NOT EXISTS `assets` (
`id` int(11) NOT NULL,
  `storage_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storage_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `storage_width` int(11) DEFAULT NULL,
  `storage_height` int(11) DEFAULT NULL,
  `storage_aspect_ratio` float DEFAULT NULL,
  `storage_depth` int(11) DEFAULT NULL,
  `storage_format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storage_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storage_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Thiên Văn Việt Nam', '2014-12-06 10:19:33', '2014-12-06 10:19:33'),
(2, 'Thiên Văn Thế Giới', '2014-12-06 10:43:33', '2014-12-06 10:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `name`, `description`, `created_at`, `updated_at`, `element_id`) VALUES
(1, 'Những thông tin cơ bản về Trái Đất', 'Trái Đất là hành tinh thứ ba tính từ Mặt Trời, đồng thời cũng là hành tinh lớn nhất trong các hành tinh đất đá của hệ Mặt Trời xét về bán kính, khối lượng và mật độ vật chất.', '2014-12-06 12:33:08', '2014-12-07 08:44:15', 3),
(2, 'Những thông tin cơ bản về Sao Thủy', 'Sao Thủy hay Thủy Tinh là hành tinh nhỏ nhất và gần Mặt Trời nhất trong tám hành tinh thuộc Hệ Mặt Trời, với chu kỳ quỹ đạo bằng 88 ngày Trái Đất.', '2014-12-07 08:49:54', '2014-12-07 08:49:54', 6),
(3, 'Những thông tin cơ bản về Sao Mộc', 'Sao Mộc hay Mộc tinh là hành tinh thứ năm tính từ Mặt Trời và là hành tinh lớn nhất trong Hệ Mặt Trời.', '2014-12-07 08:50:24', '2014-12-07 08:50:24', 7),
(4, 'Những thông tin cơ bản về Sao Thiên Vương', 'Sao Thiên Vương là hành tinh thứ bảy tính từ Mặt Trời; là hành tinh có bán kính lớn thứ ba và có khối lượng lớn thứ tư trong hệ.', '2014-12-07 08:50:51', '2014-12-07 08:50:51', 8),
(5, 'Những thông tin cơ bản về Sao Hỏa', 'Sao Hỏa là hành tinh thứ tư tính từ Mặt Trời trong Thái Dương Hệ. Đôi khi hành tinh này còn được gọi tên là Hỏa Tinh.\r\n', '2014-12-07 08:51:22', '2014-12-07 08:51:22', 9),
(6, 'Những thông tin cơ bản về Sao Kim', 'Sao Kim hay Kim tinh, còn gọi là sao Thái Bạch, Thái Bạch Kim tinh, là hành tinh thứ hai từ Mặt Trời, quay quanh nó với chu kỳ 224,7 ngày Trái Đất.\r\n', '2014-12-07 08:52:02', '2014-12-07 08:52:02', 4),
(7, 'Những thông tin cơ bản về Sao Thổ', 'Sao Thổ là hành tinh thứ sáu tính theo khoảng cách trung bình từ Mặt Trời và là hành tinh lớn thứ hai về đường kính cũng như khối lượng, sau Sao Mộc trong Hệ Mặt Trời.', '2014-12-07 08:52:50', '2014-12-07 08:52:50', 2),
(8, 'Những thông tin cơ bản về Sao Hải Vương', 'Sao Hải Vương là hành tinh thứ tám và xa nhất tính từ Mặt Trời trong Hệ Mặt Trời. Nó là hành tinh lớn thứ tư về đường kính và lớn thứ ba về khối lượng.', '2014-12-07 08:53:36', '2014-12-07 08:53:36', 10),
(9, 'Trái Đất - hành tinh của chúng ta', '<ul><li><img alt=" " title="Image: http://www.cds.caltech.edu/~shane/images/earth-moon-love.jpg" src="http://www.cds.caltech.edu/~shane/images/earth-moon-love.jpg" width="130" height="135"></li></ul>\r\n<p class="wysiwyg-text-align-justify">Trái Đất (Earth) là hành tinh thứ 3 của Hệ Mặt Trời tính từ trong ra. Chung sta biết rằng dây chính là nơi chúng ta đã sinh ra và tồn tại, cũng là nơi duy nhất tồn tại sự sống trong Hệ Mặt Trời (theo những hiểu biết của chúng ta cho đến ngày nay)</p>\r\n<p class="wysiwyg-text-align-justify"><strong>Các thông số cơ bản về Trái Đất</strong></p>- Khoảng cách từ Mặt Trời : 1 AU (149,6 triệu km)<br>- Chu kì quay quanh Mặt Trời: 365,26 ngày<br>- Chu kì tự quay: 24 giờ<br>- Khối lượng : 5,98 x 10^24 kg<br>- Đường kính: 12.756km<br>- Nhiệt độ bề mặt: 260 – 310K<br>- Số vệ tinh: 1 - Mặt Trăng (moon)<br>Đặc biệt, ta nên biết rằng hàng năm trên quĩ đạo elip của mình Trái Đất sẽ gần Mặt Trời nhất vào ngày 2 tháng 1, khi đó khoảng cách từ Trái Đất đến Mặt Trời sẽ vào khoảng 147,1 triệu km. Ngoài ra tốc độ quay của Trái Đất cũng không phải chính xác 100% như đã nêu trê, hiện nay thì cứ khoảng 10 năm chu kì quay của Trái Đất sẽ chậm lại khoảng 1 giây.<p></p><p class="wysiwyg-text-align-justify"><strong>Trục Trái Đất và 4 mùa</strong><br>Trụa quay của Trái Đất chúng ta không vuông góc với mặt phẳng quĩ đạo của nó mà lệch so với trục nghiêng này khoảng 23,5 độ. Vì lí do này nên trong một chu kì quĩ đạo của mình, hai bán cầu của Trái Đất sẽ lần lượt hướng về phía Mặt Trời trong khi nửa còn lại khi đó se hướng ngược lại, điều này đã gây ra sự biến đổi thời tiết trên Trái Đất mà ta đa biết. Đó là 4 mùa : xuân, hạ, thu, đông.</p><p class="wysiwyg-text-align-justify"><img alt=" " title="Image: http://www.ux1.eiu.edu/~cxtdm/met/seasons.gif" src="http://www.ux1.eiu.edu/~cxtdm/met/seasons.gif" width="400" height="252"></p><p class="wysiwyg-text-align-justify">&nbsp;</p><p class="wysiwyg-text-align-justify"><strong>Chuyển động hàng ngày của chúng ta</strong>:<br>Nơi chuyển động nhiều nhất hàng ngày trên mặt đất chính là các điểm trên đường xích đạo. Mỗi ngày mỗi điểm nằm trên xích đạo Trái Đất di chuyển khoảng 40.000 km do chuyển động tự quay của Trái Đất. Càng xa xích đạo&nbsp; thì chuyển động này càng nhỏ và ở đúng 2 địa cực thì chuyển động này coi như không đáng kể do sự thay đổi khoảng cách đến trục quay.</p><p class="wysiwyg-text-align-justify">Ngoài chuyển động do sự tự quay của Trái Đất, hàng ngày chúng ta còn chuyển động với tốc độ lên đến 30km/s quanh Mặt Trời - một tốc độ rất lớn. Tuy nhiên cả 2 chuyển động này chúng ta đều không cảm thấy do chúng ta có kích thươc quá nhỏ và lực đáng kể hơn nhiều tác động lên chúng ta chính là lực hấp dẫn của Trái Đất.</p><p class="wysiwyg-text-align-justify"><strong>Nhiệt độ trên mặt Trái Đất<br></strong>Nhiệt độ trên mặt đất mà chúng ta biết tới đến nay chính là nhiệt độ hàng ngày chúng ta vẫn cảm thấy trong khí quyển. Đến nay nơi lạnh nhất Trái Đất chúng ta biết chính là Nam Cực, nhiệt độ thấp kỉ lục đo được ở đó là -88 độ C (185K) trong khi nhiệt độ cao nhất từng đo được là 58 độ C (311K) đo được tại châu Phi.</p><ul><li></li></ul><p class="wysiwyg-text-align-justify"><strong>Khí quyển Trái Đất</strong><br>Khí quyển là một lớp khí mỏng bao quanh Trái Đất của chúng ta, gồm những khí thoát ra từ chính các hoạt động địa chất bên trong của Trái Đất. Khí quyển của hành tinh chúng ta bao gồm 78% khí Nitơ, 21% oxy, 0,9% argon, 0,03% carbon dioxxit va còn lại là dành cho các chất khí khác.&nbsp;<br>Khí quyển không những chỉ là môi trường hô hấp cho các sinh vật như chúng ta đã biết, nó còn có một tác dụng hết sức quan trọng khác cho sự sống của chúng ta. Nó giữ nhiệt cho hành tinh, không để thoát ra không gian xung quanh và đồng thời nó ngăn chặn các bức xạ tử ngoại đến từ Mặt Trời vốn có hại cho cơ thể sinh vật.</p><p class="wysiwyg-text-align-justify">--------------------------------------------------</p><p class="wysiwyg-text-align-justify"><strong>Sự dịch chuyển lục địa trên Trái Đất</strong></p><p class="wysiwyg-text-align-justify">Ngay từ khi mới ra đời cho đến nay, dưới ảnh hưởng của trường trọng lực cùng với quán tính quay của Trái Đất, các mảng lục địa trên Trái Đất luôn di chuyển về các hướng. Sự di chuyển các mảng lục địa trên thế giới không phải là sự di chuyển các phần vỏ Trái Đất (vỏ Trái Đất quá mỏng và giòn nên không thể tránh khỏi gãy, vỡ). Sự chuyển động diễn ra ở các mảng thạch quyển gồm vỏ Trái Đất và một phần phía dưới ngay phía trên của cái ruột nóng chảy của Trái Đất dày hàng trăm km (quyển mềm).<br>Các mảng quyển mềm không chuyển động hỗn loạn mà tương ứng với dạng cầu của Trái Đất. Các lục địa khi di chuyển vẫn có mút nằm gần các cực Trái Đất. Phần đại dương giữa hai lục địa được mở rộng nhanh ở vùng gần xích đạo và chậm hơn ở hai cực (điển hình nhất là Đại Tây Dương). Bất kì cặp lục địa nào thì trục nối chgúng luôn đi qua tâm hành tinh.<br>Cùng với sự di chuyển, các mảng lục địa thường xuyên va chạm với nhau. Những mảng mỏng và rắn chắc hơn chui xuống dưới những mảng lớn và có tốc độ chậm hơn. Việc này để lại những lớp trầm tích đùn lên thành từng dải hẹp ven đất liền. Một phần trầm tích tiếp tục theo hệ thống băng chuyền lục địa chìm sâu xuống và nóng chảy.<br>Trong trường hợp của Ấn Độ: giữa kỉ đệ tam, Ấn Độ trôi về phía lục địa Á- Âu và va chạm vơí lục địa này. Do có sự trùng khít dường như hoàn toàn về độ rắn của các mảng thạch quyển mà một khối lượng khổng lồ phần rìa các mảng thạch quyển bị vò nhàu tạo thành các nếp uốn và kết quả là Himalaia ra đời.</p><p class="wysiwyg-text-align-justify"><br></p><p class="wysiwyg-text-align-justify">Quá trình chuyển dời các lục địa diễn ra như sau:<br>-&nbsp; Thời kì Permi-Triat (225 triệu năm trước) : Đai Tây Dương và Ấn Độ Dương chưa có mặt, dại dương duy nhất của Trái Đất lúc này là đại dương Tethys. Các mảng thạch quyển còn nối liền với nhau trên một lục địa duy nhất là Pangaea.</p><p class="wysiwyg-text-align-justify">-&nbsp; Cuối kỉ Triat (180 triệu năm trước) : Pangaea tách thành Laurasia (gồm Bắc Mĩ và Á-Âu) và Gondwanaland (gồm Nam Mĩ, Châu Phi, Châu Úc, Nam Cực và Ấn Độ).<br>Tiếp đó Gondwanaland tách làm ba phần:<br>+Nam Mĩ và Châu Phi<br>+Ấn Độ<br>+Nam Cực và Châu Úc</p><p class="wysiwyg-text-align-justify">- Cuối kỉ Jura (135 triệu năm trước) : Ấn Độ trượt dần về phía Laurasia, Nam Mĩ có xu hướng tách khỏi Châu Phi</p><p class="wysiwyg-text-align-justify">- Cuối kỉ Creta, đầu đại tân sinh (65 triệu năm trước): Ấn Độ tiếp tục trôi, Grenland tách khỏi châu Âu. Nam MĨ tạm thời nối với Nam Cực và Châu Úc và mọi việc cứ tiếp diễn như vậy và dần dần trở thành như ngày nay.</p><p class="wysiwyg-text-align-justify">------------------------------------------------------</p><p class="wysiwyg-text-align-justify"><br><strong>Cái thời kì phát triển địa chất - sinh vật trên Trái Đất</strong><br>Trên đây ta vừa nói về sự dịch chuyển các lục địa để hình thành một bản đồ thế giới như ngày nay ta đã biết. Sự dịch chuyển này kéo dài qua nhiều thời kì cùng với sự biến đổi và phát triển của cả địa chất, khí hậu và sinh vật. Nó cũng chính là những yếu tố dẫn đến sự có mặt của con người chúng ta ngày nay.</p><p class="wysiwyg-text-align-justify">Toàn bộ quá trình địa chất tương ứng với sự phát triển sinh vật trên Trái Đất được chia thành các giai đoạn lớn gọi là các đại và chia nhỏ ra là các kỉ.</p><p class="wysiwyg-text-align-justify">Xa xưa nhất là đại thái cổ&nbsp;<strong>Archeozoic</strong>&nbsp;bắt đầu cách đây 4,6 tỷ năm và kết thúc cách đây 2,6 tỷ năm (tức là kéo dài 2 tỷ năm). Đại này không chia kỉ.</p><p class="wysiwyg-text-align-justify">Đại nguyên sinh&nbsp;<strong>Proterozoic</strong>&nbsp;Bắt đầu 2,6 tỷ năm trước và kết thúc cách đây 570 triệu năm. Đại này cũng không chia kỉ.</p><p class="wysiwyg-text-align-justify">Trong hai đại này, sự sống đã bắt đầu hình thành từ đầu đại thái cổ, khoảng trên 3 tỷ năm trước. Sự sống nảy sinh từ các phân tử hữu cơ và phát triển trong hai đại này ở mức độ sơ đẳng, sinh vật cấp thấp.</p><p class="wysiwyg-text-align-justify">Đại cổ sinh&nbsp;<strong>Paleozoic</strong>&nbsp;Bắt đầu 570 triệu năm trước và kết thúc ấch đây 245 triệu năm.<br>đây là thời kì sự sóng phát triển khá mạnh với sự có mặt của các loài động thực vật có câấu tạo bắt đầu tương đối phức tạp.&nbsp;<br>Đại này được chia thành 6 kỉ lần lượt là</p>&nbsp; &nbsp; + Cambry<br>&nbsp; &nbsp; + Ordovic<br>&nbsp; &nbsp; + Silure<br>&nbsp; &nbsp; + Devone<br>&nbsp; &nbsp; + Carbon<br>&nbsp; &nbsp; + Permi<br><p class="wysiwyg-text-align-justify"><br>Đại trung sinh&nbsp;<strong>Mesozoic</strong>&nbsp;bắt đầu cách đây 245 triệu năm và kết thúc cách đây 66,4 triệu năm<br>Đai này chia thành 3 kỉ là</p>&nbsp; &nbsp; &nbsp;+ Triat<br>&nbsp; &nbsp; &nbsp;+ Jura<br>&nbsp; &nbsp; &nbsp;+ Creta<p class="wysiwyg-text-align-justify">Như chúng ta đều biết (chắc ai cũng xem phim Jurassic Park rồi) là thời kì phát triển rất mạnh mẽ của sinh vật trên mặt đất, đặc biệt là loài bò sát. Thời gian này kết thúc cùng với sự tuyệt diệt của bò sát khổng lồ vào đầu đại tân sinh sau đó.</p><p class="wysiwyg-text-align-justify">Đại tân sinh&nbsp;<strong>Cenozoic</strong>&nbsp;bắt đầu ngay sau khi đại trung sinh kết thúc và kéo dài đến bây giờ. Chúng ta ra đời vào kỉ thứ 4 của đại này.</p><p class="wysiwyg-text-align-justify"><br><strong>Mặt Trăng – Vệ tinh tự nhiên duy nhất của Trái Đất</strong></p><p class="wysiwyg-text-align-justify"><em>Các thông số</em>:</p><ol><li>Khoảng cách từ Trái đất&nbsp; : 384.403 km</li><li>Chu kì quay quanh Trái Đất: 27,3 ngày</li><li>Chu kì tuần trăng : 29,5 ngày</li><li>Khối lượng : 7,35 x 10­22 kg</li><li>Đường kính: 3.476 km</li><li>Diện tích bề mặt: 3,79 x 107 ­km2</li></ol>', '2014-12-20 17:29:50', '2014-12-21 14:58:27', 3),
(10, 'Bí mật về Sao Thủy', '<div class="postrow has_after_content">Đường kính:4878 km<br>Khối lượng 3,28.10^23kg<br>Tỉ khối 5500kg/m3<br>Chu kì xoay quanh trục 58,7 ngày trái đất<br>Khoảng cách tb đến mặt trời 0,39 đvtv<br>Chu kì quay quanh mặt trời 88 ngày trái đất<br>Tâm sai của quĩ đạo 0,21<br>Độ nghiêng của quĩ đạo 7 độ</div><div class="postrow has_after_content"><br><strong><span class="wysiwyg-font-size-large">Hành tinh không nhìn thấy</span></strong></div><div class="postrow has_after_content"><br>Truyền thuyết kể rằng hình như suốt đời mình, Copecnic chưa một lần nhìn thấy sao Thủy, ngôi sao luôn giấu mình trong tia mặt trời. Quả thật, trong tác phẩm bất hủ của mình "Về chuyển động quay của các thiên cầu ", Copecnic đã không hề dẫn ra 1 quan sát nào về hành tinh này. Trong những tính toán về chuyển động của sao Thủy, Copecnic đã sử dụng những quan sát của Ptoleme, và mới hơn là chủa Walter và Schoner thực hiện tại Đức thời kì 1491-1504. Tuy nhiên, đề cập đến những khó khăn khi nghiên cứu sao Thủy tại vĩ tuyến Cracow, Copecnic đã nhận định:"... dẫu sao vẫn có thể chộp được nó chỉ cần ngay từ đầu khôn khéo hơn một chút". Qua đây, có thể rút ra kết luận rằng, Copecnic vẫn luôn giăng bẫy sao Thủy, nhưng ông thích dùng số liệu chuẩn xác do Walter và Schoner thu đc.<br>Ở những vĩ độ phía nam hơn, (ví dụ ở miền nam nước Nga) dễ thấy hành tinh này hơn là ở những vĩ độ bắc. Khó khăn là ở chỗ sao Thủy không rời xa mặt trời quá 28 độ. Sao Thủy thường xuyên có thể nhìn thấy rõ khi thì như một ngôi sao buổi chiều tối, chỉ quan sát được vào 2 giờ đầu tiên sau mặt trời lặn, khi thì ngược lại. Giữa hai lần xuất hiện ở phía tây và phía đông, hành tinh này phải đi mất từ 106 đến 130 ngày. Có sự khác biệt lớn như vậy là do quĩ đạo sao Thủy khá thuôn dài.</div><div class="postrow has_after_content"><br><a rel="lyteshow[17541]" href="http://k14.vcmedia.vn/Images/Uploaded/Share/2010/10/24/9a52510201001Mercury.jpg"><div><img src="http://k14.vcmedia.vn/Images/Uploaded/Share/2010/10/24/9a52510201001Mercury.jpg"></div></a><br><div>Bề mặt sao Thuỷ chụp với màu thật.</div><div>&nbsp;</div>Sao Thủy có lẽ được phát hiện sớm nhất bởi những bộ lạc cổ xưa chuyên chăn súc vật, cư trú ở thung lũng sông Nile hay ở Lưỡng Hà. Nhưng ko dễ phân biệt 2 ngôi sao khá sáng vào sáng sớm và chiều tối là 1 ngôi sao nên họ đã gọi với hai tên. Mấy a Ai Cập gọi là Xet &amp;Goro, Ấn Độ thì là Butdda và Roghine etc. Còn Hi Lạp thì gọi là Hermes tương ứng với Mercury bên La Mã. Giống như Mặt trăng, sao Thủy sáng nhờ as Mặt Trời phản chiếu và tg tự, sao Thủy cũng thay đổi theo các pha: lưỡi liềm mảnh hẹp =&gt; hình tròn sáng. Vào những giai đoạn có độ sáng lớn nhất, sao Thủy đạt cấp sao - 1<br>Đến thế kỉ XX các nhà thiên văn học đã biết khá tường tận về những thành tố của quĩ đạo sao Thuỷ, nhưng lại biết quá ít về t/c vật lí, bản chất etc của nó. Khả năng phản xạ thấp (0,7 anbedo) chính tỏ hành tinh này không có khí quyển. Do sao Thuỷ gần MT, phần bán cầu hg về MT có nhiệt độ rất cao. Điều này đc khẳng định qua số ít các phép đo bức xạ.</div><div class="postrow has_after_content"><br><strong><span class="wysiwyg-font-size-large">Chị em song sinh của Mặt Trăng</span></strong></div><div class="postrow has_after_content"><br>Năm 1974, thiết bị thăm dò vũ trụ "Mariner 10" của Mỹ bay qua gần sao Thuỷ đã truyền về TĐ h/ả bề mặt hành tinh này</div><div class="postrow has_after_content"><br><a rel="lyteshow[17541]" href="http://upload.wikimedia.org/wikipedia/commons/7/74/Mercury%27s_%27Weird_Terrain%27.jpg"><div><img src="http://upload.wikimedia.org/wikipedia/commons/7/74/Mercury%27s_%27Weird_Terrain%27.jpg"></div></a><br><div>Vùng trũng Caloris trên sao Thuỷ</div><div>&nbsp;</div><a rel="lyteshow[17541]" href="http://upload.wikimedia.org/wikipedia/commons/7/74/Mariner_10_-_Mercury.gif"><div><img title="Image: http://upload.wikimedia.org/wikipedia/commons/7/74/Mariner_10_-_Mercury.gif" src="http://upload.wikimedia.org/wikipedia/commons/7/74/Mariner_10_-_Mercury.gif" width="497" height="381"></div></a><br>Vùng cực Sao Thủy<br>Các nhà thiên văn học đã rất đỗi ngạc nhiên: trước mắt họ là một mặt trăng thứ hai! Cũng là một bề mặt nt, phủ đầy các crate( núi miệng phễu) nhưng có ít các vùng tối (biển) hơn hẳn.</div><div class="postrow has_after_content"><br><strong><span class="wysiwyg-font-size-large">Sự tiến hoá và cấu trúc của Sao Thuỷ</span></strong></div><div class="postrow has_after_content"><br>Nghiên cứu sao Thuỷ dựa vào các bức ảnh chụp dc cho phép người ta dựng những bức tranh về quá trình tiến hoá của hành tinh này. Vào thời sơ khai, có lẽ sao Thuỷ đã trải qua sự nung nóng mạnh ở sâu trong lòng, kế đến là hoạt động núi lửa mạnh.<br>Sau đó nó có bề mặt bằng phẳng, có thể thấy rõ và đến thời kì bắn phá dữ dội của các vật thể tàn dư thời kỳ tiền hành tinh (planetesimal) hình thành các bồn địa như Caloris Basin, đường kính 1300km, cũng như các crate như crate copecnic trên Mặt Trăng. Giai đoạn kế tiếp đc đặc trưng bằng hđ núi lửa mạnh và phun trào lấp đầy các bồn địa lớn, kết thúc cách đây khoảng 3 tỷ năm<br>Kích thước sao Thuỷ không lớn, chỉ nhỉnh hơn Mặt Trăng chút; nhưng tỉ khối gần ngang bằng Trái Đất. có thể ở trung tâm hành tinh có tỉ khối khoảng 9800kg/m3. Sao Thuỷ có một lõi sắt bán kính 1800km (70% khối lượng sao Thuỷ). Chính lõi này sinh ra những dòng điện vòng kích hoạt từ trường yếu của hành tinh. Nghiên cứu gần đây đề xuất một cách mạnh mẽ rằng Sao Thủy có lõi nóng chảy. Bên ngoài lõi là manti phân bố từ 500–700 km bao gồm chủ yếu là các silicat. Theo dữ liệu từ nhiệm vụ Mariner 10 và quan sát từ Trái Đất, vỏ của sao Thủy được tin là dày 100–300 km. Một cấu trúc ấn tượng trên bề mặt Sao Thủy là sự tồn tại của nhiều dãy núi hẹp, kéo dài hàng trăm km. Người ta cho rằng chúng được hình thành khi lõi và manti của sao Thủy nguội lại vào lúc mà vỏ đã hóa rắn.</div><div class="postrow has_after_content"><br><a rel="lyteshow[17541]" href="http://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Mercury_Internal_Structure.svg/576px-Mercury_Internal_Structure.svg.png"><div><img title="Image: http://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Mercury_Internal_Structure.svg/576px-Mercury_Internal_Structure.svg.png" src="http://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Mercury_Internal_Structure.svg/576px-Mercury_Internal_Structure.svg.png" width="523" height="544"></div></a><br>Sơ đồ Sao Thuỷ( Nguồn wikipedia)<br>(1) Vỏ 100-200 km<br>(2) Lõi 600km<br>(3) Nhân bán kính 1800km</div><div class="postrow has_after_content">&nbsp;</div><div class="postrow has_after_content"><strong><span class="wysiwyg-font-size-large">Sao Thủy xoay như thế đó</span></strong></div><div class="postrow has_after_content"><br>Nhiều lần người ta đã thử xác định chuyển động quay của sao Thủy xung quanh trục. Năm 1882 nhà thiên văn học Italia Giôvanni Xkiaparedi&nbsp; cho rằng sao Thủy hướng một phía vào Mặt Trời (như Mặt Trăng hướng vào Trái Đất), bởi vậy chu kì xoay của nó là 88 ngày, bằng chu kì quay của nó xung quanh Mặt Trời. Điều này đã được đưa vào tất cả sách giáo khoa và sách tra cứu cho mãi đến tận những năm 60 của thế kỉ XX.&nbsp;<br>Năm 1965, nhờ áp dụng định vị vô tuyến người ta đã xác định được trị số chính xác của chu kì này là 58,7 ngày, tức là đúng 2/3 chu kỳ quay xung quanh Mặt Trời. Các nhà lý thuyết đã chứng minh rằng hành tinh này quay như thế là bền vững<br>Vậy tại sao những nhà quan sát giàu kinh nghiệm như Xkiapareli, như Ơgien Antoniadi, nhà thiên văn học Pháp, và nhiều nhà khoa học khác lại cho rằng hành tinh này chỉ hướng một phía về phía Mặt Trời?Dễ hiểu là chỉ có được thời điểm quan sát tốt nhất khi hành tinh này có ly giác ( cự ly góc xa Măt Trời ) lớn nhất, thời điểm này lặp đi lặp lại sau 116 ngày đêm ( chu kì giao hội của sao Thủy). Hơn nữa ở bán cầu Bắc không phải lúc nào ly giác này cũng thuận lợi: thuận tiện hơn cả trong các ly giác buổi tối là vào mùa đông và mùa xuân, còn trong các ly giác buổi sáng thì vào mùa hè và mùa thu (cần sao cho sao Thủy có xích vĩ cao hơn Mặt Trời). Những ly giác như thế chỉ lặp lại một lần sau 348 ngày đêm. Nhưng chu kỳ gần với bội sáu lần của chu kỳ xoay quanh trục: 352 ngày đêm. Như vậy có nghĩa rằng nếu chúng ta quan sát hành tinh này một lần sau 348 ngày đêm, chúng ta sẽ thấy những chi tiết một năm trước trên bề mặt hành tinh. Bởi thế, những nhà thiên văn học xưa kia do không biết tính thông ước đích thực của các chu kỳ và do phỏng đoán rằng với thời gian này sao Thủy đã thực hiện được 4 vòng xoay quanh trục ( thực ra là sáu lần) nên đã kết luận răng chu kỳ xoay quanh trục cũng bằng chu kỳ quay quanh Mặt Trời theo quỹ đạo<br>Tỉ lệ của chu kỳ xoay và chu kỳ quay là 2/3, có nghĩa là ngày mặt trời trên sao Thủy bằng 176 ngày trên Trái Đất @@, dài gấp 2 lần năm sao Thủy<img title="8-}" src="http://thienvanhanoi.org/forum/images/smilies/35.gif" class="inlineimg">&nbsp;. Nói cách khác là ban ngày hoặc ban đêm trên sao Thủy dài bằng 88 ngày đêm trên Trái Đất. Trục quay của sao Thủy gần như vuông góc với mặt phẳng quỹ đạo của hành tinh, bởi thế sự đổi mùa trong một năm trên đó không theo độ nghiêng của trục (như trên Trái Đất, sao Hỏa và sao Thổ), mà theo sự thay đổi khoảng cách xa gần đối với Mặt Trời. Do quỹ đạo thuôn dài nên chênh lệch nhiệt độ trên bề mặt sao Thủy rất lớn. Ở điểm cận nhật, nhiệt độ tại điểm dưới ánh Mặt trời của hành tinh đạt tới 690K, còn khi ở điểm viễn nhật thì là 560K(độ Kevin nhá, không phải nghìn đâu@@). Trong khi đó ở bán cầu đang là đêm thì rất lạnh: nhiệt độ trung bình ở đây là 111K( -162 độ C).</div><span>- See more at: <a href="http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/703-sao-thuy-mercury#sthash.xmMC5GLo.dpuf">http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/703-sao-thuy-mercury#stha...</a></span>', '2014-12-20 18:01:09', '2014-12-20 18:01:09', 6),
(11, 'Bí mật về Sao Kim', '<strong><span class="wysiwyg-font-size-large">Sao Kim bọc trong mây<br><br></span></strong>Hành tinh này là một trong những thiên thể đẹp nhất trên bầu trời. Không phải ngẫu nhiên mà người La Mã cổ lại dùng tên thần tình yêu và sắc đẹp (Venus) để gọi chính vì sao này. Với người quan sát từ Trái Đất (TĐ), sao Kim ko bao giờ rời xa MT quá 48 độ. Lý do là nó ở gần MT hơn so với TĐ. Trong suốt 585 ngày đêm, các chu kỳ nhìn thấy nó vào buổi chiều tối và buổi sáng sớm cứ luân phiên kế tiếp nhau. Hầu như mỗi hành tinh trong hệ MT đều có thể khoe khoang một kỷ lục nào đó của mình. Ví dụ như, sao Mộc là hành tinh lớn nhất, TĐ có khối lượng riêng lớn nhất etc. Về phần sao Kim, thì hành tinh này có bầu khí quyển dày đặc nhất trong số những hành tinh nhóm TĐ, đồng thời nó có quỹ đạo quay quanh trục chậm nhất cùng với tâm sai bé nhất (0,007).<br><br><strong><span class="wysiwyg-font-size-large">Khí Quyển<br></span></strong><br>&nbsp; &nbsp; &nbsp;&nbsp;Năm 1761 người ta đón chờ một hiện tượng hiếm có trên bầu trời: Venus Transit. Nhiều nhà thiên văn học đã chuẩn bị cho sự kiện này và thậm chí còn tổ chức những đoàn thám hiểm tới những nơi xa xôi để quan sát.<br>Chuẩn bị cho những cuộc quan sát có cả nhà TVH Nga Mikhain Vaxiliêvich Lômônôxốp. Khi đĩa sao Kim màu đen rời khỏi đĩa MT, Lomonoxop nhận thấy một đường cung mảnh tại mép viền MT cong lên như thể bị đĩa sao Kim hơi nâng lên, và tạo thành một chỗ lồi sáng mà ông gọi là "nốt phỏng" @@. Sau đó nốt phỏng vỡ ra và sao Kim hoà vào nền trời. Hiện tượng này mãi tới thế kỉ XX mới có tên gọi là hiện tượng Lomonoxop. Sau khi cho rằng hiện tượng này là do sự khúc xạ tia MT trong khí quyển của sao Kim, ông đã tổng kết :"Hành tinh này được vây bọc bởi một lớp vỏ không khí quyền quý, hệt như tấm áo khoác vào quả Địa Cầu của chúng ta.<br><br><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<a rel="lyteshow[17911]" href="http://k14.vcmedia.vn/Images/Uploaded/Share/2011/08/16/110816kpsaokim1.jpg"><img title="Image: http://k14.vcmedia.vn/Images/Uploaded/Share/2011/08/16/110816kpsaokim1.jpg" src="http://k14.vcmedia.vn/Images/Uploaded/Share/2011/08/16/110816kpsaokim1.jpg" width="502" height="606"></a></div><i>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Sao Kim chụp bằng tia cực tím</i><br><br>Lomonoxop công bố tác phẩm của mình = tiếng Nga và tiếng Đức nhưng nó đã bị chìm vào sự quên lãng. Vào thập niên 90 của thế kỷ XVIII Hecsen(Herschel đó) và Iohan Sroto lần thứ 2 khám phá ra khí quyển của sao Kim. Mãi thập niên 50 thế kỷ XX, nhờ nỗ lực các nhà TVH Nga, Lomonoxop mới đc công nhận là ng phát hiện đầu tiên.<br>Bằng cách này hay cách khác, đến cuối thế kỷ XVIII con người bắt đầu hiểu ra rằng, bên ngoài sao Kim là bầu khí quyển dày đặc và tầng mây lớn. Vậy bầu khí quyển này gồm những j? Và những hạt nào tạo nên những đám mây của sao Kim?<br><br>&nbsp; &nbsp; &nbsp; &nbsp;Vào những năm 60 thế kỉ XIX các nhà TVH lần đầu tiên cố tìm hiểu tp khí quyển sao Kim bằng pp phân tích quang phổ. Trước hết, họ hi vọng tìm thấy ở đó những khí của sự sống là oxy và hơi nước. Nhưng than ôi! Điều họ mong chờ đã ko thành hiện thực@@!<br>Năm 1932 các nhà TVH Mỹ đã xác định được trong quang phổ sao Kim có 3 dải thuộc khí CO2. Cường độ của chúng cho thấy lượng khí này vượt nhiều so với ở TĐ. Những ý định tìm các khí khác cũng không đem lại KQ gì, hành tinh này dường như vẫn che một tấm chàng mạng và không muốn lộ ra những bí mật của mình.<br>Cùng tg đó, các nhà khoa học cũng bắt đầu nghiên cứu lớp vỏ mây bao bọc sao Kim, năm 1955 họ đã thu đc những kết quả chắc chắn nhất. Nhiệt độ của tầng mây trên sao Kim là 233-240K (khoảng -40 độ C). Gần hai đầu cực nhiệt độ là 205-213K. Nhiệt độ của tầng bình lưu TĐ cũng thấp như vậy nên ko có gì đáng ngạc nhiên.<br>Vào giữa những năm 50 của thế kỷ XX, người ta bắt đầu nghiên cứu sao Kim bằng phương pháp vô tuyến, còn vào năm 60, các trạm liên hành tinh của Mỹ &amp; Liên Xô đã được phóng về hành tinh này. Trong khoảng 40 năm trở lại đây, những thông tin thu được về bản chất sao Kim lớn gấp bội lần so với 350 năm trước đó quan sát bằng KTV.<br>Năm 1956, các nhà thiên văn học lần đầu tiên ghi được bức xạ nhiệt của sao Kim ở bước sóng 3cm. Tương ứng với nhiệt độ hơn 300 độ C(600K). Năm 1967, việc trạm "Venera - 4" đi vào khí quyển sao Kim và trạm "Mariner - 5" bay sát nó cho phép khẳng định chắc chắn điều này. Tiếp đó, sau những chuyến đổ bộ của "Venera - 7 và 8" người ta khám phá ra nhiệt độ bề mặt của sao Kim cao hơn thế nhiều, cụ thể là 730 - 740K @@.<br>Nguyên nhân là vì vỏ khí của sao Kim chẳng khác một cái nồi hấp khổng lồ. Nó để nhiệt của MT đi qua, nhưng lại không cho nó thoát ra ngoài. Nó hấp thụ bức xạ của chính sao Kim. Đó là do khí CO2 chiếm khoảng 96% thành phần khí quyển và hơi nước, tuy lượng hơi nước không đáng kể (một vài %)<br>Ngoài ra trong khí quyển sao Kim người ta còn thấy nito(4%) và một số khí khác ở nồng độ thấp.<br>Áp suất khí quyển ở bề mặt sao Kim lên tới 90 atmotphe. Kết quả cuối cùng này thu được vào đầu năm 70 nhờ sử dụng hai trạm "Venera - 7 và 8" và nhiều lần được xác định chính xác hơn bởi một số thí nghiệm sau đó.<a rel="lyteshow[17911]" href="http://nu2.upanh.com/b5.s33.d2/9038875750b04229278ff8661a59cf76_53043502.3.jpg"><br></a><div>&nbsp;</div><div><a rel="lyteshow[17911]" href="http://k14.vcmedia.vn/Images/Uploaded/Share/2011/08/16/110816kpsaokim2.jpg"><img title="Image: http://k14.vcmedia.vn/Images/Uploaded/Share/2011/08/16/110816kpsaokim2.jpg" src="http://k14.vcmedia.vn/Images/Uploaded/Share/2011/08/16/110816kpsaokim2.jpg"></a></div><div><i>&nbsp; &nbsp; &nbsp; &nbsp; Một khu vực bề mặt sao Kim. Ảnh máy tính dựa trên dữ liệu của trạm "Magellan"</i></div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a rel="lyteshow[17911]" href="http://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/PIA00233-_Venus_-_3D_Perspective_View_of_Eistla_Regio.jpg/750px-PIA00233-_Venus_-_3D_Perspective_View_of_Eistla_Regio.jpg"><img title="Image: http://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/PIA00233-_Venus_-_3D_Perspective_View_of_Eistla_Regio.jpg/750px-PIA00233-_Venus_-_3D_Perspective_View_of_Eistla_Regio.jpg" src="http://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/PIA00233-_Venus_-_3D_Perspective_View_of_Eistla_Regio.jpg/750px-PIA00233-_Venus_-_3D_Perspective_View_of_Eistla_Regio.jpg" width="554" height="443"></a></div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<i>Ảnh 3D sao Kim tổng hợp từ tàu Magellan (Wikipedia)<br></i><br>&nbsp; &nbsp; &nbsp; &nbsp;Những quan sát lâu dài tầng mây của sao Kim từ trạm "Mariner - 10" giúp phát hiện ra nhiều chi tiết ổn định lộ rõ bằng tia tử ngoại. Những chi tiết này chuyển dịch theo hướng quay của hành tinh, nhưng vượt chuyển động quay rất lớn với chu kỳ 4 ngày đêm. Từ đó cho thấy tại mức giới hạn trên của tầng mây (60-70 km phía trên mặt hành tinh) có những luồng gió thổi theo hướng cố định từ đông sang tây với tốc độ 110km/giây (khu vực gần xích đạo). Tính theo thang đo ở TĐ thì ngang với sức bão cực mạnh<br><br><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a rel="lyteshow[17911]" href="http://www.astro.virginia.edu/~mnc3z/images/astro121/Venus_surface.jpg"><img title="Image: http://www.astro.virginia.edu/~mnc3z/images/astro121/Venus_surface.jpg" src="http://www.astro.virginia.edu/~mnc3z/images/astro121/Venus_surface.jpg" width="519" height="260"></a></div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ảnh bề mặt sao Kim do môdun đổ bộ trạm "Venera - 13" chụp<br><br>Thành phần của những đám mây của sao Kim được các nhà nghiên cứu Mỹ Luidơ (sách nó viết tên TV @@) và Anđriu Young đi đến kết luận các đám mây trên sao Kim được cấu tạo từ các giọt axit sunfuric đặc (H2SO4) mới có thể đáp ứng được đầy đủ những thông số quan sát rất khác nhau về tầng mây sao Kim(chiết suất, các đặc tính phổ). Ngoài ra axit sunfuric dễ dàng kết hợp với nước. Áp suất hơi nước ở phía trên mức tầng mây vừa đúng với áp suất cần phải có nếu như các đám mây tạo bởi dd axit sunfuric 80%. Những giọt axit sunfuric như vậy có thể dễ dàng gặp ở tầng bình lưu TĐ. Nhưng trong các đám mây của sao Kim chúng giữ một vai trò đặc biệt.<br><strong><span class="wysiwyg-font-size-large"><br>Cấu tạo bề mặt</span></strong><a rel="lyteshow[17911]" href="http://vnexpress.net/Files/Subject/3b/bd/7c/e6/sao-Kim-8a.jpg"><br></a><br>Những dòng dung nham chảy dài trên bề mặt sao Kim<br>Các bức ảnh chụp chi tiết bán cầu bắc sao Kim bằng phương pháp định vị vô tuyến từ hai trạm tự động "Venera - 15 và 16" được đưa lên quỹ đạo vệ tinh của sao Kim vào năm 1984 cho ta thấy trên sườn nhiều ngọn núi còn để lại dấu vết rõ rệt của các dòng dung nham. Những vết dung nham này lại càng rõ hơn trong các thiết bị vô tuyến truyền về TĐ từ các thiết bị chụp ảnh trên trạm "Magellan"<br><br><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<a rel="lyteshow[17911]" href="http://www.lpi.usra.edu/publications/slidesets/hawaiivolcanoes/images/hawaii33.jpg"><img title="Image: http://www.lpi.usra.edu/publications/slidesets/hawaiivolcanoes/images/hawaii33.jpg" src="http://www.lpi.usra.edu/publications/slidesets/hawaiivolcanoes/images/hawaii33.jpg" width="527" height="452"></a></div><br><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<i>Núi Sif Mons trên sao Kim<br><br><br></i></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<a rel="lyteshow[17911]" href="http://www.astro.virginia.edu/class/oconnell/astr121/im/pancake-domes-sm.gif"><img title="Image: http://www.astro.virginia.edu/class/oconnell/astr121/im/pancake-domes-sm.gif" src="http://www.astro.virginia.edu/class/oconnell/astr121/im/pancake-domes-sm.gif"></a></div><br>Những chiếc bánh rán này là biểu hiện độc đáo của hoạt động núi lửa, khi dung nham sùi lên qua các khe nứt trên vỏ hành tinh<br>Nhờ có sự hỗ trợ của các trạm "Venera"(ĐB là 15&amp;16) người ta lập được bản đồ địa hình bán cầu bắc của hành tinh. Để làm việc này các chuyên gia Nga áp dụng một phương pháp độc đáo bằng cách sử dụng hai máy định vị vô tuyến và xử lý ảnh sau đó trên máy vi tính. Các nhà địa chất Nga đã tiến hành phân tích chi tiết địa hình trên sao Kim. Về sau, trạm "Magellan" của Mỹ cũng tiến hành chụp ảnh địa hình toàn bộ sao Kim theo cách tương tự.<br><br><span>- See more at: <a title="Link: http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/713-sao-kim-hanh-tinh-boc-trong-may#sthash.E7uo5QFr.dpuf" href="http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/713-sao-kim-hanh-tinh-boc-trong-may#sthash.E7uo5QFr.dpuf">http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/713-sao-kim-hanh-tinh-boc...</a></span>', '2014-12-20 18:02:06', '2014-12-21 15:17:59', 4),
(12, 'Bí mật về Sao Thổ', 'Sau&nbsp;<a href="http://thienvanhanoi.org/">Trái Đất</a>&nbsp;và có lẽ là&nbsp;<a href="http://thienvanhanoi.org/">Sao Hỏa</a>,&nbsp;<a href="http://thienvanhanoi.org/">Sao Thổ</a>&nbsp;là nơi dễ nhận ra nhất trong hệ mặt trời, do hệ vành đai lộng lẫy có 1 không 2 của nó&nbsp;<br><br>Những vành đai này chỉ là phần nổi của tảng băng khi đi sâu vào sự kỳ lại của hành tinh này. Từ năm 2004, tàu Cassini của NASA đã quan sát sao thổ , vành đai và các măt trăng của nó 1 cách chi tiết. Nhiệm vụ này giúp tìm lời giải cho những bí ẩn sau của sao thổ.&nbsp;<br><br><strong>Những vành đai đó từ đâu mà ra?&nbsp;</strong><br><br>Cho dù những hành tinh khí khổng lồ khác trong hệ mặt trời - sao môc , thiên vương, hải vưong- cũng có vành đai nhưng không có cái nào đặc dày và nổi bật như sao thổ&nbsp;<br><br>Những đai với hầu hết là các hạt băng đá này bắt đầu ở 4000 dặm (6437km) phía trên xích đạo sao thổ và kéo dài đến khoảng 75000 dặm (120700km) ra không gian. Vô số vùng trống trong vành đai được tạc bởi các mặt trăng bé nhỏ hay sự tương tác hấp dẫn với các thiên thể quay quanh quỹ đạo xa hơn.&nbsp;<br><br>Thú vị là vành đai có thể trẻ nói theo cách tương đối chỉ tầm vài trăm triệu năm tuổi. Hoặc không thì chúng có thể có tuổi từ thời kỳ Sao thổ được sinh ra, hơn 4 tỷ năm&nbsp;<br><br>"Chúng ta không biết các vành đai được hình thành như thế nào và chúng tồn tại bao lâu," Carolyn Porco, đứng đầu đội Cassini Imaging Science và giám đốc Cassini Imaging Central Laboratory for Operations (CICLOPS) tại Viện khoa học không gian ở Boulder, Colorado nói.<br><br>Các nhà khoa học tin rằng vật chất của vành đai có 1 trong 2 nguồn gốc sau: Sựu phá hủy của 1 mặt trăng , bị xé toạc bởi lực hấp dẫn của sao thổ hay bị bắn tung do va chạm với sao chổi hay là những gì còn lại từ sự hình thành sao thổ.&nbsp;<br><br><strong>Cơn cuồng phong</strong><br><br>So với những hành tinh khí khác, đặc biệt là sao Mộc, thế giới các vành đai có những dải mây màu be phức tạp.<br><br>Các nhà thiên văn học đã quan sát những cơn bão này cứ mỗi 30 năm hay hơn 180 năm Porco nói. 1 năm của sao thổ vào khoảng 30 năm trái đất , có thể có sự liên quan giữa các mùa với các cơn bão. Nhưng nếu chỉ đơn giản như vậy, cơn cuồng phong hiện giờ không thể xuất hiện cho đến năm 2020.&nbsp;<br><br>Nguồn gốc nhất quán và nguồn năng lượng cho những cơn bão khổng lồ này vẫn là bí ẩn. "Những cơn bão này mang nhiều nặng lượng," Porco nói. "Chúng có thể nói lên những điều cơ bản về sự khác nhau giữa cách khí quyển hành tinh khổng lồ và của trái đất hay sao kim vận hành."<br><br><strong>Câu đố về vùng cực lục giác&nbsp;</strong><br><br>Vào đầu những năm 1990, tàu Voyager bay qua sao thổ đã chụp được 1 hình mây 6 cạnh trên cực bắc sao thổ.&nbsp;<br><br>Các nhà nghiên cứu đã mô phỏng hình lục giác và các hình đa giác khác bằng cho xoay 1 chất lỏng trong 1 cái bể những tốc độ khác nhau và cho thấy hinh lục giác của sao thổ có thể là cơ cấu chảy lỏng kỳ lạ trên 1 thiên thể đang quay," Porco nói.<br><br>Tuy vậy, sự lâu dài và ổn định đáng kinh ngạc của dòng phản lực này sẽ làm đau đầu các nhà khoa học trong nhiều năm nữa.&nbsp;<br><br><strong>Mắc kẹt ở vấn đề độ dài ngày</strong><br><br>Việc đo đạc độ dài ngày trên Sao Thổ -hay bất kỳ hành tinh khí khổng lồ nào- đều là bài toán khó, Không như thế giới với đất cứng và mốc bờ, đặc điểm mây trên hành tinh khí khổng lồ không đại diện cho sự tự quay của phần nội tại và lõi.&nbsp;<br><br>Bù lại, các nhà khoa học thu lại dao động của sự phát xạ sóng vô tuyến tự nhiên của hành tinh. Phương pháp này được áp dụng tốt cho sao Mộc, còn sao thổ dường như vẫn cần dữ liệu Voyager data. Tàu Cassini đo trong năm 2004 cho thấy 1 ngày dài hơn khoảng 6 phút 1 cách bí ẩn.<br><br>Những nghiên cứu sau này cho thấy từ trường của sao thổ tạo ra tín hiệu vô tuyến va fnos không tồn tại theo nhịp quay của hành tinh.&nbsp;<br><br>Cuối cùng, các nhà khoa học đã phải lấy trung bình các dữ liệu từ Pioneer, Voyager and Cassini để tạo ra ước tính tốt nhất: 1 ngày trên sao thổ dài 10 giờ , 32 phút và 35 giây&nbsp;<br><br><span>Điều đó khá chính xác. Tuy vây, hơn 1 năm sao thổ, tỷ lệ sai khác có thể được thêm vào hay bớt đi trong lich vũ trụ 4 ngày sao thổ, điều đó làm rối kế hoạch tính toán ngày tỷ mỉ. - See more at: <a title="Link: http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/600-bi-an-cua-sao-tho#sthash.XSYawvJ2.dpuf" href="http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/600-bi-an-cua-sao-tho#sthash.XSYawvJ2.dpuf">http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/600-bi-an-cua-sao-tho#sth...</a></span>', '2014-12-20 18:03:06', '2014-12-20 18:03:06', 2);
INSERT INTO `details` (`id`, `name`, `description`, `created_at`, `updated_at`, `element_id`) VALUES
(13, 'Bí mật về Sao Mộc', 'Hành tinh<a href="http://thienvanhanoi.org/">&nbsp;Sao Mộc</a>&nbsp;được đặt theo tên vị thần trong thần thoại La Mã. Là hành tinh lớn nhất, sao mộc thống trị các hành tinh khác trong&nbsp;<a href="http://thienvanhanoi.org/">hệ mặt trời</a>. Thực tế, nếu tất cả các thiên thể còn lại trong hệ trừ mặt trời gộp lại với nhau , chúng sẽ vừa bên trong sao mộc.<strong>Dải mây và bão&nbsp;<br></strong><br>Sao Mộc trông giống như quả trứng Phục Sinh được nhuộm cẩn thận. Các dải mây sáng màu gọi là các vùng và các dải tối hơn gọi là đai bao quanh hành tinh khổng lồ. Những phần đó sâu đến đâu thì hoàn toàn không chắc được.&nbsp;<br>"Chúng ta không biết liệu những vùng và đai tuyệt đẹp liệu có chỉ là những đặc điểm bề mặt và xoay bên trong sao mộc như 1 thực thể rắn không," Scott Bolton, trưởng điều tra nhiệm vụ Juno và giám đốc bộ phận kỹ thuật và khoa học không gian tại Viện nghiên cứu Đông Nam ở San Antonio, Texas. Hơn nữa, sao mộc có thể “là 1 loạt các con quay đồng tâm và bạn đang nhìn thấy những phần lộ ra nhu các vùng và đai" Bolton nói .<br><br>Những sọc được biết là đã biến mất không 1 dấu vết, một biến mất vào tháng 5/2010 to gấp 2 lần trái đất. Tại sao các dải mây nằm riêng biệt nhau rồi đến và đi không 1 lời giải thích và cả việc làm thế nào các vùng và đai lại có màu đặc trưng?&nbsp;<br>Những đơt gió xoáy lớn cuồn cuộn trong khí quyển sao mộc nhưng vẫn chưa hiểu rõ được chúng. Vết đỏ lớn là cơn bão dễ nhận ra nhất, nó đã và đang được quan sát trong hơn 300 năm. “Chúng ta không biết được điều gì đã khiến nó duy trì sự tồn tại lâu đến vậy” Bolton nói.<strong>Nước ở đâu?<br></strong><br>Cùng với sao thổ , và số đông các hành tinh khổng lồ phát hiện được từ trước đến nay, Sao Mộc được coi là hành tinh khí khổng lồ. Đó là 1 thế giới của một quả bóng khổng lồ gồm khí Heli và Hidro, hai nguyên tố phổ biến nhất trong các ngôi sao và vũ trụ. Hầu hết những phần còn lại sau quá trình hình thành mặt trời và hệ của nó đều trở thành Sao Mộc.<br>Số lượng của các nguyên tố nặng, như các bon, ni tơ và sun phua, cũng trôi nổi trong các đám mây giống 1 cách kỳ lạ như được tìm thấy trên mặt trời. Các nhà khoa học nghĩ rằng nước trong khí quyển sao mộc chắc phải làm giàu thêm các nguyên tố cho hành tinh này. Khi nước đóng băng, nó bắt các vật chất rải rác và sao mộc có thể thu được nhiều nhưng phôi giàu nguyên tố như thế này.&nbsp;<br><br>Nhưng vấn đề là , nước chưa được tìm thấy ở những nơi được mong đợi, Bolton nói.<strong>Vấn đề “cốt lõi”&nbsp;</strong><br>Các nhà nghiên cứu nghĩ rằng sao mộc có thể có lõi mềm, có lẽ làm từ đá siêu nóng dưới nhiệt độ cao nhưng hội đồng quyết định bác bỏ điều đó.&nbsp;<br>"Các mô hình (về khối lượng lõi) không có hạn chế nào cả," Bolton nói. "nó có thể bằng 0, có thể gấp 20 lần khối lượng trái đất và đó là vì thiếu các dữ liệu thôi."<strong>Cuộc trình diễn ánh sáng Heckuva&nbsp;<br></strong><br>Sao Mộc sở hữu từ trường mạnh nhất trọng hệ mặt trời, ngoại trừ chính mặt trời. Các nhà nghiên cứu nghĩ rằng từ trường này được tạo ra bởi các lớp hidro bị nén chặt vốn phát triển những vật chất kim loại lỏng sâu bên trong sao mộc.&nbsp;<br>Cấu trúc do từ trường tạo nên -gọi là từ trường cầu khi các hạt mang điện của gió mặt trời đi qua- thật sự rất lớn.&nbsp;<br>"Từ trường cầu của sao mộc gây tranh cãi khi trở thành cấu trúc lớn nhất trong hệ mặt trời," Bolton nói, "ngoại trừ của chính mặt trời " — gió măt trời thổi theo dạng cầu quanh mặt trời. "[từ trường cầu của sao mộc ] bị kéo dài theo hướng đến tận quỹ đạo sao thổ."<br>Cực quang-như ánh sáng phương bắc và nam của chúng ta- mặc dù mạnh hơn với các đặc tính khác thường – cũng đều sáng lên trên các cực của sao mộc.<span>- See more at: <a title="Link: http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/597-bi-an-cua-sao-moc#sthash.Ka00NoYz.dpuf" href="http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/597-bi-an-cua-sao-moc#sthash.Ka00NoYz.dpuf">http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/597-bi-an-cua-sao-moc#sth...</a></span>', '2014-12-20 18:04:12', '2014-12-21 15:04:18', 7),
(14, 'Bí mật về Sao Thiên Vương', 'Hơn 1 tỷ rưỡi dặm cách&nbsp;<a href="http://thienvanhanoi.org/">Trái Đất</a>&nbsp;là một thế giới màu lam rộng lớn với cái tên&nbsp;<a href="http://thienvanhanoi.org/">Sao Thiên Vương&nbsp;</a><br><br>Cùng với sao hải vương, sao thiên vương được coi như hành tinh băng đá, lớp hành tinh phân biệt với hành tnh khí khổng lồ như sao mộc và sao thổ. Mặc dù khí hidro và heli tạo nên phần lớn sao thiên vương, thành phần chủ yếu với nước, metan và amoniac băng đá khiến cho hành tinh có 1 màu sắc và hóa học khác biệt. Với kích cỡ lớn, bán kính của sao thiên vưong lớn gấp 4 lần trái đất và khoảng 16 trái đất có thể vừa bên trong hành tinh băng đá khổng lồ này.&nbsp;<br><br>Nhân loại chưa được có cái nhìn cận cảnh với sao thiên vương cho đến khi tàu du hành Voyager 2 đưa nó ra khỏi phạm vi vào năm 1986, và tới bây giờ nhiệm vụ quay lại chưa được diễn ra. Cho đến khi chúng ta quay lại đó, 1 số bí ẩn lớn vẫn còn đó&nbsp;<br><br><strong>Sao nó lại quay nằm ngang?</strong><br><br>Theo sự quay của nó, các hành tinh và mặt trời có thể được coi là quay mà đỉnh nằm trên mặt trẳng dù ít dù nhiều<br><br>Ngoại trừ sao thiên vương. Nó có trục nghiêng khoảng 98 độ có nghĩa là cực bắc nam tahy vào đó lại nằm ở chỗ của xích đạo đối với trái đất. Hành tinh trông khá đơn giản là như bị đánh bật sang 1 bên&nbsp;<br><br>Làm sao có thể như vậy? Các nhà khpa học đánh cược rằng thiên thể to cỡ trái đất đã va chạm với sao thiên vương vào thời kỳ đầu của lịch sử hệ mặt trời và lật nhào thế giới đó.&nbsp;<br><br>"1 vụ va chạm là phương thức duy nhất chúng tôi có thể nghĩ đến " Mark Hofstadter, nhà khoa học kỳ cựu của phòng thí nghiệm đẩy phản lực của NASA ở Calif nói.<br><br>Thực tế là 13 vành đai của sao thiên vương và vài tá mặt trăng cũng bị lật, vòng quanh sao thiên vương như mắt bò từ góc nhìn của chúng ta, củng cố lòng tin vào giải thuyết này.&nbsp;<br><br><strong>Sao thiên vương tự làm mát</strong>&nbsp;<br><br>Kỳ lạ là, sao thiên vương bức xạ rất ít hoặc không bức xạ ra không gian, điều này khiến nó 1 lần nữa trở nên độc nhất trong các hành tinh của hệ mặt trời. Các hành tinh được hy vọng là có sức nóng bên trong còn lại từ quá trính hình thành của chúng.&nbsp;<br><br>Cùng cú đấm vào sao thiên vương đó làm nó bị lật ngang có thể giải thích cho việc nó thiếu sức nóng bên trong. Nếu có cái gì đó khổng lồ va vào sao thiên vương , điều đó có thể làm xáo trộn bên trong nó. Hofstader nói. "Điều đó làm các vật chất nóng ở sâu bên trong bị đưa gần lên bề mặt và khiến sao thiên vương lạnh nhanh hơn."<br><br>Ý tưởng thứ 2 là sức nóng thông thường chảy từ nơi ấm bên trong ra phần bề mặt lạnh hơn , gọi là sự đối lưu không hoàn toàn chính xác. "Chúng tôi hy vọng nếu chúng ta hiểu thêm vè cấu trúc bên trong sao thiên vương thì sẽ thấy 1 vùng nơi đối lưu bị ức chế " Hofstadter nói. "Hoặc nếu chúng ta có thể nói rằng bên trong nó rất nóng và chúng ta sẽ biết rằng năng lượng bị giam ở đó không bị thoát ra."<br><br><strong>Sao thiên vương sinh ra ở đâu?</strong><br><br>Không lâu sau khi hệ mặt trời được hình thành, sự tương tác lực hấp dẫn tích lũy của những chất tương đương hành tinh nhỏ quay quanh bắt đầu đẩy sao thổ, sao thiên vương và hải vương ra xa. "Chúng có thể đã tăng gấp đôi hay gấp 3 khoảng cách từ mặt trời," Hofstadter nói.<br><br>Đổi lại, sự thay đổi này trong khối lượng hệ măt trời quét sạch hầu hết những mảnh vụn còn lại trong hệ mặt trời nguyên thủy. 1 số lượng lớn các thiên thể băng đá có thể bị ném mạnh về phía trái đất và các hành tinh bên trong suốt “đợt bắn phá lớn cuối” bắt đầu vào cách đây 4,1 tỷ năm . Nước và các vật chất hữu cơ được rải trên hành tinh chúng ta và có thể đặt dấu mốc cho sự phát triển sự sống.<br><br><br><strong>Miranda – Giấc mơ của mỗi thợ lặn nhảy từ vách đá&nbsp;</strong><br><br>So với sự đa dạng về vòng tròn mặt trăng của sao mộc và sao thổ, 27 vệ tinh của sao thiên vương ít ngoại lai hơn. Nhưng 1 mặt trăng gọi là Miranda nổi bật vì sở hữu 1 trong những bề mặt lởm chởm nhất mà các nhà thiên văn học từng biết. Mặt trăng nhỏ này có vực sâu, nhiều lớp và vách đá sâu khoảng 12,4 dặm (20km) sâu nhất hệ mặt trời.&nbsp;<br><br><span>Một giả thuyết đằng sau hỗn hợp địa chất của Miranda cho thấy những băng đá chảy bên trong măt trăng, có lẽ được đun nóng bởi sự ép chặt của trọng lực từ sao thiên vương và các mặt trăng , đẩy qua bề mặt. Cái khác nữa là măt trăng bị va đập nhiêu lần và lại trở lại tạo nên những đặc điểm lởm chởm rải rác - See more at: <a title="Link: http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/604-bi-an-cua-sao-thien-vuong#sthash.9ecL3mIx.dpuf" href="http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/604-bi-an-cua-sao-thien-vuong#sthash.9ecL3mIx.dpuf">http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/604-bi-an-cua-sao-thien-v...</a></span>', '2014-12-20 18:05:35', '2014-12-20 18:05:35', 8),
(15, 'Bí mật về Sao Hải Vương', 'Vào năm 1846, khi các nhà&nbsp;<a href="http://thienvanhanoi.org/">thiên văn hoc</a>&nbsp;Châu Âu tranh cãi về cái gọi là hành tinh thứ 8 đã được tìm thấy, chúng thực ra được đặt tên là&nbsp;<a href="http://thienvanhanoi.org/">Sao Hải Vương</a>&nbsp;(SHV) theo tên vị thần biển La Mã. Cái tên hóa ra lại hợp với SHV vì chúng ta biết rằng nó có màu xanh đại dương với những đốm trắng và xanh đậm chạy ngang qua những đám mây.<br><br>Giống như&nbsp;<a href="http://thienvanhanoi.org/">Sao Thiên Vương</a>, các nhà thiên văn phân loại SHV là hành tinh băng khổng lồ - 1 thế giới to gấp 4 lần đường kính trái đất với khí quyển dày hầu hết là Hidro và Heli trộn với 1 ít nước, amoniac và các thành phần khác.&nbsp;<br><br>Nếu sao thiên vương cách xa 1.76 tỷ dặm tính từ mặt trời, SHV nằm xa hơn 1 tỷ dăm nữa- 30 lần từ trái đất đến mặt trời.&nbsp;<br><br><strong>Khí quyển bất trị&nbsp;</strong><br><br>Các nhà thiên văn đã hy vọng SHV sẽ trông khá là tẻ nhạt-1 thế giới không thời tiets, không đặc trưng trong băng giá dày đặc. Thay vào đó, Voyager hé lộ một bầu khí quyển hỗn loạn với mây sáng lăn tăn và những cơn bão mãnh liệt. Ngạc nhiên là, những cơn gió nhanh nhất từng được ghi lại trong hệ mặt trời đều diễn ra ở SHV, lên đến khoảng 1300 dặm ( khoảng 2100 km) một giờ.<br><br>Đằng sau hoạt động khí tượng này hóa ra là từ nội nhiệt của SHV, có thể nóng hơn cả Sao thiên vương “Khi bạn đi xa khỏi măt trời đến sao mộc, sao thổ, sao thiên vương đều lạnh hơn khí quyển của hành tinh trước nó," Heidi Hammel, phó chủ tịch điều hành của Hiệp hội các trường đại học nghiên cứu về thiên văn (AURA), một tổ chức phi lợi nhuận trụ sở tại Washington, D.C. nói. "Nhưng khi bạn đến SHV nó sẽ ấm như sao thiên vương" (Nói theo 1 cách tương đối, cả 2 sẽ lạnh ở khoảng -355 độ F (-215 độ C).)&nbsp;<br><br>NHững nguồn nhiệt hành tinh điển hình, bao gồm nội nhiệt còn lại từ quá trình hình thành và sự phân rã của các nguyên tố phóng xạ có thể góp phần vào nhiệt độ SHV<br><br><strong>Vành đai nặng nề</strong><br><br>SHV như các hành tinh khổng lồ anh em khác, có hệ vành đai. Nhưng thay vì có cấu trúc hình vòng nổi bật , vành đai của SHV mập mạp 1 cách khó hiểu, với phần vật chất hình cầu tạo hình vòng cung của vành đai ngoài. "Những hòn này là những nơi nhiều vành đai bị dính vào nhau” Hammel nói.<br><br>Sự ảnh hưởng của lực hấp dẫn từ những mặt trăng nhỏ có thể gây ra sự tạo thành thông thường của vành đai. Nhưng những quan sát của Hammel và đồng nghiệp trong những năm gần đây cho thấy quá trình này hóa ra quá chặt chẽ. “ Những vị trí của các vòng cung liên quan đến nhau đã thay đổi theo nhiều cách mà chúng ta không thể hiểu nổi”&nbsp;<br><br><strong>Từ trường hỗn loạn</strong><br><br>Khi Voyager 2 phát hiện ra từ trường kỳ lạ ở sao thiên vương, các nhà khoa học phát hiện ra sự va chạm nào đó đã va vào cạnh của hành tinh cũng đã góp phần tạo nên từ trường này. Khi Voyager 2 đo đạc từ trường của SHV , nó cũng có nguồn gốc từ vùng xa trung tâm và cũng không thẳng hàng với chiều quay của hành tin như các hành tinh khác.&nbsp;<br><br>"Không ai ngờ những từ trường bắt nguồn từ trung tâm hành tinh và nghiêng ở những góc kỳ cục như vậy," Hammel nói.<br><br>Giả thuyết tốt nhất, Hammel nói, là từ trường được tạo nên không phải từ lõi SV như trái đất, sao mộc và các hành tinh khác. Thay vào đó, nó phát ra từ lớp dẫn điện giữa lõi và bề mặt– "một lớp phủ bằng nước mặn,"&nbsp;<br><br><strong>Mặt trăng bị bắt giữ cáu kỉnh?</strong><br><br>Trong 13 mặt trăng của SHV, Triton cho đến giờ vẫn là lớn nhất và duy nhất đủ khối lượng để có hình cầu. Lạ kỳ là. Triton có quỹ đạo thụt lùi, tự quay hướng ngược lại với hành tinh và các mặt trăng khác. Thêm nữa, quỹ đạo có góc thay vì 1 mặt phẳng quanh xích đạo như các vệ tinh điển hình.&nbsp;<br><br><span>Nhưng đặc điểm này cho thấy Triton không tạo nên quanh SHV. Thay vào đó , trọng lực của hành tinh có thể đã bắt giữ Triton, thiên thể đá và băng bay ngang qua từ Vành đai Kuiper, dải các thiên thể gồm cả Sao DIêm Vương bên ngoài khu vực của SHV. "Giả thuyết hàng đầu là về vụ bắt giữ," Candice Hansen, nhà khoa học kỳ cựu ở Viện khoa học hành tinh ở Tucson, Ariz nói. - See more at: <a href="http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/609-bi-an-cua-sao-hai-vuong#sthash.TG2DwaHQ.dpuf">http://thienvanhanoi.org/index.php/kien-thuc-thien-van/thien-van-pho-thong/609-bi-an-cua-sao-hai-vuo...</a></span>', '2014-12-20 18:06:11', '2014-12-20 18:06:11', 10),
(16, 'Bí ẩn nào của sao Hỏa đang chờ khám phá?', '<p><strong>Sao Hỏa, hành tinh láng giềng gần nhất của Trái đất trong Thái dương hệ vẫn ấp ủ trong lòng vô số bí mật mà các nhà khoa học khao khát khám phá.</strong></p><p>Với việc tàu thám hiểm sao Hỏa mới nhất Curiosity sẽ chính thức đổ bộ xuống bề mặt sao Hỏa, NASA hy vọng sẽ “mở khóa” được nhiều bí ẩn trong số đó.</p><p>Là trái tim của tàu kiêm phòng thí nghiệm không gian Mars Science Laboratory, robot thăm dò Curiosity được trang bị hàng loạt công cụ đặc biệt để không chỉ nghiên cứu bề mặt sao Hỏa ngày nay mà còn để đào xới về bề mặt đó trong quá khứ.</p><p>Bao lâu nay, chiến lược tổng thể của chương trình thám hiểm sao Hỏa do Nasa đặt ra vẫn là lần theo dấu vết của nước, và Curiosity cũng không phải là ngoại lệ. Dựa trên những đầu mối do các sứ mệnh trước để lại, con tàu thăm dò mới nhất này sẽ đi tìm lời đáp cho hàng loạt câu hỏi về khí hậu, địa chất sao Hỏa. Và tất nhiên, nó sẽ phải đi tìm bằng chứng cho việc đã từng có sự sống trên hành tinh đỏ hay chưa.</p><img alt="Curiosity sẽ phải giải đáp hàng loạt câu hỏi hóc búa về hành tinh đỏ." title="Image: http://khoahoc.tv/photos/image/082012/06/Curiosity.jpg" src="http://khoahoc.tv/photos/image/082012/06/Curiosity.jpg" width="550" height="309"><br>Curiosity sẽ phải giải đáp hàng loạt câu hỏi hóc búa về hành tinh đỏ.<br><br>1. Có thể tìm thấy sự sống tại đâu?<p>Curiosity sẽ không tìm kiếm sự sống một cách trực tiếp, bởi nhiệm vụ đó đòi hỏi phải có nhiều thiết bị khoa học tinh vi, hiện đại hơn tàu thăm dò tự động rất nhiều. Chính vì thế, Curiosity sẽ chỉ tìm kiếm những nơi mà sự sống có thể đã từng tiến hóa qua mà thôi.</p><p>Do nước được coi là thành tố thiết yếu cho sự phát triển của sự sống trên Trái đất nên các nhà khoa học sẽ tập trung vào các khu vực ẩm ướt trên sao Hỏa, cả trong quá khứ lẫn hiện tại.</p>Bên cạnh đó, một môi trường&nbsp;<em>“có thể sống được”</em>&nbsp;sẽ phải có sự hiện diện của một nguồn năng lượng mà các vi bào có thể sử dụng để sống và tiến hóa. Ngoài ra, nó còn phải có dấu hiệu của carbon hữu cơ.<br><br>2. Vì sao một sao Hỏa ẩm ướt lại trở nên khô cằn?<p>Trong quá khứ xa xưa, sao Hỏa ấm áp hơn và nhiều khả năng sở hữu một bầu khí quyển dày hơn, ẩm ướt hơn, với nước len lỏi trên bề mặt hành tinh. Nhưng ngày nay, hành tinh đỏ khô cằn, toàn bụi cát và phần lớn nguồn nước được cho là đã bị mắc kẹt sâu trong lòng đất.</p><p>Curiosity sẽ đáp xuống đỉnh Sharp, cách trung tâm Hố Gale khoảng 5 dặm. Ngọn núi này có rất nhiều tầng để Curiosity từng bước thăm dò. NASA từng mô tả các tầng của Sharp giống như các trang của một cuốn sách, với những tầng đầu giống như các chương cổ xưa nhất. Nhiệm vụ của Curiosity là thám hiểm lịch sử của sao Hỏa được&nbsp;<em>“nhúng”</em>&nbsp;bên trong lớp đất đá.</p><p>Đồng thời, nó sẽ nghiên cứu những dịch chuyển về địa chất học trên Hành tinh đỏ qua hàng triệu năm.</p><p>Cuối cùng, nó sẽ phân tích thành phần của khí hậu sao Hỏa ngày nay, đo nhiệt độ không khí, mặt đất, sự chuyển động của gió. Kết hợp với các số liệu đo được từ phòng thí nghiệm Mars Science Laboratory, NASA sẽ có thể có được cái nhìn toàn diện hơn về khí hậu sao Hỏa.</p>', '2014-12-20 18:06:46', '2014-12-21 14:42:54', 9);

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE IF NOT EXISTS `elements` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `name`, `created_at`, `updated_at`, `system_id`) VALUES
(1, 'Dai Ngan Ha', '2014-12-06 04:57:30', '2014-12-06 04:57:30', 1),
(2, 'Sao Thổ', '2014-12-06 05:08:42', '2014-12-06 12:11:04', 2),
(3, 'Trái Đất', NULL, '2014-12-06 12:10:23', 2),
(4, 'Sao Kim', '2014-12-07 08:44:57', '2014-12-07 08:44:57', 2),
(6, 'Sao Thủy', '2014-12-07 08:47:35', '2014-12-07 08:47:35', 2),
(7, 'Sao Mộc', '2014-12-07 08:47:59', '2014-12-07 08:47:59', 2),
(8, 'Sao Thiên Vương', '2014-12-07 08:48:32', '2014-12-07 08:48:32', 2),
(9, 'Sao Hỏa', '2014-12-07 08:48:52', '2014-12-07 08:48:52', 2),
(10, 'Sao Hải Vương', '2014-12-07 08:53:10', '2014-12-07 08:53:10', 2);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`id` int(11) NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mission_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `detail_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=45 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_path`, `created_at`, `updated_at`, `attachment`, `mission_id`, `news_id`, `detail_id`) VALUES
(3, 'Trái Đất', '2014-12-06 17:15:31', '2014-12-07 17:47:07', 'pl3.png', NULL, NULL, 1),
(4, 'Sao Hỏa', '2014-12-06 17:33:32', '2014-12-07 17:47:39', 'pl4.png', NULL, NULL, 5),
(5, 'sao Mộc', '2014-12-06 17:40:49', '2014-12-07 17:49:03', 'pl5.png', NULL, NULL, 3),
(6, 'Sao Kim', '2014-12-07 01:35:02', '2014-12-07 17:48:18', 'pl2.png', NULL, NULL, 6),
(8, 'Sao Thổ', '2014-12-07 09:15:58', '2014-12-07 17:49:30', 'pl6.png', NULL, NULL, 7),
(9, 'Sao Thiên Vương', '2014-12-07 09:41:09', '2014-12-07 17:49:57', 'pl7.png', NULL, NULL, 4),
(10, 'Sao Hải Vương', '2014-12-07 09:43:17', '2014-12-07 17:50:35', 'pl8.png', NULL, NULL, 8),
(14, 'Sao Thủy', '2014-12-07 17:51:07', '2014-12-07 17:51:07', 'pl1.png', NULL, NULL, 2),
(15, 'Message1', '2014-12-08 13:26:55', '2014-12-08 13:26:55', 'MESSENGER_Sunside.jpg', 2, NULL, NULL),
(16, 'Message1', '2014-12-08 13:27:36', '2014-12-08 13:27:36', 'MESSENGER_Instr.jpg', 2, NULL, NULL),
(18, 'Message1', '2014-12-08 13:29:34', '2014-12-08 13:29:34', 'MercuryMessenger_NASA4X3.jpg', 2, NULL, NULL),
(20, 'cassini-huygens', '2014-12-08 14:24:15', '2014-12-08 14:24:15', '12_2.jpg', 1, NULL, NULL),
(21, 'cassini-huygens', '2014-12-08 14:24:51', '2014-12-08 14:24:51', 'Artist_s_impression_of_Cassini-Huygens_closing_in_on_Saturn.jpg', 1, NULL, NULL),
(22, 'cassini-huygens', '2014-12-08 14:25:40', '2014-12-08 14:25:40', 'Cassini_Saturn_Orbit_Insertion.jpg', 1, NULL, NULL),
(23, 'cassini-huygens', '2014-12-08 14:26:05', '2014-12-08 14:26:05', 'saturnsolareclipse.jpg', 1, NULL, NULL),
(24, 'Post1', '2014-12-08 16:09:12', '2014-12-08 16:09:12', 'a1.PNG', NULL, 2, NULL),
(25, 'Post2', '2014-12-08 16:11:25', '2014-12-08 16:11:25', 'a2.PNG', NULL, 3, NULL),
(26, 'Chiêm ngưỡng loạt ảnh thiên văn đoạt giải', '2014-12-11 07:23:43', '2014-12-11 07:23:43', '1.jpg', NULL, 4, NULL),
(27, 'Chiêm ngưỡng loạt ảnh thiên văn đoạt giải', '2014-12-11 07:25:00', '2014-12-11 07:25:00', '2.jpg', NULL, 4, NULL),
(28, 'Message1', '2014-12-13 02:32:22', '2014-12-13 02:32:22', 'murchie05_lg.jpg', 2, NULL, NULL),
(29, 'Jupiter', '2014-12-13 02:34:17', '2014-12-13 02:34:17', 'Jupiter_and_Galileo_by_adrian3Dart.jpg', 3, NULL, NULL),
(30, 'Jupiter', '2014-12-13 02:35:04', '2014-12-13 02:35:04', 'Galileo_encounter_with_Io.gif', 3, NULL, NULL),
(31, 'Jupiter', '2014-12-13 02:35:42', '2014-12-13 02:35:42', 'galileo-probe.jpg', 3, NULL, NULL),
(32, 'Jupiter', '2014-12-13 02:37:06', '2014-12-13 02:37:06', 'jupitorProbe.jpg', 3, NULL, NULL),
(33, 'Magellan', '2014-12-13 02:38:42', '2014-12-13 02:38:42', 'Magellan-Venus-Map.mediumthumb.jpg', 4, NULL, NULL),
(34, 'Magellan', '2014-12-13 02:39:07', '2014-12-13 02:39:07', 'composite-46.jpg', 4, NULL, NULL),
(35, 'Magellan', '2014-12-13 02:40:17', '2014-12-13 02:40:17', 'mag2.gif', 4, NULL, NULL),
(36, 'Magellan', '2014-12-13 02:40:45', '2014-12-13 02:40:45', 'magellan_orbit.jpg', 4, NULL, NULL),
(37, 'MarOrbiter', '2014-12-13 02:41:59', '2014-12-13 02:41:59', 'mars_aerobrake.jpg', 5, NULL, NULL),
(38, 'MarOrbiter', '2014-12-13 02:43:28', '2014-12-13 02:43:28', 'Mars_Reconnaissance_Orbiter2.jpg', 5, NULL, NULL),
(39, 'MarOrbiter', '2014-12-13 02:44:37', '2014-12-13 02:44:37', '157415main_mro-front-view-browse.jpg', 5, NULL, NULL),
(40, 'MarOrbiter', '2014-12-13 02:46:23', '2014-12-13 02:46:23', 'mro_b.jpg', 5, NULL, NULL),
(41, 'sieu vết lóa từ sao lùn đỏ', '2014-12-13 02:59:26', '2014-12-13 02:59:26', 'a3.PNG', NULL, 5, NULL),
(42, 'ảnh bài viết', '2014-12-13 03:15:28', '2014-12-13 03:22:59', 'a7.PNG', NULL, 7, NULL),
(43, 'ảnh bài viết', '2014-12-13 03:16:41', '2014-12-13 03:24:02', 'a5.PNG', NULL, 6, NULL),
(44, 'ảnh bài viết', '2014-12-13 03:18:42', '2014-12-13 03:18:42', 'a8.PNG', NULL, 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lienkets`
--

CREATE TABLE IF NOT EXISTS `lienkets` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `mission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `lienkets`
--

INSERT INTO `lienkets` (`id`, `name`, `url`, `created_at`, `updated_at`, `mission_id`) VALUES
(1, 'MESSENGER Web Site', 'http://messenger.jhuapl.edu/', '2014-12-08 15:30:48', '2014-12-08 15:30:48', 2),
(2, 'MESSENGER Mission Page', 'http://www.nasa.gov/mission_pages/messenger/main/', '2014-12-08 15:31:28', '2014-12-08 15:31:28', 2),
(3, 'MESSENGER Mission Profile', 'http://solarsystem.nasa.gov/missions/profile.cfm?MCode=MESSENGER', '2014-12-08 15:31:57', '2014-12-08 15:31:57', 2),
(4, 'Galileo home page', 'http://solarsystem.nasa.gov/galileo/', '2014-12-08 15:32:39', '2014-12-08 15:32:39', 3),
(5, 'Galileo Mission Profile', 'http://solarsystem.nasa.gov/missions/profile.cfm?MCode=Galileo', '2014-12-08 15:33:06', '2014-12-08 15:33:06', 3),
(6, 'Cassini-Huygens', 'http://saturn.jpl.nasa.gov/index.cfm', '2014-12-08 15:33:43', '2014-12-08 15:33:43', 1),
(7, 'Cassini-Huygens', 'http://www.esa.int/Our_Activities/Space_Science/Cassini-Huygens', '2014-12-08 15:34:20', '2014-12-08 15:34:20', 1),
(8, 'Huygens', 'http://sci.esa.int/cassini-huygens/', '2014-12-08 15:34:40', '2014-12-08 15:34:40', 1),
(9, 'Magellan homepage', 'http://www2.jpl.nasa.gov/magellan/', '2014-12-08 15:35:14', '2014-12-08 15:35:14', 4),
(10, 'Magellan mission description and data', 'http://nssdc.gsfc.nasa.gov/planetary/magellan.html', '2014-12-08 15:35:40', '2014-12-08 15:35:40', 4),
(11, 'Magellan Mission Profile', 'http://solarsystem.nasa.gov/missions/profile.cfm?MCode=Magellan', '2014-12-08 15:36:07', '2014-12-08 15:36:07', 4),
(12, 'Mars Reconnaissance Orbiter Homepage', 'http://www.nasa.gov/mission_pages/MRO/main/index.html#.VG95BvmUffc', '2014-12-08 15:36:48', '2014-12-08 15:36:48', 5),
(13, 'Mars Reconnaissance Orbiter Homepage', 'http://mars.jpl.nasa.gov/mro/', '2014-12-08 15:37:17', '2014-12-08 15:37:17', 5),
(14, 'Mars Reconnaissance Orbiter Mission Profile', 'http://solarsystem.nasa.gov/missions/profile.cfm?MCode=Magellan', '2014-12-08 15:38:43', '2014-12-08 15:38:43', 5);

-- --------------------------------------------------------

--
-- Table structure for table `missions`
--

CREATE TABLE IF NOT EXISTS `missions` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status_id` int(11) DEFAULT NULL,
  `launch_date` datetime DEFAULT NULL,
  `active_date` datetime DEFAULT NULL,
  `finished_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `missions`
--

INSERT INTO `missions` (`id`, `name`, `description`, `status_id`, `launch_date`, `active_date`, `finished_date`, `created_at`, `updated_at`, `element_id`) VALUES
(1, 'NASA''s Cassini Huygens (Saturn)', 'Cassini–Huygens là một phi vụ tàu không gian robot hợp tác bởi NASA/ESA/ASI với nhiệm vụ nghiên cứu Sao Thổ và các vệ tinh tự nhiên của nó.', 3, '1997-10-15 08:43:00', '2004-07-01 00:00:00', NULL, '2014-12-06 12:14:28', '2014-12-08 13:10:40', 2),
(2, 'NASA''s Messenger (Mercury)', 'Tàu thăm dò MESSENGER là một tàu vũ trụ của NASA với sứ mệnh mô tả đặc điểm hợp chất hóa học của bề mặt Sao Thủy, lịch sử địa chất, bản chất của từ trường, kích thước và trạng thái của lõi, tóm tắt linh hoạt tại các điểm cực, và bản chất của phần bên ngoài khí quyển và quyển từ với sứ mệnh trên quỹ đạo ảo trong vòng một năm Trái Đất.', 3, '2004-08-03 15:56:00', '2011-03-18 01:00:00', NULL, '2014-12-08 11:01:57', '2014-12-08 11:01:57', 6),
(3, 'NASA''s Galileo (Jupiter)', 'Tàu thăm dò Galileo là tàu vũ trụ tự động của NASA gửi đến thăm dò và nghiên cứu hành tinh khổng lồ Sao Mộc và các vệ tinh của nó.', 1, '1989-10-18 16:53:00', '1995-12-08 01:20:00', '2003-09-21 18:57:00', '2014-12-08 13:09:22', '2014-12-08 13:09:22', 7),
(4, 'NASA''s Magellan (Venus)', 'Tàu thăm dò Magellan là một tàu vũ trụ của NASA đã được phóng lên bởi tàu con thoi Atlantis với mục đích chủ yếu là chụp ảnh bề mặt sao Kim ở khoảng cách gần.', 1, '1989-05-04 18:47:00', '1990-10-08 00:00:00', '1994-10-13 10:05:00', '2014-12-08 13:13:40', '2014-12-08 13:13:40', 4),
(5, 'NASA''s Mars Recon. Orbiter (Mars)', 'Mars Reconnaissance Orbiter là tàu vũ trụ có nhiều chức năng, được phóng lên để tìm hiểu về Sao Hỏa bằng cách quan sát tỷ mỷ, để kiếm nơi có thể hạ cánh trong các chuyến hạ xuống trong tương lai, và để chuyển tiếp tin nhanh cho các chuyến đó.\r\n', 3, '2005-08-12 11:43:00', '2006-10-03 21:24:00', NULL, '2014-12-08 13:16:43', '2014-12-08 13:16:53', 9);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `content`, `created_at`, `updated_at`, `category_id`, `title`, `author`, `full_content`) VALUES
(2, 'Lần đầu tiên, các nhà thiên văn học đã vẽ được bản đồ hàng trăm sao chổi quay xung quanh một ngôi sao cách Trái Đất 63 năm ánh sáng.      ', '2014-12-08 16:06:46', '2014-12-13 03:05:50', 1, 'Bản đồ đầu tiên về các sao chổi quay quanh một ngôi sao', 'Vietnam Plus', '<img alt="Ảnh minh họa. (Nguồn: zmescience.com)" title="Ảnh minh họa. (Nguồn: zmescience.com)" src="http://img.vietnamplus.vn/t660/Uploaded/izhsa/2014_10_24/20141024_comet_2508026k.jpg"><br><br><i>Ảnh minh họa. (Nguồn: zmescience.com)</i><br><br>Lần đầu tiên, các nhà thiên văn học đã vẽ được bản đồ hàng trăm sao chổi quay xung quanh một ngôi sao cách Trái Đất 63 năm ánh sáng.&nbsp;<br><br>Đây là kết quả nghiên cứu thiên văn học mới được công bố trên tạp chí Nature (Anh).<br><br>Nhóm các nhà thiên văn học do Pháp đứng đầu đã nghiên cứu gần 1.000 kết quả hình ảnh thu được khi quan sát ngôi sao trẻ Beta Pictoris trong vòng 8 năm nhờ sự trợ giúp của kính viễn vọng có độ chính xác cao HARPS đặt tại đài quan sát La Silla nằm trên sa mạc Attacama, miền Bắc Chile.&nbsp;<br><br>Qua đó, các nhà khoa học đã nhận diện được tổng cộng 493 sao chổi quanh ngôi sao này, số lượng nhiều nhất thu thập được trong một cuộc thăm dò ngoài Hệ Mặt Trời.<br><br>Trước đó, các nhà thiên văn học từng phát hiện các ngôi sao khác cũng có sao chổi quay quanh, song rất khó để vẽ bản đồ chi tiết.<br><br>Beta Pictoris được xem là một ngôi sao trẻ (khoảng 20 triệu năm tuổi), bao quanh nó là lớp bụi và khí khổng lồ, vốn là "nguyên liệu" để hình thành các hành tinh, tiểu hành tinh và sao chổi.&nbsp;<br><br>Giới khoa học tin rằng các sao chổi là vật thể sót lại từ xa xưa sau quá trình hình thành Hệ Mặt Trời khoảng 4,6 tỷ năm trước, vì vậy việc quan sát các sao chổi quay quanh ngôi sao Beta Pictoris có thể giúp tìm ra cơ chế hình thành Hệ Mặt Trời./.'),
(3, ' Các nhà thiên văn học của NASA đã phát hiện ra nơi có nhiệt độ thấp nhất trong vũ trụ. Đó là tinh vân Boomerang thuộc chòm sao Nhân Mã (Centaurus), được hình thành từ những đám mây bụi và khí từ một ngôi sao đang chết.', '2014-12-08 16:10:40', '2014-12-11 15:04:20', 2, 'Phát hiện ra nơi lạnh nhất trong vũ trụ', 'Songmoi.vn', '<div>Nằm cách chúng ta 5000 năm ánh sáng, tinh vân Boomerang là một trong những vật thể bí ẩn và kì lạ nhất trong vũ trụ. Trong đám mây được hình thành từ bụi và khí của ngôi sao đang “hấp hối” này, các nhà thiên văn học đã phát hiện ra nhiệt độ ở đây còn xuống thấp hơn nửa độ so với 0 độ tuyệt đối (-273,15 o C). Đây có thể coi là nơi lạnh nhất trong vũ trụ mà chúng ta từng biết đến.</div><div>Như đã biết, các ngôi sao đều được sinh ra và theo thời gian, sẽ phải chết đi. Khi các ngôi sao chết đi, chúng sẽ giải phóng ra năng lượng, đồng thời phun ra một lượng lớn bụi và khí vào không trung. Với các ngôi sao cỡ nhỏ và trung bình như mặt trời, khi chết đi, chúng sẽ trở thành các ngôi sao lùn (Dwarf star). Còn với các ngôi sao có kích cỡ đủ lớn, khi chết đi, chúng có thể hình thành nên hố đen.</div><div>Raghvendra Sahai, một nhà thiên văn học của NASA đã phát hiện ra lý do tại sao nhiệt độ tinh vân Boomerang lại xuống thấp đến như vậy. Đó là do tốc độ khí thoát ra từ tinh vân này lớn hơn rất nhiều lần so với mức bình thường. Tốc độ khí phun ra từ ngôi sao đang chết đo được lên tới 164km/s, gấp 10 lần so với các ngôi sao chết bình thường có cùng kích cỡ. Với tốc độ phun trào khí như vậy, trong 1500 năm tới, trung tâm của ngôi sao chết sẽ mất đi một khối lượng tương đương khối lượng của hàng nghìn mặt trời mỗi năm. Khí sẽ trở nên lạnh khi giãn nở ra, và với tốc độ giãn nở khí như vậy thì việc tinh vân Boomerang trở thành nơi lạnh lẽo nhất trong vũ trụ cũng không phải là điều quá ngạc nhiên.<br><br></div>'),
(4, 'Đài thiên văn Hoàng Gia tại Greenwich (ROG), London vừa công bố loạt ảnh thiên văn đoạt giải cuộc thi “Nhiếp ảnh gia thiên văn học năm 2014”.\r\n\r\nBức ảnh “Cực quang xanh lá” xuất hiện trên bầu trời công viên quốc gia Vatnajokull, Iceland của nhiếp ảnh gia James Woodend, đã đánh bại hàng nghìn bức ảnh thiên văn xuất sắc khác, đoạt giải thưởng cao nhất trong cuộc thi ảnh thiên văn năm 2014. Ban giám khảo cuộc thi chia sẻ: “Woodend đã ghi lại khoảng khắc cực quang xanh lá, sống động nhảy múa trên bầu trời đêm Iceland, trái ngược vẻ đẹp băng giá tại công viên quốc gia Vatnajokull bên dưới. Đó là sự kết hợp tuyệt vời".', '2014-12-11 07:22:12', '2014-12-11 15:43:11', 2, 'Chiêm ngưỡng loạt ảnh thiên văn đoạt giải', 'Linh Dâu', 'Đài thiên văn Hoàng Gia tại Greenwich (ROG), London vừa công bố loạt ảnh thiên văn đoạt giải cuộc thi “Nhiếp ảnh gia thiên văn học năm 2014”.\r\n\r\nBức ảnh “Cực quang xanh lá” xuất hiện trên bầu trời công viên quốc gia Vatnajokull, Iceland của nhiếp ảnh gia James Woodend, đã đánh bại hàng nghìn bức ảnh thiên văn xuất sắc khác, đoạt giải thưởng cao nhất trong cuộc thi ảnh thiên văn năm 2014. Ban giám khảo cuộc thi chia sẻ: “Woodend đã ghi lại khoảng khắc cực quang xanh lá, sống động nhảy múa trên bầu trời đêm Iceland, trái ngược vẻ đẹp băng giá tại công viên quốc gia Vatnajokull bên dưới. Đó là sự kết hợp tuyệt vời".\r\n\r\nCực quang xanh lá\r\nBức ảnh “Cực quang xanh lá” của nhiếp ảnh gia James Woodend đoạt giải thưởng cao nhất cuộc thi “nhiếp ảnh gia thiên văn học năm 2014”\r\n\r\n\r\nCuộc thi “Nhiếp ảnh gia thiên văn học” được tổ chức thường niên bởi Đài thiên văn Hoàng Gia Greenwich (ROG) hợp tác với tạp chí Bầu trời đêm BBC.\r\nCuộc thi ảnh thiên văn học thường niên lần thứ 6 đã thu hút hơn 2.500 tác phẩm dự thi từ các nhiếp ảnh gia nghiệp dư lẫn chuyên nghiệp từ 51 quốc gia trên thế giới.\r\nSau đây những bức ảnh thiên văn học xuất sắc nhất năm 2014:\r\n\r\nTinh vân đầu ngựa\r\nBức ảnh “Tinh vân đầu ngựa” được chụp trong ánh sáng mới của nhiếp ảnh gia Bill Snyder\r\n\r\n\r\n\r\nNhiếp ảnh gia Chris Murphy ghi lại hình ảnh tuyệt đẹp của núi đá New Zealand tương phản những đám mây bụi khiêu vũ trên dãi Ngân Hà trong không khí trong lành, không ô nhiễm. Mọi thứ trở nên rõ ràng, sắc nét\r\n\r\n\r\n\r\nIC 1340 là một phần của tinh vân Veil, tàn tích của siêu tân tinh trong chòm sao Cygnus, cách trái đất 1470 năm ánh sáng. Bức ảnh được chụp bởi nhiếp ảnh gia J.P. Metsävainio của Phần Lan\r\n\r\n\r\n\r\nNhững hoạt động trên bề mặt Mặt trời được chụp bởi nhiếp ảnh gia Alexandra Hart\r\n\r\n\r\n\r\nẢnh sáng hoàng đạo phát triển dần, từ đường chân trời tạo thành hình kim tự tháp với đỉnh là sao Kim. Bức ảnh tuyệt đẹp này được chụ bởi nhiếp ảnh gia Julie Fletcher tại khu vực nước Kati Thanda của hồ Eyre\r\n\r\n\r\n\r\nTinh vân xoắn ốc như con mắt khổng lồ trong không gian, tại vị trí cách trái đất 700 năm ánh sáng, được chụp bởi nhiếp ảnh gia David Fitz-Henry\r\n\r\n\r\n\r\nBức ảnh thể hiện độ cong của trái đất, cùng dãy núi Rocky cao chót vót tạo thành những nếp nhăn nhỏ trên bức hình. Bức ảnh được chụp bởi nhiếp ảnh gia Patrick Cullis\r\n\r\n\r\n\r\nNhiếp ảnh gia Matt James chụp trang trại gió tại thị xã Bungendore, Úc (trái), cảnh nhật thực chụp trên một máy bay của nhiếp ảnh gia Catalin Beldea (phải)\r\n\r\n\r\n\r\nBức ảnh vùng trung tâm NGC 1999, nằm dưới vành đai chòm sao Orion bởi nhiếp ảnh gia Marco Lorenzi'),
(5, 'Cơ quan Hàng không Vũ trụ Mỹ (NASA) đã phát hiện một vết lóa cường độ gấp hơn 10.000 lần so với vết lóa mạnh nhất từng được ghi nhận trong lịch sử mặt trời.', '2014-12-13 02:57:54', '2014-12-13 03:07:24', 2, 'Siêu vết lóa từ sao lùn đỏ', 'Hạo Nhiên', '<p><img alt="NASA ghi nhận hoạt động không tưởng của các vết lóa tại hệ DG CVn - Ảnh: NASA" title="NASA ghi nhận hoạt động không tưởng của các vết lóa tại hệ DG CVn - Ảnh: NASA" src="http://www.thanhnien.com.vn/Pictures201410/NgocThanh/1/sao-lun.jpg" class="wysiwyg"><br></p><p><i><br></i></p><p><i>NASA ghi nhận hoạt động không tưởng của các vết lóa tại hệ DG CVn - Ảnh: NASA</i><br></p><p><i><br></i></p><p>Vết lóa từ mặt trời có thể đánh sập mạng lưới điện trên Trái đất và làm gián đoạn liên lạc viễn thông.</p><p>Tuy nhiên, đối với những gì NASA vừa chứng kiến ở sao lùn đỏ láng giềng của hệ mặt trời, ngôi sao trung tâm của chúng ta xem ra vẫn cư xử rất hiền hòa với cư dân địa cầu.</p><p>Theo&nbsp;<em>Space.com</em>, một thành viên của hệ sao đôi DG Canum Venaticorum (viết tắt DG CVn) cách Trái đất khoảng 60 năm ánh sáng vừa tung ra một chuỗi các vết lóa mạnh nhất, nóng nhất và dài nhất từng được ghi nhận, với ít nhất 7 đợt bùng nổ trên bề mặt ngôi sao này trong vòng&nbsp;hai tuần.</p><p>Ở giai đoạn cao điểm, vết lóa trên sao lùn đỏ ở DG CVn đạt mức nhiệt độ 200 triệu độ C, tức nóng hơn gấp 12 lần so với lõi của mặt trời chúng ta.</p><p>Giới thiên văn học ước tính DG CVn được sinh ra khoảng 30 triệu năm trước, có nghĩa là tuổi đời của nó không bằng 0,7% số tuổi của hệ mặt trời.</p>'),
(6, 'Hôm nay (8-10), hiện tượng nguyệt thực toàn phần (hay còn có tên gọi là Mặt trăng máu) sẽ diễn ra với hình ảnh mặt trăng có màu đỏ như máu. Ở Việt Nam và nhiều vùng khác trên thế giới, có thể quan sát được hiện tượng thiên văn đáng chú ý nhất năm 2014 này.', '2014-12-13 03:12:21', '2014-12-21 15:20:54', 1, 'Hiện tượng ‘Mặt trăng máu’ diễn ra ngày 8-10', 'Theo Thiên An (Vietnam+)', '<h4>Hôm nay (8-10), hiện tượng nguyệt thực toàn phần (hay còn có tên gọi là Mặt trăng máu) sẽ diễn ra với hình ảnh mặt trăng có màu đỏ như máu. Ở Việt Nam và nhiều vùng khác trên thế giới, có thể quan sát được hiện tượng thiên văn đáng chú ý nhất năm 2014 này.</h4><br><div class="relation"><ul><li><div class="icon"></div><a title="10 hiện tượng thiên nhiên hiếm thấy gây kinh ngạc" href="http://nld.com.vn/khoa-hoc/10-hien-tuong-thien-nhien-hiem-thay-gay-kinh-ngac-20141205145735059.htm">10 hiện tượng thiên nhiên hiếm thấy gây kinh ngạc</a></li><li><div class="icon"></div><a title="Bức ảnh trăng máu gây “sốt” cộng đồng mạng" href="http://nld.com.vn/khoa-hoc/buc-anh-trang-mau-gay-sot-cong-dong-mang-20141009155831014.htm">Bức ảnh trăng máu gây “sốt” cộng đồng mạng</a></li><li><div class="icon"></div><a title="Chiêm ngưỡng kỳ “trăng máu” thứ hai trên toàn thế giới" href="http://nld.com.vn/khoa-hoc/chiem-nguong-ky-trang-mau-thu-hai-tren-toan-the-gioi-2014100909525308.htm">Chiêm ngưỡng kỳ “trăng máu” thứ hai trên toàn thế giới</a></li></ul></div><div class="content news_detail"><p>&nbsp;</p><div class="VCSortableInPreviewMode"><div><img alt="Hiện tượng ‘Mặt trăng máu’ diễn ra ngày 8-10" title="" src="http://nld.vcmedia.vn/thumb_w/540/2014/mat-trang-mau-hinh-anh-bimf-1412755535990.jpg"></div><div class="PhotoCMS_Caption"></div></div><p>&nbsp;</p><p><strong>Tại Việt Nam xem "Mặt trăng máu" lúc nào?</strong></p><p>Trao đổi với&nbsp;<em>Vietnam+</em>, anh Đặng Vũ Tuấn Sơn, Chủ tịch Hội&nbsp;<a target="_blank" title="Thiên văn học" href="http://nld.com.vn/thien-van-hoc.html" class="VCCTagItemInNews">Thiên văn học</a>&nbsp;trẻ Việt Nam (VACA) cho biết, hiện tượng&nbsp;<a target="_blank" title="nguyệt thực toàn phần" href="http://nld.com.vn/nguyet-thuc-toan-phan.html" class="VCCTagItemInNews">nguyệt thực toàn phần</a>&nbsp;(gần đây được gọi là “Mặt trăng máu”) diễn ra vào 8-10 tới sẽ bắt đầu pha nửa tối vào 15 giờ 15 phút, pha một phần vào lúc 16 giờ 15 phút và đạt cực đại vào 17 giờ 54 phút.</p><p>Sau đó, hiện tượng sẽ kết thúc pha toàn phần, một phần và nửa tối tương ứng vào 18 giờ 24 phút, 19 giờ 24 phút và 20 giờ 34 phút (giờ Việt Nam).</p><p>Tại Việt Nam, giờ mặt trăng mọc trong ngày này vào khoảng 17 giờ 25 phút nên người yêu thiên văn không thể theo dõi hiện tượng trước đó cũng như thời điểm trăng mới mọc. Bởi vậy, thời điểm quan sát lý tưởng nhất vào khoảng từ 17 giờ 45 phút cho tới khi kết thúc hiện tượng.</p><p>Anh Hoàng Quốc Phương, quản trị web của Hội Thiên văn nghiệp dư Hà Nội cho hay lần nguyệt thực toàn phần gần đây nhất mà Việt Nam quan sát được là vào ngày 10-12-2011. Kể từ đó đến nay, đã có tổng cộng 6 lần nguyệt thực diễn ra nhưng không quan sát được tại Việt Nam hoặc là<a target="_blank" title="nguyệt thực nửa tối" href="http://nld.com.vn/nguyet-thuc-nua-toi.html" class="VCCTagItemInNews">nguyệt thực nửa tối</a>&nbsp;rất khó để quan sát.</p><p>Các chuyên gia cũng đưa ra khuyến cáo người quan sát cần chọn vị trí thoáng đãng nhìn về chân trời phía Đông. Người xem cũng quan sát bằng mắt thường, song sẽ thú vị hơn khi có thêm dụng cụ hỗ trợ là ống nhòm,&nbsp;<a target="_blank" title="kính thiên văn" href="http://nld.com.vn/kinh-thien-van.html" class="VCCTagItemInNews">kính thiên văn</a>...</p><p><strong>Mặt trời, trái đất và mặt trăng sẽ nằm trên một đường thẳng</strong></p><p>Còn theo trang&nbsp;<em>Livescience</em>, hiện tượng nguyệt thực toàn phần hiếm gặp này có thể được quan sát vào sáng thứ tư.</p><p>Vào ngày 8-10, những nhà yêu thích quan sát vũ trụ có thể thưởng thức hiện tượng nguyệt thực toàn phần và&nbsp;<a target="_blank" title="Mặt trời mọc" href="http://nld.com.vn/mat-troi-moc.html" class="VCCTagItemInNews">Mặt trời mọc</a>&nbsp;cùng một lúc. Tên gọi khoa học của hiện tượng này là Selenelion mà các nhà chiêm tinh học cho rằng rất khó xảy ra.</p><p>Trong suốt quá trình nguyệt thực, Mặt trời, Trái đất và Mặt trăng sẽ nằm trên một đường thẳng. Với cách bố trí đó, việc quan sát được là điều không thể xảy ra. Nhưng nhờ&nbsp;<a target="_blank" title="bầu khí quyển" href="http://nld.com.vn/bau-khi-quyen.html" class="VCCTagItemInNews">bầu khí quyển</a>&nbsp;của Trái đất, hình ảnh của Mặt trăng và Mặt trời lại xuất hiện ở chân trời bởi sự khúc xạ khí quyển. Điều này giúp mọi người trên Trái đất nhìn thấy được trong vài phút Mặt trời trước khi mọc và Mặt trăng sau khi nó lặn.</p><p>Như một hệ quả, nhiều vùng ở khu vực sông Missisipphi có cơ hội quan sát trực tiếp hiện tượng này. Nếu thời tiết cho phép, người dân có thể ngắm nhìn trong từ 2 đến 9 phút (tùy vị trí) quan cảnh Mặt trời mọc từ phía Đông và hiện tượng nguyệt thực toàn phần ở hướng Tây.</p><p>Từ Newfouldland, giai đoạn nguyệt thực toàn phần bắt đầu khoảng 30 – 45 phút trước khi Mặt trăng lặn.</p><p>Ở khắp phía đông Nova Scotia, bạn chỉ có thể quan sát được phần thấp nhất của Mặt trăng khi nó lặn ở phía Tây chân trời.</p><p>Xa hơn ở phía đông và nam vùng bờ biển&nbsp;<a target="_blank" title="Đại Tây Dương" href="http://nld.com.vn/dai-tay-duong.html" class="VCCTagItemInNews">Đại Tây Dương</a>, Mặt trăng sẽ hoàn toàn chìm vào vùng tối của Trái đất.</p><p>Các nhà thiên văn học cho rằng Selenelion là một hiện tượng cực kì hiếm. Cách đây 25 năm, trên tạp chí&nbsp;<em>Sky &amp; Telescope</em>, tháng 8-1989, nhà thiên văn học Bradley Schaefer, người nghiên cứu khả năng xuất hiện của Mặt trăng khi nó ở vị trí thấp nhất trên bầu trời, đã lưu ý rằng Mặt trăng tròn chỉ xuất hiện khi nó ở trên 2 độ và Mặt trời ở dưới 2 độ của chân trời. Vì vậy, phụ thuộc vào độ quang đãng của bầu trời mà người quan sát có thể theo dõi được hiện tường từ 10-15 phút trước khi Mặt trời mọc.</p></div>'),
(7, 'Người dân Việt Nam sẽ quan sát được tổng cộng 18 hiện tượng thiên văn kỳ thú trong năm 2014.\r\nTrong bài viết đăng trên website chính thức của Hội Thiên văn học trẻ Việt Nam (VACA), anh Đặng Vũ Tuấn Sơn, chủ nhiệm Hội cho biết, năm 2014 có nhiều sự kiện thiên văn đáng chú ý như nguyệt thực toàn phần, điểm trực đối của các hành tinh cũng như cơ hội tương đối lý tưởng để quan sát nhiều trận mưa sao băng lớn.', '2014-12-13 03:14:28', '2014-12-13 03:14:28', 1, '18 hiện tượng thiên văn nổi bật năm 2014', 'Phạm Hương (theo VACA)', '<p>Dưới đây là những hiện tượng có thể quan sát trực tiếp tại Việt Nam năm 2014:</p><p>Mưa sao băng Quadrantids</p><p>Trận mưa sao băng loại trung bình trong năm với mật độ tối đa từ 30 đến 40 sao băng mỗi giờ trong điều kiện thời tiết lý tưởng. Do diễn ra vào đầu tháng âm lịch nên người quan sát ở các khu vực thời tiết cho phép sẽ có nhiều cơ hội theo dõi hiện tượng này. Thời điểm lý tưởng nhất để quan sát là rạng sáng ngày 3/1 với hướng là bầu trời phía đông nơi có chòm sao Bootes. (<a href="http://vnexpress.net/tin-tuc/khoa-hoc/canh-tuong-mua-sao-bang-dau-tien-cua-nam-2409442.html">Quadrantids 2013</a>)</p><table><tbody><tr><td><img alt="nationalgeographic" src="http://m.f29.img.vnecdn.net/2013/12/31/saobang-6564-1388490987.jpg"></td></tr><tr><td><p>Một trận mưa sao băng&nbsp;Quadrantid. Ảnh:&nbsp;<em>Nationalgeographic.</em></p></td></tr></tbody></table><p><strong>Sao Mộc tới vị trí trực đối với mặt trời so với trái đất</strong></p><p>Đây là vị trí sao Mộc gần trái đất nhất trên quỹ đạo của nó và phần được chiếu sáng của nó hướng về trái đất nhiều nhất. Người quan sát cần hỗ trợ của các kính thiên văn nghiệp dư để ngắm hành tinh lớn nhất Hệ mặt trời dịp này. Hiện tượng diễn ra ngày 5/1.</p><p><strong>Sao Hỏa tới vị trí trực đối với mặt trời so với trái đất</strong></p><p>Ngày 8/4, ở vị trí gần trái đất nhất trên quỹ đạo, hành tinh đỏ sẽ cho phép người yêu thích bầu trời quan sát nó qua kính thiên văn. Với mắt thường, người xem có thể nhìn thấy sao Hỏa, cũng như với sao Mộc như trên nhưng độ sáng của chúng không lớn hơn ngày thường ró rệt.&nbsp;</p><p><strong>Mưa sao băng Lyrids</strong></p><p>Đây là trận mưa sao băng nhỏ với chỉ khoảng 20 sao băng mỗi giờ ngay cả trong điều kiện tương đối lý tưởng. Hiện tượng diễn ra ngày&nbsp;22, 23/4 và trùng vào thời điểm trăng bán nguyệt cuối tháng nên ánh trăng sẽ gây cản trở không nhỏ cho người quan sát.&nbsp;&nbsp;</p><p><strong>Mưa sao băng Eta Aquarids</strong></p><p>Trận mưa sao băng cỡ trung bình này có thể cho phép người quan sát thấy hơn 50 sao băng mỗi giờ trong điều kiện cho phép. Nằm gần thời điểm đầu tháng âm lịch nên nếu thời tiết không có thay đổi đặc biệt hiện tượng này có thể khá dễ dàng để quan sát. Thời điểm lý tưởng nhất là sau nửa đêm ngày 5, rạng sáng 6/5.</p><p><strong>Sao Thổ tới vị trí trực đối với mặt trời qua trái đất</strong></p><p>Vị trí này cho phép người quan sát có thể nhìn sao Thổ rõ nhất. Nếu có một chiếc kính thiên văn, người xem không nên bỏ lỡ cơ hội quan sát hành tinh này cùng vành đai thú vị của nó vào ngày 10/5.</p><p><strong>Mặt trăng tiến gần sao Hỏa trên bầu trời</strong></p><p>Hai thiên thể sáng của bầu trời đêm chỉ nằm cách nhau chừng 2 độ trên bầu trời. Đây không phải một hiện tượng đặc biệt, nhưng sẽ là điểm sáng đáng chú ý khi người xem ngắm nhìn bầu trời sau lúc mặt trời lặn ngày này. Hiện tượng diễn ra ngày 7/6.</p><p><strong>Mưa sao băng Delta Aquarids</strong></p><p>Trận mưa sao băng nhỏ trong năm vào ngày 28, 29/7. Tuy nhiên cuối tháng 7, trời ít mây và không bị ánh trăng cản trở nên sẽ là điều kiện thuận lợi để quan sát.</p><p><strong>Mưa sao băng Perseids</strong></p><p>Một trong hai trận mưa sao băng lớn nhất trong năm với mật độ thường lên tới hơn 60 sao băng mỗi giờ, nó đạt cực điểm vào ngày 12, 13/8. Năm 2014, sự có mặt của mặt trăng sẽ làm che lấp một phần những sao băng sẽ xuất hiện. Dù vậy, nếu trời không mây thì đây vẫn sẽ là hiện tượng thiên văn rất đáng quan sát trong năm. (<a href="http://vnexpress.net/tin-tuc/khoa-hoc/canh-tuong-mua-sao-bang-sang-nhat-nam-2864064.html"><strong>Perseids 2013)</strong></a></p><table><tbody><tr><td><img alt="ao băng Perseid rực sáng, lướt qua những đám mây ở khu vực Embudo, bang New Mexico, Mỹ. Ảnh: Mike Lewinski." title="Image: http://m.f29.img.vnecdn.net/2013/12/31/saobang1-4221-1388490987.jpg" src="http://m.f29.img.vnecdn.net/2013/12/31/saobang1-4221-1388490987.jpg"></td></tr><tr><td><p>Mưa sao băng Perseid rực sáng vào năm 2013.&nbsp;Ảnh:&nbsp;<em>Mike Lewinski.</em></p></td></tr></tbody></table><p><strong>S</strong>ao Hải Vương tới vị trí trực đối với mặt trời qua trái đất</p><p>Đây là vị trí mà hành tinh này tới gần trái đất nhất trên quỹ đạo của nó. Dù vậy với khoảng cách quá xa, thì chỉ những người được trang bị kính thiên văn khá mạnh mới có thể thấy nó là một chấm xanh trong ống kính. Sự kiện diễn ra ngày 29/8.</p><p>Sao Thiên Vương tới vị trí trực đối</p><p>Cũng như sao Hải Vương, sao Thiên Vương ở quá xa nên nó chỉ được coi là thuận lợi để quan sát với người yêu thiên văn có sự hỗ trợ của kính thiên văn tương có độ phóng đại là chất lượng tương đối cao. Hiện tượng diễn ra 7/10.</p><p>Nguyệt thực toàn phần ngày 8/10</p><p>Đây là hiện tượng rất đáng chú ý trong năm 2014. Nguyệt thực sẽ trải trên một dải rộng từ Bắc Mỹ qua Nam Phi, Đông Á và Australia. Việt Nam nằm trong khu vực có thể quan sát hiện tượng này.</p><p>Mưa sao băng Draconids</p><p>Ngày 8, 9/10 trận mưa sao băng nhỏ này xuất hiện với mật độ chỉ khoảng 10 sao băng mỗi giờ. Mặt khác, hiện tượng này trùng vào thời điểm trăng tròn, ánh trăng sẽ che khuất hầu hết các sao băng của nó nên về cơ bản, đây không phải một sự kiện đáng chú ý với người quan sát.</p><p>Mưa sao băng Orionids</p><p>Đây là trận mưa sao băng cỡ trung bình với mật độ khoảng 30 sao băng mỗi giờ. Năm 2014, hiện tượng sẽ diễn ra vào thời điểm không trăng, do vậy nếu trời ít mây thì đây sẽ là một năm lý tưởng để quan sát mưa sao băng này. Nó đạt cực điểm và ngày 22, 23/10.</p><p>Mưa sao băng Taurids</p><p>Ngày 5, 6/11 người yêu thiên văn sẽ được quan sát trận mưa sao băng này. Nó chỉ là trận mưa sao băng nhỏ với trên dưới 10 sao băng mỗi giờ và xảy ra gần thời điểm trăng tròn nên việc quan sát trở nên khó khăn hơn.</p><p>Mưa sao băng Leonids</p><p>Leonids là trận mưa sao băng cỡ trung bình. Năm 2014, với sự vắng mặt của ánh trăng, người quan sát sẽ có cơ hội lý tưởng để theo dõi hiện tượng này nếu thời tiết thuận lợi. Trận mưa sao băng diễn ra 17, 18/11.</p><p>Mưa sao băng Geminids</p><p>Đây là trận mưa sao băng lớn nhất, nó có thể cho phép người quan sát đếm được trên 100 sao băng mỗi giờ vào 13, 14/12. Mặc dù mặt trăng sẽ che khuất một số sao băng, nhưng chỉ cần trời ít mấy thì đây vẫn sẽ là một hiện tượng tuyệt vời vì Geminids có những sao băng rất sáng, ngay cả khi có sự can thiệp của ánh trăng.</p><p>Mưa sao băng Ursids</p><p>Đây chỉ là một trận mưa sao băng nhỏ, nhưng nó rơi vào thời điểm không trăng nên Ursids vẫn có thể cho phép người yêu bầu trời quan sát được một số sao băng của mình. Trận mưa sao băng diễn ra ngày 22, 23/12.</p>'),
(8, 'TTO - Theo tạp chí National Geographic, năm 2014 có nhiều sự kiện thiên văn tuyệt vời sẽ xảy ra như: nguyệt thực toàn phần, mưa sao băng lớn... Các nhà thiên văn học bình chọn 5 hiện tượng thiên văn đáng chú ý nhất trong năm 2014.', '2014-12-13 03:18:10', '2014-12-21 15:42:19', 2, 'Quan sát 5 hiện tượng thiên văn đáng chú ý nhất năm 2014', 'TRÙNG DƯƠNG (Theo National Geographic)', '<div class="block-feature block-feature-1"><p>TTO - Theo tạp chí&nbsp;<em>National Geographic</em>, năm 2014 có nhiều sự kiện thiên văn tuyệt vời sẽ xảy ra như: nguyệt thực toàn phần, mưa sao băng lớn... Các nhà thiên văn học bình chọn 5 hiện tượng thiên văn đáng chú ý nhất trong năm 2014.</p></div><div class="fck"><p></p><table><tbody><tr><td><img src="http://static.new.tuoitre.vn/tto/i/s626/2014/01/04/B1bJjh6T.jpg" class="ck_image"></td></tr><tr><td><p>5 hiện tượng thiên văn đáng chú ý nhất 2014 - Ảnh: National Geographic</p></td></tr></tbody></table><p></p><p><strong>1. Hiện tượng nguyệt thực toàn phần</strong></p><p>Năm nay, chúng ta sẽ có cơ hội chứng kiến hiện tượng nguyệt thực toàn phần. Vào thời điểm trước bình minh ngày 15-4, Mặt trăng sẽ bị bao phủ từ từ bởi bóng tối Trái đất, khi đó Trái đất sẽ nằm giữa Mặt trời và Mặt trăng. Có thể quan sát hiện tượng này từ tây bán cầu, bao gồm Bắc và Nam Mỹ. Phần nhật thực sẽ không nhìn thấy từ phía Bắc và Đông Âu, Đông Phi, Trung Đông hay Trung Á.</p><p>Ngoài ra, chúng ta sẽ có thêm cơ hội chứng kiến hiện tượng Mặt trăng “ửng đỏ” vào ngày 8-10, khi nguyệt thực toàn phần hiện rõ từ Thái Bình Dương. Chỉ một phần phía tây bắc Bắc Mỹ mới quan sát toàn bộ quá trình này. Trong khi đó, toàn bộ quá trình xảy ra nhật thực sẽ nhìn thấy từ New Zealand và một phần tư phía đông Úc.</p><p><strong>2. Mưa sao băng do sao chổi LINEAR</strong></p><p>Nếu bầu trời quang đãng, chúng ta có thể chứng kiến vụ nổ dữ dội của sao băng vào ngày 23 và 24-5. Trong hai thế kỷ qua, sao chổi 209P/LINEAR dường như bung ra nhiều mảnh vỡ bụi. Một số chuyên gia dự đoán Trái đất có thể sẽ thụt đi bởi con đường bụi của sao chổi này trong năm nay. Dựa trên mô hình quỹ đạo, dự báo mật độ trận mưa sao băng này cao, mặt trăng lưỡi liềm sẽ kéo dài đêm, tạo điều kiện thuận lợi cho việc quan sát.</p><p><strong>3. Hiện tượng liên kết bộ ba của Mặt trăng</strong></p><p>Hiện tượng này sẽ xảy ra hai lần trong năm 2014, Mặt trăng sẽ “túm tụm” với hành tinh và ngôi sao sáng, làm cho bầu trời trở nên bắt mắt. Hiện tượng này sẽ diễn ra đầu tiên vào ngày 5-7, khi ấy trên bầu trời xuất hiện vầng trăng khuyết chen ngang giữa sao Spica xanh nhạt và sao Hỏa hồng đỏ, hiện tượng này sẽ xảy ra trong vòng 30 phút.</p><p>Ở Nam bán cầu, Mặt trăng và các hành tinh sẽ túm tụm cùng nhau vào ngày 6 và 7-7 phía trên cao bầu trời phía đông bắc.</p><p>Vào lúc hoàng hôn ngày 31-8, chúng ta sẽ quan sát một mô hình tam giác được tạo bởi Mặt trăng lưỡi liềm, sao Hỏa và sao Thổ. Đối với Nam bán cầu, chúng ta quan sát hiện tượng này ở phía tây vào ngày 31-8 và 1-9.</p><p><strong>4. Sự liên kết sao Mộc và sao Kim</strong></p><p>Vào rạng sáng 18, 19-8 tại Nam bán cầu, chúng ta có cơ hội quan sát cuộc gặp gỡ vô cùng thân mật của hai hành tinh sáng nhất trong bầu trời chúng ta: sao Kim và sao Mộc. Hiện tượng hồ quang sẽ kéo dài trong vòng 20 phút.</p><p><strong>5. Nhật thực một phần</strong></p><p>Ngày 23-10, nhật thực một phần sẽ hiển thị phần lớn khắp Bắc Mỹ. Chúng ta có thể quan sát hiện tượng này từ phần nửa đông của Mỹ và Canada. Khu vực Vancouver sẽ thấy 65%, San Francisco 50%, 55% tại Denver, Toronto 44% và New York 15%, Mặt trời sẽ biến mất đằng sau hình bóng của Mặt trăng.</p></div>');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20141101034906'),
('20141101035725'),
('20141101035728'),
('20141103062009'),
('20141204155842'),
('20141204160246'),
('20141204160412'),
('20141204160629'),
('20141204161220'),
('20141204161407'),
('20141206025535'),
('20141206031227'),
('20141206032234'),
('20141206063529'),
('20141206071040'),
('20141206071914'),
('20141206072318'),
('20141206074100'),
('20141206102615'),
('20141206105324'),
('20141206163018'),
('20141207150622'),
('20141208145735'),
('20141208150032'),
('20141208151720'),
('20141211071233'),
('20141221161203'),
('20141221161204');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Đã Hoàn Thành', '2014-12-06 12:06:54', '2014-12-06 12:06:54'),
(2, 'Đang phát triển', '2014-12-06 12:07:48', '2014-12-06 12:07:48'),
(3, 'Chưa Hoàn Thành', '2014-12-06 12:18:38', '2014-12-06 12:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `systems`
--

CREATE TABLE IF NOT EXISTS `systems` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `systems`
--

INSERT INTO `systems` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Thiên Hà', NULL, '2014-12-06 04:57:11', '2014-12-07 01:20:45'),
(2, 'Hệ Mặt Trời', NULL, '2014-12-06 12:10:04', '2014-12-06 12:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'bibibi.bobobo.9x@gmail.com', '$2a$10$R1xNlHAhTMVgNSpJh0e.nOI7GB3GjHNcaSRdXee67jHCEdl46JUAi', NULL, NULL, NULL, 6, '2014-12-21 15:57:40', '2014-12-13 03:28:01', '127.0.0.1', '127.0.0.1', '2014-12-06 12:38:46', '2014-12-21 15:57:40'),
(2, 'abc@gmail.com', '$2a$10$pQPR2DVCWNyjFfOkH3EYm.sMQAUqycoPtWS/r3Rq0d43otd9fWc2G', NULL, NULL, NULL, 1, '2014-12-11 03:47:19', '2014-12-11 03:47:19', '127.0.0.1', '127.0.0.1', '2014-12-11 03:47:19', '2014-12-11 03:47:19'),
(3, 'linhly@gmail.com', '$2a$10$aI7WXrwvbs7LGZMmEzIppuhWEfVkaRiWGHPAQ5glhsXpp0sCF81Oy', NULL, NULL, NULL, 1, '2014-12-11 04:42:19', '2014-12-11 04:42:19', '127.0.0.1', '127.0.0.1', '2014-12-11 04:42:19', '2014-12-11 04:42:19'),
(4, 'trinhan.hanu@gmail.com', '$2a$10$kpPqZzY9.foPn.5a5D7bvuen3ZLNDm40w3c7t55fTgFUsh/Ts4gY6', NULL, NULL, NULL, 1, '2014-12-11 06:11:07', '2014-12-11 06:11:07', '127.0.0.1', '127.0.0.1', '2014-12-11 06:11:07', '2014-12-11 06:11:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
 ADD PRIMARY KEY (`id`), ADD KEY `index_active_admin_comments_on_namespace` (`namespace`), ADD KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`), ADD KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `index_admin_users_on_email` (`email`), ADD UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lienkets`
--
ALTER TABLE `lienkets`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missions`
--
ALTER TABLE `missions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
 ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systems`
--
ALTER TABLE `systems`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `index_users_on_email` (`email`), ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `lienkets`
--
ALTER TABLE `lienkets`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `missions`
--
ALTER TABLE `missions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `systems`
--
ALTER TABLE `systems`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
