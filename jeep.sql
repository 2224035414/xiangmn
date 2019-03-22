-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-03-20 06:21:11
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jeep`
--

-- --------------------------------------------------------

--
-- 表的结构 `jeep_car`
--

CREATE TABLE `jeep_car` (
  `lid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL,
  `disk` varchar(32) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `jeep_car_family`
--

CREATE TABLE `jeep_car_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `jeep_car_pic`
--

CREATE TABLE `jeep_car_pic` (
  `pid` int(11) NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeep_car_pic`
--

INSERT INTO `jeep_car_pic` (`pid`, `car_id`, `sm`, `md`) VALUES
(1, 1, 'images/product_details/ziyouxia/sm1.jpg', 'images/product_details/ziyouxia/md1.jpg'),
(2, 1, 'images/product_details/ziyouxia/sm2.jpg', 'images/product_details/ziyouxia/md2.jpg'),
(3, 2, 'images/product_details/mumaren/sm1.jpg', 'images/product_details/mumaren/md1.png'),
(4, 2, 'images/product_details/mumaren/sm2.jpg', 'images/product_details/mumaren/md2.jpg'),
(5, 2, 'images/product_details/mumaren/sm3.jpg', 'images/product_details/mumaren/md3.jpg'),
(6, 2, 'images/product_details/mumaren/sm4.jpg', 'images/product_details/mumaren/md4.jpg'),
(7, 3, 'images/product_details/zhihuiguan/sm1.jpg', 'images/product_details/zhihuiguan/md1.jpg'),
(9, 3, 'images/product_details/zhihuiguan/sm3.jpg', 'images/product_details/zhihuiguan/md3.jpg'),
(10, 3, 'images/product_details/zhihuiguan/sm4.jpg', 'images/product_details/zhihuiguan/md4.jpg'),
(11, 3, 'images/product_details/zhihuiguan/sm5.jpg', 'images/product_details/zhihuiguan/md5.jpg'),
(13, 4, 'images/product_details/8b075cb6-0c18-41b6-aca7-766c0177416f-thumbnail.jpg', 'images/product_details/8b075cb6-0c18-41b6-aca7-766c0177416f-source.jpg'),
(14, 4, 'images/product_details/9c8709c5-eaee-4ad0-bfa9-0a77dd62b264-thumbnail.jpg', 'images/product_details/9c8709c5-eaee-4ad0-bfa9-0a77dd62b264-source.jpg'),
(15, 4, 'images/product_details/db2c6057-2775-445d-8908-51c71cca3a5f-thumbnail.jpg', 'images/product_details/db2c6057-2775-445d-8908-51c71cca3a5f-source.jpg'),
(16, 5, 'images/product_details/ziyouguang/sm1.jpg', 'images/product_details/ziyouguang/md1.jpg'),
(17, 5, 'images/product_details/ziyouguang/sm2.jpg', 'images/product_details/ziyouguang/md2.png');

-- --------------------------------------------------------

--
-- 表的结构 `jeep_comment`
--

