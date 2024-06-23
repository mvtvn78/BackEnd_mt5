-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 15, 2024 lúc 11:41 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mt5_dtb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `album`
--

CREATE TABLE `album` (
  `MAALB` char(10) NOT NULL,
  `TenALB` varchar(150) DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `HinhAnh` text DEFAULT NULL,
  `TinhTrang` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `album`
--

INSERT INTO `album` (`MAALB`, `TenALB`, `MoTa`, `HinhAnh`, `TinhTrang`) VALUES
('ALB01', 'Đánh Đổi', 'Album được ra mắt lúc 20h09 vì 20/9 cũng chính là sinh nhật của Obito', 'alb_danhdoi.jpg', 1),
('ALB02', 'This is Maroon5', 'Maroon 5 là một ban nhạc pop rock người Mỹ đến từ Los Angeles, California.Nổi tiếng từ năm 2004 sau single \"This Love\", sự nghiệp của Maroon 5 liên tục có những bước tiến vững chắc. Dù từng phải thay đổi thành viên (tay trống Ryan Dusick rời nhóm vào năm 2006) song Maroon 5 vẫn tiếp tục thành công nhờ sự định hướng của Jesse Carmicheal, Adam Levine và James Valentine.', 'alb_marron5.jpg', 1),
('ALB03', 'This is Sabrina Carpenter', 'Sabrina Ann Lynn Carpenter (sinh ngày 11 tháng 5 năm 1999) là một ca sĩ, nhạc sĩ, diễn viên người Mỹ. Cô nổi tiếng với vai diễn Maya Hart trong loạt phim Girl Meets World (2014 - 2017) trên Disney Channel. Cô đóng vai Jenny Parker trong bộ phim Adventures in Babysitting năm 2016, một trong những bộ phim gốc trên Disney Channel.', 'alb_sabria.png', 1),
('ALB04', 'This is Vu Cat Tuong', 'Vũ Cát Tường (sinh ngày 2 tháng 10 năm 1992) là một nữ ca sĩ, nhạc sĩ và nhà sản xuất thu âm người Việt Nam. Cô được biết đến với khả năng ca hát truyền cảm, những sáng tác kết hợp nhiều thể loại nhạc khác nhau như R&B, neo soul, pop, electropop, blues, jazz, alternative rock, funk, và ballad.Tường chính thức bắt đầu sự nghiệp âm nhạc của mình vào năm 2013 khi tham gia chương trình Giọng hát Việt.', 'alb_vucattuong.jpg', 1),
('ALB05', 'This is Boen', 'Calum Thomas Bowen (sinh ngày 26 tháng 2 năm 1991), còn được biết đến với nghệ danh Bo En (cách điệu là bo en), là một nhạc sĩ và nhà sản xuất trò chơi điện tử người Anh có trụ sở tại London.', 'alb_boen.jpg', 1),
('ALB06', 'This is Creepy Nuts', 'Creepy Nuts là bộ đôi hip-hop Nhật Bản bao gồm R-Shitei và DJ Matsunaga, họ đã ra mắt công ty lớn vào năm 2017.', 'album_nuts.jpg', 1),
('ALB10', 'This is Sam Smith, Kim Petras', 'Samuel Frederick \"Sam\" Smith là một ca sĩ-nhạc sĩ người Anh. Sam bắt đầu nổi tiếng vào tháng 10 năm 2012 khi hợp tác với Disclosure trong đĩa đơn \"Latch\", single này đã đạt tới vị trí cao nhất là 11 trên bảng xếp hạng UK', 'album_this_sam_kim.jpg', 1),
('ALB13', 'This is The Weeknd', 'Abel Makkonen Tesfaye, được biết đến với nghệ danh The Weeknd, là một ca sĩ, nhạc sĩ sáng tác bài hát và nhà sản xuất thu âm người Canada. Anh được nhiều người biết đến nhờ vào cách sản xuất âm nhạc độc đáo, những sáng tạo nghệ thuật và quãng giọng falsetto đặc trưng của anh.', 'album_week.jpg', 1),
('ALB16', 'This is ASCA ', 'Asuka Ōkura, còn được biết đến với nghệ danh Asca, là một ca sĩ và nhạc sĩ người Nhật đã ký hợp đồng với Sony Music và Sacra Music. Cô xuất hiện lần đầu vào năm 2013 sau khi lọt vào vòng chung kết tại Animax All- Japan Anisong Grand Prix lần thứ 5.', 'asca_album.jpg', 1),
('ALB17', 'This is Justin Bieber', 'Justin Drew Bieber là một nam ca sĩ kiêm sáng tác nhạc người Canada. Bieber nổi tiếng nhờ khả năng kết hợp đa dạng nhiều dòng nhạc và là nghệ sĩ đóng vai trò quan trọng trong nền âm nhạc đại chúng hiện nay', 'justin_album.jpeg', 1),
('ALB18', 'This is Son Tung MTP', 'Nguyễn Thanh Tùng (sinh ngày 5 tháng 7 năm 1994), thường được biết đến với nghệ danh Sơn Tùng M-TP, là một nam ca sĩ kiêm sáng tác nhạc, rapper, nhà sản xuất thu âm và diễn viên người Việt Nam. Sinh ra ở thành phố Thái Bình, Sơn Tùng thường đi hát ở Cung văn hoá thiếu nhi tỉnh Thái Bình và học chơi đàn organ từ nhỏ. Sau đó, Tùng cùng với các bạn trong lớp thành lập nên một nhóm nhạc, lấy tên là Over Band, bắt đầu sáng tác và đăng tải các bài hát của mình lên một trang web chuyên về lĩnh vực âm nhạc có tên là LadyKillah.', 'sontungmtp.jpg', 1),
('ALB19', 'This is Maroon5 2020', 'Ngày 26 tháng 3 năm 2012, Maroon 5 thông báo tựa đề chính thức cho album phòng thu thứ tư của họ, Overexposed. Album sẽ được phát hành vào 26 tháng 6 năm 2012.[5][6] Adam nói rằng, album này sẽ là album \"đa dạng và dí dỏm nhất từ trước đến giờ\" [5] Vào 17 tháng 4 năm 2012, Maroon 5 phát hành một ca khúc mới có tựa đề \"Payphone\", đĩa đơn đầu tiên của Overexposed, trong ca khúc có sự góp mặt của ca sĩ nhạc rap Wiz Khalifa. Ca khúc đã leo lên vị thứ ba của bảng xếp hạng Billboard Hot 100.', 'marron2020.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baihat`
--

CREATE TABLE `baihat` (
  `MABH` char(10) NOT NULL,
  `MAALB` char(10) DEFAULT NULL,
  `MATL` char(10) NOT NULL,
  `TenBH` varchar(200) DEFAULT NULL,
  `TinhTrang` tinyint(1) DEFAULT NULL,
  `NoiDung` text DEFAULT NULL,
  `Anh` char(200) DEFAULT NULL,
  `LuotXem` int(11) DEFAULT NULL,
  `LoiBatHat` text DEFAULT NULL,
  `filenhac` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `baihat`
--

INSERT INTO `baihat` (`MABH`, `MAALB`, `MATL`, `TenBH`, `TinhTrang`, `NoiDung`, `Anh`, `LuotXem`, `LoiBatHat`, `filenhac`) VALUES
('BH01', 'ALB01', 'TL01', 'Biên giới long bình', 1, 'Biên giới long bình', 'alb_danhdoi.jpg', 4, '[offset:400]\n[00:24:00] Xe đai đang lăn bánh hướng thẳng về phía biên giới Long Bình\n[00:26:00] Tay nó vặn hết số với tiếng nẹt bô qua nhiều công trình\n[00:29:00] Đồ phạm pháp sau lưng xe nên đường lui nó quyết không nhìn\n[00:33:00] Tốc độ nó đang đi đủ có thể đưa nó lên khung hình\n[00:35:00] Lỡ đụng ai chết nó cũng mặc kệ vì lời khuyên trong nghề toàn thế\n[00:38:00] Thà là không ai nhìn thấy nó còn hơn là không còn thấy đường về\n[00:41:00] Đặt mạng sống lên trên bàn cân vì chỉ mong cho nhà cửa không đói\n[00:44:00] Tâm cắn rứt thì cũng phải cam nó trách sao đời đối xử nó tệ\n[00:48:00] Nó sẵn sàng cho kẹo đồng bay khi giao dịch bị sai chi tiết\n[00:50:00] Sẵn sàng xuống tay hạ thằng khác nếu đó là cách để nó đi tiếp\n[00:53:00] Nếu là cách để nhà nó no kéo một khói thật to khi siết\n[00:56:00] Với người thân nó là người tốt còn với mày là một sự uy hiếp\n[00:59:00] Chấp nhận để thân dính mùi tanh để nhà ngửi mùi trong lành\n[01:02:00] Khí nó toát ra mặt lạnh tanh khi cuộc đời nó không thành\n[01:05:00] Nó là thứ gia đình mày sợ khi đồng hồ báo là đêm về khuya\n[01:08:00] Nó là đứa con ngoan của quỷ khi bị đời cho ra rìa\n[01:11:00] Don\'t let them run though\n[01:13:00] Đừng để nó chạy lỡ lại khổ ai thành nạn nhân\n[01:15:00] Don\'t let them run don\'t let them run don\'t let them run\n[01:19:00] Lại thêm một vụ thêm một vụ\n[01:21:00] Run run don\'t let them run though\n[01:25:00] Đừng để nó chạy lỡ lại khổ ai thành nạn nhân\n[01:27:00] Don\'t let them run don\'t let them run don\'t let them run\n[01:30:00] Lại thêm một vụ thêm một vụ thêm một vụ nó gây ra\n[01:35:00] Giác quan nhạy trong màn đêm kĩ thuật như là game\n[01:38:00] Số vết thương cộng thêm tâm lý nguyên màu đen\n[01:41:00] Ngửi được sự nguy hiểm hành tung như là phim\n[01:44:00] Coi nó như thằng điên thằng bé chỉ muốn được yên\n[01:47:00] Nó không muốn nó được sinh ra trên cõi đời này để trở thành xấu\n[01:50:00] Nó hối hận vì sự lựa chọn để làm việc sai của nó lần đầu\n[01:53:00] Giày xéo chính bản thân vì tội nó gây đau thương cho bao người khác\n[01:55:00] Nhưng quá trễ trở thành cụm từ mà nó nhớ mãi như một bài nhạc nó\n[02:00:00] Ước được chọn ước được chọn ước được chọn lại\n[02:03:00] Khác cuộc đời khác hoàn cảnh khác cả thực tại\n[02:06:00] Khác suy nghĩ khác hành động khác những lần dại\n[02:09:00] Nhưng nó phải đền tội trong hôm nay vì cuộc sống không ưu ái một ai\n[02:11:00] Don\'t let them run though\n[02:13:00] Đừng để nó chạy lỡ lại khổ ai thành nạn nhân\n[02:16:00] Don\'t let them run don\'t let them run don\'t let them run\n[02:19:00] Lại thêm một thằng thêm một thằng\n[02:22:00] Don\'t let them run though\n[02:24:00] Đừng để nó chạy lỡ lại khổ ai thành nạn nhân\n[02:26:00] Don\'t let them run don\'t let them run don\'t let them run\n[02:29:00] Lại thêm một thằng thêm một thằng thêm một thằng được sinh ra', 'BienGioiLongBinh.mp3'),
('BH02', 'ALB01', 'TL01', 'Đánh đổi', 1, 'Đánh đổi là phần nổi trội và ấn tượng nhất xuyên suốt album. Trong đó nổi bật là bài hát cùng tên hợp tác cùng MCK, khi Obito đã kể câu chuyện về sự lựa chọn cũng như đánh đổi ở cuộc đời này', 'alb_danhdoi.jpg', 29, '[offset:400]\n[00:01:00] If I had ten thousand tongues\n[00:03:00] I couldn\'t tell all that the Lord has done for me\n[00:07:00] So I\'ll keep on singing praise\n[00:11:00] Yeah, it\'s hard to say, gotta tell the truth\n[00:19:00] Tobie, yeah\n[00:22:00] Tao đánh đổi màn đêm yên giấc viết những bài nhạc hay nhất cuộc đời\n[00:26:00] Di sản là nguồn cảm hứng fan theo răm rắp nhạc tao thuộc lời\n[00:29:00] Trên bàn tiệc của tiên và quỷ tao là thằng duy nhất được mời\n[00:32:00] Mọi thứ đổ dồn hết vào tao như kiểu tao là một ván cược hời\n[00:35:00] Tao là đứa con của mặt trăng mang năng lượng mặt trời\n[00:38:00] Cuộc đời xoay tao như trực thăng vẫn vượt lên như thể gặp thời\n[00:41:00] Tao không vứt đi bản chất tao như mấy thằng khác để ví được lời\n[00:44:00] Nếu mày cũng mặt nặng mày nhẹ vì không đồng ý thì thôi được rồi ah\n[00:48:00] Shout out cho anh Sea lời chúc phúc bay trên bầu trời\n[00:50:00] Em mong anh hãy nói với mẹ cuộc sống con giờ đã đỡ cực rồi\n[00:53:00] Hai anh em đã đổ nước mắt nhiều câu chuyện về những người tồi\n[00:56:00] Sự đánh đổi này vẫn luôn đẹp như thể ngày xưa chơi cất nhà chồi\n[01:00:00] Fuck it wow đêm đông lạnh giữa trời Hà Nội\n[01:02:00] Flow tao chảy cùng những niềm đau như thể đang châm thêm mực vào ngòi\n[01:05:00] Chuỗi hành trình cùng nhiều câu hỏi ai là cá còn ai là mồi\n[01:08:00] Mọi thứ đều luôn có mặt tối nhưng liệu mày có sẵn sàng đánh đổi\n[01:13:00] Ngắm nhìn cả thế giới từ xa damn it\'s cold (yeah it\'s cold)\n[01:17:00] Nếu mày hỏi tao ác hay thiện man I don\'t know (I don\'t know)\n[01:19:00] Chắc đây vốn đã là cái giá cho bao lần đau\n[01:21:00] Sự đánh đổi này cho tao thấy mọi thứ đã không như ngày đầu\n[01:25:00] Ngắm nhìn cả thế giới từ xa damn, it\'s cold (damn, it\'s cold)\n[01:28:00] Nếu mày hỏi tao ác hay thiện man I don\'t know (I don\'t know)\n[01:31:00] Chắc đây vốn đã là cái giá cho bao lần đau\n[01:33:00] Sự đánh đổi này cho tao thấy mọi thứ đã không như ngày đầu\n[01:37:00] It\'s a fair trade telling all the truth\n[01:40:00] It\'s a fair trade, ain\'t no pussy in the way\n[01:43:00] It\'s a fair trade, fuck you if you fake it\n[01:46:00] It\'s a fucking fair trade, ho\n[01:51:00] I wanna know\n[01:55:00] Said, I wanna know how I feel\n[02:02:00] Wanna know how I feel\n[02:06:00] How I feel in my heart\n[02:08:00] My heart, my heart\n[02:16:00] Yeah, yeah yeah (let\'s get it)\n[02:19:00] Yeah, yeah, yeah (ho)\n[02:22:00] Tobie, youngtobie, youngtobie, youngtobie, tobie, tob\n[02:25:00] Yeah\n[02:26:00] Hai không hai mươi và tao nổi như hiện tượng nhưng không chìm vào trong đấy để rồi chết như thằng ngu\n[02:29:00] Ba năm đánh đổi để tu thân trong hoạ đời rồi biết đâu là thật giả tâm tao nhàn như tiều phu (yeah)\n[02:32:00] Đảo mắt quan sát như diều hâu đang đi lượn im lặng và cười nhếch với drama và ruồi bu\n[02:35:00] Hai không hai ba lời tao bắn như cái máy mà còn đéo trượt phát nào sự đánh đổi đó thằng cu\n[02:39:00] Trò đời quăng tao vào địa ngục cho tao biết mặt trái của whole game\n[02:42:00] Cho tao bài hit cho fame xong nó lấy đi tất cả sau bao đêm\n[02:45:00] Tao vẫn vươn từ dưới đáy đi lên bật và đòi lại bằng được no shame\n[02:48:00] Chiêm nghiệm và mài giũa thâu đêm giờ tinh khiết và óng ánh như blue gem\n[02:51:00] Không tìm thấy tao tao bận đi tu luyện câu chuyện của tao có đủ để hay như tụi mày\n[02:54:00] Tu xong dù thành tiên hay là thành quỷ vẫn ẩn khỏi radar thân vẫn đóng lớp bụi dày\n[02:57:00] Rất nhiều thằng trẻ là trường hợp giống như tao nhưng bị nghề này nó dập xong tâm lý ở dưới đáy\n[03:00:00] Tao thoát được tệ nạn thoát được cảnh vung dao tao đánh đổi tất cả để chân chạy đến được đây hoes (ya)\n[03:04:00] Trên cao tao biết là tao vẫn đang chính là tao khi mà chơi chán ya peace I\'m out (I\'m out)\n[03:08:00] Đôi khi rất là cô đơn tao lấy hết sự cô đơn tao lấp vào trong bank account\n[03:11:00] Như là Pacquiao Manny Pacquiao shadow box trên nền Vinahouse (Vina)\n[03:14:00] Vẫn chưa thấy thằng nào nhanh hơn tao thác đổ thác đổ flow tao dồn xuống như là K50\n[03:18:00] Ở dưới toàn núi đồi núi đồi bỏ mẹ rồi úi dồi úi dồi youngtobieedasick ya\n[03:22:00] Cẩn thận không bị cuốn vào cuốn vào anh là mỏ ối người muốn đào\n[03:26:00] Anh về rồi cúi người xuống nào\n[03:29:00] I don\'t know what the fuck they be talking about, girl\n[03:32:00] Shit crazy (what?)\n[03:34:00] It\'s crazy (what?)\n[03:36:00] Phong Ly Phong Ly Phong Ly Phong Ly\n[03:39:00] Vua Phảng Phất\n[03:40:00] Youngtobieedasick\n[03:41:00] MCK, MCK, MCK, MCK', 'Danhdoi.mp3'),
('BH03', 'ALB01', 'TL01', 'Đầu đường xó chợ', 1, 'Người có xuất phát điểm gần với tôi nhất là anh Lăng, cả hai anh em đều cùng lớn lên ở đường phố. Anh cũng là một người rất trượng nghĩa và đời hơn tôi rất nhiều. Vậy nên Đầu đường xó chợ là bài tôi quyết định mời anh cùng tham gia, vì đó là câu chuyện mà cả hai đã từng trải qua.', 'alb_danhdoi.jpg', 2, '[offset:400]\n[00:10:00] Yah\n[00:11:00] Gọi thằng anh để tránh cái án trong xóm tao hỏi mày đang đâu\n[00:14:00] Tiếng canh sòng ở bên đường đắp gấp gáp trả lời là đang show\n[00:18:00] Có thằng anh thì chấp hành tốt ra sớm nói chuyện như Đen Vâu\n[00:21:00] Trên bàn nhậu nó kể hồi đó chỉ vì vài ánh nhìn mà bem nhau\n[00:24:00] Có thằng kiếm cơm bằng xe đai lang thang nơi biên giới dù đêm thâu\n[00:27:00] Có thằng mất đi anh chị em cần bia và rượu để quên đau\n[00:30:00] Yeah tao lớn lên từ đường hẻm nơi không dễ dàng để tin nhau\n[00:33:00] Tao biết hết ngõ ngách tầng lớp thấp nơi không ai muốn vào thêm sâu\n[00:36:00] Mấy thằng trẻ còn chưa đầy hai mươi nhưng số vết nó chém nhiều hơn số tuổi\n[00:39:00] Mục tiêu chạy vệt đỏ còn đang tươi nhưng cái tôi lớn kêu nó cố đuổi\n[0:42:00] Mắt nó trừng như thể trời gầm dù nhà thờ Đức Mẹ Quan Âm\n[00:45:00] Dùng bạo lực để tạo ra luật quyền lực là thứ mà nó quan tâm\n[00:48:00] Đời tẩy chay vì nó dính án đối với tao tụi nó là bạn\n[00:51:00] Tao thấy được lí do nó làm đằng sau câu chuyện mà nó dính dáng (yeah I know)\n[00:54:00] Xưa nó vẫn cùng tao đến trường thầy cô khen tương lai nó sáng\n[00:58:00] Nhưng tất cả mọi thứ thay đổi chỉ vì một lần nó đeo khăn tang\n[01:01:00] Thằng tốt tính nhưng ba mẹ mất sớm vì chất kích thích nên phải vào đời\n[01:04:00] Thằng thì anh em ngã xuống vì dao kiếm hận thù nên lao đầu vào cuộc chơi\n[01:07:00] Thằng bị ăn hiếp ám ảnh từ nhỏ nên thích vung đấm để không thành trò cười\n[01:10:00] Thằng thì đỏ đen bán gia bại sản cha mẹ từ mặt nên thành bụi đời\n[01:13:00] Thằng thì tâm lý tan nát vì tội mỗi đêm dằn vặt đọc kinh xám hối\n[01:16:00] Thằng thì vẫn chưa nhìn thấy được ngày ra vì một phút bốc đồng để cảm xúc lên ngôi\n[01:19:00] Thằng thì vốn không còn lựa chọn nào đành bước chân vào để được tồn tại\n[01:22:00] Thằng thì chỉ mong tìm lại được yên bình như những ngày bé để không chọn sai\n[01:25:00] Gọi thằng anh để tránh cái án trong xóm tao hỏi mày đang đâu\n[01:28:00] Tiếng canh sòng ở bên đường đắp gấp gáp trả lời là đang show\n[01:31:00] Có thằng anh thì chấp hành tốt ra sớm nói chuyện như Đen Vâu\n[01:34:00] Trên bàn nhậu nó kể hồi đó chỉ vì vài ánh nhìn mà bem nhau\n[01:38:00] Có thằng kiếm cơm bằng xe đai lang thang nơi biên giới dù đêm thâu\n[01:41:00] Có thằng mất đi anh chị em cần bia và rượu để quên đau\n[01:44:00] Yeah tao lớn lên từ đường hẻm nơi không dễ dàng để tin nhau\n[01:47:00] Tao biết hết ngõ ngách tầng lớp thấp nơi không ai muốn vào thêm sâu\n[01:50:00] Thằng thì đi tắm sông chung bầy này sẩy chân té vào tay người âm\n[01:53:00] Thằng hưởng dương trong khuôn viên trường nên nó sống mãi tuổi mười lăm\n[01:56:00] Thằng bước ra sau phiên phúc thẩm chỉ cười rồi nói là thua rồi\n[01:59:00] Thằng có tiền còn sống không thọ thì thằng thiếu thốn thường đua đòi vậy thôi\n[02:03:00] Đất chật người ngông\n[02:05:00] Cha nó lấy bạo lực làm nôi nên nó không thích sống kiếp làm công\n[02:07:00] Hai chữ gia đình xẻ làm đôi nó bỏ nhà đi bụi đời\n[02:11:00] Ra đường làm con tốt hay ra đường để làm con tốt\n[02:14:00] Thí cặp mắt này mù vì dù gì sống đếch cần nhìn trước sau\n[02:17:00] Nó chưa từng có ước ao ngoài việc thoát khỏi bản chất của một thằng ù lì\n[02:21:00] Điểm cuối cuộc đời hên xui như chơi oẳn tù xì\n[02:24:00] Cái bo cũng chỉ để gõ nếu ở đó nó được gọi là cô nhi\n[02:27:00] Nên lánh nhanh trước khi đột ngột qua đời nó không định đánh anh đâu mà là tới cắt nhượng móc ruột lột da\n[02:33:00] Anh liều một pha cho má có vốn mở sạp bán bánh canh rồi ra đầu thú theo lệnh theo lệnh triệu tập của một một ba', 'DauDuongXoCho.mp3'),
('BH05', 'ALB01', 'TL01', 'Tell the kids I love them', 1, 'Tell the kids i love them những tưởng là một bài hát ở giai đoạn đầu mà nam rapper đã đến gần hơn với khán giả, nhưng bằng cách kết hợp với lối hát phúc âm, khiến cho ca khúc có sự mạnh mẽ và mang đến được cảm giác truyền cảm hứng. Bài hát gợi nhiều đến âm nhạc của Kanye West (Ye) trong 2 album thực hiện cùng Sunday Service Choir', 'alb_danhdoi.jpg', 3, 's[offset:400]\n[00:01:00] Và liệu em có nghe tình yêu đang vụn vỡ\n[00:06:00] Và mất bao lâu để quên đi tổn thương\n[00:11:00] Dù là nhiều năm đã qua trái tim chẳng thay đổi\n[00:16:00] Và chỉ mong được bình yên sau này\n[00:21:00] Yeah và từ lần đó anh chẳng còn nhớ nhung đầy vơi\n[00:26:00] Chẳng thân quen chẳng còn đau như đã từng yeah\n[00:33:00] Life is better if you want to woh hoh no no\n[00:54:00] Nếu em nhìn thật sâu vào trong đôi mắt em có thể thấy rằng anh đang khóc\n[00:56:00] Anh cũng nhiều lần gây tội và cũng tiếc nuối vì chuyện công cốc\n[00:59:00] Anh chạy theo tiếng đường phố lặp sai và sai cứ thế lao dốc\n[01:02:00] Anh từng nghĩ rằng anh khôn cho đến khi đời bảo rằng anh ngốc\n[01:04:00] Anh vẽ ra nhiều viễn cảnh nhưng anh không làm dù nó khiến anh mê\n[01:07:00] Anh ao ước khi cần chạy thì việc anh dậm chân vẫn là thực tế\n[01:10:00] Anh nghĩ rằng nếu hung dữ thì những người khác sẽ thấy anh ghê\n[01:12:00] Nhưng đến khi được yêu thương anh lại thích thú như một thằng hề\n[01:15:00] Anh từng thích dùng bạo lực vì không thích thằng nào không tôn trọng anh\n[01:18:00] Đến khi anh hiểu được ra ai không thích mình thì chỉ việc tránh\n[01:20:00] Anh từng nói dối rất nhiều dù mấy chuyện đó không vì lợi danh\n[01:23:00] Đến khi anh hiểu được ra hậu quả để lại không phải điều lành ya\n[01:25:00] Anh không cao siêu như em nghĩ\n[01:27:00] Anh từng là em là mày từng là thằng ngu làm liều khi bí\n[01::30:00] Quan trọng là khi nhận ra hành động tiếp theo của em là gì\n[01:33:00] Vì đồng tiền vốn đang có hôm nay không thể nào mai trở thành tiền tỉ ya\n[01:37:00] Anh chỉ đơn giản là người làm nhạc\n[01:38:00] Là thằng chạy theo đam mê vì biết cố gắng là một lối thoát\n[01:41:00] Đã từng đâm đầu việc sai để biết rút ra mới là việc đúng\n[01:43:00] Nếu muốn yên bình trong ngày mai thì nay phải sống như ngày cuối cùng\n[01:46:00] Tìm một nơi để yên giấc sau tháng năm mệt nhoài\n[01:51:00] Và để tâm hồn được hoà vào lời hát no no no uh\n[01:57:00] Có thể em ao ước giống như anh\n[01:59:00] Không muốn màu sắc cuộc đời chỉ pha vỏn vẹn giữa đen và trắng\n[02:02:00] Không muốn nhìn vào trong gương vì không thích thứ mình trở thành\n[02:04:00] Nhưng tất cả những cơn giông đó giúp em trân trọng hơn khi bầu trời xanh yeah\n[02:08:00] Anh cảm ơn nếu mắt em sáng\n[02:10:00] Cảm ơn từng stream bài nhạc khán giả nghe khi anh còn làm\n[2:12:00] Trái tim anh vẫn nơi đây không hề âm mưu hay sinh ra kế\n[02:15:00] Anh chỉ là một bằng chứng sống chứng minh câu nói không gì là không thể\n[02:19:00] Em không cần cố để được như anh\n[02:20:00] Mỗi cây mỗi lá mỗi cành mỗi người mỗi chuyện mỗi nhà mỗi cảnh\n[02:23:00] Em chỉ cần là chính em chạy theo tương lai em muốn trở thành\n[02:26:00] Dù đường đời em trải nhiều màu thì cũng chỉ tô đẹp thêm cho một bức tranh\n[02:28:00] Hãy lắng nghe những gì em muốn để thời gian sửa những điều em sai\n[02:31:00] Vì cuộc đời không hề gắt gỏng với những đứa con đang muốn làm lại\n[02:33:00] Hãy sống thật là hạnh phúc đưa bản thân đến một nơi cao\n[02:36:00] Bài này vẫn sẽ mãi ở đây để luôn nhắc nhở em là một ngôi sao\n[03:01:00] We pray to thee our God this day\n[03:03:00] For the blessings you provide\n[03:07:00] But from ashes to ashes and from dust to dust so it must be\n[03:12:00] But keep this woman oh king of kings beneath thy almighty wings\n[03:19:00] And the comfort at times like these\n[03:23:00] Còn bao nhiêu đớn đau anh sẽ nhận về khi trái tim vẫn còn nhịp thở\n[03:34:00] Hằng đêm anh chắp tay xin nguyện cầu mỗi bước chân sẽ luôn yên bình', 'Tell_The_Kids_I_Love_Them.mp3'),
('BH06', 'ALB01', 'TL01', 'Trốn chạy', 1, 'Thời điểm lên Sài Gòn sống, tôi 16 tuổi. Cuộc sống xáo động của tuổi trẻ diễn ra trước đó, còn năm 16 tuổi lại mang đến một biến cố khác lớn hơn rất nhiều về gia đình. Tôi náu mình trong âm nhạc để nó giúp tôi chạy trốn khỏi những vấn đề của thực tại. Cho đến lúc tôi bừng tỉnh và nhận ra, dù mình đang chạy trốn nhưng mọi vấn đề vẫn đang nằm ở đấy chứ chưa hề được giải quyết.', 'alb_danhdoi.jpg', 1, '[offset:400]\n[00:14:00] Đầu óc tao đang nặng trịch đi \n[00:15:00] Nếu mà ngay từ đầu mày chỉ muốn lợi dụng tao sao con phò mày không nói mẹ vậy đi \n[00:20:00] Làm ra vẻ ai cũng muốn làm hại mày cho tao hỏi mày làm vậy để chi \n[00:23:00] Nước mắt cá sấu để chi \n[00:26:00] Hay vì sợ cuộc đời mày dễ bí\n[00:28:00] Hay trên đời mày không còn ai để thí \n[00:29:00] Nội tao tim yếu rồi đêm đau\n[00:32:00] Số mà tao kiếm được tao mong gửi về cho gia đình bao nhiêu thành phố nhiêu đêm thâu \n[00:35:00] Chạy show cho một đống để tâm lý rơi vào sự vô định lời mày nói đéo đúng với sự thật \n[00:38:00] Cơm mày ăn đéo phải là của mày \n[00:40:00] Vấn đề trong đời tao đủ chật và tao nghĩ mặt mày cũng đủ dày\n[00:44:00] Ya tất cả thứ thuộc về tao đáng ra có thể giúp cho ba mẹ tao bớt cực và bớt khóc \n[00:48:00] Tất cả thứ thuộc về tao đáng ra có thể mua cho thằng em tao tuổi thơ không cực nhọc \n[00:52:00] Tất cả thứ thuộc về tao đáng ra có thể làm cho gia đình tao thoát khỏi nơi chết chóc \n[00:55:00] Tất cả thứ thuộc về tao đều đang nằm trong túi mày tao phải nghĩ cách tồn tại đến nát óc\n[00:59:00] Cũng là giá tao phải trả cho hào quang, Giá tao phải trả vì ngu dốt\n[1:04:00] Giá tao phải trả vì những thứ tao không hiểu nhưng lại đi đặt niềm tin nơi không tốt (stupid)\n[01:07:00] Tâm lý bị xé nát nơi quận hai sức khoẻ bị vắt kiệt đến hết sức\n[01:11:00] Khoá miệng tao không tin một ai và có cả suy nghĩ cần nhảy xuống để kết thúc\n[01:14:00] Chân cứ lê bước đi trong màn đêm cố tìm lại bản thân tao từng nên \n[01:18:00] Rượu gái chất cấm trong hộp đêm trốn chạy những cảm xúc đang ập đến \n[01:22:00] Sự tự tin tao luôn có mất đi ánh nắng trong nụ cười tao mất đi \n[01:25:00] Ngây thơ trong người tao mất đi cảm xúc cho âm nhạc cũng mất đi\n[01:29:00] Ya đầu óc tao đang nặng trịch đi\n[01:31:00] Nếu mà ngay từ đầu mày chỉ muốn lợi dụng tao sao con phò mày không nói mẹ vậy đi \n[01:35:00] Làm ra vẻ ai cũng muốn làm hại mày cho tao hỏi mày làm vậy để chi \n[01:39:00] Nước mắt cá sấu để chi, hay vì sợ cuộc đời mày dễ bí, hay trên đời mày không còn ai để thí \n[01:44:00] Nội tao tim yếu rồi đêm đau,Số mà tao kiếm được tao mong gửi về cho gia đình\n[01:48:00] Bao nhiêu thành phố nhiêu đêm thâu, Chạy show cho một đống để tâm lý rơi vào sự vô định\n[01:52:00] Lời mày nói đéo đúng với sự thật, Cơm mày ăn đéo phải là của mày\n[01:56:00] Vấn đề trong đời tao đủ chật và tao nghĩ mặt mày cũng đủ dày\n[01:59:00] Nên tao phải trốn chạy trốn chạy trốn chạy trốn chạy giữ tất cả mọi thứ cho riêng tao\n[02:04:00] Nên tao phải trốn chạy trốn chạy trốn chạy trốn chạy mong một giấc thật ngon trong chiêm bao\n[02:07:00] Nên tao phải trốn chạy trốn chạy trốn chạy trốn chạy thêm thuốc vào cho quên đau\n[02:11:00] Nên tao phải trốn chạy trốn chạy trốn chạy trốn chạy nỗi niềm này tao phải nuốt ngược vào\n[02:15:00] Nên tao phải trốn chạy trốn chạy trốn chạy trốn chạy trốn chạy trốn\n[02:19:00] Nên tao phải trốn chạy trốn chạy trốn chạy trốn chạy trốn chạy trốn\n[02:23:00] Nên tao phải trốn nên tao phải trốn yeah', 'TronChay.mp3'),
('BH07', 'ALB01', 'TL01', 'Vô điều kiện', 1, 'Vô điều kiện', 'alb_danhdoi.jpg', 2, '[offset:400]\n[00:27:00] Khi mà ngây thơ không còn nguyên, thì tìm đâu ra bình yên\n[00:30:00] Nốc thêm viên để xua cơn noid, chân đi tìm sự vô điều kiện\n[00:34:00] Thấy được nhiều thứ cần kiêng, cố gắng cho đến lúc nằm yên\n[00:37:00] Không mở lòng một cách tuỳ tiện, không để thứ không đáng làm phiền\n[00:41:00] Nhớ lại những lúc mà còn nhỏ, thế giới này thật đẹp\n[00:45:00] Việc cho, việc nhận, vốn không cần phải ghi chép\n[00:48:00] Cho đi vì mình yêu, nhận lại dù không đòi, trao ai cũng như vậy\n[00:51:00] Không biết thế nào xấu, thế nào là cao đẹp, đơn giản là tình yêu thuần khiết\n[00:55:00] Hay tại tao lớn quá nhanh, tâm hồn đang héo mòn dần\n[00:58:00] Đã từ bao giờ khi con tim và lý trí chia hai, rồi không còn thân\n[01:02:00] Đã từ bao giờ tao đa nghi với mọi thứ, niềm vui kia không còn cần\n[01:05:00] Đã từ bao giờ tao lại trở nên khô cằn đến như này, nụ cười kia không còn phần\n[01:08:00] Hay là tại tao, tại mày, tại đời, Tao cũng không biết\n[01:15:00] Hay là tại tao, tại mày, tại đời?\n[01:22:00] Ah, sự vô điều kiện từng trong tao, nay lại thành có điều kiện\n[01:26:00] Tao cần điều kiện để có thể gặp một người, Có thể đặt niềm tin vào một người\n[01:29:00] Có thể làm việc cùng một người, Có thể chia sẻ cho một người, Và có thể để đi cùng với một người\n[01:35:00] Hay là tại tao, tại mày, tại đời, Tao cũng không biết\n[01:44:00] Hay là tại tao, tại mày, tại đời, Tao cũng không biết\n[01:49:00] Khi mà ngây thơ không còn nguyên, thì tìm đâu ra bình yên\n[01:53:00] Nốc thêm viên để xua cơn noid, chân đi tìm sự vô điều kiện\n[01:56:00] Thấy được nhiều thứ cần kiêng, cố gắng cho đến lúc nằm yên\n[02:00:00] Không mở lòng một cách tuỳ tiện, không để thứ không đáng làm phiền', 'VoDieuKien.mp3'),
('BH08', 'ALB01', 'TL01', 'Xuất phát điểm', 1, 'Xuất phát điểm, tôi có một tuổi thơ rất đẹp. Tôi được thừa hưởng những gì còn sót lại của thế hệ 9x, với âm nhạc và những trò chơi dân gian. Đấy cũng là lúc tôi bắt đầu lớn và bước vào một tuổi trẻ ngông cuồng. Quê tôi ở Châu Đốc - An Giang, gần biên giới Campuchia, thế nên những hoạt động của dân anh chị xã hội diễn ra rất nhiều. Bạn bè của tôi toàn những người dân anh chị, vậy nên tôi bị ảnh hưởng bởi môi trường đó rất nhiều.Thích ra oai, gây sự, đánh nhau lấy tiếng', 'alb_danhdoi.jpg', 3, '[offset:400]\n[00:30:00] Đã có những lúc tao thầm nghĩ ánh sáng trên cuộc đời này nhiều hơn mây đen\n[00:34:00] Cứ thế đứa nhóc và cuộc sống đứng giữa bao bộn bề, tình yêu được xây nên\n[00:37:00] Trang giấy chưa có gạch đầu dòng, không thứ gì khiến tao phiền lòng\n[00:41:00] Chỉ có niềm vui, ngày qua ngày trôi, ngày đứa nhóc trong tim vẫn đang sống\n\n[00:45:00] Anh nhìn cả bầu trời bằng màu xanh, bồi hồi vì thấy nó thật đẹp\n[00:48:00] Anh ôm hết mọi thứ vào lòng anh, cảm giác không lo đó thật tuyệt\n[00:52:00] Ngày mà anh khóc chỉ vì sợ bị ba đánh khi đi chơi, không phải thi thố với cuộc đời\n[00:56:00] Ngày mà anh cười chỉ vì vài cuộc nói xàm, ngày chỉ là trò chơi chứ không phải là cuộc chơi\n[01:00:00] Anh chả phải lo gì công việc, chỉ chơi ăn ngủ rồi học\n[01:03:00] Mỗi khi tan học là xong việc, cùng anh em trong xóm tụ tập\n[01:07:00] Ngày mà anh chỉ là đứa nhỏ trong thành phố chơi bắt rượt mỗi khi trời đang ngã chiều ở trong khu\n[01:11:00] Ngày mà bạn anh là những đứa con nít sống trong hẻm cứ tầm 4 giờ chiều là đông đủ\n[01:15:00] Chẳng phải bối rối, chẳng phải tức tối, con tim anh luôn tràn đầy\n[01:18:00] Niềm vui với sức sống, lúc nào cũng chất đống, luôn ở bên anh hằng ngày\n[01:22:00] Ngày chỉ có nụ cười tươi không bao giờ dập tắt\n[01:25:00] Ngày chỉ có nụ cười tươi\n[01:29:00] Ngày mà tình yêu có hay không đều được, ngày mà con hẻm anh đang sống là niềm vui\n[01:33:00] Ngày những bài nhạc của Khánh Phương anh đều thuộc, ngày cố mà để dành khi ba mẹ cho tiền túi\n[01:37:00] Ngày mà Karik và Wowy, Khu tao sống, Chạy, Bay thật xa, nhẩm lời bài miệng bi bô\n[01:41:00] Ngày mà MV là kiểu băng nhóm thanh toán vì một đứa con gái như Shady và Kyo\n\n[01:44:00] Woah woah woah tất cả khoảnh khắc đó thật đẹp\n[01:48:00] Xuất phát điểm đó thật đẹp\n[01:50:00] Tâm hồn anh lúc đó nó thật đẹp\n[01:52:00] Woah yeah tất cả khoảnh khắc đó thật đẹp\n[01:55:00] Xuất phát điểm đó thật đẹp\n[01:57:00] Tâm hồn anh lúc đó nó thật đẹp\n\n[01:59:00] Anh vui cuộc đời anh mặc ba mẹ hay can ngăn\n[02:02:00] Mặc cho những lần anh bị cấm ra khỏi nhà, anh vẫn leo rào chạy ra sân\n[02:06:00] Anh vui cuộc đời anh dù nhiều ánh nhìn như đang khinh anh\n[02:10:00] Hay nói anh là thứ mà con họ phải tránh xa vì thành phần anh tiếp xúc mang hơi tanh\n[02:14:00] Anh vẫn là anh, miễn là anh vui anh mặc kệ\n[01:17:00] Anh vẫn lang thang nơi đường phố cùng rất nhiều anh em, đôi khi anh quên cả đường về\n[02:21:00] Anh bắt đầu thích cuộc sống xã hội, anh tin vào bạo lực để đổi về sự kính nể\n[02:25:00] Anh bắt đầu để ý những chi tiết trong bóng tối cho đến khi nhận ra anh đang là thằng hề\n\n[02:29:00] Woah woah woah tất cả khoảnh khắc đó thật đẹp\n[02:32:00] Xuất phát điểm đó thật đẹp\n[02:34:00] Tâm hồn anh lúc đó nó thật đẹp\n[02:36:00] Yeah woah tất cả khoảnh khắc đó thật đẹp\n[02:40:00] Xuất phát điểm đó thật đẹp\n[02:41:00] Tâm hồn anh lúc đó nó thật đẹp', 'XuatPhatDiem.mp3'),
('BH09', 'ALB01', 'TL01', 'Sài gòn ơi', 1, 'Thời điểm lên Sài Gòn sống, tôi 16 tuổi. Cuộc sống xáo động của tuổi trẻ diễn ra trước đó, còn năm 16 tuổi lại mang đến một biến cố khác lớn hơn rất nhiều về gia đình. Tôi náu mình trong âm nhạc để nó giúp tôi chạy trốn khỏi những vấn đề của thực tại. Cho đến lúc tôi bừng tỉnh và nhận ra, dù mình đang chạy trốn nhưng mọi vấn đề vẫn đang nằm ở đấy chứ chưa hề được giải quyết.', 'alb_danhdoi.jpg', 4, '[offset:400]\n[00:17:00] Huh, Sài Gòn ơi, huh, Sài Gòn ơi\n[00:21:00] Sao em lại đối với anh như này? (Huh-uh-uh-uhh)\n[0026:00] Huh, Sài Gòn ơi, huh, Sài Gòn ơi\n[00:29:00] Sao em lại đối với anh?\n[00:34:00] Tim anh nóng lòng gặp nàng, để cảm xúc lên từng nhịp\n[00:38:00] Nơi quá khứ anh không vui, hạnh phúc mắt anh không nhìn kịp\n[00:42:00] Anh pack hết đồ, nhìn thật lâu bồi hồi trên chuyến xe trong đêm\n[00:47:00] Mắt sáng như sao, vì được nghe thật nhiều điều vui khi bên em\n[00:52:00] Trò chơi em thích đánh đố phố sáng khi em lên đồ\n[00:56:00] Vì tương lai nên anh cũng cố dù em khiến anh đôi khi hơi rồ\n[01:00:00] Và giá như, giá như, giá như\n[01:09:00] Và giá như, giá như, giá như, giá như anh hiểu được em\n[01:19:00] Huh, Sài Gòn ơi, huh, Sài Gòn ơi\n[01:22:00] Sao em lại đối với anh như này? (Sao? Sao? Sao?)\n[01:28:00] Huh, Sài Gòn ơi, huh, Sài Gòn ơi\n[01:31:00] Sao em lại đối với anh như này?\n[01:36:00] Tưởng chừng như dài lâu, như dài lâu, như dài lâu\n[01:41:00] Tưởng như yêu đậm sâu, yêu đậm sâu, yêu đậm sâu\n[01:45:00] Tưởng như ta hợp nhau, ta hợp nhau\n[01:49:00] Giờ còn chẳng nói với nhau một câu (oh-woah)\n[01:53:00] Em dắt anh đi gặp nhiều người, dù họ không tốt với anh\n[01:58:00] Họ khiến anh rơi giữa dòng đời, màn đêm đang kéo tới nhanh\n[02:02:00] Và rồi em đâu, tình mình thêm đau\n[02:06:00] Tại sao em nỡ vô tâm để vỡ trái tim người yêu em nhiều nhất?\n[02:11:00] Ooh, oh baby à, baby\n[02:15:00] Rồi người ta cũng sẽ bỏ em đi khi mọi thứ đã đủ đầy\n[01:19:00] Chỉ mình em với những khoảng không cô đơn ừ thì anh vẫn thương em\n[02:23:00] Nhưng làm sao để quay về, ngày tình mình như hôm nào\n[02:28:00] Ohh-ooh-oh-oh, oh-oh\n[02:34:00] Ohh-ooh-oh-oh, oh-oh\n[02:38:00] Ohh-ooh, ooh-oh, ooh-oh\n[02:42:00] Ohh, giá như anh hiểu được em', 'SaiGonOi.mp3'),
('BH10', 'ALB02', 'TL02', 'Animals', 1, 'Nó được phát hành vào ngày 25 tháng 8 năm 2014, là đĩa đơn thứ hai trong album phòng thu thứ năm của ban nhạc V (2014). Bài hát được viết bởi Adam Levine, Benny Blanco và nhà sản xuất Shellback. Bài hát đạt vị trí thứ ba trên bảng xếp hạng Billboard Hot 100 của Mỹ, mang lại cho Maroon 5 đĩa đơn thứ 10 lọt vào top 10 tại Mỹ', 'bh_animals.jpg', 73, '[offset:400]\n[00:00.53] Baby, I\'m preying on you tonight\n[00:03.02] Hunt you down, eat you alive\n[00:05.57] Just like animals, animals\n[00:08.29] Like animals-mals\n[00:10.50] Maybe you think that you can hide\n[00:13.11] I can smell your scent for miles\n[00:15.62] Just like animals, animals\n[00:18.52] Like animals-mals, baby, I\'m...\n[00:22.00] So, what you trying to do to me?\n[00:24.29] It\'s like we can\'t stop, we\'re enemies\n[00:26.96] But we get along when I\'m inside you, yeah\n[00:32.26] You\'re like a drug that\'s killing me\n[00:34.14] I cut you out entirely\n[00:37.12] But I get so high when I\'m inside you\n[00:40.77] Yeah, you can start over, you can run free\n[00:43.41] You can find other fish in the sea\n[00:45.82] You can pretend it\'s meant to be\n[00:48.34] But you can\'t stay away from me\n[00:51.04] I can still hear you making that sound\n[00:53.51] Taking me down, rolling on the ground\n[00:56.05] You can pretend that it was me, but no, oh\n[01:01.28] Baby, I\'m preying on you tonight\n[01:03.63] Hunt you down, eat you alive\n[01:06.26] Just like animals, animals\n[01:08.95] Like animals-mals\n[01:11.09] Maybe you think that you can hide\n[01:13.62] I can smell your scent for miles\n[01:16.26] Just like animals, animals\n[01:19.27] Like animals-mals, baby, I\'m...\n[01:22.75] So, if I run, it\'s not enough\n[01:24.96] You\'re still in my head, forever stuck\n[01:27.70] So you can do what you wanna do, yeah\n[01:32.97] I love your lies, I\'ll eat \'em up\n[01:34.83] But don\'t deny the animal\n[01:37.80] That comes alive when I\'m inside you\n[01:40.97] Yeah, you can start over, you can run free\n[01:43.95] You can find other fish in the sea\n[01:46.42] You can pretend it\'s meant to be\n[01:48.90] But you can\'t stay away from me\n[01:51.65] I can still hear you making that sound\n[01:54.11] Taking me down, rolling on the ground\n[01:56.67] You can pretend that it was me, but no, oh!\n[02:01.81] Baby, I\'m preying on you tonight\n[02:04.26] Hunt you down, eat you alive\n[02:06.78] Just like animals, animals\n[02:09.59] Like animals-mals\n[02:11.97] Maybe you think that you can hide (yeah)\n[02:14.11] I can smell your scent for miles\n[02:16.73] Just like animals, animals\n[02:19.82] Like animals-mals, baby, I\'m...\n[02:22.81] Don\'t tell no lie, lie, lie, lie\n[02:25.38] You can\'t deny-ny-ny-ny\n[02:27.80] The beast inside, si-si-side\n[02:31.15] Yeah, yeah, yeah\n[02:33.05] No, girl, don\'t lie, lie, lie, lie (no, oh-oh)\n[02:35.55] You can\'t deny-ny-ny-ny (you can\'t deny)\n[02:38.05] The beast inside, si-si-side\n[02:41.08] Yeah, yeah, yeah\n[02:44.92] Yo-oh, oh\n[02:47.32] Whoa-oh, oh-oh\n[02:50.13] Whoa-oh, oh-oh-oh\n[02:52.28] Just like animals, animals\n[02:55.03] Like animals-mals\n[02:57.20] Just like animals (yeah), animals (yeah)\n[03:00.22] Like animals-mals (yeah)\n[03:03.83] Ah-ooh!\n[03:04.98] Baby, I\'m preying on you tonight\n[03:07.37] Hunt you down, eat you alive\n[03:09.85] Just like animals (yeah), animals (oh)\n[03:12.89] Like animals-mals (oh-oh)\n[03:14.93] Maybe you think that you can hide\n[03:17.57] I can smell your scent for miles (for miles)\n[03:20.06] Just like animals (yeah), animals (yeah)\n[03:23.05] Like animals-mals (oh), baby, I\'m...\n[03:26.03] Don\'t tell no lie, lie, lie, lie\n[03:28.55] You can\'t deny-ny-ny-ny (oh-oh, oh, oh)\n[03:31.04] The beast inside, si-si-side\n[03:34.30] Yeah, yeah, yeah\n[03:36.16] No, girl, don\'t lie, lie, lie, lie (no, no, don\'t lie)\n[03:38.67] You can\'t deny-ny-ny-ny (you can\'t deny)\n[03:41.11] The beast inside, si-si-side\n[03:44.38] Yeah, yeah, yeah\n[03:46.28] ~~~', 'Animals.mp3'),
('BH11', 'ALB02', 'TL02', 'Daylight', 1, '\"Daylight\" là bài hát do ban nhạc Mỹ Maroon 5 thể hiện. Bài hát được phát hành vào ngày 8 tháng 11 năm 2012, là đĩa đơn thứ ba trong album phòng thu thứ tư Overexposes (2012) của họ. Ca sĩ chính, Adam Levine đồng sáng tác và đồng sản xuất với Max Martin và Mason \"MdL\" Levy, với phần viết thêm của Sam Martin. Bài hát là một bản ballad soft rock kể về việc nhận ra rằng người ta phải bước tiếp từ một mối quan hệ cũ nhưng vẫn chưa hoàn toàn muốn rời xa.', 'Maroon_5_Daylight.jpg', 38, '[offset:400]\n[00:00.00] Maroon 5 ~ Daylight\n[00:00.73] Here I am waiting, I\'ll have to leave soon\n[00:04.71] Why am I holding on?\n[00:09.03] We knew this day would come, we knew it all along\n[00:12.74] How did it come so fast?\n[00:15.90] This is our last night but it\'s late\n[00:21.84] And I\'m trying not to sleep\n[00:25.86] \'Cause I know, when I wake\n[00:29.82] I will have to slip away\n[00:35.71] And when the daylight comes I\'ll have to go\n[00:39.84] But tonight I\'m gonna hold you so close\n[00:43.67] \'Cause in the daylight we\'ll be on our own\n[00:47.87] But tonight I need to hold you so close\n[00:52.09] Ooh whoa, ooh whoa, ooh whoa\n[01:00.22] Ooh whoa, ooh whoa, ooh whoa\n[01:08.74] Here I am staring at your perfection\n[01:12.77] In my arms, so beautiful\n[01:16.91] The sky is getting bright, the stars are burning out\n[01:20.71] Somebody slow it down\n[01:23.90] This is way too hard\n[01:27.91] \'Cause I know, when the sun comes up\n[01:31.87] I will leave, this is my last glance\n[01:37.76] That will soon be memory\n[01:41.73] And when the daylight comes I\'ll have to go\n[01:45.82] But tonight I\'m gonna hold you so close\n[01:49.67] \'Cause in the daylight we\'ll be on our own\n[01:53.98] But tonight I need to hold you so close\n[01:58.11] Ooh whoa, ooh whoa, ooh whoa\n[02:06.17] Ooh whoa, ooh whoa, ooh whoa\n[02:15.00] I never wanted to stop\n[02:16.99] Because I don\'t wanna start all over, start all over\n[02:23.02] I was afraid of the dark\n[02:24.93] But now it\'s all that I want, all that I want, all that I want\n[02:33.46] And when the daylight comes I\'ll have to go\n[02:37.87] But tonight I\'m gonna hold you so close\n[02:41.72] \'Cause in the daylight we\'ll be on our own\n[02:45.88] But tonight I need to hold you so close\n[02:49.71] And when the daylight comes I\'ll have to go\n[02:53.87] But tonight I\'m gonna hold you so close\n[02:57.66] \'Cause in the daylight we\'ll be on our own\n[03:01.95] But tonight I need to hold you so close\n[03:06.16] Ooh whoa, ooh whoa, ooh whoa\n[03:14.19] Ooh whoa, ooh whoa, ooh whoa\n[03:22.18] Ooh whoa (yeah), ooh whoa (yeah), ooh whoa (yeah)\n[03:30.28] Ooh whoa (yeah), ooh whoa (yeah), ooh whoa\n', 'Daylight.mp3'),
('BH12', 'ALB03', 'TL01', 'Espresso', 1, '\"Espresso\" là một bài hát của ca sĩ kiêm nhạc sĩ người Mỹ Sabrina Carpenter. Nó được phát hành vào ngày 11 tháng 4 năm 2024, thông qua Island Records, là đĩa đơn chính trong album phòng thu thứ sáu sắp tới của cô, Short n \'Sweet (2024). Cô ấy đã viết bài hát cùng với Amy Allen, Steph Jones và Julian Bunetta, và sau này phụ trách sản xuất. Một video âm nhạc do Dave Meyers đạo diễn cho \"Espresso\" đã được phát hành vào ngày hôm sau. Để hỗ trợ việc phát hành, Carpenter đã biểu diễn bài hát tại Lễ hội Âm nhạc và Nghệ thuật Thung lũng Coachella năm 2024.', 'Espresso_-_Sabrina_Carpenter.png', 14, '[offset:400]\n[00:08.66] Now he\'s thinkin\' \'bout me every night, oh\n[00:12.25] Is it that sweet? I guess so\n[00:14.35] Say you can\'t sleep, baby, I know\n[00:16.70] That\'s that me, espresso\n[00:19.06] Move it up, down, left, right, oh\n[00:21.40] Switch it up like Nintendo\n[00:23.79] Say you can\'t sleep, baby, I know\n[00:26.26] That\'s that me, espresso\n[00:28.68] I can\'t relate to desperation\n[00:33.37] My \'give a fucks\' are on vacation\n[00:38.12] And I got this one boy\n[00:40.12] And he won\'t stop calling\n[00:42.57] When they act this way\n[00:44.56] I know I got \'em\n[00:46.34] Too bad your ex don\'t do it for ya\n[00:48.76] Walked in and dream came trued it for ya\n[00:51.01] Soft skin and I perfumed it for ya\n[00:55.76] I know I Mountain Dew it for ya\n[00:58.18] That morning coffee, brewed it for ya\n[01:00.56] One touch and I brand newed it for ya\n[01:04.15] Now he\'s thinkin\' \'bout me every night, oh\n[01:07.73] Is it that sweet? I guess so\n[01:10.04] Say you can\'t sleep, baby, I know\n[01:12.30] That\'s that me, espresso\n[01:14.48] Move it up, down, left, right, oh\n[01:16.84] Switch it up like Nintendo\n[01:19.19] Say you can\'t sleep, baby, I know\n[01:21.53] That\'s that me, espresso\n[01:24.28] (Holy shit)\n[01:26.02] Is it that sweet? I guess so\n[01:28.46] I\'m working late \'cause I\'m a singer\n[01:33.35] Oh, he looks so cute wrapped around my finger\n[01:37.86] My twisted humor, make him laugh so often\n[01:42.52] My honey bee, come and get this pollen\n[01:46.45] Too bad your ex don\'t do it for ya\n[01:48.73] Walked in and dream came trued it for ya\n[01:51.12] Soft skin and I perfumed it for ya\n[01:55.84] I know I Mountain Dew it for ya\n[01:57.90] That morning coffee, brewed it for ya\n[02:00.50] One touch and I brand newed it for ya\n[02:04.21] Now he\'s thinkin\' \'bout me every night, oh\n[02:07.52] Is it that sweet? I guess so\n[02:09.63] Say you can\'t sleep, baby, I know\n[02:12.09] That\'s that me, espresso\n[02:14.48] Move it up, down, left, right, oh\n[02:16.77] Switch it up like Nintendo\n[02:19.05] Say you can\'t sleep, baby, I know\n[02:21.30] That\'s that me, espresso\n[02:23.64] He\'s thinkin\' \'bout me every night, oh\n[02:25.95] Is it that sweet? I guess so\n[02:28.36] Say you can\'t sleep, baby, I know\n[02:30.49] That\'s that me, espresso\n[02:32.78] Move it up, down, left, right, oh\n[02:35.20] Switch it up like Nintendo\n[02:37.69] Say you can\'t sleep, baby, I know\n[02:39.96] That\'s that me, espresso\n[02:44.34] Is it that sweet? I guess so\n[02:49.19] That\'s that me, espresso', 'Espresso.mp3'),
('BH14', 'ALB02', 'TL02', 'Maps', 1, '\"Maps\" là một bài hát của ban nhạc pop-rock người Mỹ Maroon 5. Bài hát được phát hành vào ngày 16 tháng 6 năm 2014,[1] [2] là đĩa đơn chính trong album phòng thu thứ năm V (2014) của họ. Bài hát được viết bởi Adam Levine, Ammar Malik, Benjamin Levin, Noel Zancanella và Ryan Tedder và do ba người sau sản xuất. Đây cũng là đĩa đơn đầu tiên của họ sau sự trở lại của tay keyboard và tay guitar nhịp điệu Jesse Carmichael. \"Maps\" chủ yếu nhận được đánh giá tích cực từ các nhà phê bình âm nhạc, với lời khen ngợi dành cho giai điệu và cảm giác thư thái của bài hát. Tuy nhiên, một số người chỉ trích bài hát này giống với đĩa đơn chính trước đó \"Payphone\", trong album cuối cùng Overexposes (2012) của họ.', 'Maroon_5_Maps_cover.png', 23, '[offset:400]\n[00:00.31] I miss the taste of a sweeter life\n[00:04.24] I miss the conversation\n[00:08.28] I\'m searching for a song tonight\n[00:12.50] I\'m changing all of the stations\n[00:16.48] I like to think that we had it all\n[00:20.39] We drew a map to a better place\n[00:24.35] But on that road, I took a fall\n[00:28.34] Oh baby, why did you run away?\n[00:31.29] I was there for you in your darkest times\n[00:35.44] I was there for you in your darkest night\n[00:39.31] But I wonder, where were you?\n[00:41.89] When I was at my worst down on my knees\n[00:45.85] And you said you had my back\n[00:47.32] So I wonder, where were you?\n[00:49.62] When all the roads you took came back to me\n[00:53.44] So I\'m following the map that leads to you\n[00:56.68] The map that leads to you\n[00:58.94] Ain\'t nothing I can do\n[01:00.88] The map that leads to you\n[01:02.14] Following, following, following to you\n[01:05.04] The map that leads to you\n[01:06.89] Ain\'t nothing I can do\n[01:08.90] The map that leads to you\n[01:10.55] Following, following, following\n[01:12.34] I hear your voice in my sleep at night\n[01:16.41] Hard to resist temptation\n[01:20.23] \'Cause something strange has come over me\n[01:23.46] Now, I can\'t get over you\n[01:27.35] No, I just can\'t get over you\n[01:31.35] I was there for you in your darkest times\n[01:35.50] I was there for you in your darkest night\n[01:39.46] But I wonder, where were you?\n[01:41.80] When I was at my worst down on my knees\n[01:45.99] And you said you had my back\n[01:47.26] So I wonder, where were you?\n[01:49.68] When all the roads you took came back to me\n[01:53.57] So I\'m following the map that leads to you\n[01:56.72] The map that leads to you\n[01:58.92] Ain\'t nothing I can do\n[02:00.87] The map that leads to you\n[02:02.26] Following, following, following to you\n[02:04.64] The map that leads to you\n[02:06.96] Ain\'t nothing I can do\n[02:08.71] The map that leads to you\n[02:11.27] Oh, oh, oh, ah\n[02:13.28] Oh, oh, oh, ah\n[02:15.46] Ye, ye, ye, ah\n[02:17.35] Ah, ah, mmh, ah\n[02:19.23] Oh, I was there for you\n[02:21.34] Oh, in your darkest times\n[02:23.50] Oh, I was there for you\n[02:25.49] Oh, in your darkest night\n[02:27.24] Oh, I was there for you\n[02:29.49] Oh, in your darkest times\n[02:31.53] Oh, I was there for you\n[02:33.48] Oh, in your darkest night\n[02:35.12] But I wonder, where were you?\n[02:37.86] When I was at my worst down on my knees\n[02:41.96] And you said you had my back\n[02:43.26] So I wonder, where were you?\n[02:45.72] When all the roads you took came back to me\n[02:49.45] So I\'m following the map that leads to you\n[02:52.63] The map that leads to you\n[02:54.62] Ain\'t nothing I can do\n[02:56.94] The map that leads to you\n[02:58.40] Following, following, following to you\n[03:00.90] The map that leads to you\n[03:02.61] Ain\'t nothing I can do\n[03:05.12] The map that leads to you\n[03:06.33] Following, following, following', 'Maps.mp3'),
('BH15', 'ALB02', 'TL01', 'Memories', 1, '\"Memories\" là một bài hát của ban nhạc Mỹ Maroon 5, được phát hành thông qua 222 và Interscope Records vào ngày 20 tháng 9 năm 2019, là đĩa đơn chính trong album phòng thu thứ bảy của ban nhạc Jordi.', 'Maroon_5_-_Memories.png', 5, '[offset:400]\n[00:09.77] [Chorus]\n[00:10.66] Here\'s to the ones that we got\n[00:12.98] Cheers to the wish you were here, but you\'re not\n[00:15.97] \'Cause the drinks bring back all the memories\n[00:18.14] Of everything we\'ve been through\n[00:20.64] Toast to the ones here today\n[00:23.36] Toast to the ones that we lost on the way\n[00:26.27] \'Cause the drinks bring back all the memories\n[00:28.80] And the memories bring back, memories bring back you\n[00:32.52] [Verse 1]\n[00:32.72] There\'s a time that I remember, when I did not know no pain\n[00:37.43] When I believed in forever, and everything would stay the same\n[00:43.12] Now my heart feel like December when somebody say your name\n[00:48.36] \'Cause I can\'t reach out to call you, but I know I will one day, yeah\n[00:54.41] [Pre-Chorus]\n[00:55.05] Everybody hurts sometimes\n[00:56.94] Everybody hurts someday, ayy-ayy\n[00:59.98] But everything gon\' be alright\n[01:02.34] Go and raise a glass and say, ayy\n[01:04.65] [Chorus]\n[01:04.85] Here\'s to the ones that we got\n[01:06.92] Cheers to the wish you were here, but you\'re not\n[01:10.18] \'Cause the drinks bring back all the memories\n[01:12.38] Of everything we\'ve been through\n[01:14.68] Toast to the ones here today\n[01:17.52] Toast to the ones that we lost on the way\n[01:20.80] \'Cause the drinks bring back all the memories\n[01:23.11] And the memories bring back, memories bring back you\n[01:26.69] [Post-Chorus]\n[01:26.87] Doo-doo, doo-doo-doo-doo\n[01:29.10] Doo-doo-doo-doo, doo-doo-doo-doo\n[01:31.74] Doo-doo-doo-doo, doo-doo-doo\n[01:34.21] Memories bring back, memories bring back you\n[01:37.17] [Verse 2]\n[01:37.67] There\'s a time that I remember when I never felt so lost\n[01:42.36] When I felt all of the hatred was too powerful to stop (Ooh, yeah)\n[01:48.35] Now my heart feel like an ember and it\'s lighting up the dark\n[01:53.12] I\'ll carry these torches for ya that you know I\'ll never drop, yeah\n[01:59.20] [Pre-Chorus]\n[01:59.51] Everybody hurts sometimes\n[02:01.70] Everybody hurts someday, ayy-ayy\n[02:04.64] But everything gon\' be alright\n[02:06.97] Go and raise a glass and say, ayy\n[02:09.49] [Chorus]\n[02:09.51] Here\'s to the ones that we got (Oh-oh)\n[02:11.75] Cheers to the wish you were here, but you\'re not\n[02:14.84] \'Cause the drinks bring back all the memories\n[02:16.93] Of everything we\'ve been through (No, no)\n[02:19.60] Toast to the ones here today (Ayy)\n[02:22.20] Toast to the ones that we lost on the way\n[02:25.01] \'Cause the drinks bring back all the memories (Ayy)\n[02:27.65] And the memories bring back, memories bring back you\n[02:31.11] [Post-Chorus]\n[02:31.31] Doo-doo, doo-doo-doo-doo\n[02:33.55] Doo-doo-doo-doo, doo-doo-doo-doo\n[02:36.28] Doo-doo-doo-doo, doo-doo-doo\n[02:38.73] Memories bring back, memories bring back you\n[02:41.64] Doo-doo, doo-doo-doo-doo\n[02:44.27] Doo-doo-doo-doo, doo-doo-doo-doo\n[02:46.56] Doo-doo-doo-doo, doo-doo-doo (Ooh, yeah)\n[02:49.18] Memories bring back, memories bring back you\n[02:52.25] [Outro]\n[02:52.54] Yeah, yeah, yeah\n[02:55.89] Yeah, yeah, yeah, yeah, yeah, no, no\n[02:59.48] Memories bring back, memories bring back you', 'Memories.mp3'),
('BH16', 'ALB02', 'TL01', 'Nobody\'s Love', 1, '\"Nobody\'s Love\" là một bài hát của ban nhạc Mỹ Maroon 5, được phát hành thông qua 222 và Interscope Records vào ngày 24 tháng 7 năm 2020, là đĩa đơn thứ hai trong album phòng thu thứ bảy của ban nhạc Jordi.[1] Đây là đĩa đơn đầu tiên của họ không có tay bass Mickey Madden. Bài hát được lấy cảm hứng từ đại dịch COVID-19 và cuộc biểu tình của George Floyd.[2]', 'nobodys_love.jpg', 9, '[offset:400]\n[00:03.81] [Intro]\n[00:09.00] You could make a grown man cry\n[00:11.53] If you ever said \"Goodbye\"\n[00:14.08] Never let you go, oh, I (Never let you go, oh, I)\n[00:19.39] You could make a grown man cry\n[00:21.46] If you ever left my side\n[00:24.23] Never let you go, oh, I (Never let you go, oh, I)\n[00:29.26] [Verse 1]\n[00:29.76] You\'re the only hand in my back pocket\n[00:32.07] If you ever left, I\'d go pyschotic\n[00:34.53] Heaven, hear me cryin\', cryin\' (Ooh, ooh, ooh)\n[00:39.40] Baby, you\'re the key to my heart, lock it\n[00:42.22] If you ever left, never unlock it\n[00:44.64] Lonely like an island, island (Ooh, ooh, ooh)\n[00:48.46] [Chorus]\n[00:49.09] If my love ain\'t your love\n[00:53.17] It\'s never gonna be nobody\'s love\n[00:55.63] I\'m never gonna need nobody\'s love but yours (But yours)\n[00:59.57] If my love ain\'t your love\n[01:03.39] It\'s never gonna be nobody\'s love\n[01:05.80] Never gonna need nobody\'s touch but yours (But yours)\n[01:09.94] [Refrain]\n[01:10.48] You could make a grown man cry\n[01:12.78] If you ever said \"Goodbye\"\n[01:15.35] Never let you go, oh, I (Never let you go, oh, I)\n[01:20.78] You could make a grown man cry\n[01:22.98] If you ever left my side\n[01:25.78] Never let you go, oh, I (Never let you go, oh, I)\n[01:30.75] [Verse 2]\n[01:30.92] You\'re the only hand in my back pocket\n[01:33.27] If you ever left, I\'d go pyschotic\n[01:36.04] Heaven hear me cryin\', cryin\' (Ooh, ooh, ooh)\n[01:40.70] Hit me like a drug and I can\'t stop it\n[01:43.61] Fit me like a glove and I can\'t knock it\n[01:46.46] I ain\'t even lyin\', lyin\' (Ooh, ooh, ooh)\n[01:50.92] [Chorus]\n[01:51.36] If my love ain\'t your love\n[01:54.68] It\'s never gonna be nobody\'s love\n[01:56.78] I\'m never gonna need nobody\'s love but yours (Nobody\'s, but yours)\n[02:00.78] If my love ain\'t your love\n[02:04.41] It\'s never gonna be nobody\'s love\n[02:07.25] Never gonna need nobody\'s touch but yours (But yours)\n[02:10.63] [Post-Chorus]\n[02:11.17] If my love ain\'t your love, then it\'s nobody\'s\n[02:15.34] Only yours, only yours, not just anybody\'s\n[02:17.85] And if you ever leave, then I\'m never gon\' want\n[02:20.66] Nobody, nobody\'s love\n[02:23.30] If my love ain\'t your love, then it\'s nobody\'s\n[02:25.60] Only yours, only yours, not just anybody\'s\n[02:28.01] And if you ever leave, then I\'m never gon\' want\n[02:31.10] Nobody, nobody\'s love\n[02:35.92] Nobody\'s love\n[02:39.61] Oh, yeah\n[02:42.65] [Chorus]\n[02:43.10] If my love ain\'t your love\n[02:45.35] It\'s never gonna be nobody\'s love\n[02:47.96] I\'m never gonna need nobody\'s love but yours (No, no, but yours)\n[02:51.56] If my love ain\'t your love\n[02:55.77] It\'s never gonna be nobody\'s love\n[02:58.09] Never gonna need nobody\'s touch but yours (No, no, no, no, but yours)\n[03:02.33] [Post-Chorus]\n[03:02.94] If my love ain\'t your love, then it\'s nobody\'s\n[03:06.19] Only yours, only yours, not just anybody\'s\n[03:08.94] And if you ever leave, then I\'m never gon\' want\n[03:11.51] Nobody, nobody\'s love\n[03:14.41] If my love ain\'t your love, then it\'s nobody\'s\n[03:16.48] Only yours, only yours, not just anybody\'s\n[03:19.08] And if you ever leave, then I\'m never gon\' want\n[03:21.92] Nobody, nobody\'s love\n', 'Nobody\'s_Love.mp3');
INSERT INTO `baihat` (`MABH`, `MAALB`, `MATL`, `TenBH`, `TinhTrang`, `NoiDung`, `Anh`, `LuotXem`, `LoiBatHat`, `filenhac`) VALUES
('BH17', 'ALB02', 'TL01', 'One More Night', 1, '\"One More Night\" là bài hát do ban nhạc pop rock người Mỹ Maroon 5 thể hiện. Bài hát được phát hành vào ngày 19 tháng 6 năm 2012, là đĩa đơn thứ hai trong album phòng thu thứ tư Overexposes (2012) của họ. Nó được viết bởi Adam Levine, Shellback, Max Martin và Savan Kotecha, trong khi việc sản xuất do Shellback và Martin phụ trách.', 'Maroon_5_One_More_Night_cover.png', 7, '[offset:400]\n[00:00.27] Ooh, ooh ooh ooh, ooh, ooh, ooh, ooh\n[00:06.42] ~~~\n[00:09.26] You and I go hard\n[00:11.27] At each other like we\'re going to war\n[00:14.66] You and I go rough\n[00:16.22] We keep throwing things and slamming the doors\n[00:19.91] You and I get so damn dysfunctional we stop keeping score\n[00:24.55] You and I get sick\n[00:26.14] Yeah, I know that we can\'t do this no more, yeah\n[00:30.58] But baby, there you go again, there you go again making me love you\n[00:35.66] Yeah, I stopped using my head, using my head\n[00:39.29] Let it all go\n[00:41.32] Got you stuck on my body, on my body like a tattoo\n[00:46.48] And now I\'m feeling stupid, feeling stupid crawling back to you\n[00:51.53] So I cross my heart, and I hope to die\n[00:56.78] That I\'ll only stay with you one more night\n[01:01.85] And I know, I said it a million times\n[01:07.03] But I\'ll only stay with you one more night\n[01:11.48] Try to tell you, \"No\"\n[01:13.07] But my body keeps on telling you, \"Yes\"\n[01:16.76] Try to tell you, \"Stop\"\n[01:18.26] But your lipstick got me so out of breath\n[01:21.96] I\'ll be waking up\n[01:23.45] In the morning probably hating myself\n[01:26.96] And I\'ll be waking up\n[01:28.42] Feeling satisfied, but guilty as hell, yeah\n[01:32.49] But baby there you go again, there you go again making me love you\n[01:36.73] (Making me you love you)\n[01:37.35] Yeah, I stopped using my head, using my head\n[01:40.94] Let it all go (let it all go)\n[01:42.48] Got you stuck on my body, on my body like a tattoo\n[01:47.33] (Like a tattoo, yeah)\n[01:48.62] And now I\'m feeling stupid, feeling stupid crawling back to you (ah)\n[01:53.34] So I cross my heart, and I hope to die (yeah)\n[01:58.70] That I\'ll only stay with you one more night (oh-oh-oh)\n[02:03.88] And I know, I\'ve said it a million times (yeah)\n[02:08.57] But I\'ll only stay with you one more night (yeah)\n[02:14.22] Ooh, ooh ooh ooh, ooh, ooh, ooh, ooh\n[02:16.93] Yeah, baby, give me one more night\n[02:19.42] Ooh, ooh ooh ooh, ooh, ooh, ooh, ooh\n[02:21.82] Yeah, baby, give me one more night\n[02:24.50] Ooh, ooh ooh ooh, ooh, ooh, ooh, ooh\n[02:25.61] Oh, yeah\n[02:27.83] Yeah, baby, give me one more night\n[02:29.77] Ooh, ooh ooh ooh, ooh, ooh, ooh, ooh\n[02:30.95] Oh, yeah-yeah-yeah\n[02:34.93] But baby there you go again, there you go again making me love you\n[02:39.62] Yeah, I stopped using my head, using my head, let it all go\n[02:44.88] Got you stuck on my body, on my body like a tattoo, yeah-yeah-yeah, yeah\n[02:55.59] So I cross my heart, and I hope to die (oh-oh, oh-oh)\n[03:00.60] That I\'ll only stay with you one more night (oh, oh-oh oh)\n[03:05.53] And I know I\'ve said it a million times (oh, I\'ve said it a million times)\n[03:10.76] But I\'ll only stay with you one more night\n[03:13.96] (Yeah, baby, give me one more night)\n[03:15.99] So I cross my heart and I hope to die (yeah, yeah)\n[03:21.12] That I\'ll only stay with you one more night (yeah, yeah)\n[03:25.98] And I know, I\'ve said it a million times (yeah, yeah)\n[03:31.18] But I\'ll only stay with you one more night (yeah, yeah)\n[03:37.06] (I don\'t know, whatever)', 'One_More_Night.mp3'),
('BH18', 'ALB02', 'TL01', 'Wait', 1, '\"Wait\" là một bài hát của ban nhạc pop rock người Mỹ Maroon 5. Nó được phát hành vào ngày 16 tháng 1 năm 2018 trên đài phát thanh nổi tiếng đương đại với tư cách là đĩa đơn thứ tư trong album phòng thu thứ sáu của ban nhạc Red Pill Blues (2017)', 'Maroon5Wait.jpg', 6, '[offset:400]\n[00:08.86] Dirty looksfrom your mother\n[00:12.83] Never seen you in a dress that color no\n[00:16.84] It\'s a special occasion\n[00:20.65] Not invited but I\'m glad I made it\n[00:23.43] Oh let me apologize\n[00:27.73] I\'ll make up make up make up make up for all those time\n[00:31.73] Your love I don\'t wanna lose\n[00:35.65] I\'m beggin\' beggin\' beggin\' beggin\' begging you\n[00:39.74] Wait can you turn around can you turn around\n[00:43.09] Just wait can we work this out\n[00:45.78] Can we work this out I\'ll just wait\n[00:48.15] Can you call me please cause I wanna be with you\n[00:55.61] Wait can you turn around can you turn around\n[00:58.88] Just wait can we work this out can we work this out\n[01:02.78] Just wait\n[01:03.99] Can you call me please cause I wanna be with you\n[01:11.64] Can we talk for a moment\n[01:15.48] Got these feelings that I\'m tired of holding oh\n[01:19.48] Wasn\'t tryna get wasted\n[01:23.70] I needed more than three or four to say this\n[01:26.31] Oh let me apologize\n[01:30.77] I\'ll make up make up make up make up for all those time\n[01:33.77] All those time\n[01:34.82] Your love I don\'t wanna lose\n[01:38.68] I\'m beggin\' beggin\' beggin\' beggin\' begging you\n[01:42.79] Wait can you turn around can you turn around\n[01:46.09] Just wait can we work this out\n[01:48.69] Can we work this out I\'ll just wait\n[01:51.27] Can you call me please cause I wanna be with you\n[01:58.50] Wait can you turn around can you turn around\n[02:01.85] Just wait can we work this out can we work this out\n[02:05.70] Just wait\n[02:06.97] Can you call me please cause I wanna be with you\n[02:21.35] You say I\'m just another bad guy\n[02:25.18] You say I\'ve done a lot of things I can\'t undo\n[02:29.06] Before you tell me for the last time\n[02:33.49] I\'m beggin\' beggin\' beggin\' beggin\' begging you\n[02:41.82] Wait can you turn around can you turn around>\n[02:45.09] Just wait can we work this out\n[02:47.81] Can we work this out I\'ll just wait I\'ll just wait\n[02:50.20] Can you call me please cause I wanna be with you\n[02:57.52] Wait can you turn around can you turn around\n[03:00.71] Just wait can we work this out can we work this out\n[03:04.78] Just wait\n[03:06.03] Can you call me please cause I wanna be with you\n[03:13.27] Wait can you turn around\n[03:17.94] Can we work this out\n[03:21.64] Wait\n[03:23.42] \'Cause I wanna be with you\n[03:29.10] Wait\n[03:35.30] Can we work this out\n[03:36.22] Just wait\n[03:39.13] \'Cause I wanna be with you\n[03:44.68] Wait\n[04:12.26] You\n[04:16.14] Wait', 'Wait.mp3'),
('BH19', 'ALB19', 'TL01', 'What Lovers Do', 1, '\"What Lovers Do\" là một bài hát của ban nhạc Mỹ Maroon 5 hợp tác với ca sĩ SZA. Nó được phát hành vào ngày 30 tháng 8 năm 2017, là đĩa đơn thứ ba trong album phòng thu thứ sáu của ban nhạc Red Pill Blues (2017).', 'whatloversdo.jpg', 12, '[offset:400]\n[00:09.57] Say, say, say, hey, hey, now baby\n[00:13.35] Oh mama, don\'t play now baby\n[00:17.22] Say, say, say, hey, hey, now baby\n[00:21.60] Said let\'s get one thing straight now baby\n[00:25.25] Tell me, tell me if you love me or not\n[00:27.01] Love me or not, love me or not?\n[00:29.67] I\'ll bet the house on you, am I lucky or not\n[00:31.81] Lucky or not, lucky or not?\n[00:34.06] You gotta tell me if you love me or not\n[00:35.88] Love me or not, love me or not?\n[00:38.20] Been wishin\' for you, am I lucky or not\n[00:40.27] Lucky or not, lucky or not?\n[00:43.30] Oh, oh, ooh, ooh-ooh, ooh\n[00:46.03] Been wishin\' for you\n[00:47.71] Uhm, uhm\n[00:49.31] Tryna\' do what lovers do (ooh)\n[00:52.48] Oh, oh, ooh, ooh-ooh, ooh\n[00:55.20] Been wishin\' for you\n[00:56.75] Uhm, uhm\n[00:57.95] Tryna\' do what lovers do (ooh)\n[01:01.05] Say, say, say, hey, hey now baby\n[01:04.26] You gonna make me hit you with that lay down, baby (oh-oh-oh-oh)\n[01:09.48] (Ooh) say, say, say, hey, hey now baby\n[01:13.92] You know what I need, out the gate now, baby (oh, oh-oh)\n[01:18.22] Tell me, tell me if you love me or not\n[01:20.63] Love me or not, love me or not?\n[01:22.38] I\'ll bet the house on you, am I lucky or not\n[01:25.13] Lucky or not, lucky or not?\n[01:26.80] You gotta tell me if you love me or not\n[01:29.12] Love me or not, love me or not?\n[01:31.03] Been wishin\' for you am I lucky or not\n[01:33.08] Lucky or not, lucky or not?\n[01:35.67] Oh, oh, ooh, ooh-ooh, ooh\n[01:38.35] Been wishin\' for you\n[01:39.99] Uhm, uhm\n[01:41.53] Tryna\' do what lovers do (ooh)\n[01:44.47] Oh, oh, ooh, ooh-ooh, ooh\n[01:46.76] Been wishin\' for you (wishin\')\n[01:49.05] Uhm, uhm\n[01:50.43] Tryna\' do what lovers do (ooh)\n[01:56.25] (Hey, yeah) what lovers do (oh, ohh)\n[02:01.84] What lovers do (hmm, na-na-na, hey yeah)\n[02:06.80] What lovers do (oh, hmm, na-na-na) (oh, ohh)\n[02:10.76] (Aren\'t we too, aren\'t we too)\n[02:13.07] Aren\'t we too grown for games?\n[02:14.51] Aren\'t we too grown to play around?\n[02:16.48] Young enough to chase\n[02:17.85] But old enough to know better\n[02:19.81] Are we too grown for changin\'?\n[02:22.03] Are we too grown to mess around?\n[02:24.51] Ooh and I can\'t wait forever baby\n[02:26.57] Both of us should know better\n[02:28.89] Oh, oh, ooh, ooh-ooh, ooh\n[02:31.29] Been wishin\' for you\n[02:32.69] Uhm, uhm\n[02:34.13] Tryna\' do what lovers do (ooh)\n[02:37.44] Oh, oh, ooh, ooh-ooh, ooh\n[02:42.78] Been wishin\' for you\n[02:43.95] Uhm, uhm\n[02:45.64] Tryna\' do what lovers do (ooh)\n[02:48.20] Oh, oh, ooh, ooh-ooh, ooh\n[02:50.79] Been wishin\' for you (you, oh, yeah)\n[02:53.02] Uhm, uhm (ooh)\n[02:54.78] Tryna\' do what lovers do (tryna\' do what lovers do, ooh)\n[02:57.45] Oh, oh, ooh, ooh-ooh, ooh\n[02:59.52] Been wishin\' for you (been wishin\' for love)\n[03:01.61] Uhm, uhm\n[03:03.02] Tryna\' do what lovers do (do, uhh, ooh)\n[03:05.59] Oh, oh, ooh, ooh-ooh, ooh\n[03:07.67] Been wishin\' for you (tryna\' do)\n[03:10.05] Uhm, uhm\n[03:11.34] Tryna\' do what lovers do (ooh)\n', 'What_Lovers_Do.mp3'),
('BH20', 'ALB04', 'TL01', 'Từng là', 1, 'Với giai điệu pop pha bossa nova, kết hợp lối hát bay bổng của Vũ Cát Tường, ca khúc tạo cho người nghe cảm giác thư thái', 'tunglavucattuong.jpg', 5, '[offset:400]\n[00:22:00] Anh không còn những thói quen\n[00:26:00] Em không còn nhớ thêm\n[00:30:00] Ta trôi xa một nửa kia nhẹ như mới đến\n[00:38:00] Một ai nhắc tên em trong câu chuyện xưa cũ với anh thật vô tư\n[00:46:00] Họ chưa biết hai ta đã không còn nhau nữa\n[00:51:00] Mọi chuyện đã là quá khứ\n[00:54:00] Từng là duy nhất mối tình bình yên đối với anh\n[00:59:00] Từng là những nắm tay mềm thật ấm đối với anh\n[01:03:00] Từng là cảm xúc nhớ nhiều về đêm đối với anh\n[01:07:00] Từng là em\n[01:11:00] Từng là những tháng năm dài mình chung bước bên nhau\n[01:15:00] Từng là những nắng ban chiều mà anh bước theo sau\n[01:20:00] Từng là tất cả những gì đời mang đến cho ta\n[01:24:00] Giờ đã quá xa\n[01:44:00] Vào một lần em nói ta rồi sẽ cách xa\n[01:49:00] Một lần anh ngất trong màu mây nắng hạ\n[01:53:00] Chắc có lẽ nên là kết thúc cách im lặng thôi\n[02:01:00] Một ai nhắc tên em trong câu chuyện xưa cũ với anh thật vô tư\n[02:10:00] Họ chưa biết hai ta đã không còn nhau nữa\n[02:14:00] Mọi chuyện đã là quá khứ\n[02:18:00] Từng là duy nhất mối tình bình yên đối với anh\n[02:22:00] Từng là những nắm tay mềm thật ấm đối với anh\n[02:26:00] Từng là cảm xúc nhớ nhiều về đêm đối với anh\n[02:30:00] Từng là em\n[02:35:00] Từng là những tháng năm dài mình chung bước bên nhau\n[02:39:00] Từng là những nắng ban chiều mà anh bước theo sau\n[02:43:00] Từng là tất cả những gì đời mang đến cho ta\n[02:47:00] Giờ đã quá xa\n[02:51:00] Oh no we used to be, Used used to be\n[02:56:00] Oh no we used to be lovers\n[03:00:00] Oh no we used to be, Used used to be\n[03:04:00] Oh no we used to be lovers\n[03:08:00] Oh no we used to be, Used used to be\n[03:12:00] Oh no we used to be lovers\n[03:16:00] Oh no we used to be, Used used to be\n[03:20:00] Oh no we used to be lovers \n[03:25:00] Từng là duy nhất mối tình bình yên đối với anh\n[03:29:00] Từng là những nắm tay mềm thật ấm đối với anh\n[03:33:00] Từng là cảm xúc nhớ nhiều về đêm đối với anh\n[03:37:00] Từng là em\n[03:41:00] Từng là những tháng năm dài mình chung bước bên nhau\n[03:45:00] Từng là những nắng ban chiều mà anh bước theo sau\n[03:50:00] Từng là tất cả những gì đời mang đến cho ta\n[03:54:00] Giờ đã quá xa\n[03:58:00] Từng là tất cả những gì đời mang đến cho ta\n[04:02:00] Giờ đã quá xa', 'Tungla.mp3'),
('BH21', 'ALB05', 'TL01', 'My time', 1, 'Calum Thomas Bowen (sinh ngày 26 tháng 2 năm 1991), còn được biết đến với nghệ danh Bo En (cách điệu là bo en), là một nhạc sĩ và nhà sản xuất trò chơi điện tử người Anh có trụ sở tại London.[1]', 'boen_mytime.jpg', 0, '[offset:400]\n[00:00.00] Close your eyes, you\'ll be here soon\n[00:11.64] Ichi ni san shi go fun\n[00:19.74] Tokidoki, hontou ni netai\n[00:27.49] Demo, kono waado dekinai\n[00:48.14] Oyasumi, oyasumi\n[00:51.23] Close your eyes and you\'ll leave this dream\n[00:55.86] Oyasumi, oyasumi\n[00:59.68] I know that it\'s hard to do\n[01:03.20] Days go by, shou ga nai\n[01:06.99] Moments pass, shattered glass\n[01:11.27] Hands of time, where\'s that chime?\n[01:15.28] In my head\n[01:16.80] I\'ll just, I\'ll just\n[01:19.07] I\'ll just, I\'ll just\n[01:21.09] Hands (Hands!) of time will wring my neck\n[01:29.58] Every little moment spells regret\n[01:39.19] But I don\'t have to feel this way\n[01:48.25]As a voice inside my head\n[02:09.01] Oyasumi, oyasumi\n[02:11.93] Close your eyes and you\'ll leave this dream\n[02:16.62] Oyasumi, oyasumi\n[02:20.68] I know that it\'s hard to do\n[02:57.33] Oyasumi, oyasumi\n[03:00.28] Close your eyes and you\'ll leave this dream\n[03:04.78] Oyasumi, oyasumi\n[03:08.63] I know that it\'s hard to do\n[03:13.21] Oyasumi, oyasumi\n[03:16.11]Close your eyes and you\'ll leave this dream\n[03:21.11]Oyasumi, oyasumi\n[03:24.57]I know that it\'s hard to do', 'boenmy_time.mp3'),
('BH22', 'ALB06', 'TL01', 'Bling-Bang-Bang-Born', 1, '\"Bling-Bang-Bang-Born\" là một bài hát của bộ đôi hip hop Nhật Bản Creepy Nuts. Nó được phát hành vào ngày 7 tháng 1 năm 2024, thông qua Onenation và Sony Music Associated Records, đồng thời là nhạc nền mở đầu cho mùa thứ hai của loạt phim truyền hình anime Mashle: Magic and Muscles, có phụ đề là Bài kiểm tra ứng viên có tầm nhìn thần thánh.', 'bling_bang_bang.jpg', 1, '[offset:400]\n[00:00.00] Yeah, boy\n[00:01.89] Chiito, gifted, arawaza, wanted\n[00:03.56] Kinki, kinjite, akiraka mouten\n[00:04.93] Hansoku, ijigen, kono yo no mon de wa nai desu\n[00:06.87] Muri gee, sore kiitenai tte\n[00:08.06] Ay, raibaru kuchi wo soroete\n[00:09.64] Wow, raibaru kuchi wo soroete\n[00:10.97] Bagu de, magure, mitomenee zettee\n[00:12.68] Maji de? Kore wo ma\n[00:13.34] Zenbu namami de?\n[00:17.09] It\'s namami, it\'s namami, yeah-yeah-yeah-yeah\n[00:20.26] Bling-bang-bang, bling-bang-bang-born\n[00:22.97] Bling-bang-bang, bling-bang-bang-born\n[00:25.90] Jitsuryoku wo hakki shikiru mae ni\n[00:27.27] Aite no hou ga bakkurete kurashii\n[00:28.94] Agarikiru haadoru very happy\n[00:30.32] Akiraka ni dantotsu de pikaichi\n[00:31.92] Aika warazu dappi shiteru mainichi (Bling, bling, bling)\n[00:35.37] Dare no nanahikari mo iranai omae no ice yori icy (Icy)\n[00:37.99] Ore, patto mi dekinai koto bakkari da kedo very happy\n[00:41.18] Aa, kiretеru, akireteru mawari\n[00:42.58] Megu marеteru kazoku tomodachi (Happy)\n[00:44.60] Mou hansoku teki tachiichi, mina ore ni makase tokeba ii (Bang-bang-bang)\n[00:47.38] Kyoukasho ni nai, mondaishuu ni nai\n[00:49.05] Chou bad na majinai, listen\n[00:50.79] Kagami yo kagami kotaechatte\n[00:53.33] Who\'s the best? I\'m the best! Oh yeah\n[00:56.48] Namami no mama ikeru toko made\n[00:59.55] To the next, to the ichiban ue\n[01:02.19] Now singin\'\n[01:03.17] Bling-bang-bang, bling-bang-bang, bling-bang-bang-born\n[01:05.63] (Now singin\')\n[01:06.09] Bling-bang-bang, bling-bang-bang, bling-bang-bang-born\n[01:08.61] (Now singin\')\n[01:09.40] Bling-bang-bang, bling-bang-bang, bling-bang-bang-born\n[01:11.74] To the next, to the ichiban ue\n[01:14.75] Ey-day, ore no mama de iru dake de chou flex\n[01:18.43] Ey-day, daremo kuchi wo hasamenai (Don\'t test)\n[01:21.48] Ey-day, ore no mama de iru dake de chou flex\n[01:24.30] Ey-day, daremo kuchi wo hasamasenai (Don\'t test)\n[01:30.19] Yeah, yeah, yeah\n[01:30.76] Gakureki mo nai zenka mo nai yoyuu de bling-bling\n[01:33.51] Kono sonzai jitai ga bunkazai na noumiso bling-bling\n[01:36.63] Koukyuusha wa kaeru menkyo wa nai aisha green, green\n[01:39.63] Zenkoku kakuchi yurasu ippin\n[01:41.28] Kono bero ga bling-bling\n[01:42.94] Baretto nara mantan\n[01:44.17] Kansai namari namami no kotodama\n[01:46.23] Ongaku, kouun, shouri no megami, koyoi mo sanmata bang-bang\n[01:49.10] Manga mitai na yakara to manma de hariaete shimatteru manga\n[01:52.25] Attou teki chikara kono atama to kuchi kara\n[01:54.43] Kono karada tattoo wa haittenai\n[01:56.62] Kono tsura ni kizu mo tsuitenai\n[01:57.94] Kurikaeshi yarakashiteku dameeji ga\n[01:59.51] Ikatsui nenrin wo kizamu shiwa\n[02:01.03] Bling-bang-bang, bling-bang-bang, bling-bang-bang-born\n[02:03.72] Ore no mama de bling shite, bang shite, bang suru tame ni\n[02:05.90] Born shite kita nippon, ay!\n[02:07.20] Kagami yo kagami kotaechatte\n[02:09.77] Who\'s the best? I\'m the best! Oh yeah\n[02:13.03] Namami no mama ikeru toko made\n[02:15.82] To the next, to the ichiban ue\n[02:18.43] Now singin\'\n[02:19.50] Bling-bang-bang, bling-bang-bang, bling-bang-bang-born\n[02:22.02] (Now singin\')\n[02:22.65] Bling-bang-bang, bling-bang-bang, bling-bang-bang-born\n[02:25.10] (Now singin\')\n[02:25.66] Bling-bang-bang, bling-bang-bang, bling-bang-bang-born\n[02:28.15] To the next, to the ichiban ue\n[02:31.08] Ey-day, ore no mama de iru dake de chou flex\n[02:34.62] Ey-day, daremo kuchi wo hasamenai (Don\'t test)\n[02:37.76] Ey-day, ore no mama de iru dake de chou flex\n[02:40.76] Ey-day, daremo kuchi wo hasamasenai (Don\'t test)', 'CreepyNuts_Bling_Bang_Bang_Born.mp3'),
('BH25', 'ALB10', 'TL04', 'Unholy', 1, '\"Unholy\" là bài hát của ca sĩ người Anh Sam Smith và ca sĩ người Đức Kim Petras. Nó được phát hành vào ngày 22 tháng 9 năm 2022 thông qua EMI Records và Capitol Records dưới dạng đĩa đơn thứ hai trong album phòng thu thứ tư của Smith Gloria (2023) và là bài hát thưởng trong album phòng thu đầu tay của Petras Feed the Beast (2023). Nó đã được Smith giới thiệu trên tài khoản TikTok của họ một tháng trước khi phát hành và đã lan truyền rộng rãi do được sử dụng trong các video kiểu bẫy khát', 'Sam_Smith_and_Kim_Petras_-_Unholy.png', NULL, '[offset:400]\n[00:00.50]Mummy don\'t know daddy\'s getting hot\n[00:03.21]At the body shop\n[00:05.27]Doing something unholy\n[00:08.09]\n[00:09.69]Lucky, lucky girl (Ooh)\n[00:13.19]Lucky, lucky girl (Yeah, yeah)\n[00:16.62]Lucky, lucky girl (Uh)\n[00:20.42]Lucky, lucky girl\n[00:22.11]A lucky, lucky girl\n[00:24.35]She got married to a boy like you\n[00:27.98]She\'d kick you out if she ever, ever knew\n[00:31.56]\'Bout all the **** you tell me that you do\n[00:36.81]Dirty, dirty boy\n[00:38.99]You know everyone is talkin\' on the scene\n[00:42.62]I hear them whisperin\' \'bout the places that you\'ve been\n[00:46.30]And how you don\'t know how to keep your business clean\n[00:51.59]Mummy don\'t know daddy\'s getting hot\n[00:54.77]At the body shop\n[00:56.52]Doin\' somethin\' unholy\n[00:58.90]He\'s sat back while she\'s droppin\' it\n[01:01.83]She be poppin\' it\n[01:03.77]Yeah, she put it down slowly\n[01:06.08]Oh-ee-oh-ee-oh, he left his kids at\n[01:09.71]Ho-ee-oh-ee-ome so he can get that\n[01:13.59]Mummy don\'t know daddy\'s getting hot\n[01:16.33]At the body shop\n[01:18.46]Doin\' somethin\' unholy (Woo)\n[01:20.89]Mm, daddy, daddy, if you want it, drop the addy (Yeah, yeah)\n[01:24.47]Give me love, give me Fendi, my Balenciaga daddy\n[01:28.03]You gon\' need to bag it up \'cause I\'m spendin\' on Rodeo (Woo)\n[01:31.69]You can watch me back it up, I\'ll be gone in the A.M. (Yeah)\n[01:35.36]And he, he get me Prada, get me Miu Miu like Rihanna (Ah)\n[01:38.82]He always call me \'cause I never cause no drama\n[01:42.69]And when you want it, baby, I know I got you covered\n[01:46.26]And when you need it, baby, just jump under the covers (Yeah)\n[01:50.06]Mummy don\'t know daddy\'s getting hot (Hot)\n[01:53.33]At the body shop (Shop)\n[01:55.03]Doin\' somethin\' unholy\n[01:57.29]He\'s sat back while she\'s droppin\' it (She)\n[02:00.54]She be poppin\' it (She)\n[02:02.41]Yeah, she put it down slowly\n[02:04.59]Oh-ee-oh-ee-oh, he left his kids at\n[02:08.27]Ho-ee-oh-ee-ome so he can get that\n[02:11.95]Mummy don\'t know daddy\'s getting hot\n[02:14.89]At the body shop (Ah)\n[02:17.26]Doin\' somethin\' unholy (Unholy)', 'Petras_Unholy.mp3'),
('BH28', 'ALB13', 'TL01', 'Blinding Lights', 1, '\"Blinding Lights\" là một bài hát của ca sĩ kiêm nhạc sĩ người Canada the Weeknd, nằm trong album phòng thu thứ tư của anh ấy, After Hours (2020). Bài hát được phát hành thông qua XO và Republic Records vào ngày 29 tháng 11 năm 2019, dưới dạng đĩa đơn thứ hai của album. The Weeknd viết bài hát cùng Max Martin, Oscar Holter, Belly và DaHeala; ba người trước đây sản xuất bài hát. Đây là một ca khúc synth-pop, new wave, synthwave và electropop, trong đó đề cập đến tầm quan trọng của một người bạn đời và mong muốn được gặp họ vào ban đêm.', 'blindinglights.jpg', 4, '[offset:400]\n[00:13.58]Yeah\n[00:27.45]I\'ve been tryna call\n[00:30.10]I\'ve been on my own for long enough\n[00:32.87]Maybe you can show me how to love, maybe\n[00:38.57]I\'m going through withdrawals\n[00:41.35]You don\'t even have to do too much\n[00:44.07]You can turn me on with just a touch, baby\n[00:49.78]I look around and Sin City\'s cold and empty (oh)\n[00:53.69]No one\'s around to judge me (oh)\n[00:56.49]I can\'t see clearly when you\'re gone\n[01:01.10]I said, ooh, I\'m blinded by the lights\n[01:06.93]No, I can\'t sleep until I feel your touch\n[01:12.35]I said, ooh, I\'m drowning in the night\n[01:18.06]Oh, when I\'m like this, you\'re the one I trust\n[01:22.67]Hey, hey, hey\n[01:34.73]I\'m running out of time\n[01:37.47]\'Cause I can see the sun light up the sky\n[01:40.36]So I hit the road in overdrive, baby\n[01:45.51]Oh, the city\'s cold and empty (oh)\n[01:49.84]No one\'s around to judge me (oh)\n[01:52.54]I can\'t see clearly when you\'re gone\n[01:57.07]I said, ooh, I\'m blinded by the lights\n[02:02.93]No, I can\'t sleep until I feel your touch\n[02:08.39]I said, ooh, I\'m drowning in the night\n[02:14.08]Oh, when I\'m like this, you\'re the one I trust\n[02:19.94]I\'m just walking by to let you know (by to let you know)\n[02:22.69]I could never say it on the phone (say it on the phone)\n[02:25.27]Will never let you go this time (ooh)\n[02:30.96]I said, ooh, I\'m blinded by the lights\n[02:36.46]No, I can\'t sleep until I feel your touch\n[02:41.25]Hey, hey, hey\n[02:51.99]Hey, hey, hey\n[03:04.52]I said, ooh, I\'m blinded by the lights\n[03:10.19]No, I can\'t sleep until I feel your touch', 'The_Weeknd_Blinding_Lights.mp3'),
('BH31', 'ALB16', 'TL02', 'Resister ', 1, '\"Resister\" (cách điệu là RESISTER) là một bài hát của ca sĩ nhạc pop Nhật Bản ASCA. Nó được phát hành kỹ thuật số vào ngày 13 tháng 1 năm 2019[1] trước khi nhận được bản phát hành vật lý vào ngày 27 tháng 2 năm 2019.[', 'resister_ASCA.jpg', 7, '[offset:400]\n[00:17.10] Kimi no koe ga todokanai basho de wa\n[00:22.10] Dare mo oshiete kurenakatta\n[00:24.80] yuganda ruuru\n[00:27.50] Osanai koro ni tsuyoku negatta\n[00:32.50] Yume no arika wo sagasu tabi wa\n[00:35.30] hajimatta bakari\n[00:38.20] ~~~\n[00:38.60] Nageita jikan wa mou iranai\n[00:43.50] Genkai no kabe wo ima sugu kowashite\n[00:48.70] ~~~\n[00:49.10] Karenai tsuyoi omoide\n[00:52.00] kagayaku puraido\n[00:55.00] Donna itami ni fureta to shite mo\n[00:57.60] kawaranai kioku\n[01:00.20] Shikai wo hirogete\n[01:02.50] mitsuketa chikai wo daite\n[01:05.50] Kumorinaki me de eranda michi wo\n[01:08.10] kimi ni tsunagu kara\n[01:11.60] ~~~~\n[01:12.00] Koe wo hibikasete\n[01:15.90] unmei ni aragatte yuke\n[01:21.40] ~~~\n[01:29.20] Kono mama zutto iki wo koroshite\n[01:34.30] Kawaranai mirai niramitsuzuke\n[01:36.90] ikite itaku wa nai\n[01:39.70] ~~~\n[01:40.10] Chigireta kokoro hiroiatsume\n[01:45.10] Jounetsu no umi e ima sugu tobikome\n[01:50.30] ~~~\n[01:50.70] Go to the outside of daydream\n[01:52.90] Break your limits\n[01:54.00] ~~~\n[01:54.90] Kanaetai yowai jibun ni\n[01:57.50] yadoshita puraido\n[02:00.50] Kodoku no nami ni nomikomarete mo\n[02:03.20] kawaranai negai\n[02:05.80] Risou o kakagete\n[02:08.10] mitsuketa kibou o idaite\n[02:10.80] Mada minu asu de hohoemu kimi ni\n[02:13.70] kataritsugeru kara\n[02:17.20] ~~~\n[02:17.50] Koe ga todoku made unmei wo\n[02:22.70] tsuranuite yuke\n[02:27.20] ~~~ \n[02:34.80] Furueru kata wo dakiyosewarau\n[02:40.00] Kimi ga iru kara utai tsuzukeru yo\n[02:48.10] ~~~\n[02:51.00] Karenai tsuyoi omoide\n[02:54.00] kagayaku puraido\n[02:57.00] Donna itami ni fureta to shite mo\n[02:59.50] kawaranai kioku\n[03:02.30] Shikai wo hirogete\n[03:04.50] mitsuketa chikai wo daite\n[03:07.40] Kumorinaki me de eranda michi wo\n[03:10.10] kimi ni tsunagu kara\n[03:13.60] ~~~\n[03:13.90] Koe wo hibikasete\n[03:18.10] gyakkyou o kirisaite yuke\n[03:23.20] Unmei ni aragatte yuke\n[03:28.60] Proud of myself', 'ASCA_RESISTER.mp3'),
('BH32', 'ALB17', 'TL01', 'Let Me Love You', 1, '\"Let Me Love You\" is a song recorded by French DJ and electronic music producer DJ Snake featuring vocals from Canadian singer Justin Bieber. The song was released through Interscope Records on 5 August 2016 as the third single from his debut studio album, Encore (2016).[2] The artists both co-wrote the song along with Andrew Watt, Ali Tamposi, Brian Lee and Louis Bell, while the song\'s production was handled by DJ Snake, Bell and Watt.', 'letmeloveyou.png', 6, '[offset:400]\r\n[00:09.12] I used to believe\r\n[00:11.88] We were burning on the edge of something beautiful\r\n[00:15.88] Something beautiful\r\n[00:18.88] Selling a dream\r\n[00:20.88] Smoke and mirrors keep us waiting on a miracle\r\n[00:25.88] On a miracle\r\n[00:28.40] Say, go through the darkest of days\r\n[00:31.50] Heaven\'s a heartbreak away\r\n[00:33.50] Never let you go, never let me down\r\n[00:38.50] Oh, it\'s been a hell of a ride\r\n[00:41.50] Driving the edge of a knife\r\n[00:43.50] Never let you go, never let me down\r\n[00:47.50] Don\'t you give up, nah-nah-nah\r\n[00:49.50] I won\'t give up, nah-nah-nah\r\n[00:51.50] Let me love you\r\n[00:54.20] Let me love you x2\r\n[00:57.20] Don\'t you give up, nah-nah-nah\r\n[00:59.50] I won\'t give up, nah-nah-nah\r\n[01:01.50] Let me love you\r\n[01:03.50] Let me love you x2\r\n[01:06.00] (Oh, No, No)\r\n[01:07.00] Relaxing\r\n[01:25.50] Don\'t fall asleep\r\n[01:28.50] At the wheel, we\'ve got a million miles ahead of us\r\n[01:32.88] Miles ahead of us\r\n[01:35.50] All that we need\r\n[01:38.50] Is a rude awakening to know we\'re good enough (yeah)\r\n[01:42.50] Know we\'re good enough\r\n[01:44.80] Say, go through the darkest of days\r\n[01:47.50] Heaven\'s a heartbreak away\r\n[01:50.88] Never let you go, never let me down\r\n[01:54.50] Oh, it\'s been a hell of a ride\r\n[01:57.50] Driving the edge of a knife\r\n[01:59.50] Never let you go, never let me down\r\n[02:04.50] Don\'t you give up, nah-nah-nah\r\n[02:06.50] I won\'t give up, nah-nah-nah\r\n[02:07.90] Let me love you\r\n[02:10.50] Let me love you x2\r\n[02:13.50] Don\'t you give up, nah-nah-nah\r\n[02:16.50] I won\'t give up, nah-nah-nah\r\n[02:17.70] Let me love you\r\n[02:18.50] Let me love you x2\r\n[02:23.50] (Oh, No, No)\r\n[02:24.50] Relaxing\r\n[02:43.50] (Girl, never let you go) Wooh\r\n[02:44.50] Oh, nah-nah-nah-nah\r\n[02:45.50] (Never let you go)\r\n[02:46.50] Yeah, yeah (girl, never let you go)\r\n[03:01.50] Don\'t you give up, nah-nah-nah\r\n[03:04.50] I won\'t give up, nah-nah-nah\r\n[03:06.50] Let me love you\r\n[03:08.50] Let me love you x2\r\n[03:12.50] Don\'t you give up, nah-nah-nah\r\n[03:13.88] I won\'t give up, nah-nah-nah\r\n[03:16.50] Let me love you\r\n[03:18.50] Let me love you x2', 'LetMeLoveYou_Justin.mp3'),
('BH33', 'ALB18', 'TL01', 'Chạy Ngay Đi (Run Now)', 1, '\"Chạy ngay đi\" (tiếng Anh: \"Run Now\", tiếng Thái: เรียกใช้เดี๋ยวนี้[1]) là một bài hát của ca sĩ kiêm sáng tác nhạc Sơn Tùng M-TP, được phát hành song song cùng video âm nhạc phát hành trên YouTube vào lúc 0:00 (GMT+7) ngày 12 tháng 5 năm 2018 bởi M-TP Entertainment – công ty do chính Sơn Tùng điều hành.[2] Đây là ca khúc đầu tiên của Sơn Tùng được phát hành trong năm 2018 cũng như ca khúc đầu tiên trong lần quay trở lại sau hơn một năm \"vắng bóng', 'Chay_ngay_di.png', 46, '[offset:400]\r\n[00:38.50] Good boy\r\n[00:40.02] Từng phút cứ mãi trôi xa phai nhòa dần kí ức giữa đôi ta\r\n[00:43.95] Từng chút nỗi nhớ hôm qua đâu về lạc bước cứ thế phôi pha\r\n[00:47.95] Con tim giờ không cùng chung đôi nhịp\r\n[00:49.90] Nụ cười lạnh băng còn đâu nồng ấm thân quen\r\n[00:47.95] Vô tâm làm ngơ thờ ơ tương lai ai ngờ\r\n[00:53.90] Quên đi mộng mơ ngày thơ tan theo sương mờ\r\n[00:55.12] Mưa lặng thầm đường vắng chiều nay\r\n[00:57.12] In giọt lệ nhòe khóe mắt sầu cay\r\n[00:59.15] Bao hẹn thề tàn úa vụt bay\r\n[01:01.35] Trôi dạt chìm vào những giấc nồng say\r\n[01:03.12] Quay lưng chia hai lối, còn một mình anh thôi\r\n[01:05.12] Giả dối bao trùm bỗng chốc lên ngôi\r\n[01:07.20] Trong đêm tối bầu bạn cùng đơn côi\r\n[01:08.95] Suy tư anh kìm nén đã bốc cháy yêu thương trao em rồi\r\n[01:11.12] Đốt sạch hết\r\n[01:12.22] Son môi hồng vương trên môi bấy lâu\r\n[01:13.95] Hương thơm dịu êm mê man bấy lâu (đốt sạch hết)\r\n[01:15.12] Anh không chờ mong quan tâm nữa đâu\r\n[01:17.00] Tương lai từ giờ như bức tranh em quên tô màu (đốt sạch hết)\r\n[01:19.12] Xin chôn vùi tên em trong đớn đau\r\n[01:20.95] Nơi hiu quạnh tan hoang ngàn nỗi đau (đốt sạch hết)\r\n[01:23.00] Dư âm tàn tro vô vọng phía sau\r\n[01:24.01] Đua chen dày vò xâu xé quanh thân xác nát nhàu\r\n[01:25.95] Chạy ngay đi, trước khi\r\n[01:27.95] Mọi điều dần tồi tệ hơn\r\n[01:29.95] Chạy ngay đi, trước khi\r\n[01:31.95] Lòng hận thù cuộn từng cơn\r\n[01:33.95] Tựa giông tố đến bên ghé thăm\r\n[01:35.95] Từ nơi hố sâu tối tăm\r\n[01:37.15] Chạy đi, trước khi\r\n[01:38.95] Mọi điều dần tồi tệ hơn\r\n[01:41.12] Không còn ai cạnh bên em ngày mai\r\n[01:43.12] Tạm biệt một tương lai ngang trái\r\n[01:45.12] Không còn ai cạnh bên em ngày mai\r\n[01:46.95] Tạm biệt một tương lai ngang trái\r\n[01:48.95] Không còn ai cạnh bên em ngày mai\r\n[01:49.95] Tạm biệt một tương lai ngang trái\r\n[01:52.95] Không còn ai cạnh bên em ngày mai\r\n[01:53.22] Tạm biệt một tương lai ngang trái\r\n[01:55.95] Yeah, buông bàn tay\r\n[01:58.95] Buông xuôi hi vọng buông bình yên (buông)\r\n[02:00.95] Đâu còn nguyên tháng ngày rực rỡ phai úa hằn sâu triền miên\r\n[02:03.95] Vết thương cứ thêm, khắc thêm, mãi thêm\r\n[02:04.95] Chà đạp vùi dập dẫm lên tiếng yêu ấm êm\r\n[02:06.95] Nhìn lại niềm tin từng trao giờ sao\r\n[02:08.95] Sau bao ngu muội sai lầm anh vẫn yếu mềm\r\n[02:11.95] Căn phòng giam cầm thiêu linh hồn cô độc em trơ trọi kêu gào xót xa\r\n[02:14.95] Căm hận tuôn trào dâng lên nhuộm đen ghì đôi vai đừng mong chờ thứ tha\r\n[02:18.95] Ah, chính em gây ra mà\r\n[02:20.95] Những điều vừa diễn ra\r\n[02:21.95] Chính em gây ra mà, chính em gây ra mà\r\n[02:24.12] Những điều vừa diễn ra\r\n[02:25.12] Hết thật rồi\r\n[02:25.50] Đốt sạch hết\r\n[02:26.95] Son môi hồng vương trên môi bấy lâu\r\n[02:28.95] Hương thơm dịu êm mê man bấy lâu (đốt sạch hết)\r\n[02:30.12] Anh không chờ mong quan tâm nữa đâu\r\n[02:31.95] Tương lai từ giờ như bức tranh em quên tô màu (đốt sạch hết)\r\n[02:34.12] Xin chôn vùi tên em trong đớn đau\r\n[02:36.95] Nơi hiu quạnh tan hoang ngàn nỗi đau (đốt sạch hết)\r\n[02:37.70] Dư âm tàn tro vô vọng phía sau\r\n[02:39.95] Đua chen dày vò xâu xé quanh thân xác nát nhàu\r\n[02:41.95] Chạy ngay đi, trước khi\r\n[02:43.02] Mọi điều dần tồi tệ hơn\r\n[02:45.95] Chạy ngay đi, trước khi\r\n[02:46.95] Lòng hận thù cuộn từng cơn\r\n[02:47.95] Tựa giông tố đến bên ghé thăm\r\n[02:50.95] Từ nơi hố sâu tối tăm\r\n[02:52.95] Chạy đi, trước khi\r\n[02:54.95] Mọi điều dần tồi tệ hơn\r\n[02:55.95] Không còn ai cạnh bên em ngày mai\r\n[02:57.95] Tạm biệt một tương lai ngang trái\r\n[03:00.95] Không còn ai cạnh bên em ngày mai\r\n[03:01.35] Tạm biệt một tương lai ngang trái\r\n[03:03.95] Không còn ai cạnh bên em ngày mai\r\n[03:05.95] Tạm biệt một tương lai ngang trái\r\n[03:07.95] Không còn ai cạnh bên em ngày mai\r\n[03:09.95] Tạm biệt một tương lai ngang trái\r\n[03:11.95] Đốt sạch hết\r\n[03:13.95] Ohhh...\r\n[03:17.95] (Chính em gây ra mà, chính em gây ra mà)\r\n[03:18.95] Đốt sạch hết\r\n[03:19.95] Ohhh...\r\n[03:24.95] Haizzz...\r\n[03:26.95] Đừng nhìn anh với khuôn mặt xa lạ, xin\r\n[03:30.95] Đừng lang thang trong tâm trí anh từng đêm nữa\r\n[03:33.95] Quên đi, quên đi hết đi\r\n[03:35.95] Quên đi, quên đi hết đi\r\n[03:38.45] Thắp lên điều đáng thương lạnh giá ôm trọn giấc mơ vụn vỡ\r\n[03:41.95] Bốc cháy lên cơn hận thù trong anh (quên đi, quên đi, quên đi hết đi)\r\n[03:43.95] Cơn hận thù trong anh\r\n[03:44.95] Bốc cháy lên cơn hận thù trong anh\r\n[03:46.95] Ai khơi dậy cơn hận thù trong anh?\r\n[03:48.95] Bốc cháy lên cơn hận thù trong anh (quên đi, quên đi, quên đi hết đi)\r\n[03:47.95] Cơn hận thù trong anh\r\n[03:51.95] Bốc cháy lên cơn hận thù trong anh\r\n[03:54.95] Ai khơi dậy cơn hận thù trong anh? (ai cô đơn rồi)\r\n[03:56.95] Không còn ai cạnh bên em ngày mai\r\n[03:58.65] Tạm biệt một tương lai ngang trái (ai cô đơn rồi)\r\n[04:00.95] Không còn ai cạnh bên em ngày mai\r\n[04:01.95] Tạm biệt một tương lai ngang trái (ai cô đơn rồi)\r\n[04:04.95] Không còn ai cạnh bên em ngày mai\r\n[04:06.95] Tạm biệt một tương lai ngang trái (ai cô đơn rồi)\r\n[04:07.95] Không còn ai cạnh bên em ngày mai\r\n[04:10.95] Tạm biệt một tương lai ngang trái\r\n[04:12.95] Hello MvtTeam', 'RunNow.mp3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaind`
--

CREATE TABLE `loaind` (
  `MaLoai` char(10) NOT NULL,
  `TenQuyen` varchar(100) DEFAULT NULL,
  `GiaTri` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaind`
--

INSERT INTO `loaind` (`MaLoai`, `TenQuyen`, `GiaTri`) VALUES
('LOAI1', 'Admin', 5),
('LOAI2', 'User', 2),
('LOAI3', 'TacGia', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nghenhac`
--

CREATE TABLE `nghenhac` (
  `MABH` char(10) NOT NULL,
  `MAND` char(10) NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nghenhac`
--

INSERT INTO `nghenhac` (`MABH`, `MAND`, `ThoiGian`) VALUES
('BH01', 'ND3484843', '2024-06-15 15:33:55'),
('BH02', 'ND01', '2024-06-04 22:26:23'),
('BH02', 'ND3484843', '2024-06-15 15:53:17'),
('BH03', 'ND3484843', '2024-06-15 15:27:50'),
('BH05', 'ND03', '2024-06-05 22:26:28'),
('BH05', 'ND3484843', '2024-06-12 20:09:48'),
('BH06', 'ND3484843', '2024-06-15 15:39:07'),
('BH06', 'ND8518960', '2024-06-12 16:55:42'),
('BH07', 'ND3484843', '2024-06-15 15:32:25'),
('BH08', 'ND3484843', '2024-06-15 14:57:00'),
('BH09', 'ND3484843', '2024-06-15 15:37:49'),
('BH10', 'ND3484843', '2024-06-15 16:41:44'),
('BH11', 'ND1103316', '2024-06-12 18:05:24'),
('BH11', 'ND3484843', '2024-06-15 16:27:44'),
('BH12', 'ND3484843', '2024-06-15 16:32:37'),
('BH14', 'ND1103316', '2024-06-12 18:05:25'),
('BH14', 'ND3484843', '2024-06-15 16:27:47'),
('BH15', 'ND3484843', '2024-06-15 15:51:09'),
('BH15', 'ND9040565', '2024-06-14 15:50:59'),
('BH16', 'ND3484843', '2024-06-15 10:47:02'),
('BH17', 'ND3484843', '2024-06-15 16:27:34'),
('BH18', 'ND3484843', '2024-06-15 16:27:49'),
('BH19', 'ND3484843', '2024-06-15 16:41:29'),
('BH20', 'ND3484843', '2024-06-14 19:52:04'),
('BH22', 'ND3484843', '2024-06-12 20:09:54'),
('BH25', 'ND3484843', '2024-06-12 21:04:57'),
('BH28', 'ND3484843', '2024-06-12 20:10:04'),
('BH31', 'ND3484843', '2024-06-14 16:35:14'),
('BH32', 'ND3484843', '2024-06-14 19:50:09'),
('BH33', 'ND3484843', '2024-06-15 16:41:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nghesi`
--

CREATE TABLE `nghesi` (
  `MANS` char(10) NOT NULL,
  `MaQT` char(10) NOT NULL,
  `TenNS` varchar(150) DEFAULT NULL,
  `Anh` text DEFAULT NULL,
  `GioiTinh` tinyint(1) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `MoTa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nghesi`
--

INSERT INTO `nghesi` (`MANS`, `MaQT`, `TenNS`, `Anh`, `GioiTinh`, `NgaySinh`, `MoTa`) VALUES
('NS01', 'US', 'Maroon 5', 'maroon5.jpg', 1, '2024-06-05', 'Maroon 5 là một ban nhạc pop rock người Mỹ đến từ Los Angeles, California. Nổi tiếng từ năm 2004 sau single \"This Love\", sự nghiệp của Maroon 5 liên tục có những bước tiến vững chắc.'),
('NS02', 'US', 'Sabrina Carpenter', 'Sabrina_Carpenter_Vogue.jpg', 0, '1999-05-11', 'Sabrina Ann Lynn Carpenter là một ca sĩ, nhạc sĩ, diễn viên người Mỹ. Cô nổi tiếng với vai diễn Maya Hart trong loạt phim Girl Meets World trên Disney Channel. Cô đóng vai Jenny Parker trong bộ phim Adventures in Babysitting năm 2016, một trong những bộ phim gốc trên Disney Channel.'),
('NS03', 'VN', 'Obito', 'obt_VN.jpg', 1, '2001-09-20', 'Lý Quốc Phong (sinh ngày 20 tháng 9 năm 2001), thường được biết đến với nghệ danh Obito hay Tobiee hay Tobiez, là một nam ca sĩ, rapper người Việt Nam. Anh là thành viên của OTĐ và Ocean M.O.B.'),
('NS04', 'VN', '14 Casper', '14Casper.jpg', 1, '1999-02-14', 'Nguyễn Mạnh Cường, được biết đến với nghệ danh 14 Casper, là một nhạc sĩ, nhà sản xuất âm nhạc Indie người Việt Nam. Anh từng dành được giải thưởng Làn Sóng Xanh lần thứ 25 ở hạng mục Sự kết hợp xuất sắc và giải thưởng TikTok Awards tại hạng mục Âm nhạc của năm'),
('NS05', 'VN', 'Bon Nghiêm', 'bonnghiem.jpg', 1, '2000-06-04', 'Không có'),
('NS06', 'VN', 'Vũ Cát Tường', 'vucattuong.jpg', 0, '1992-10-02', 'Vũ Cát Tường là một nữ ca sĩ, nhạc sĩ và nhà sản xuất thu âm người Việt Nam. Cô được biết đến với khả năng ca hát truyền cảm, những sáng tác kết hợp nhiều thể loại nhạc khác nhau như R&B, neo soul, pop, electropop, blues, jazz, alternative rock, funk, và ballad'),
('NS07', 'GB', 'Bo en', 'boen.jpg', 1, '1991-02-26', 'Calum Thomas Bowen (born 26 February 1991), also known professionally as Bo En (stylized as bo en), is an English musician and video game producer based in London'),
('NS08', 'JP', 'Creepy Nuts ', 'creepynuts.jpg', 1, '2000-06-17', 'Được dịch từ tiếng Anh-Creepy Nuts là bộ đôi hip-hop Nhật Bản bao gồm R-Shitei và DJ Matsunaga, họ đã ra mắt công ty lớn vào năm 2017'),
('NS09', 'US', 'd4vd', 'd4vd.jpg', 1, '2005-03-28', 'David Anthony Burke, được biết đến với nghệ danh D4vd, là một ca sĩ và nhạc sĩ người Mỹ. Anh ấy là người sáng tạo nội dung cho thương hiệu trò chơi và phong cách sống 100 Thieves.'),
('NS10', 'GP', 'Mother Mother ', 'mother_mother.jpg', 1, '2000-06-04', 'Mother Mother là một ban nhạc indie rock người Canada có trụ sở tại Đảo Quadra, British Columbia. Ban nhạc bao gồm Ryan Guldemond về guitar và vocal, Molly Guldemond và Jasmin Parkin về vocal và keyboard, Ali Siadat về trống và Mike Young về bass. Tay bass lâu năm Jeremy Page rời ban nhạc vào năm 2016'),
('NS11', 'GP', 'Sam Smith', 'samsmith.jpg', 1, '1992-05-19', 'Samuel Frederick \"Sam\" Smith là một ca sĩ-nhạc sĩ người Anh. Sam bắt đầu nổi tiếng vào tháng 10 năm 2012 khi hợp tác với Disclosure trong đĩa đơn \"Latch\", single này đã đạt tới vị trí cao nhất là 11 trên bảng xếp hạng UK'),
('NS12', 'DE', 'Kim Petras', 'KimPetras.jpg', 0, '1992-08-27', 'Kim Petras là nữ ca sĩ, nhạc sĩ người Đức. Từ năm 2016 đến 2020, Petras hoạt động âm nhạc với tư cách là một nghệ sĩ độc lập dưới hãng đĩa do chính cô khởi tạo, BunHead Records. Năm 2021, cô chuyển sang ký hợp đồng với hãng Republic Records'),
('NS13', 'BE', 'Stromae', 'stomate.jpg', 1, '1985-03-12', 'Paul van Haver, được biết đến với nghệ danh Stromae, là một ca-nhạc sĩ người Bỉ. Anh đã phát triển sự nghiệp với cả hai dòng nhạc hip hop và nhạc điện tử. Stromae nhận được sự chú ý từ cộng đồng với bài hát \"Alors on danse\", đĩa đơn đã đạt vị trí quán quân trên bảng xếp hạng của một số quốc gia châu Âu'),
('NS14', 'US', 'Sub Urban', 'suburban.jpg', 1, '1999-10-22', 'Daniel Virgil Maisonneuve, được biết đến với nghệ danh Sub Urban, là một ca sĩ kiêm nhạc sĩ người Mỹ nổi tiếng với đĩa đơn ăn khách \"Cradles\".'),
('NS15', 'CA', 'The Weeknd', 'theweeknd.jpg', 1, '1990-02-16', 'Abel Makkonen Tesfaye, được biết đến với nghệ danh The Weeknd, là một ca sĩ, nhạc sĩ sáng tác bài hát và nhà sản xuất thu âm người Canada. Anh được nhiều người biết đến nhờ vào cách sản xuất âm nhạc độc đáo, những sáng tạo nghệ thuật và quãng giọng falsetto đặc trưng của anh.'),
('NS16', 'CA', 'ThxSoMch', 'ThxSoMch.jpg', 1, '2001-06-04', 'Carter De Filippis, được biết đến với nghệ danh ThxSoMch, là một ca sĩ kiêm nhạc sĩ người Canada. Từ Toronto, anh bắt đầu sự nghiệp của mình khi phát hành đĩa đơn đầu tiên, \"Runaway\" vào tháng 9 năm 2022. Thu hút sự chú ý, anh phát hành đĩa đơn lớn nhất của mình \"Spit in My Face!\"'),
('NS17', 'US', 'updog', 'updog.jpg', 1, '1999-06-03', 'Không có'),
('NS18', 'JP', 'ASCA', 'asca.jpg', 0, '1996-09-05', 'Asuka Ōkura, còn được biết đến với nghệ danh Asca, là một ca sĩ và nhạc sĩ người Nhật đã ký hợp đồng với Sony Music và Sacra Music. Cô xuất hiện lần đầu vào năm 2013 sau khi lọt vào vòng chung kết tại Animax All- Japan Anisong Grand Prix lần thứ 5.'),
('NS19', 'CA', 'Justin Bieber', 'Justin_Bieber_in_2015.jpg', 1, '1994-03-01', 'Justin Drew Bieber là một nam ca sĩ kiêm sáng tác nhạc người Canada. Bieber nổi tiếng nhờ khả năng kết hợp đa dạng nhiều dòng nhạc và là nghệ sĩ đóng vai trò quan trọng trong nền âm nhạc đại chúng hiện nay'),
('NS20', 'VN', 'Sơn Tùng MTP', 'sontungmtp.jpg', 1, '1994-07-05', 'Nguyễn Thanh Tùng, thường được biết đến với nghệ danh Sơn Tùng M-TP, là một nam ca sĩ kiêm sáng tác nhạc, rapper, nhà sản xuất thu âm và diễn viên người Việt Nam. Sinh ra ở thành phố Thái Bình, Sơn Tùng thường đi hát ở Cung văn hoá thiếu nhi tỉnh Thái Bình và học chơi đàn organ từ nhỏ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MAND` char(10) NOT NULL,
  `MaLoai` char(10) NOT NULL,
  `MaQT` char(10) NOT NULL,
  `HoTen` varchar(150) DEFAULT NULL,
  `GioiTinh` tinyint(1) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `Email` char(200) DEFAULT NULL,
  `Anh` text DEFAULT NULL,
  `MatKhau` char(100) DEFAULT NULL,
  `ThoiGianTao` datetime DEFAULT NULL,
  `ThoiGianSua` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MAND`, `MaLoai`, `MaQT`, `HoTen`, `GioiTinh`, `NgaySinh`, `Email`, `Anh`, `MatKhau`, `ThoiGianTao`, `ThoiGianSua`) VALUES
('ND01', 'LOAI1', 'VN', 'Mai Văn Tiền', 1, '2004-09-08', 'mvtvn783@gmail.com', 'default.jpg', 'mvttesting', '2024-06-01 13:06:35', '2024-06-01 21:06:35'),
('ND02', 'LOAI2', 'VN', 'Kaioken1', 1, '2004-09-15', 'mvtvn782@gmail.com', 'default.jpg', 'mvttesting', '2024-06-01 13:06:35', '2024-06-01 21:06:35'),
('ND03', 'LOAI3', 'VN', 'Kaioken2', 1, '2004-09-15', 'mvtvn781@gmail.com', 'default.jpg', 'mvttesting', '2024-06-01 13:06:35', '2024-06-01 21:06:35'),
('ND1103316', 'LOAI2', 'VN', 'Mai Văn Tiền', 1, '2004-09-15', 'testing@gmail.com', 'default.jpg', '1', '2024-06-09 22:32:52', '2024-06-09 22:32:52'),
('ND3484843', 'LOAI2', 'VN', 'Huỳnh Anh Đào', 0, '2004-09-15', 'maivantien594dz@gmail.com', 'default.jpg', '123', '2024-06-11 18:13:21', '2024-06-11 18:13:21'),
('ND5655326', 'LOAI2', 'BZ', 'Lưu Sơn Bá', 0, '2024-06-07', 'kaio2@gmail.com', 'default.jpg', 'maitien', '2024-06-09 16:05:11', '2024-06-09 16:05:11'),
('ND8518960', 'LOAI3', 'US', 'Mai Văn Tiền', 1, '2004-09-15', 'kaioken@gmail.com', 'mvt.jpg', 'mvt1', '2024-06-05 22:15:33', '2024-06-10 10:28:25'),
('ND8753615', 'LOAI3', 'VN', 'Mai Văn Tiền', 0, '2004-09-15', 'duongl@gmail.com', 'mvt.jpg', 'mvt1', '2024-06-02 18:38:11', '2024-06-09 15:25:23'),
('ND9040565', 'LOAI2', 'VN', 'Nguyễn Văn B', 1, '2004-09-15', 'vantien594dz@gmail.com', 'default.jpg', 'maitien594', '2024-06-14 15:50:06', '2024-06-14 15:50:06'),
('ND9475846', 'LOAI2', 'VN', 'Mai Văn Tiền', 1, '2004-09-15', 'kaioken2@gmail.com', 'default.jpg', 'mvt1', '2024-06-09 13:09:37', '2024-06-09 18:11:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phathanh_alb`
--

CREATE TABLE `phathanh_alb` (
  `MANS` char(10) NOT NULL,
  `MAALB` char(10) NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phathanh_alb`
--

INSERT INTO `phathanh_alb` (`MANS`, `MAALB`, `ThoiGian`) VALUES
('NS01', 'ALB02', '2024-06-04 22:01:05'),
('NS01', 'ALB19', '2024-06-02 13:41:58'),
('NS02', 'ALB03', '2024-06-08 22:01:25'),
('NS03', 'ALB01', '2024-06-07 22:01:53'),
('NS06', 'ALB04', '2024-06-05 22:02:07'),
('NS07', 'ALB05', '2024-06-04 22:02:51'),
('NS08', 'ALB06', '2024-06-01 22:03:13'),
('NS11', 'ALB10', '2024-06-06 22:04:00'),
('NS12', 'ALB10', '2024-06-05 22:04:17'),
('NS15', 'ALB13', '2024-06-04 22:05:03'),
('NS18', 'ALB16', '2024-06-04 22:05:46'),
('NS19', 'ALB17', '2024-06-03 21:22:22'),
('NS20', 'ALB18', '2024-06-04 21:22:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phathanh_bh`
--

CREATE TABLE `phathanh_bh` (
  `MANS` char(10) NOT NULL,
  `MABH` char(10) NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phathanh_bh`
--

INSERT INTO `phathanh_bh` (`MANS`, `MABH`, `ThoiGian`) VALUES
('NS01', 'BH10', '2024-06-04 22:08:33'),
('NS01', 'BH11', '2024-06-12 22:08:49'),
('NS01', 'BH14', '2024-06-05 22:09:57'),
('NS01', 'BH15', '2024-06-04 22:10:10'),
('NS01', 'BH16', '2024-06-03 22:10:18'),
('NS01', 'BH17', '2024-06-04 22:10:53'),
('NS01', 'BH18', '2024-06-04 22:11:00'),
('NS01', 'BH19', '2024-06-04 22:11:36'),
('NS02', 'BH12', '2024-06-05 22:09:01'),
('NS03', 'BH01', '2024-06-01 22:06:31'),
('NS03', 'BH02', '2024-06-06 22:07:08'),
('NS03', 'BH03', '2024-06-03 22:07:24'),
('NS03', 'BH05', '2024-06-04 22:07:33'),
('NS03', 'BH06', '2024-06-03 22:07:44'),
('NS03', 'BH07', '2024-06-05 22:07:55'),
('NS03', 'BH08', '2024-06-03 22:08:08'),
('NS03', 'BH09', '2024-06-05 22:08:18'),
('NS06', 'BH20', '2024-06-05 22:11:09'),
('NS07', 'BH21', '2024-06-03 22:11:49'),
('NS08', 'BH22', '2024-06-04 22:12:18'),
('NS11', 'BH25', '2024-06-04 22:13:49'),
('NS12', 'BH25', '2024-06-04 22:14:18'),
('NS15', 'BH28', '2024-06-04 22:15:48'),
('NS18', 'BH31', '2024-06-02 22:17:21'),
('NS19', 'BH32', '2024-06-04 21:23:10'),
('NS20', 'BH33', '2024-06-04 21:23:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quoctich`
--

CREATE TABLE `quoctich` (
  `MaQT` char(10) NOT NULL,
  `TenQT` char(150) DEFAULT NULL,
  `Anh` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quoctich`
--

INSERT INTO `quoctich` (`MaQT`, `TenQT`, `Anh`) VALUES
('AD', 'AndorrA', 'default.jpg'),
('AE', 'United Arab Emirates', 'default.jpg'),
('AF', 'Afghanistan', 'default.jpg'),
('AG', 'Antigua and Barbuda', 'default.jpg'),
('AI', 'Anguilla', 'default.jpg'),
('AL', 'Albania', 'default.jpg'),
('AM', 'Armenia', 'default.jpg'),
('AN', 'Netherlands Antilles', 'default.jpg'),
('AO', 'Angola', 'default.jpg'),
('AQ', 'Antarctica', 'default.jpg'),
('AR', 'Argentina', 'default.jpg'),
('AS', 'American Samoa', 'default.jpg'),
('AT', 'Austria', 'default.jpg'),
('AU', 'Australia', 'default.jpg'),
('AW', 'Aruba', 'default.jpg'),
('AX', 'Åland Islands', 'default.jpg'),
('AZ', 'Azerbaijan', 'default.jpg'),
('BA', 'Bosnia and Herzegovina', 'default.jpg'),
('BB', 'Barbados', 'default.jpg'),
('BD', 'Bangladesh', 'default.jpg'),
('BE', 'Belgium', 'default.jpg'),
('BF', 'Burkina Faso', 'default.jpg'),
('BG', 'Bulgaria', 'default.jpg'),
('BH', 'Bahrain', 'default.jpg'),
('BI', 'Burundi', 'default.jpg'),
('BJ', 'Benin', 'default.jpg'),
('BM', 'Bermuda', 'default.jpg'),
('BN', 'Brunei Darussalam', 'default.jpg'),
('BO', 'Bolivia', 'default.jpg'),
('BR', 'Brazil', 'default.jpg'),
('BS', 'Bahamas', 'default.jpg'),
('BT', 'Bhutan', 'default.jpg'),
('BV', 'Bouvet Island', 'default.jpg'),
('BW', 'Botswana', 'default.jpg'),
('BY', 'Belarus', 'default.jpg'),
('BZ', 'Belize', 'default.jpg'),
('CA', 'Canada', 'default.jpg'),
('CC', 'Cocos (Keeling) Islands', 'default.jpg'),
('CD', 'Congo, The Democratic Republic of the', 'default.jpg'),
('CF', 'Central African Republic', 'default.jpg'),
('CG', 'Congo', 'default.jpg'),
('CH', 'Switzerland', 'default.jpg'),
('CI', 'Cote D\"Ivoire', 'default.jpg'),
('CK', 'Cook Islands', 'default.jpg'),
('CL', 'Chile', 'default.jpg'),
('CM', 'Cameroon', 'default.jpg'),
('CN', 'China', 'default.jpg'),
('CO', 'Colombia', 'default.jpg'),
('CR', 'Costa Rica', 'default.jpg'),
('CS', 'Serbia and Montenegro', 'default.jpg'),
('CU', 'Cuba', 'default.jpg'),
('CV', 'Cape Verde', 'default.jpg'),
('CX', 'Christmas Island', 'default.jpg'),
('CY', 'Cyprus', 'default.jpg'),
('CZ', 'Czech Republic', 'default.jpg'),
('DE', 'Germany', 'default.jpg'),
('DJ', 'Djibouti', 'default.jpg'),
('DK', 'Denmark', 'default.jpg'),
('DM', 'Dominica', 'default.jpg'),
('DO', 'Dominican Republic', 'default.jpg'),
('DZ', 'Algeria', 'default.jpg'),
('EC', 'Ecuador', 'default.jpg'),
('EE', 'Estonia', 'default.jpg'),
('EG', 'Egypt', 'default.jpg'),
('EH', 'Western Sahara', 'default.jpg'),
('ER', 'Eritrea', 'default.jpg'),
('ES', 'Spain', 'default.jpg'),
('ET', 'Ethiopia', 'default.jpg'),
('FI', 'Finland', 'default.jpg'),
('FJ', 'Fiji', 'default.jpg'),
('FK', 'Falkland Islands (Malvinas)', 'default.jpg'),
('FM', 'Micronesia, Federated States of', 'default.jpg'),
('FO', 'Faroe Islands', 'default.jpg'),
('FR', 'France', 'default.jpg'),
('GA', 'Gabon', 'default.jpg'),
('GB', 'United Kingdom', 'default.jpg'),
('GD', 'Grenada', 'default.jpg'),
('GE', 'Georgia', 'default.jpg'),
('GF', 'French Guiana', 'default.jpg'),
('GG', 'Guernsey', 'default.jpg'),
('GH', 'Ghana', 'default.jpg'),
('GI', 'Gibraltar', 'default.jpg'),
('GL', 'Greenland', 'default.jpg'),
('GM', 'Gambia', 'default.jpg'),
('GN', 'Guinea', 'default.jpg'),
('GP', 'Guadeloupe', 'default.jpg'),
('GQ', 'Equatorial Guinea', 'default.jpg'),
('GR', 'Greece', 'default.jpg'),
('GS', 'South Georgia and the South Sandwich Islands', 'default.jpg'),
('GT', 'Guatemala', 'default.jpg'),
('GU', 'Guam', 'default.jpg'),
('GW', 'Guinea-Bissau', 'default.jpg'),
('GY', 'Guyana', 'default.jpg'),
('HK', 'Hong Kong', 'default.jpg'),
('HM', 'Heard Island and Mcdonald Islands', 'default.jpg'),
('HN', 'Honduras', 'default.jpg'),
('HR', 'Croatia', 'default.jpg'),
('HT', 'Haiti', 'default.jpg'),
('HU', 'Hungary', 'default.jpg'),
('ID', 'Indonesia', 'default.jpg'),
('IE', 'Ireland', 'default.jpg'),
('IL', 'Israel', 'default.jpg'),
('IM', 'Isle of Man', 'default.jpg'),
('IN', 'India', 'default.jpg'),
('IO', 'British Indian Ocean Territory', 'default.jpg'),
('IQ', 'Iraq', 'default.jpg'),
('IR', 'Iran, Islamic Republic Of', 'default.jpg'),
('IS', 'Iceland', 'default.jpg'),
('IT', 'Italy', 'default.jpg'),
('JE', 'Jersey', 'default.jpg'),
('JM', 'Jamaica', 'default.jpg'),
('JO', 'Jordan', 'default.jpg'),
('JP', 'Japan', 'default.jpg'),
('KE', 'Kenya', 'default.jpg'),
('KG', 'Kyrgyzstan', 'default.jpg'),
('KH', 'Cambodia', 'default.jpg'),
('KI', 'Kiribati', 'default.jpg'),
('KM', 'Comoros', 'default.jpg'),
('KN', 'Saint Kitts and Nevis', 'default.jpg'),
('KP', 'Korea, Democratic People\"S Republic of', 'default.jpg'),
('KR', 'Korea, Republic of', 'default.jpg'),
('KW', 'Kuwait', 'default.jpg'),
('KY', 'Cayman Islands', 'default.jpg'),
('KZ', 'Kazakhstan', 'default.jpg'),
('LA', 'Lao People Democratic Republic', 'default.jpg'),
('LB', 'Lebanon', 'default.jpg'),
('LC', 'Saint Lucia', 'default.jpg'),
('LI', 'Liechtenstein', 'default.jpg'),
('LK', 'Sri Lanka', 'default.jpg'),
('LR', 'Liberia', 'default.jpg'),
('LS', 'Lesotho', 'default.jpg'),
('LT', 'Lithuania', 'default.jpg'),
('LU', 'Luxembourg', 'default.jpg'),
('LV', 'Latvia', 'default.jpg'),
('LY', 'Libyan Arab Jamahiriya', 'default.jpg'),
('MA', 'Morocco', 'default.jpg'),
('MC', 'Monaco', 'default.jpg'),
('MD', 'Moldova, Republic of', 'default.jpg'),
('MG', 'Madagascar', 'default.jpg'),
('MH', 'Marshall Islands', 'default.jpg'),
('MK', 'Macedonia, The Former Yugoslav Republic of', 'default.jpg'),
('ML', 'Mali', 'default.jpg'),
('MM', 'Myanmar', 'default.jpg'),
('MN', 'Mongolia', 'default.jpg'),
('MO', 'Macao', 'default.jpg'),
('MP', 'Northern Mariana Islands', 'default.jpg'),
('MQ', 'Martinique', 'default.jpg'),
('MR', 'Mauritania', 'default.jpg'),
('MS', 'Montserrat', 'default.jpg'),
('MT', 'Malta', 'default.jpg'),
('MU', 'Mauritius', 'default.jpg'),
('MV', 'Maldives', 'default.jpg'),
('MW', 'Malawi', 'default.jpg'),
('MX', 'Mexico', 'default.jpg'),
('MY', 'Malaysia', 'default.jpg'),
('MZ', 'Mozambique', 'default.jpg'),
('NA', 'Namibia', 'default.jpg'),
('NC', 'New Caledonia', 'default.jpg'),
('NE', 'Niger', 'default.jpg'),
('NF', 'Norfolk Island', 'default.jpg'),
('NG', 'Nigeria', 'default.jpg'),
('NI', 'Nicaragua', 'default.jpg'),
('NL', 'Netherlands', 'default.jpg'),
('NO', 'Norway', 'default.jpg'),
('NP', 'Nepal', 'default.jpg'),
('NR', 'Nauru', 'default.jpg'),
('NU', 'Niue', 'default.jpg'),
('NZ', 'New Zealand', 'default.jpg'),
('OM', 'Oman', 'default.jpg'),
('PA', 'Panama', 'default.jpg'),
('PE', 'Peru', 'default.jpg'),
('PF', 'French Polynesia', 'default.jpg'),
('PG', 'Papua New Guinea', 'default.jpg'),
('PH', 'Philippines', 'default.jpg'),
('PK', 'Pakistan', 'default.jpg'),
('PL', 'Poland', 'default.jpg'),
('PM', 'Saint Pierre and Miquelon', 'default.jpg'),
('PN', 'Pitcairn', 'default.jpg'),
('PR', 'Puerto Rico', 'default.jpg'),
('PS', 'Palestinian Territory, Occupied', 'default.jpg'),
('PT', 'Portugal', 'default.jpg'),
('PW', 'Palau', 'default.jpg'),
('PY', 'Paraguay', 'default.jpg'),
('QA', 'Qatar', 'default.jpg'),
('RE', 'Reunion', 'default.jpg'),
('RO', 'Romania', 'default.jpg'),
('RU', 'Russian Federation', 'default.jpg'),
('RW', 'RWANDA', 'default.jpg'),
('SA', 'Saudi Arabia', 'default.jpg'),
('SB', 'Solomon Islands', 'default.jpg'),
('SC', 'Seychelles', 'default.jpg'),
('SD', 'Sudan', 'default.jpg'),
('SE', 'Sweden', 'default.jpg'),
('SG', 'Singapore', 'default.jpg'),
('SH', 'Saint Helena', 'default.jpg'),
('SI', 'Slovenia', 'default.jpg'),
('SJ', 'Svalbard and Jan Mayen', 'default.jpg'),
('SK', 'Slovakia', 'default.jpg'),
('SL', 'Sierra Leone', 'default.jpg'),
('SM', 'San Marino', 'default.jpg'),
('SN', 'Senegal', 'default.jpg'),
('SO', 'Somalia', 'default.jpg'),
('SR', 'Suriname', 'default.jpg'),
('ST', 'Sao Tome and Principe', 'default.jpg'),
('SV', 'El Salvador', 'default.jpg'),
('SY', 'Syrian Arab Republic', 'default.jpg'),
('SZ', 'Swaziland', 'default.jpg'),
('T', 't', 'default.jpg'),
('TC', 'Turks and Caicos Islands', 'default.jpg'),
('TD', 'Chad', 'default.jpg'),
('TF', 'French Southern Territories', 'default.jpg'),
('TG', 'Togo', 'default.jpg'),
('TH', 'Thailand', 'default.jpg'),
('TJ', 'Tajikistan', 'default.jpg'),
('TK', 'Tokelau', 'default.jpg'),
('TL', 'Timor-Leste', 'default.jpg'),
('TM', 'Turkmenistan', 'default.jpg'),
('TN', 'Tunisia', 'default.jpg'),
('TO', 'Tonga', 'default.jpg'),
('TR', 'Turkey', 'default.jpg'),
('TT', 'Trinidad and Tobago', 'default.jpg'),
('TV', 'Tuvalu', 'default.jpg'),
('TW', 'Taiwan Province of China', 'default.jpg'),
('TZ', 'Tanzania United Republic of', 'default.jpg'),
('UA', 'Ukraine', 'default.jpg'),
('UG', 'Uganda', 'default.jpg'),
('UM', 'United States Minor Outlying Islands', 'default.jpg'),
('US', 'United States', 'default.jpg'),
('UY', 'Uruguay', 'default.jpg'),
('UZ', 'Uzbekistan', 'default.jpg'),
('VA', 'Holy See (Vatican City State)', 'default.jpg'),
('VC', 'Saint Vincent and the Grenadines', 'default.jpg'),
('VE', 'Venezuela', 'default.jpg'),
('VG', 'Virgin Islands, British', 'default.jpg'),
('VI', 'Virgin Islands, U.S.', 'default.jpg'),
('VN', 'Viet Nam', 'default.jpg'),
('VU', 'Vanuatu', 'default.jpg'),
('WF', 'Wallis and Futuna', 'default.jpg'),
('WS', 'Samoa', 'default.jpg'),
('YE', 'Yemen', 'default.jpg'),
('YT', 'Mayotte', 'default.jpg'),
('ZA', 'South Africa', 'default.jpg'),
('ZM', 'Zambia', 'default.jpg'),
('ZW', 'Zimbabwe', 'default.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `MATL` char(10) NOT NULL,
  `TenTL` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`MATL`, `TenTL`) VALUES
('TL01', 'Pop'),
('TL02', 'Rock'),
('TL03', 'Jazz'),
('TL04', 'Blues'),
('TL05', 'R&B/Soul'),
('TL06', 'HipHop'),
('TL07', 'EDM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theodoi`
--

CREATE TABLE `theodoi` (
  `MAND` char(10) NOT NULL,
  `MANS` char(10) NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `theodoi`
--

INSERT INTO `theodoi` (`MAND`, `MANS`, `ThoiGian`) VALUES
('ND01', 'NS01', '2024-06-06 20:28:11'),
('ND01', 'NS02', '2024-06-04 20:28:23'),
('ND02', 'NS02', '2024-06-12 20:28:19'),
('ND03', 'NS02', '2024-06-28 20:28:30'),
('ND3484843', 'NS02', '2024-06-15 15:52:48'),
('ND3484843', 'NS03', '2024-06-15 15:52:50'),
('ND3484843', 'NS20', '2024-06-15 10:38:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeuthich`
--

CREATE TABLE `yeuthich` (
  `MAND` char(10) NOT NULL,
  `MABH` char(10) NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `yeuthich`
--

INSERT INTO `yeuthich` (`MAND`, `MABH`, `ThoiGian`) VALUES
('ND01', 'BH06', '2024-06-05 20:28:43'),
('ND01', 'BH12', '2024-06-02 20:28:48'),
('ND02', 'BH06', '2024-06-06 20:28:53'),
('ND3484843', 'BH11', '2024-06-14 20:58:32'),
('ND3484843', 'BH12', '2024-06-14 20:29:26'),
('ND3484843', 'BH16', '2024-06-14 18:13:48'),
('ND3484843', 'BH33', '2024-06-15 10:38:46');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`MAALB`);

--
-- Chỉ mục cho bảng `baihat`
--
ALTER TABLE `baihat`
  ADD PRIMARY KEY (`MABH`),
  ADD KEY `FK_THUOC_ALB` (`MAALB`),
  ADD KEY `FK_THUOC_TL` (`MATL`);

--
-- Chỉ mục cho bảng `loaind`
--
ALTER TABLE `loaind`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `nghenhac`
--
ALTER TABLE `nghenhac`
  ADD PRIMARY KEY (`MABH`,`MAND`),
  ADD KEY `FK_NGHENHAC` (`MAND`);

--
-- Chỉ mục cho bảng `nghesi`
--
ALTER TABLE `nghesi`
  ADD PRIMARY KEY (`MANS`),
  ADD KEY `FK_THUOC_QT` (`MaQT`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MAND`),
  ADD KEY `FK_THUOC_QG` (`MaQT`),
  ADD KEY `FK_Thuoc_ND` (`MaLoai`);

--
-- Chỉ mục cho bảng `phathanh_alb`
--
ALTER TABLE `phathanh_alb`
  ADD PRIMARY KEY (`MANS`,`MAALB`),
  ADD KEY `FK_PHATHANH_ALB` (`MAALB`);

--
-- Chỉ mục cho bảng `phathanh_bh`
--
ALTER TABLE `phathanh_bh`
  ADD PRIMARY KEY (`MANS`,`MABH`),
  ADD KEY `FK_PHATHANH_BH` (`MABH`);

--
-- Chỉ mục cho bảng `quoctich`
--
ALTER TABLE `quoctich`
  ADD PRIMARY KEY (`MaQT`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`MATL`);

--
-- Chỉ mục cho bảng `theodoi`
--
ALTER TABLE `theodoi`
  ADD PRIMARY KEY (`MAND`,`MANS`),
  ADD KEY `FK_THEODOI` (`MANS`);

--
-- Chỉ mục cho bảng `yeuthich`
--
ALTER TABLE `yeuthich`
  ADD PRIMARY KEY (`MAND`,`MABH`),
  ADD KEY `FK_YEUTHICH` (`MABH`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baihat`
--
ALTER TABLE `baihat`
  ADD CONSTRAINT `FK_THUOC_ALB` FOREIGN KEY (`MAALB`) REFERENCES `album` (`MAALB`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_THUOC_TL` FOREIGN KEY (`MATL`) REFERENCES `theloai` (`MATL`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nghenhac`
--
ALTER TABLE `nghenhac`
  ADD CONSTRAINT `FK_NGHENHAC` FOREIGN KEY (`MAND`) REFERENCES `nguoidung` (`MAND`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NGHENHAC2` FOREIGN KEY (`MABH`) REFERENCES `baihat` (`MABH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nghesi`
--
ALTER TABLE `nghesi`
  ADD CONSTRAINT `FK_THUOC_QT` FOREIGN KEY (`MaQT`) REFERENCES `quoctich` (`MaQT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `FK_THUOC_QG` FOREIGN KEY (`MaQT`) REFERENCES `quoctich` (`MaQT`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Thuoc_ND` FOREIGN KEY (`MaLoai`) REFERENCES `loaind` (`MaLoai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phathanh_alb`
--
ALTER TABLE `phathanh_alb`
  ADD CONSTRAINT `FK_PHATHANH_ALB` FOREIGN KEY (`MAALB`) REFERENCES `album` (`MAALB`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PHATHANH_ALB2` FOREIGN KEY (`MANS`) REFERENCES `nghesi` (`MANS`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phathanh_bh`
--
ALTER TABLE `phathanh_bh`
  ADD CONSTRAINT `FK_PHATHANH_BH` FOREIGN KEY (`MABH`) REFERENCES `baihat` (`MABH`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PHATHANH_BH2` FOREIGN KEY (`MANS`) REFERENCES `nghesi` (`MANS`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `theodoi`
--
ALTER TABLE `theodoi`
  ADD CONSTRAINT `FK_THEODOI` FOREIGN KEY (`MANS`) REFERENCES `nghesi` (`MANS`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_THEODOI2` FOREIGN KEY (`MAND`) REFERENCES `nguoidung` (`MAND`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `yeuthich`
--
ALTER TABLE `yeuthich`
  ADD CONSTRAINT `FK_YEUTHICH` FOREIGN KEY (`MABH`) REFERENCES `baihat` (`MABH`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_YEUTHICH2` FOREIGN KEY (`MAND`) REFERENCES `nguoidung` (`MAND`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