CREATE TABLE `jeep_comment` (
  `id` int(11) NOT NULL,
  `nid` int(11) DEFAULT NULL,
  `user_name` varchar(25) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `content` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeep_comment`
--

INSERT INTO `jeep_comment` (`id`, `nid`, `user_name`, `ctime`, `content`) VALUES
(1, 1, 'dd', '2018-12-08 15:43:56', '111'),
(2, 2, NULL, '2018-12-08 15:44:35', '123456'),
(3, 2, NULL, '2018-12-08 15:44:43', 'hahahaahahhahaha'),
(4, 1, NULL, '2018-12-10 19:09:58', '123213321321321'),
(5, 5, NULL, '2018-12-10 19:56:50', '123132'),
(6, 5, 'dingding', '2018-12-10 19:57:19', '123');

-- --------------------------------------------------------

--
-- 表的结构 `jeep_index_carousel`
--

CREATE TABLE `jeep_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeep_index_carousel`
--

INSERT INTO `jeep_index_carousel` (`cid`, `img`, `title`, `href`) VALUES
(1, 'images/lunbo1.jpg', '轮播广告图片1', 'product_details.html?lid=1'),
(2, 'images/lunbo2.jpg', '轮播广告图片2', 'product_details.html?lid=2'),
(3, 'images/lunbo10.jpg', '轮播广告图片10', 'product_details.html?lid=3'),
(4, 'images/lunbo7.jpg', '轮播广告图片7', 'product_details.html?lid=4');

-- --------------------------------------------------------

--
-- 表的结构 `jeep_index_product`
--

CREATE TABLE `jeep_index_product` (
  `pid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `seq_recommended` tinyint(4) DEFAULT NULL,
  `seq_new_arrival` tinyint(4) DEFAULT NULL,
  `seq_top_sale` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeep_index_product`
--

INSERT INTO `jeep_index_product` (`pid`, `title`, `details`, `pic`, `price`, `href`, `seq_recommended`, `seq_new_arrival`, `seq_top_sale`) VALUES
(1, '自由侠', '全新jeep自由侠专业级超驾越野SUV', 'images/bsuv.png', '13.48', 'product_details.html?lid=1', 1, 1, 1),
(2, '进口牧马人', '进口jeep牧马人', 'images/jk.png', '42.99', 'product_details.html?lid=3', 3, 3, 3),
(3, '牧马人', '全新一代jeep牧马人全球偶像SUV', 'images/jl.png', '42.99', 'product_details.html?lid=6', 6, 6, 6),
(4, '指挥官', '全新jeep大指挥官专业级全场合高端七座SUV', 'images/k8.png', '27.98', 'product_details.html?lid=5', 5, 5, 5),
(5, '大切诺基', '进口jeep全新大切诺基进口专业级豪华SUV', 'images/wk.png', '52.99', 'product_details.html?lid=2', 2, 2, 2),
(6, '自由光', '全新jeep自由光专业级高端中型城市SUV', 'images/k4.png', '20.98', 'product_details.html?lid=4', 4, 4, 4);

-- --------------------------------------------------------

--
-- 表的结构 `jeep_jingxiaoshang`
--

CREATE TABLE `jeep_jingxiaoshang` (
  `id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `dizhi` varchar(128) DEFAULT NULL,
  `phone` varchar(128) DEFAULT NULL,
  `img` varchar(40) DEFAULT NULL,
  `neirong1` varchar(128) DEFAULT NULL,
  `neirong2` varchar(128) DEFAULT NULL,
  `neirong3` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeep_jingxiaoshang`
--

INSERT INTO `jeep_jingxiaoshang` (`id`, `title`, `dizhi`, `phone`, `img`, `neirong1`, `neirong2`, `neirong3`) VALUES
(1, '山西越驰吉普汽车销售服务有限公司', '山西省太原市万柏林区新晋祠路36号汇豪新能源汽贸城', '0351-7212345', 'images/jingxiaoshang/1.jpg', '中型SUV市场竞争愈加激烈 全新 Jeep 自由光 20 万内起售', 'Jeep新自由光前景展望：或售19.98万元起 2.0T车型竞争力强', '全新Jeep大指挥官广州车展包揽多个奖项'),
(2, '山西大昌联品汽车销售服务有限公司', '太原市平阳南路88号（大昌汽贸园立体展厅3层）', '0351-7328666', 'images/jingxiaoshang/2.jpg', '中型SUV市场竞争愈加激烈 全新 Jeep 自由光 20 万内起售', '精致小女人和她的“南”朋友', '越过山丘，趁还没白了头'),
(3, '山西诺维兰集团运城瑞鼎汽车销售服务有限公司', '山西省运城市盐湖工业园南风大道3号（曹允村对面）', '0359-8711222', 'images/jingxiaoshang/3.jpg', '中型SUV市场竞争愈加激烈 全新 Jeep 自由光 20 万内起售', ' 想说走就走自驾游 Jeep指挥官整装待发', '换了自由光，才知道谁是我的真爱SUV'),
(4, '长治市飞路之星汽车销售服务有限公司', '长治市高新技术开发区太行北路158号', '0355-6016606', 'images/jingxiaoshang/4.jpg', '中型SUV市场竞争愈加激烈 全新 Jeep 自由光 20 万内起售', '年底购车广州车展看花眼？看这位全球偶像就够了', '越过山丘，趁还没白了头'),
(5, '晋城东越汽贸有限公司', '晋城市泽州北路4848号公交总公司对面', '0356-8886299', 'images/jingxiaoshang/5.jpg', '中型SUV市场竞争愈加激烈 全新 Jeep 自由光 20 万内起售', '省心还省钱 金融白领亲述指南者的好', '全新Jeep自有广告缘何备受瞩目'),
(6, '朔州市骏神汽车销售服务有限公司', '山西省朔州市朔城区下团堡乡下庄头村东', '0349-8855602', 'images/jingxiaoshang/6.jpg', '中型SUV市场竞争愈加激烈 全新 Jeep 自由光 20 万内起售', '精美材质的自由侠 帮你追求触感刺激 ', '指南者悦享版，感受Jeeper的玩家精神 ');

-- --------------------------------------------------------

--
-- 表的结构 `jeep_laptop`
--

CREATE TABLE `jeep_laptop` (
  `lid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeep_laptop`
--

INSERT INTO `jeep_laptop` (`lid`, `family_id`, `title`, `subtitle`, `price`, `shelf_time`, `sold_count`, `is_onsale`, `img`) VALUES
(1, 1, '自由侠', '全新jeep自由侠专业级超驾越野SUV', '13.48', 150123456789, 2968, 1, 'images/bsuv.png'),
(2, 2, '进口牧马人', '进口jeep牧马人', '42.99', 150123456789, 2968, 1, 'images/jk.png'),
(3, 2, '牧马人', '全新jeep自由侠专业级超驾越野SUV', '42.99', 150123456789, 2968, 1, 'images/jl.png'),
(4, 3, '指挥官', '全新jeep自由侠专业级超驾越野SUV', '27.98', 150123456789, 2968, 1, 'images/k8.png'),
(5, 4, '大切诺基', '进口jeep全新大切诺基进口专业级豪华SUV', '52.99', 150123456789, 2968, 1, 'images/wk.png'),
(6, 5, '自由光', '全新jeep自由光专业级高端中型城市SUV', '20.98', 150123456789, 2968, 1, 'images/k4.png');

-- --------------------------------------------------------

--
-- 表的结构 `jeep_login`
--

CREATE TABLE `jeep_login` (
  `id` int(11) NOT NULL,
  `uname` varchar(25) NOT NULL DEFAULT '',
  `upwd` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeep_login`
--

INSERT INTO `jeep_login` (`id`, `uname`, `upwd`) VALUES
(1, 'dongdong', '202cb962ac59075b964b07152d234b70'),
(2, 'tom', '202cb962ac59075b964b07152d234b70'),
(3, 'dingding', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- 表的结构 `jeep_news`
--

CREATE TABLE `jeep_news` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeep_news`
--

INSERT INTO `jeep_news` (`id`, `title`, `ctime`, `point`, `img_url`, `content`) VALUES
(1, '全新jeep自由光', '2018-11-29 16:29:07', 0, 'http://127.0.0.1:3000/img/nav-cars-news-k4.jpg', '..'),
(2, '全新jeep大指挥官', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/1.jpg', '..'),
(3, '全新jeep大切诺基', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/nav-cars-news-wk.jpg', '..'),
(5, 'jeep新生活', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/1.jpg', '..'),
(6, 'jeep', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/nav-cars-news-k85.jpg', '..'),
(7, 'jeep1', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/nav-cars-news-k85.jpg', '..'),
(8, 'jeep2', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/nav-cars-news-k85.jpg', '..'),
(9, 'jeep3', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/9c8709c5-eaee-4ad0-bfa9-0a77dd62b264-source.jpg', '..'),
(11, 'jeep4', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/9c8709c5-eaee-4ad0-bfa9-0a77dd62b264-source.jpg', '..'),
(12, 'jeep5', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/1.jpg', '..'),
(13, 'jeep6', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/9c8709c5-eaee-4ad0-bfa9-0a77dd62b264-source.jpg', '..'),
(14, 'jeep7', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/9c8709c5-eaee-4ad0-bfa9-0a77dd62b264-source.jpg', '..'),
(15, 'jeep8', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/9c8709c5-eaee-4ad0-bfa9-0a77dd62b264-source.jpg', '..'),
(16, 'jeep8', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/1.jpg', '..'),
(17, 'jeep9', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/1.jpg', '..'),
(18, 'jeep10', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/1.jpg', '..'),
(19, 'jeep11', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/1.jpg', '..'),
(21, 'jeep12', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/1.jpg', '..'),
(22, 'jeep13', '2018-11-29 16:29:08', 0, 'http://127.0.0.1:3000/img/1.jpg', '..');

-- --------------------------------------------------------

--
-- 表的结构 `jeep_order`
--

CREATE TABLE `jeep_order` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `jeep_receiver_address`
--

CREATE TABLE `jeep_receiver_address` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `jeep_shoppingcart_item`
--

CREATE TABLE `jeep_shoppingcart_item` (
  `iid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeep_shoppingcart_item`
--

INSERT INTO `jeep_shoppingcart_item` (`iid`, `user_id`, `product_id`, `count`, `is_checked`) VALUES
(1, 1, 17, 1, 0),
(2, 1, 11, 1, 0),
(3, 1, 1, 1, 1),
(4, 2, 3, 9, 0),
(5, 3, 1, 1, 0),
(97, 3, 1, 3, 0),
(98, 3, 1, 3, 0),
(99, 3, 1, 3, 0),
(100, 3, 1, 3, 0),
(101, 3, 1, 3, 0),
(102, 3, 1, 3, 0),
(103, 3, 1, 3, 0),
(104, 3, 1, 3, 0),
(105, 3, 1, 3, 0),
(106, 3, 1, 3, 0),
(107, 3, 1, 3, 0),
(108, 3, 1, 3, 0),
(109, 3, 1, 3, 0),
(110, 3, 1, 3, 0),
(111, 3, 1, 3, 0),
(112, 3, 1, 3, 0),
(113, 3, 1, 3, 0),
(114, 3, 1, 3, 0),
(115, 3, 4, 1, 0),
(116, 3, 2, 1, 0),
(117, 3, 4, 10, 0),
(118, 3, 3, 2, 0),
(119, 3, 3, 18, 0),
(120, 3, 3, 4, 0),
(121, 3, 2, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `jeep_user`
--

CREATE TABLE `jeep_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(25) NOT NULL DEFAULT '',
  `user_pwd` varchar(32) NOT NULL DEFAULT '',
  `user_email` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeep_user`
--

INSERT INTO `jeep_user` (`user_id`, `user_name`, `user_pwd`, `user_email`) VALUES
(1, 'tom', '123456', 'tom@qq.com'),
(2, 'TingPig', '123456', 'Ting@163.com'),
(3, 'james', '456789', 'hhh@163.com.cn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jeep_car`
--
ALTER TABLE `jeep_car`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `jeep_car_family`
--
ALTER TABLE `jeep_car_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `jeep_car_pic`
--
ALTER TABLE `jeep_car_pic`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `jeep_comment`
--
ALTER TABLE `jeep_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jeep_index_carousel`
--
ALTER TABLE `jeep_index_carousel`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `jeep_index_product`
--
ALTER TABLE `jeep_index_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `jeep_order`
--
ALTER TABLE `jeep_order`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `jeep_receiver_address`
--
ALTER TABLE `jeep_receiver_address`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `jeep_shoppingcart_item`
--
ALTER TABLE `jeep_shoppingcart_item`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `jeep_user`
--
ALTER TABLE `jeep_user`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `jeep_car`
--
ALTER TABLE `jeep_car`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `jeep_car_family`
--
ALTER TABLE `jeep_car_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `jeep_car_pic`
--
ALTER TABLE `jeep_car_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `jeep_comment`
--
ALTER TABLE `jeep_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `jeep_index_carousel`
--
ALTER TABLE `jeep_index_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `jeep_index_product`
--
ALTER TABLE `jeep_index_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `jeep_order`
--
ALTER TABLE `jeep_order`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `jeep_receiver_address`
--
ALTER TABLE `jeep_receiver_address`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `jeep_shoppingcart_item`
--
ALTER TABLE `jeep_shoppingcart_item`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- 使用表AUTO_INCREMENT `jeep_user`
--
ALTER TABLE `jeep_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
