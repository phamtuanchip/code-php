-- MySQL dump 10.11
--
-- Host: localhost    Database: keutour1_sonkeu
-- ------------------------------------------------------
-- Server version	5.0.91-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `count`
--

DROP TABLE IF EXISTS `count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `count` (
  `idcounter` varchar(32) NOT NULL,
  `datetime` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `count`
--

LOCK TABLES `count` WRITE;
/*!40000 ALTER TABLE `count` DISABLE KEYS */;
INSERT INTO `count` (`idcounter`, `datetime`) VALUES ('2d0c67cf8582105a2e67e4059b85c735','2010610'),('49e384178a5c2837d1633e93cb0aacb3','2010610'),('4d1bc21a1fc6a400a3a6abc69b4317a9','2010610'),('641f8ff58613d00613a66036b7ce623d','2010610'),('def1da5ae6040328d2e1bc80997ef7f9','2010610'),('889960bfbe37cf91185fd5a09e569ec0','2010610'),('ed43a53b0e305b99abf3eb9332bd4483','2010610'),('b0ea71972fe7a04df95547f7e9f86ce7','20100620'),('5ca5f50e9275d090bf4e7663f7564ee7','20100624'),('604e07450220f8e18daa51a8984e9243','20100624'),('639cd609f9a9cdef99c449e06d517fa6','20100624'),('ea84f6825da864a7f64b97a68c0ddbfb','20100714'),('46f55a389ae7cdd72b60206aa69f98b5','20100720');
/*!40000 ALTER TABLE `count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_banner`
--

DROP TABLE IF EXISTS `lvn_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_banner` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(150) NOT NULL,
  `banner` varchar(255) NOT NULL COMMENT 'path to image or swf file',
  `clickurl` varchar(255) NOT NULL,
  `clicks` int(11) NOT NULL default '0',
  `position` varchar(100) NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_banner`
--

LOCK TABLES `lvn_banner` WRITE;
/*!40000 ALTER TABLE `lvn_banner` DISABLE KEYS */;
INSERT INTO `lvn_banner` (`id`, `lang`, `title`, `banner`, `clickurl`, `clicks`, `position`, `published`, `ordering`) VALUES (56,'vi','Partner 2','/educare/uploads/dt2.jpg','http://ttv.vn',0,'partner',1,0),(55,'vi','Partner 1','/educare/uploads/dt1.jpg','http://baokinhte.vn',0,'partner',1,0),(54,'vi','Ad 1','/educare/uploads/ad1.jpg','http://ttv.vn',0,'quangcao',1,0),(57,'vi','Ad2','/educare/uploads/ad2.jpg','http://baokinhte.vn',0,'quangcao',1,0);
/*!40000 ALTER TABLE `lvn_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_category`
--

DROP TABLE IF EXISTS `lvn_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_category` (
  `id` int(11) NOT NULL auto_increment,
  `parent` int(11) NOT NULL default '0',
  `lang` varchar(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `banner` varchar(250) NOT NULL,
  `introtext` text NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `orderHome` int(11) NOT NULL default '0',
  `home` tinyint(1) NOT NULL default '0',
  `active` tinyint(1) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `type` varchar(20) NOT NULL,
  `menu` varchar(20) NOT NULL default 'top',
  PRIMARY KEY  (`id`),
  KEY `parent` (`parent`),
  KEY `alias` (`alias`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_category`
--

LOCK TABLES `lvn_category` WRITE;
/*!40000 ALTER TABLE `lvn_category` DISABLE KEYS */;
INSERT INTO `lvn_category` (`id`, `parent`, `lang`, `title`, `alias`, `banner`, `introtext`, `metakey`, `metadesc`, `ordering`, `orderHome`, `home`, `active`, `published`, `type`, `menu`) VALUES (1,0,'vi','About us','about-us','0','<br>','About us keu tours','About us keu tours',0,0,0,0,1,'content','topMenu'),(2,0,'vi','Vietnam Tours','vietnam-tours','0','<br>','','',0,0,0,0,1,'tours','both'),(3,0,'vi','Vietnam Hotels','vietnam-hotels','0','<br>','','',0,0,0,0,1,'content','topMenu'),(4,0,'vi','Destination FAQs','destination-faqs','0','<br>','','',0,0,0,0,1,'content','topMenu'),(5,2,'vi','Halong Bay Tours','halong-bay-tours','0','<br>','','',0,0,0,0,1,'tours','leftMenu'),(6,2,'vi','Mekong Bay Tours','mekong-bay-tours','0','<br>','','',0,0,0,0,1,'tours','leftMenu'),(7,2,'vi','Sapa Tours','sapa-tours','0','<br>','','',0,0,0,0,1,'tours','leftMenu'),(8,2,'vi','Ho Chi Minh Tours','ho-chi-minh-tours','0','<br>','','',0,0,0,0,1,'tours','leftMenu'),(9,2,'vi','Nha Trang Tours','nha-trang-tours','0','<br>','','',0,0,0,0,1,'tours','leftMenu'),(10,2,'vi','Hoi An Tours','hoi-an-tours','0','<br>','','',0,0,0,0,1,'tours','leftMenu'),(11,2,'vi','Hue Tours','hue-tours','0','<br>','','',0,0,0,0,1,'tours','leftMenu'),(12,2,'vi','Viet Nam Classic Tours','viet-nam-classic-tours','0','<br>','','',0,0,0,0,1,'tours','leftMenu'),(13,2,'vi','Viet Nam Golf Tours','viet-nam-golf-tours','0','<br>','','',0,0,0,0,1,'tours','leftMenu'),(14,0,'vi','Why travel with us? ','why-travel-with-us-','0','<br>','','',0,0,0,0,1,'content','leftMenu'),(15,0,'vi','Why VietNam? ','why-vietnam-','0','<br>','','',0,0,1,0,1,'content','main'),(16,0,'vi','Links','links','0','<br>','','',0,0,0,0,1,'content','bottom');
/*!40000 ALTER TABLE `lvn_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_category_picture`
--

DROP TABLE IF EXISTS `lvn_category_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_category_picture` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(200) NOT NULL,
  `banner` varchar(250) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_category_picture`
--

LOCK TABLES `lvn_category_picture` WRITE;
/*!40000 ALTER TABLE `lvn_category_picture` DISABLE KEYS */;
INSERT INTO `lvn_category_picture` (`id`, `lang`, `title`, `banner`, `published`, `ordering`) VALUES (7,'vi','áº¢nh Ä‘áº¹p hÃ  ná»™i','',1,0),(8,'vi','HÃ¬nh áº£nh khÃ¡c','',1,0),(9,'en','Trá»“ng dÃ¢u nuÃ´i táº±m','',1,0);
/*!40000 ALTER TABLE `lvn_category_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_comment`
--

DROP TABLE IF EXISTS `lvn_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_comment` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `view` int(11) NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_comment`
--

LOCK TABLES `lvn_comment` WRITE;
/*!40000 ALTER TABLE `lvn_comment` DISABLE KEYS */;
INSERT INTO `lvn_comment` (`id`, `lang`, `name`, `email`, `title`, `content`, `view`, `ordering`, `published`) VALUES (5,'vi','Nguyá»…n Ngoc','nguyenngoc@ttv.vn','tiÃªu Ä‘á»','Ná»™i dung Ä‘Æ°á»£c',17,6,0),(4,'vi','Nguyá»…n VÄƒn Ngá»c','nguyenngoc212005@gmail.com','TiÃªu Ä‘á» cÃ³ Ã½ kiáº¿n','Ná»™i dung Ä‘Æ°á»£c trÃ¬nh bÃ y á»Ÿ Ä‘Ã¢y',17,5,1),(6,'vi','Nguyá»…n Ngá»c','nguyenngoc@ttv.vn','TiÃªu Ä‘á» gÃ¬ chá»©','Ná»™i dung gÃ¬ nhá»‰',17,2,0),(7,'vi','Nguyá»…n Ngá»c','nguyenngoc@ttv.vn','Hay ho Ä‘Ã³','KhÃ¡ch chen nhau mua, cá»­a hÃ ng liÃªn tá»¥c niÃªm yáº¿t giÃ¡ má»›i. Äáº¿n hÆ¡n 18h30 hÃ´m 23/3, giÃ¡ bÃ¡n táº¡i khu vá»±c HÃ  Trung (HÃ  Ná»™i) leo lÃªn 18.000 Ä‘á»“ng, nhiá»u cá»­a hÃ ng nghá»‰ giao dá»‹ch vÃ¬ háº¿t Ä‘Ã´la. VÃ ng cÅ©ng Ä‘Æ°á»£c dá»‹p vÆ°á»£t má»‘c 20 triá»‡u Ä‘á»“ng.',17,4,1),(8,'vi','Nguyen','nguyenngoc212005@gmail.com','nguyenngoc','nguyenngoc',18,2,1),(9,'vi','Haha','haha@ttv.vn','Haa ThÃ nh cÃ´ng','Ha ha h ThÃ nh cÃ´ng',17,3,0),(10,'vi','Nguyá»…n DÅ©ng','nguyenngoc@ttv.vn','GÃ¬ cÅ©ng Ä‘Æ°á»£c','Ä‘á»©ng trÆ°á»›c em,anh thÃ¬ tháº§m há»i kháº½ \r\n\"chuyá»‡n chÃºng mÃ¬nh Ä‘áº¹p mÃ£i pháº£i ko em\" \r\nanh chá»‰ nÃ³i:\" ngÃ y xÆ°a cÃ²n nguyÃªn váº¹n...\" \r\nem giáº­t mÃ¬nh cháº³ng tháº©y bÃ³ng thÃ¢n quen \r\n\r\nem váº«n nhá»› tÃ¬nh mÃ¬nh ráº¥t Ä‘áº¹p \r\nváº«n biáº¿t ráº±ng biá»ƒn mÃ£i cÃ²n xanh \r\nváº«n biáº¿t anh yÃªu biá»ƒn trong lÃ nh \r\nem cÃ²n nhá»› háº¿t nhá»¯ng ngÃ y xÆ°a Ä‘Ã³... \r\n',17,1,0),(11,'vi','gg','gw@ff.vn','ddd','f',17,0,0);
/*!40000 ALTER TABLE `lvn_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_config`
--

DROP TABLE IF EXISTS `lvn_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_config` (
  `id` tinyint(3) NOT NULL auto_increment,
  `lang` varchar(3) NOT NULL,
  `banner` varchar(250) NOT NULL,
  `hotline` text NOT NULL,
  `contact` text NOT NULL,
  `footer` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_config`
--

LOCK TABLES `lvn_config` WRITE;
/*!40000 ALTER TABLE `lvn_config` DISABLE KEYS */;
INSERT INTO `lvn_config` (`id`, `lang`, `banner`, `hotline`, `contact`, `footer`) VALUES (1,'ja','/abc/uploads/banner_tinhoc_abc.swf','http://gmail.com','<div style=\"text-align: center;\"><span style=\"font-weight: bold;\">CÃ”NG TY TNHH Äáº¦U TÆ¯ XÃ‚Y Dá»°NG VÃ€ PHÃT TRIá»‚N Háº  Táº¦NG (ICID)</span><br>Äá»‹a chá»‰: Khu Má»— Lao â€“ phÆ°á»ng Má»™ Lao - HÃ  ÄÃ´ng â€“ HÃ  Ná»™i<br>Äiá»‡n thoáº¡i: 0433527596 - 0913288262 - Fax: 0433527596<br>E-mail: contact@icid.com.vn</div><input id=\"gwProxy\" type=\"hidden\"><!--Session data--><input onclick=\"jsCall();\" id=\"jsProxy\" type=\"hidden\"><div id=\"refHTML\"></div><input id=\"gwProxy\" type=\"hidden\"><!--Session data--><input onclick=\"jsCall();\" id=\"jsProxy\" type=\"hidden\"><div id=\"refHTML\"></div>','<div style=\"text-align: center;\"><span style=\"font-weight: bold;\">CÃ”NG TY TNHH Äáº¦U TÆ¯ XÃ‚Y Dá»°NG VÃ€ PHÃT TRIá»‚N Háº  Táº¦NG (ICID)</span><br>\r\nÄá»‹a chá»‰: Khu Má»— Lao â€“ phÆ°á»ng Má»™ Lao - HÃ  ÄÃ´ng â€“ HÃ  Ná»™i<br>\r\nÄiá»‡n thoáº¡i: 0433527596 - 0913288262 - Fax: 0433527596<br>\r\nE-mail: contact@icid.com.vn<input id=\"gwProxy\" type=\"hidden\"><!--Session data--><input onclick=\"jsCall();\" id=\"jsProxy\" type=\"hidden\"></div><div id=\"refHTML\"></div><input id=\"gwProxy\" type=\"hidden\"><!--Session data--><input onclick=\"jsCall();\" id=\"jsProxy\" type=\"hidden\"><div id=\"refHTML\"></div>'),(2,'en','','','ChÃ o má»«ng cÃ¡c báº¡n Ä‘áº¿n vá»›i CÃ´ng ty TNHH Váº¡n XuÃ¢n','<br>'),(3,'ko','/sakura/uploads/bg_h.jpg','','<br>','<br>'),(4,'vi','','','<div class=\"footer\">\r\n	<p>\r\n		Copyright &copy; 2010 <span class=\"focus\">Viet Nam Travel Co. Ltd.</span> \r\nAll Rights Reserved.\r\n	</p>\r\n	<p>\r\n		Head Office: 1/3 Thi sÃ¡ch Street Hai Ba Trung District, Hanoi, Vietnam\r\n	</p>\r\n	<p>\r\n		Tel: (+844) 3945 7331\r\n		&nbsp;&nbsp;&nbsp;&nbsp;				\r\n		Fax: (+844) 3945 4821\r\n	</p>\r\n</div>','<div class=\"footer\">\r\n	<p>\r\n		Copyright &copy; 2010 <span class=\"focus\">Viet Nam Travel Co. Ltd.</span> \r\nAll Rights Reserved.\r\n	</p>\r\n	<p>\r\n		Head Office: 1/3 Thi sÃ¡ch Street Hai Ba Trung District, Hanoi, Vietnam\r\n	</p>\r\n	<p>\r\n		Tel: (+844) 3945 7331\r\n		&nbsp;&nbsp;&nbsp;&nbsp;				\r\n		Fax: (+844) 3945 4821\r\n	</p>\r\n</div>'),(5,'vi','','','',''),(6,'vi','','','',''),(7,'vi','','','',''),(8,'vi','','','',''),(9,'vi','','','',''),(10,'vi','','','',''),(11,'vi','','','','');
/*!40000 ALTER TABLE `lvn_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_contact`
--

DROP TABLE IF EXISTS `lvn_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_contact` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_contact`
--

LOCK TABLES `lvn_contact` WRITE;
/*!40000 ALTER TABLE `lvn_contact` DISABLE KEYS */;
INSERT INTO `lvn_contact` (`id`, `lang`, `title`, `email`, `published`) VALUES (1,'en','The customer department','ccvreal@gmail.com',1),(2,'vi','Bá»™ pháº­n kinh doanh','augges@gmail.com',1),(3,'en','John Huynh','ccvreal@gmail.com',1),(6,'vi','Bá»™ pháº­n ká»¹ thuáº­t','augges@gmail.com',1);
/*!40000 ALTER TABLE `lvn_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_contact_customer`
--

DROP TABLE IF EXISTS `lvn_contact_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_contact_customer` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_contact_customer`
--

LOCK TABLES `lvn_contact_customer` WRITE;
/*!40000 ALTER TABLE `lvn_contact_customer` DISABLE KEYS */;
INSERT INTO `lvn_contact_customer` (`id`, `lang`, `name`, `email`, `tel`, `title`, `content`) VALUES (1,'vi','Nguyen Van Ngoc','nguyenngoc@ttv.vn','0902 280 260','Tin chuyÃªn ngÃ nh','Ná»™i dung tin'),(2,'vi','sonkeu76','sonkeu76@yahoo.com','2819891289','tour','jafkjakjnsjkn');
/*!40000 ALTER TABLE `lvn_contact_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_content`
--

DROP TABLE IF EXISTS `lvn_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_content` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `images` varchar(250) NOT NULL,
  `rong` int(11) NOT NULL default '0',
  `cao` int(11) NOT NULL default '0',
  `introcontent` text NOT NULL,
  `fullcontent` mediumtext NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `home` tinyint(1) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `hits` int(11) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `untitle` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`),
  KEY `created_by` (`created_by`),
  KEY `published` (`published`),
  KEY `category` (`category`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_content`
--

LOCK TABLES `lvn_content` WRITE;
/*!40000 ALTER TABLE `lvn_content` DISABLE KEYS */;
INSERT INTO `lvn_content` (`id`, `lang`, `title`, `alias`, `images`, `rong`, `cao`, `introcontent`, `fullcontent`, `created`, `created_by`, `metakey`, `metadesc`, `home`, `published`, `hits`, `category`, `ordering`, `untitle`) VALUES (11,'vi','HANG NGA HOTE','hang-nga-hote','http://www.vietnamtourpackages.com/Vietnam-Hotels/Ha-Noi/pictures/hangnga_hanoi_hotel.jpg',0,0,'<p align=\"left\">Address:\r\n 65 Cua Bac St., - Hanoi - Vietnam </p>\r\n                  <p align=\"left\">Hang Nga Hotel is located at a \r\nbeautiful spot near West Lake, and near Old Quarter, on Cua Bac street \r\nmean North entrance to Thang Long citadel. </p>','<table cellpadding=\"0\" cellspacing=\"8\"><tbody><tr><td><p align=\"left\">Address:\r\n 65 Cua Bac St., - Hanoi - Vietnam </p>\r\n                  <p align=\"left\">Hang Nga Hotel is located at a \r\nbeautiful spot near West Lake, and near Old Quarter, on Cua Bac street \r\nmean North entrance to Thang Long citadel. </p>\r\n                  <p align=\"left\">Hang Nga Hotel is a perfect choice for\r\n leisure and business travellers seeking a place to sleep, that is \r\nclean, comfort and security. In 12 floor building Hang Nga Hotel offers \r\nstunning views of Hanoi city. </p>\r\n                  <p align=\"left\">All rooms provide a magnificent \r\npanorama of either the old quarter or the West Lake &amp; the large \r\nwindows bring you within a touch of nature. </p>\r\n                  <p align=\"left\">                    <span style=\"font-weight: bold;\">Hang Nga \r\nAccommodation <img src=\"http://www.vietnamtourpackages.com/Vietnam-Hotels/Ha-Noi/pictures/hangnga_hanoi_hotel.jpg\" alt=\"hangngahanoihotelsvietnam\" width=\"230\" align=\"right\" height=\"221\"></span></p>\r\n                  \r\n                  <p align=\"left\">Individual controlled air-conditioning\r\n <br>\r\n        Satellite TV with international channels <br>\r\n        Private bathroom with bathtub or shower <br>\r\n        IDD Telephone and hair-dryer <br>\r\n        Fridge and mini-bar <br>\r\n        Personal safety-box in room <br>\r\n        Standard: larger rooms with city view in 14m2. <br>\r\n        Superior: larger rooms with city view or West lake view in 18m2.\r\n <br>\r\n        Deluxe: larger room with doubles view for lake &amp; city view \r\nin 22m2. <br>\r\n        Suite: living and bed room en-suite, double view in 29m2</p>\r\n                  <p align=\"left\">                    <span style=\"font-weight: bold;\">Hang Nga \r\nHotel\'s Amenities <img src=\"http://www.vietnamtourpackages.com/Vietnam-Hotels/Ha-Noi/pictures/hangnga_hanoi_room.jpg\" alt=\"hangngahanoiroomhotelsvietanm\" width=\"230\" align=\"right\" height=\"221\"></span></p>                  <p align=\"left\">B.B.Q \r\nrestaurant and Coffee House bar <br>\r\n        Baggage storage and babysitting service <br>\r\n        Laundry and dry-cleaning service <br>\r\n        Visa extension and air-ticket booking <br>\r\n        Foreign currency exchange <br>\r\n        Internet &amp; Email service <br>\r\n        Car/Motor/Bicycle rental service <br>\r\n        Travel tour arrangement. <br>\r\n        Airport transfer: US$ 15/way for a 4 seats car; US$ 25/way for a\r\n mini van </p>\r\n                  <p align=\"center\">&nbsp;</p>                  </td>\r\n            </tr>\r\n            <tr>\r\n              <td valign=\"top\"><br></td>\r\n            </tr>\r\n          </tbody></table>\r\n		  <p>&nbsp; </p>\r\n		  \r\n            <table width=\"90%\" align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr>\r\n              <td width=\"44%\"><p align=\"center\"><span style=\"font-weight: bold;\">Room Grade </span></p></td>\r\n              <td width=\"28%\"><p align=\"center\"><span style=\"font-weight: bold;\">Single </span><span style=\"font-weight: bold;\"></span></p></td>\r\n              <td width=\"28%\"><p align=\"center\"><span style=\"font-weight: bold;\">Double </span></p></td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\" width=\"90%\"><p align=\"center\"><span style=\"font-weight: bold;\">Direct\r\n payment at the hotel(valid to 31 Dec, 2007) </span></p></td>\r\n            </tr>\r\n            <tr>\r\n              <td width=\"44%\"><p align=\"center\"><span style=\"font-weight: bold;\">Standard </span></p></td>\r\n              <td width=\"28%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 40 </span></p></td>\r\n              <td width=\"28%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 40 </span></p></td>\r\n            </tr>\r\n            <tr>\r\n              <td width=\"44%\"><p align=\"center\"><span style=\"font-weight: bold;\">Superior </span></p></td>\r\n              <td width=\"28%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 50 </span></p></td>\r\n              <td width=\"28%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 50 </span></p></td>\r\n            </tr>\r\n            <tr>\r\n              <td width=\"44%\"><p align=\"center\"><span style=\"font-weight: bold;\">Deluxe </span></p></td>\r\n              <td width=\"28%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 55 </span></p></td>\r\n              <td width=\"28%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 55 </span></p></td>\r\n            </tr>\r\n            <tr>\r\n              <td width=\"44%\"><p align=\"center\"><span style=\"font-weight: bold;\">Suite </span></p></td>\r\n              <td width=\"28%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 60 </span></p></td>\r\n              <td width=\"28%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 60 </span></p></td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\" width=\"100%\"><p align=\"center\"><a href=\"http://www.vietnamtourpackages.com/Vietnam-Hotels/Ha-Noi/Hanoi-Hotel-Reservation.htm\"><span style=\"font-weight: bold;\">BOOK\r\n HANG NGA HOTEL ONLINE </span></a></p></td></tr></tbody></table>','2010-08-06 22:37:05',1,'','',0,1,0,3,0,0),(12,'vi','FLOWER HOTEL - 3Star***','flower-hotel-3star','http://www.vietnamtourpackages.com/Vietnam-Hotels/Ha-Noi/pictures/flower_hanoi_hotel.jpg',0,0,'<p align=\"left\">Address:\r\n 55 Nguyen Truong To St. - Hanoi - Vietnam </p>\r\n                  <p align=\"left\">Flower Hotel is a three star hotel \r\nlocated in the heart of Hanoi. </p>','<table cellpadding=\"0\" cellspacing=\"8\"><tbody><tr><td><p align=\"left\">Address:\r\n 55 Nguyen Truong To St. - Hanoi - Vietnam </p>\r\n                  <p align=\"left\">Flower Hotel is a three star hotel \r\nlocated in the heart of Hanoi. </p>\r\n                  <p align=\"left\">It is within walking distance from the\r\n city centre and tourist attractions such as Restored Sword Lake, West \r\nLake and the Red River. The location is of easy access for tourist \r\nbuses. </p>\r\n                  <p align=\"left\">From Flower Hotel, it takes only 5 \r\nminutes to drive to the Old Quarters, 30 minutes to the airport and 10 \r\nminutes to the railways station.</p>\r\n                  <p align=\"left\">                    <span style=\"font-weight: bold;\">Flower \r\nAccommodation <img src=\"http://www.vietnamtourpackages.com/Vietnam-Hotels/Ha-Noi/pictures/flower_hanoi_hotel.jpg\" alt=\"flowerhanoihotelsvietnam\" width=\"230\" align=\"right\" height=\"221\"></span></p>\r\n                  \r\n                  <p align=\"left\">Multi-split air-conditioning <br>\r\n        Satellite TV with international channels <br>\r\n        Private bathroom with bathtub or shower <br>\r\n        IDD Telephone and Refrigerator <br>\r\n        Safe deposit box in room <br>\r\n        Hair-dryer and Mini-bar <br>\r\n        Coffee/Tea making facilities <br>\r\n        Rooms with windows <br>\r\n        Modern elevator </p>\r\n                  <p align=\"left\"><span style=\"font-weight: bold;\">Flower Hotel\'s Amenities <img src=\"http://www.vietnamtourpackages.com/Vietnam-Hotels/Ha-Noi/pictures/flower_hanoi_room.jpg\" alt=\"flowerhanoiroomhotelsvietnam\" width=\"230\" align=\"right\" height=\"221\"></span></p>                  \r\n                  <p align=\"left\">24-hour security and maintenance <br>\r\n        Babysitting service <br>\r\n        Flower restaurant and bar <br>\r\n        Foreign currency exchange <br>\r\n        Laundry &amp; dry-cleaning service <br>\r\n        Internet &amp; Email service <br>\r\n        Travel tour arrangement <br>\r\n        Ticket booking service <br>\r\n        Business center <br>\r\n        Car/Motor/Bicycle rental service <br>\r\n        Airport transfer: US$ 15/way for a 4 seats car or US$ 25/way for\r\n a mini van </p>\r\n              </td>\r\n            </tr>\r\n            <tr>\r\n              <td valign=\"top\"><br></td>\r\n            </tr>\r\n          </tbody></table>\r\n		  <p>&nbsp; </p>\r\n		  \r\n            <table width=\"91%\" align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" height=\"264\"><tbody><tr>\r\n              <th width=\"34%\"><p align=\"center\"><span style=\"font-weight: bold;\">Room Grade </span></p></th>\r\n              <th width=\"30%\"><p align=\"center\"><span style=\"font-weight: bold;\">Single </span></p></th>\r\n              <th width=\"26%\"><p align=\"center\"><span style=\"font-weight: bold;\">Double </span></p></th>\r\n            </tr>\r\n            <tr>\r\n              <th colspan=\"3\" width=\"90%\"><p align=\"center\"><span style=\"font-weight: bold;\">Payment\r\n in-advance (01st Sep to 31st Dec, 2007) </span></p></th>\r\n            </tr>\r\n            <tr>\r\n              <th width=\"34%\"><p align=\"center\"><span style=\"font-weight: bold;\">Standard </span></p></th>\r\n              <th width=\"33%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 45 </span></p></th>\r\n              <th width=\"33%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 50 </span></p></th>\r\n            </tr>\r\n            <tr>\r\n              <th width=\"34%\"><p align=\"center\"><span style=\"font-weight: bold;\">Superior </span></p></th>\r\n              <th width=\"30%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 65 </span></p></th>\r\n              <th width=\"26%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 70 </span></p></th></tr></tbody></table>','2010-08-06 22:39:22',1,'','',0,1,0,3,0,0),(13,'vi','CHAINS FIRST EDEN HOTEL - 3Star***','chains-first-eden-hotel-3star','http://www.vietnamtourpackages.com/Vietnam-Hotels/Ha-Noi/pictures/chainfirsteden_hanoi_hotel.jpg',0,0,'Address:\r\n 3A Phan Dinh Phung St., - Hanoi - Vietnam <br>\r\n                Chains First Eden Hotel is located in the centre of \r\nHanoi. ','<table cellpadding=\"0\" cellspacing=\"8\"><tbody><tr><td><p align=\"left\">Address:\r\n 3A Phan Dinh Phung St., - Hanoi - Vietnam <br>\r\n                Chains First Eden Hotel is located in the centre of \r\nHanoi. <br>\r\n        The Phan Dinh Phung street is the street with one side is the \r\nwall of Nguyen\'s dynasty citadel, which is green moss and tree make this\r\n one way street more quiet than Hanoi Old quarter.<br>\r\n        The Chains First Eden Hotel provides luxury and elegance which \r\ncombines traditional Vietnamese culture with a high international \r\nstandard of service, comfort and complete security. <br>\r\n        The Chains First Eden Hotel will offer to all guests a memorable\r\n stay in Hanoi. <img src=\"http://www.vietnamtourpackages.com/Vietnam-Hotels/Ha-Noi/pictures/chainfirsteden_hanoi_hotel.jpg\" alt=\"chainsfirstedenhanoihotelsvietnam\" width=\"230\" align=\"right\" height=\"221\"></p>\r\n                <p align=\"left\">                  <span style=\"font-weight: bold;\">Chain First \r\nEden Accommodation </span></p>                <p align=\"left\">Individual\r\n controlled air-conditioning <br>\r\n        Satellite TV with international channels <br>\r\n        Private bathroom with bathtub or shower <br>\r\n        IDD Telephone <br>\r\n        Refrigerator and hair-dryer (on request) <br>\r\n        Tea &amp; Coffee making facilities <br>\r\n        Safe deposit box in room and Mini-bar <br>\r\n        Standard: rooms with window for back view in 14m2. <br>\r\n        Superior: rooms with window for front view in 16m2. <br>\r\n        Deluxe: rooms with window for front view in 20m2. The private \r\nfax machine compatible with MS Windows provided in-room.</p>\r\n                <p align=\"left\"><span style=\"font-weight: bold;\"> Chain First Eden Hotel\'s \r\nAmenities <img src=\"http://www.vietnamtourpackages.com/Vietnam-Hotels/Ha-Noi/pictures/chainfirsteden_hanoi_room.jpg\" alt=\"chainsfirsedenhanoiroomhotelsvietnam\" width=\"230\" align=\"right\" height=\"221\"></span></p>                \r\n                <p align=\"left\">Eden Restaurant and Bar service <br>\r\n        Baggage storage area <br>\r\n        Babysitting service <br>\r\n        Laundry &amp; dry-cleaning service <br>\r\n        Foreign Currency Exchange <br>\r\n        Car/Motor/Bicycle rental service <br>\r\n        Travel tour arrangement <br>\r\n        Internet &amp; Email Service <br>\r\n        Airport transfer: US$ 15/way for a 4 seats car; US$ 25/way for a\r\n mini van </p>\r\n                <p align=\"left\">&nbsp;</p></td>\r\n            </tr>\r\n            <tr>\r\n              <td valign=\"top\"><br></td>\r\n            </tr>\r\n          </tbody></table>\r\n		  <p>&nbsp; </p>\r\n		  \r\n            <table width=\"92%\" align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr>\r\n              <td width=\"40%\"><p align=\"center\"><span style=\"font-weight: bold;\">Room Grade </span></p></td>\r\n              <td width=\"30%\"><p align=\"center\"><span style=\"font-weight: bold;\">Single </span><span style=\"font-weight: bold;\"></span></p></td>\r\n              <td width=\"30%\"><p align=\"center\"><span style=\"font-weight: bold;\">Double </span></p></td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\" width=\"40%\"><p align=\"center\"><span style=\"font-weight: bold;\">Direct\r\n payment at the hotel (valid to 31 Dec, 2007) </span></p></td>\r\n            </tr>\r\n            <tr>\r\n              <td width=\"40%\"><p align=\"center\"><span style=\"font-weight: bold;\">Standard </span></p></td>\r\n              <td width=\"30%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 45 </span></p></td>\r\n              <td width=\"30%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 45 </span></p></td>\r\n            </tr>\r\n            <tr>\r\n              <td width=\"40%\"><p align=\"center\"><span style=\"font-weight: bold;\">Superior </span></p></td>\r\n              <td width=\"30%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 50 </span></p></td>\r\n              <td width=\"30%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 50 </span></p></td>\r\n            </tr>\r\n            <tr>\r\n              <td width=\"40%\"><p align=\"center\"><span style=\"font-weight: bold;\">Deluxe </span></p></td>\r\n              <td width=\"30%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 55 </span></p></td>\r\n              <td width=\"30%\"><p align=\"center\"><span style=\"font-weight: bold;\">US$ 55 </span></p></td></tr></tbody></table>','2010-08-06 22:42:05',1,'','',0,1,0,3,0,0),(14,'vi','  Link exchange travel sites','-link-exchange-travel-sites','',0,0,'<br>','<p align=\"justify\">\r\n					<span style=\"font-family: Times New Roman;\">Welcome to our selection of \r\n					travel related sites! We exchange links only with travel \r\n					related websites all over the world, on reciprocal basis \r\n					only! If your web site meets those criteria, we are pleased \r\n					to accept your link.<br>\r\n					&nbsp; + The page where you place our link must have at \r\n					travel relate <br>\r\n					&nbsp; + Your site should relate to\r\n					<a title=\"sapa travel\" target=\"_blank\" href=\"http://www.sapalaocai.com/\">\r\n					<span style=\"text-decoration: none; color: rgb(0, 0, 0);\">\r\n					travel</span></a>, tourism, accomodation <br>\r\n					&nbsp; + Our link must be placed to your website before you \r\n					submit your link <br>\r\n					&nbsp; + Your link directory must be accessible from the \r\n					homepage\r\n					</span>\r\n					</p>\r\n					<p align=\"justify\"><span style=\"font-weight: bold; font-family: Times New Roman;\">We will \r\n					add your link at the end of homepage</span></p>\r\n					<p align=\"justify\"><span style=\"font-family: Times New Roman;\">\r\n					<a target=\"_blank\" href=\"http://www.phanthiettravelguide.com/\">\r\n					www.phanthiettravelguide.com</a>&nbsp;&nbsp; page rank 4/10</span></p>\r\n					<p align=\"justify\"><span style=\"font-family: Times New Roman;\">\r\n					<a target=\"_blank\" href=\"http://www.nhatrangtravelguide.com/\">\r\n					www.nhatrangtravelguide.com</a>&nbsp; page rank 4/10</span></p>\r\n					<p align=\"justify\"><span style=\"font-family: Times New Roman;\">\r\n					<a target=\"_blank\" href=\"http://www.vungtautravelguide.com/\">\r\n					www.vungtautravelguide.com</a> page rank 4/10</span></p>\r\n					<p align=\"justify\"><span style=\"font-family: Times New Roman;\">\r\n					<a target=\"_blank\" href=\"http://www.danangtravelguide.com/\">\r\n					www.danangtravelguide.com</a>&nbsp; page rank 4/10</span></p>\r\n					<p align=\"justify\"><span style=\"font-family: Times New Roman;\">\r\n					<a target=\"_blank\" href=\"http://www.hoiantravelguide.com/\">\r\n					www.hoiantravelguide.com</a>&nbsp;&nbsp; page rank 4/10</span></p>\r\n					<p align=\"justify\">&nbsp;</p>\r\n					<p align=\"justify\"><span style=\"font-family: Times New Roman;\">&nbsp;&nbsp; \r\n					Please add our link and mail to : <a href=\"mailto:vietnamtravellink@gmail.com\">\r\n					vietnamtravellink@gmail.com</a></span></p>\r\n					<p align=\"justify\"><span style=\"font-family: Times New Roman;\">&nbsp; \r\n					title:&nbsp;\r\n					<a href=\"http://www.vietnamtripadvisor.com/\">vietnam travel, \r\n					vietnam travel packages, travel to vietnam</a></span></p>\r\n					<p align=\"justify\"><span style=\"font-family: Times New Roman;\">&nbsp;&nbsp; \r\n					Dsc :&nbsp; Vietnam Leading tour operator...</span></p>\r\n					<p align=\"justify\"><span style=\"font-family: Times New Roman;\">&nbsp;&nbsp; \r\n					url:\r\n					<a href=\"http://www.vietnamtripadvisor.com/\">\r\n					http://www.vietnamtripadvisor.com</a></span></p>\r\n					<p align=\"justify\"><span style=\"font-family: Times New Roman;\">&nbsp;Our Code :</span></p>\r\n					<p align=\"justify\"><span style=\"font-family: Times New Roman;\">&lt;A \r\ntitle=\"vietnam \r\n					tours, vietnam tour packages, vietnam \r\ntour\"href=\"http://www.vietnamtripadvisor.com\"&gt;vietnam \r\n					tours, vietnam tour packages, vietnam tour&lt;/A&gt;&amp;nbsp; \r\nVietnam \r\n					leading tour operator...</span></p>\r\n					<p align=\"justify\">&nbsp;</p>\r\n				\r\n				\r\n				\r\n					\r\n					<p align=\"justify\"><span style=\"font-family: Times New Roman;\">\r\n<a href=\"http://www.vietnamtripadvisor.com/links.htm\">Links</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links1.htm\">1</a>&nbsp; |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links2.htm\">2</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links3.htm\">3</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links4.htm\">4</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links5.htm\">5</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links6.htm\">6</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links7.htm\">7</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links8.htm\">8</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links9.htm\">9</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links10.htm\">10</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links11.htm\">11 </a>|\r\n<a href=\"http://www.vietnamtripadvisor.com/Links12.htm\">12</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links13.htm\">13</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links14.htm\">14</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links15.htm\">15</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links16.htm\">16</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links17.htm\">17</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links18.htm\">18</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links19.htm\">19</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links20.htm\">20</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links21.htm\">21</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links22.htm\">22</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links23.htm\">23</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links24.htm\">24</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links25.htm\">25</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links26.htm\">26</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links27.htm\">27</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links28.htm\">28</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links29.htm\">29</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links30.htm\">30</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links31.htm\">31</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links32.htm\">32</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links33.htm\">33</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links34.htm\">34</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links35.htm\">35</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links36.htm\">36</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links37.htm\">37</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links38.htm\">38</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links39.htm\">39</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links40.htm\">40</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links41.htm\">41</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links42.htm\">42</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links43.htm\">43</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links44.htm\">44</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links45.htm\">45</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links46.htm\">46 </a>|\r\n<a href=\"http://www.vietnamtripadvisor.com/Links47.htm\">47</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links48.htm\">48</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links49.htm\">49</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links50.htm\">50</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links51.htm\">51</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links52.htm\">52</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links53.htm\">53</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links54.htm\">54</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links55.htm\">55</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links56.htm\">56</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links57.htm\">57</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links58.htm\">58</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links59.htm\">59</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links60.htm\">60</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links61.htm\">61</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links62.htm\">62</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links63.htm\">63</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links64.htm\">64</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links65.htm\">65</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links66.htm\">66</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links67.htm\">67</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links68.htm\">68</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links69.htm\">69</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links70.htm\">70</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links71.htm\">71</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links72.htm\">72</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links73.htm\">73</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links74.htm\">74</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links75.htm\">75</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links76.htm\">76</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links77.htm\">77</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links78.htm\">78</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links79.htm\">79</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links80.htm\">80</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links81.htm\">81</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links82.htm\">82</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links83.htm\">83</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links84.htm\">84</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links85.htm\">85</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links86.htm\">86</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links87.htm\">87</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links88.htm\">88</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links89.htm\">89</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links90.htm\">90</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links91.htm\">91</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links92.htm\">92</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links93.htm\">93</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links94.htm\">94</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links95.htm\">95</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links96.htm\">96</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links97.htm\">97</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links98.htm\">98</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links99.htm\">99</a> |\r\n<a href=\"http://www.vietnamtripadvisor.com/Links100.htm\">100</a> |</span></p>\r\n					<p align=\"justify\">\r\n					<span style=\"font-family: Times New Roman;\">\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/links.htm\">\r\n					Links</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink1.htm\">\r\n					1</a>&nbsp; |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink2.htm\">\r\n					2</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink3.htm\">\r\n					3</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink4.htm\">\r\n					4</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink5.htm\">\r\n					5</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink6.htm\">\r\n					6</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink7.htm\">\r\n					7</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink8.htm\">\r\n					8</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink9.htm\">\r\n					9</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink10.htm\">\r\n					10</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink11.htm\">\r\n					11 </a>|\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink12.htm\">\r\n					12</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink13.htm\">\r\n					13</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink14.htm\">\r\n					14</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink15.htm\">\r\n					15</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink16.htm\">\r\n					16</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink17.htm\">\r\n					17</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink18.htm\">\r\n					18</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink19.htm\">\r\n					19</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink20.htm\">\r\n					20</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink21.htm\">\r\n					21</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink22.htm\">\r\n					22</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink23.htm\">\r\n					23</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink24.htm\">\r\n					24</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink25.htm\">\r\n					25</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink26.htm\">\r\n					26</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink27.htm\">\r\n					27</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink28.htm\">\r\n					28</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink29.htm\">\r\n					29</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink30.htm\">\r\n					30</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink31.htm\">\r\n					31</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink32.htm\">\r\n					32</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink33.htm\">\r\n					33</a> |\r\n					<a href=\"http://www.vietnamtripadvisor.com/link/TravelLink34.htm\">\r\n					34</a></span></p><p align=\"justify\">\r\n					<span style=\"font-family: Times New Roman; color: rgb(128, 128, 128);\">\r\n					<a target=\"_blank\" href=\"http://www.pearlstourism.com/\">South \r\n					India Tour Package</a> </span>\r\n					<span style=\"font-family: Times New Roman; color: rgb(8, 52, 149);\"> |\r\n		</span><span style=\"font-family: Times New Roman; color: rgb(128, 128, 128);\">\r\n					<a target=\"_blank\" href=\"http://www.pearlsholidays.com/\">\r\n					North India Tour Packages</a> </span>\r\n					<span style=\"font-family: Times New Roman; color: rgb(8, 52, 149);\"> |\r\n		</span><span style=\"font-family: Times New Roman; color: rgb(128, 128, 128);\">\r\n					<a target=\"_blank\" href=\"http://www.tourisminsouthindia.com/\">\r\n					Tourism in South India</a></span><span style=\"font-family: Times New Roman; color: rgb(8, 52, 149);\"><a target=\"_blank\" href=\"http://www.tourisminsouthindia.com/\">\r\n					</a>|</span><span style=\"font-family: Times New Roman; color: rgb(128, 128, 128);\">&nbsp;&nbsp;\r\n					</span><span style=\"font-family: Times New Roman; color: rgb(8, 52, 149);\"> |\r\n		</span><span style=\"font-family: Times New Roman; color: rgb(128, 128, 128);\">\r\n					<a target=\"_blank\" href=\"http://www.tourisminnorthindia.com/\">\r\n					Tourism in North India</a></span><span style=\"font-family: Times New Roman; color: rgb(8, 52, 149);\"><a target=\"_blank\" href=\"http://www.tourisminnorthindia.com/\">\r\n					</a>&nbsp;|\r\n		</span><span style=\"font-family: Times New Roman; color: rgb(128, 128, 128);\">links.html<br>\r\n&nbsp;</span></p><p align=\"justify\">\r\n					<span style=\"font-family: Times New Roman;\">&nbsp;<a href=\"http://www.tomoscow.com/\">Moscow\r\n \r\n					Hotels</a>&nbsp;the best booking service by famous Russian \r\n					company</span></p><p align=\"justify\">\r\n					<span style=\"font-family: Times New Roman;\">\r\n					<a target=\"_blank\" href=\"http://www.chinatours.com/\">China \r\n					Tours</a> Chinatours.com provides a wide range of travel \r\n					services including package China tours, private China \r\n					tours...</span></p><p align=\"justify\">\r\n					<span style=\"font-family: Times New Roman;\">&nbsp;<a href=\"http://www.unicentralaccommodation.com.au/\" target=\"blank\">Student\r\n \r\n					Housing Sunshine Coast</a>: UniCentral Sunshine Coast offer \r\n					Student Housing for 2010 University of the Sunshine Coast \r\n					students. Apply today! \r\n<a href=\"http://www.gchr.com.au/gold-coast-accommodation\">Gold Coast \r\nHoliday \r\n					Home &amp; Apartment Rentals</a> GCHR.com.au offers Gold Coast \r\n					Holiday Rentals with Gold Coast Apartment Accommodation in \r\n					Surfers Paradise, Miami &amp; Palm Beach. Book Gold Coast \r\n					Holiday Apartments online today \r\n<a href=\"http://www.bridgewaterterraces.com.au/\">Brisbane Accommodation, \r\nKangaroo \r\n					Point Hotel</a> - Book Brisbane Accommodation at Bridgewater \r\n					Terraces in Kangaroo Point - Just minutes from the Brisbane \r\n					CBDLocation Luxury Bali Villa Rental specialist in Bali \r\n					Luxury Private Villa rentals, Villa Concierge offers its \r\n					guests more than just a holiday<br>\r\n					<a target=\"_blank\" href=\"http://www.osloairporthotels.com/\">\r\n					Welcome to Oslo Airport Hotels</a> Oslo Airport is Oslo\'s \r\n					modern, international airport! At Oslo Airport Hotels, we \r\n					strive to provide the best rates on hotels near the Oslo \r\n					Airport!</span></p><p align=\"justify\">\r\n					<span style=\"font-family: Times New Roman;\">\r\n					<a target=\"_blank\" href=\"http://www.allmedicaltourism.com/\">\r\n					Surgery:</a> Medical tourism search engine offering users \r\n					the ability to compare cosmetic and medical procedure costs \r\n					and reputation from clinics and hospitals worldwide.</span></p>\r\n					<h3 class=\"r\" align=\"justify\"><span style=\"font-weight: 400; font-family: Times New Roman;\">\r\n					<a class=\"l\" onmousedown=\"return \r\n\r\nrwt(this,\'\',\'\',\'res\',\'1\',\'AFQjCNGvV1vSBMArZzdXx7bMu8z5edO0hw\',\'waiCENFbk4qd8U9x5U3B6w\',\'0CBIQFjAA\')\" href=\"http://www.alaxlimousine.com/\">\r\n					<span style=\"font-size: 12pt;\">LAX Limousine Service, LAX Airport Sedan, LAX \r\n					Airport Limousine </span><span style=\"font-weight: bold; font-size: 12pt;\">...</span></a></span></h3>\r\n					\r\n						<p align=\"justify\">\r\n						<span style=\"font-family: Times New Roman;\">For LAX LIMOUSINE SERVICES \r\n						LOS ANGELES CALL -(818)983-5424. We offer Limousine \r\n						services in the LAX Airport, LAX Limousine Service, LAX \r\n						Airport Sedan, <span style=\"font-weight: bold;\">\r\n						...</span></span></p>\r\n						<p align=\"justify\"><span style=\"font-family: Times New Roman;\">\r\n						<span class=\"normal\"> \r\n						<a href=\"http://www.barcelonacitytours.com/\">City Tours \r\n						in Barcelona</a> Guided tours in Barcelona. Day tours \r\n						and excursions. Gaudi, FC Barcelona, City Tours, Wine \r\n						Tours, Culinary Tours, Bus Tours, Walking Tours, Airport \r\n						Transfers and Weekend Breaks.</span></span></p>\r\n						<p align=\"justify\"><span style=\"font-family: Times New Roman;\" class=\"normal\">\r\n						<a target=\"_blank\" href=\"http://www.imaginamalta.com/car-hire-malta/\">\r\n						Malta Car Hire</a> Car Hire in Malta- We provide an \r\n						excellent choice of Malta car hire options, including \r\n						small city and medium size family cars, <br>\r\n						<a target=\"_blank\" href=\"http://www.amsterdamcitytours.com/\">\r\n						Amsterdam Sightseeing Tours</a> Book guided tours and \r\n						excursions in Amsterdam online. Daily trips in Holland \r\n						and Belgium. <br>\r\n						&nbsp;<a target=\"_blank\" href=\"http://www.barcelonacitytours.com/\">City \r\n						Tours in Barcelona</a> Guided tours in Barcelona. Day \r\n						tours and excursions. Gaudi, FC Barcelona, City</span></p>\r\n						<p align=\"justify\"><span style=\"font-family: Times New Roman;\" class=\"normal\">\r\n						<a target=\"_blank\" href=\"http://www.viajes-india.annonline.com/\">\r\n						Viajes India</a>&nbsp; Viajes India,India Viajes, Viaje \r\n						a La India, Paquetes de Viaje India, Agencia De Viajes \r\n						India, India Vacaciones, </span></p>\r\n						<p align=\"justify\"><span class=\"normal\"><span style=\"font-family: Times New Roman;\">\r\n						<a target=\"_blank\" href=\"http://www.buzzytravel.com/\">\r\n						Holidays to Turkey </a>Turkish Holiday Resort Hotels - \r\n						Cheap, Luxury, Boutique and Spa<br>\r\n						hotels and villas. Weddings Abroad and Special </span>\r\n						</span></p>\r\n						<p align=\"justify\"><span style=\"font-family: Times New Roman;\" class=\"normal\">\r\n						<a target=\"_blank\" href=\"http://www.balijetaime.com/\">\r\n						Location villa Bali - Louer une villa &amp; maison a Bali â€“ \r\n						Sejour a Bali</a><br>\r\n&nbsp; Location villa en bois exotique ouverte sur l\'oc&eacute;an dans un jardin \r\n						tropical seminyak</span></p>\r\n						<p align=\"justify\"><span style=\"font-family: Times New Roman;\" class=\"normal\">\r\n						&nbsp;<a target=\"_blank\" href=\"http://www.annonline.com/\">India \r\n						Tours</a> Annonline offers India Tours, Tours to India, \r\n						An Exclusive Luxury tours are designed for a holiday \r\n						paradise whose main ..</span></p>\r\n						<p align=\"justify\"><span style=\"font-family: Times New Roman;\" class=\"normal\">\r\n						<a target=\"_blank\" href=\"http://www.king-fisher.net/\">\r\n						Gites in South France</a> Kingfisher Holidays offer high \r\n						quality gites, cottages and farmhouses for rent in the \r\n						South of France.</span></p>\r\n						<p align=\"justify\"><span style=\"font-family: Times New Roman;\" class=\"normal\">\r\n						<a target=\"_blank\" href=\"http://www.viajes-india.annonline.com/\">\r\n						Viajes India | India Vacaciones </a>&nbsp;Viajes India,India \r\n						Viajes, Viaje a La India, Paquetes de Viaje India, <br>\r\n						<br>\r\n						&nbsp;<a target=\"_blank\" href=\"http://www.indiantouroperator.net/\">Indian\r\n \r\n						Tour Operators</a><br>\r\n						&nbsp;Indian Tour Operator Offers tour packages for your \r\n						India Tours, india trip travel india holidays in india, \r\n						Rajasthan cultural tours, India travel agency,</span></p>\r\n						<p align=\"justify\"><span style=\"font-family: Times New Roman;\"><a href=\"http://www.hawaiicarrentals.net/\" target=\"_blank\">\r\n						Car Rental Maui</a>Discount Hawaii Car Rentals is a \r\n						great place on the internet to locate Hawaiian car \r\n						rental, wholesale Maui car rentals. \r\n						</span></p>\r\n						<p align=\"justify\"><span style=\"font-family: Times New Roman;\">\r\n						<a target=\"_blank\" href=\"http://www.anycarhire.com/car-hire/valencia.htm\">\r\n						Car Hire Valencia Airport</a> Compare cheap car hire \r\n						Prices in Valencia Airport</span></p>\r\n						<p align=\"justify\"><span style=\"font-family: Times New Roman;\">\r\n						<a target=\"_blank\" href=\"http://www.anyairportcarhire.com/Airports/USA-Car-Hire/Los-Angeles-Airport-Car-Hire.aspx\">\r\n						Car Hire Los Angeles Airport</a><br>\r\n						LAX Car Hire from Any Airport, book Online for all \r\n						rental locations in the USA including Orlando and New \r\n						York Airport</span></p>\r\n						<p align=\"justify\"><span style=\"font-family: Times New Roman;\">&nbsp;<a href=\"http://www.ezhirecar.com.au/car-hire/brisbane.html\">car \r\n						rental brisbane</a>&nbsp;Whether it is for business or if you \r\n						are just on holiday, we are happy to make the choice for \r\n						hiring a car easier for you whilst traveling in Brisbane\r\n						</span><span class=\"normal\">\r\n						<span style=\"font-family: Times New Roman;\">\r\n						<br>\r\n						<br>\r\n&nbsp;<a href=\"http://www.paradisepalms.net.au/accommodation.php\">Coffs \r\nHarbour Accommodation &amp; Wedding Chapel</a>: Book affordable Coffs \r\nHarbour accommodation at Paradise Palms Resort offering accommodation \r\nfor couples, families, groups and retirees</span></span></p>\r\n						<p align=\"justify\"><span class=\"normal\">\r\n						<span style=\"font-family: Times New Roman;\">\r\n						&nbsp;<a href=\"http://www.bridgewaterterraces.com.au/\">Kangaroo Point \r\nAccommodation</a> - Book Brisbane Accommodation at Bridgewater Terraces \r\nin Kangaroo Point - Just minutes from the Brisbane CBD</span></span></p>\r\n						<p align=\"justify\"><span class=\"normal\">\r\n						<span style=\"font-family: Times New Roman;\">\r\n						&nbsp;<a href=\"http://www.gchr.com.au/gold-coast-accommodation\">Gold \r\nCoast Holiday Rentals</a> GCHR.com.au offers Gold Coast Holiday Rentals \r\nwith Gold Coast Apartment Accommodation in Surfers Paradise, Miami &amp;\r\n Palm Beach. Book Gold Coast Holiday Apartments online today </span></span></p>\r\n						<p align=\"justify\"><span class=\"normal\">\r\n						<span style=\"font-family: Times New Roman;\">\r\n						<a href=\"http://www.infinitygc.com.au/\" target=\"blank\">Gold Coast \r\nTheme Parks</a>: Infinity on the Gold Coast - Offering affordable Gold \r\nCoast family fun in the heart of Surfers Paradise. Entertain the family \r\nwith Gold Coast entertainment on offer at Infinity Gold Coast.\r\n\r\n \r\n\r\n</span></span></p>\r\n						<p align=\"justify\"><span class=\"normal\">\r\n						<span style=\"font-family: Times New Roman;\">\r\n						<a href=\"http://www.cheapholidayaccommodation.com/queensland/gold-coast/accommodation\">Gold\r\n Coast Accommodation</a>: Book Gold Coast Accommodation at cheap holiday\r\n accommodation â€” Gold Coast hotels, resorts &amp; apartments available.</span></span></p>','2010-08-29 00:58:54',1,'','',0,1,0,16,0,0),(9,'vi','Why travel With UW Alumni Tours?','why-travel-with-uw-alumni-tours','',0,0,'The UW Alumni Association is committed to delighting and educating \r\nalumni and friends through quality, worldwide travel opportunities. Our \r\nprogram offers travelers many exciting and enriching ways to stay \r\nconnected to the University of Washington and to each other.','The UW Alumni Association is committed to delighting and educating alumni and friends through quality, worldwide travel opportunities. Our program offers travelers many exciting and enriching ways to stay connected to the University of Washington and to each other.<br><br>\"Discover the world with fellow Huskies and UW experts.\"<br><br>Since 1975, UW Alumni Tours has taken thousands of alumni and friends to fascinating destinations around the globe. In fact, over a hundred UW alumni and friends have taken more than five tours with us. And with all of the excellent reasons to travel with us, and approximately 40 tours each year, we\'re confident UW Alumni Tours has something special just for you!<br>Join us on one of our upcoming tours!<br><br>Some of the many reasons to travel with UW Alumni Tours include:<br>Learn on the go.<br><br>We work with companies dedicated to \"educational\" travel. They hire the best guides and provide lifelong learning opportunities all across the globe. Most trips feature lectures given by local experts, UW faculty or faculty from a partnering university.<br>Get more for your money.<br><br>Traveling is an investment, and we make sure you get the best value for your money. Our trips allow you to stretch your travel dollar so that you can experience a wide variety of cultural, educational and recreational activities without any surprise charges.<br>We do all the work.<br><br>Convenience. Ease of travel. No hassle vacations. Every detail, from transportation and lodging to the finest dining and sightseeing activities, is pre-planned so that your trip is 100% worry-free. Your only job is to relax, learn and, most importantly, have fun!<br>Make new friends.<br><br>Traveling with fellow Huskies and friends is a great way to stay connected to the University and each other. More than half of our travelers are repeat travelers, meaning they trust UW Alumni Tours and intend to see more of the world with us.<br>Enjoy red-carpet treatment.<br><br>Quality, expertise and professionalismâ€”thatâ€™s what you get with UW Alumni Tours. Travel in style and enjoy dazzling hotels and attentive hosts who continually go the extra mile. Vacations come and go, but we make sure your travel memories last a lifetime.<br>UWAA Hosts<br><br>Many of our tours are escorted by UW hosts. Our hosts are there to assist you throughout the trip and to help make sure your alumni travel experience is fabulous and memorable. It\'s our personal touch.<br>Assisted Hearing Devices<br><br>We\'re continually seeking new ways to enhance our tours, and many of our tours include the use of hearing devices that enable you to hear the tour guide from up to 30 feet away! No more crowding around the tour guide.','2010-07-23 00:37:46',1,'','',0,1,0,14,0,0),(10,'vi','From the Director\'s Desk','from-the-directors-desk','',0,0,'Your college days may be over, but that doesnâ€™t mean you have to stop \r\nlearning. Our travel program offers unique opportunities to experience \r\nnew faces, places and cultures from all across the globe. The best \r\npartâ€”youâ€™ll travel with fellow Huskies!','Your college days may be over, but that doesnâ€™t mean you have to stop learning. Our travel program offers unique opportunities to experience new faces, places and cultures from all across the globe. The best partâ€”youâ€™ll travel with fellow Huskies!<br><br>Renowned travel writer Tim Cahill says â€œA journey is best measured in friends, rather than miles.â€ We invite you to see the world with UW alumni and friends, building new friendships that last long after youâ€™ve returned home. Together, youâ€™ll savor the thrill of travel as you visit exciting destinations and enrich your understanding of other customs.<br><br>Our tour operators are the best in the business and provide first-class adventures from start to finish. Plus, our program offers incredible value and variety. Some trips are all inclusive, while others give you the flexibility to choose excursions and personalize your vacation.<br><br>Here are just some of the highlights from our 2010 tour schedule:<br><br>&nbsp;&nbsp;&nbsp; * Varietyâ€”we offer ocean cruises, river cruises and land tours with value in mind. Take your pick, pack your bags. We\'ll see you there.<br>&nbsp;&nbsp;&nbsp; * Choose your continent! Africa, Asia, Europe and South Americaâ€”it\'s all here!<br>&nbsp;&nbsp;&nbsp; * Favorite locationsâ€”we\'re bringing back popular tours to Cortona, Peru and Russia. You donâ€™t want to miss out this time around!<br>&nbsp;&nbsp;&nbsp; * Discover Dubaiâ€”join us for our first UW trips to Dubai. Choose from a week-long immersion or a cruise that begins in Singapore and ends in the \"City of Gold.\"<br><br>If you love to learn, hunger for new experiences and enjoy journeys of self-discovery, youâ€™ll find all this and more with UW Alumni Tours.<br><br>I look forward to seeing you soon.<br><br>Pauline Ranieri<br><br>Pauline Ranieri<br>Director, UW Alumni Tours<br><br>For more information on UW Alumni Tours, check out these quick links:<br><br>&nbsp;&nbsp;&nbsp; * Meet the Staff<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pauline Ranieri and Susan Cathcart are your UWAA travel team. Check out their bios and learn the destinations they\'ve traveled to.<br>&nbsp;&nbsp;&nbsp; * Tour Operators<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; When we agree to work with a tour operator, it means the operator has met our criteria for financial responsibility, established reputation, professionalism, quality operations and all-around dependability.<br>&nbsp;&nbsp;&nbsp; * FAQs<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Review some frequently asked questions about UW Alumni Tours.<br>&nbsp;&nbsp;&nbsp; * How to Reserve Your Spot<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Details about how to sign up for a UWAA tour.<br><br>Questions? Contact us at uwaatour@u.washington.edu or 206-685-9276 or 1-800-289-2586.','2010-07-23 00:38:39',1,'','',0,1,0,14,0,0),(8,'vi','Why VietNam?','why-vietnam','',0,0,'Vietnam Discovery is an easy 15-day/14-night discovery tour of Vietnam \r\nfollowing a less-traveled route from the South to the North with an \r\nin-depth look into the country natural beauty and culture.\r\n			','Vietnam Discovery is an easy 15-day/14-night discovery tour of Vietnam \r\nfollowing a less-traveled route from the South to the North with an \r\nin-depth look into the country natural beauty and culture.\r\n			','2010-07-23 00:18:31',1,'','',1,1,0,15,0,0);
/*!40000 ALTER TABLE `lvn_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_hotel`
--

DROP TABLE IF EXISTS `lvn_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_hotel` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `images` varchar(250) NOT NULL,
  `our_rating` int(6) NOT NULL default '0',
  `price` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `website` varchar(50) NOT NULL,
  `noidunghotel` text NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `home` tinyint(1) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `created_by` (`created_by`),
  KEY `published` (`published`),
  KEY `category` (`category`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_hotel`
--

LOCK TABLES `lvn_hotel` WRITE;
/*!40000 ALTER TABLE `lvn_hotel` DISABLE KEYS */;
INSERT INTO `lvn_hotel` (`id`, `lang`, `title`, `images`, `our_rating`, `price`, `address`, `tel`, `fax`, `website`, `noidunghotel`, `created`, `created_by`, `metakey`, `metadesc`, `home`, `published`, `category`, `ordering`) VALUES (1,'vi','Salute Hotel','/ntd/uploads/thumb2_005.jpg',2,'$1000 - $2000','7 Hang Dau, Ha Noi, Vietnam','(84 4) 825 8003','(84 4) 934 3607','http://www.salutehotels.com','<p class=\"Normal\">- TÃ´i khÃ´ng tham gia thá»±c hiá»‡n Ä‘á» Ã¡n song cÅ©ng Ä‘Æ°á»£c\r\nÄ‘Æ¡n vá»‹ tÆ° váº¥n láº¥y Ã½ kiáº¿n. TrÆ°á»›c háº¿t, tÃ´i bÄƒn khoÄƒn vÃ¬ thá»i gian thá»±c\r\nhiá»‡n má»™t quy hoáº¡ch lá»›n láº¡i quÃ¡ ngáº¯n, chá»‰ hÆ¡n má»™t nÄƒm, hiá»ƒu biáº¿t vá» Ä‘iá»u\r\nkiá»‡n tá»± nhiÃªn, kiáº¿n thá»©c vá» lá»‹ch sá»­ háº¡n cháº¿. CÆ¡ sá»Ÿ khoa há»c hÃ¬nh thÃ nh\r\ncÃ¡c Ã½ tÆ°á»Ÿng mÃ  tÆ° váº¥n Ä‘Æ°a ra chÆ°a Ä‘Æ°á»£c chá»©ng minh sÃ¢u sáº¯c. </p>\r\n<p class=\"Normal\">Váº¥n Ä‘á» khÃ¡c lÃ  láº«n lá»™n giá»¯a quy hoáº¡ch Ä‘Ã´ thá»‹ vÃ  quy\r\nhoáº¡ch chung. ÄÃ¢y pháº£i lÃ  Ä‘á» Ã¡n quy hoáº¡ch vÃ¹ng, trÃªn cÆ¡ sá»Ÿ Ä‘Ã³ cÃ³ quy\r\nhoáº¡ch Ä‘Ã´ thá»‹ táº¡i SÆ¡n TÃ¢y, HÃ  ÄÃ´ng... NgoÃ i ra, cÃ¡c quy hoáº¡ch kinh táº¿ xÃ£\r\nhá»™i, quy hoáº¡ch cÃ¡c ngÃ nh láº¡i cháº­m hÆ¡n, chÆ°a cÃ³ cÃ¡i nÃ o cÃ³ táº§m nhÃ¬n Ä‘áº¿n\r\n2050, nÃªn láº¡i cÃ³ thá»ƒ kháº­p khiá»…ng vá»›i cÃ¡c quy hoáº¡ch khÃ¡c sau nÃ y. </p><input id=\"gwProxy\" type=\"hidden\"><!--Session data--><input onclick=\"jsCall();\" id=\"jsProxy\" type=\"hidden\"><div id=\"refHTML\"></div><input id=\"gwProxy\" type=\"hidden\"><!--Session data--><input onclick=\"jsCall();\" id=\"jsProxy\" type=\"hidden\"><div id=\"refHTML\"></div>','2009-11-25 16:14:55',1,'','',0,1,12,0),(2,'vi','Thuy tien Hotel','/ntd/uploads/thumb2_004.jpg',3,'$200 - $240','1C Tong Dan, Hoan Kiem, Hanoi, Vietnam','(84 4) 824 4775','(84 4) 824 4784','http://www.thuytienhotel.com.vn','<p class=\"Normal\">- TÃ´i khÃ´ng tham gia thá»±c hiá»‡n Ä‘á» Ã¡n song cÅ©ng Ä‘Æ°á»£c\r\nÄ‘Æ¡n vá»‹ tÆ° váº¥n láº¥y Ã½ kiáº¿n. TrÆ°á»›c háº¿t, tÃ´i bÄƒn khoÄƒn vÃ¬ thá»i gian thá»±c\r\nhiá»‡n má»™t quy hoáº¡ch lá»›n láº¡i quÃ¡ ngáº¯n, chá»‰ hÆ¡n má»™t nÄƒm, hiá»ƒu biáº¿t vá» Ä‘iá»u\r\nkiá»‡n tá»± nhiÃªn, kiáº¿n thá»©c vá» lá»‹ch sá»­ háº¡n cháº¿. CÆ¡ sá»Ÿ khoa há»c hÃ¬nh thÃ nh\r\ncÃ¡c Ã½ tÆ°á»Ÿng mÃ  tÆ° váº¥n Ä‘Æ°a ra chÆ°a Ä‘Æ°á»£c chá»©ng minh sÃ¢u sáº¯c. </p>\r\n<p class=\"Normal\">Váº¥n Ä‘á» khÃ¡c lÃ  láº«n lá»™n giá»¯a quy hoáº¡ch Ä‘Ã´ thá»‹ vÃ  quy\r\nhoáº¡ch chung. ÄÃ¢y pháº£i lÃ  Ä‘á» Ã¡n quy hoáº¡ch vÃ¹ng, trÃªn cÆ¡ sá»Ÿ Ä‘Ã³ cÃ³ quy\r\nhoáº¡ch Ä‘Ã´ thá»‹ táº¡i SÆ¡n TÃ¢y, HÃ  ÄÃ´ng... NgoÃ i ra, cÃ¡c quy hoáº¡ch kinh táº¿ xÃ£\r\nhá»™i, quy hoáº¡ch cÃ¡c ngÃ nh láº¡i cháº­m hÆ¡n, chÆ°a cÃ³ cÃ¡i nÃ o cÃ³ táº§m nhÃ¬n Ä‘áº¿n\r\n2050, nÃªn láº¡i cÃ³ thá»ƒ kháº­p khiá»…ng vá»›i cÃ¡c quy hoáº¡ch khÃ¡c sau nÃ y. </p><input id=\"gwProxy\" type=\"hidden\"><!--Session data--><input onclick=\"jsCall();\" id=\"jsProxy\" type=\"hidden\"><div id=\"refHTML\"></div><input id=\"gwProxy\" type=\"hidden\"><!--Session data--><input onclick=\"jsCall();\" id=\"jsProxy\" type=\"hidden\"><div id=\"refHTML\"></div>','2009-11-25 16:14:38',1,'','',0,1,12,0),(3,'vi','Sunny Hotel','/ntd/uploads/thumb2_002.jpg',3,'$160 - $240','120 Quan Thanh, Hanoi, Vietnam','(84 4) 715 0555','(84 4) 715 0495','http://www.sunnyhotelhanoi.com','<p class=\"Normal\">TÃ´i khÃ´ng tham gia thá»±c hiá»‡n Ä‘á» Ã¡n song cÅ©ng Ä‘Æ°á»£c\r\nÄ‘Æ¡n vá»‹ tÆ° váº¥n láº¥y Ã½ kiáº¿n. TrÆ°á»›c háº¿t, tÃ´i bÄƒn khoÄƒn vÃ¬ thá»i gian thá»±c\r\nhiá»‡n má»™t quy hoáº¡ch lá»›n láº¡i quÃ¡ ngáº¯n, chá»‰ hÆ¡n má»™t nÄƒm, hiá»ƒu biáº¿t vá» Ä‘iá»u\r\nkiá»‡n tá»± nhiÃªn, kiáº¿n thá»©c vá» lá»‹ch sá»­ háº¡n cháº¿. CÆ¡ sá»Ÿ khoa há»c hÃ¬nh thÃ nh\r\ncÃ¡c Ã½ tÆ°á»Ÿng mÃ  tÆ° váº¥n Ä‘Æ°a ra chÆ°a Ä‘Æ°á»£c chá»©ng minh sÃ¢u sáº¯c </p>\r\n<input id=\"gwProxy\" type=\"hidden\"><!--Session data--><input onclick=\"jsCall();\" id=\"jsProxy\" type=\"hidden\"><div id=\"refHTML\"></div><input id=\"gwProxy\" type=\"hidden\"><!--Session data--><input onclick=\"jsCall();\" id=\"jsProxy\" type=\"hidden\"><div id=\"refHTML\"></div>','2009-11-25 16:14:25',1,'','',0,1,12,0);
/*!40000 ALTER TABLE `lvn_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_loaixe`
--

DROP TABLE IF EXISTS `lvn_loaixe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_loaixe` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(250) NOT NULL,
  `images` varchar(250) NOT NULL,
  `category` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_loaixe`
--

LOCK TABLES `lvn_loaixe` WRITE;
/*!40000 ALTER TABLE `lvn_loaixe` DISABLE KEYS */;
INSERT INTO `lvn_loaixe` (`id`, `lang`, `title`, `images`, `category`, `published`, `ordering`) VALUES (1,'vi','Camry','',1,1,0),(2,'vi','INNOVA','',1,1,0),(3,'vi','Vios','',1,1,0),(4,'vi','SANTA FE','',5,1,0),(5,'vi','VERACRUZ','',5,1,0),(6,'vi','GETZ','',5,1,0),(7,'vi','STAREX','',5,1,0),(8,'vi','ELANTRA','',5,1,0),(9,'vi','GRAND ','',5,1,0),(10,'vi','ACCENT','',5,1,0);
/*!40000 ALTER TABLE `lvn_loaixe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_nhanhieu`
--

DROP TABLE IF EXISTS `lvn_nhanhieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_nhanhieu` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(200) NOT NULL,
  `banner` varchar(250) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_nhanhieu`
--

LOCK TABLES `lvn_nhanhieu` WRITE;
/*!40000 ALTER TABLE `lvn_nhanhieu` DISABLE KEYS */;
INSERT INTO `lvn_nhanhieu` (`id`, `lang`, `title`, `banner`, `published`, `ordering`) VALUES (1,'vi','Toyota','',1,1),(2,'vi','For','',1,4),(3,'vi','General Motors','',1,3),(4,'vi','BMV','',1,1),(5,'vi','KhÃ¡c','',1,5);
/*!40000 ALTER TABLE `lvn_nhanhieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_picture`
--

DROP TABLE IF EXISTS `lvn_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_picture` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(250) NOT NULL,
  `images` varchar(250) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL default '0',
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_picture`
--

LOCK TABLES `lvn_picture` WRITE;
/*!40000 ALTER TABLE `lvn_picture` DISABLE KEYS */;
INSERT INTO `lvn_picture` (`id`, `lang`, `title`, `images`, `published`, `active`, `ordering`) VALUES (6,'vi','áº¢nh 2','/educare/uploads/2360.jpg',1,1,0),(5,'vi','Anh 1','/educare/uploads/2458335223_d44bc3e05c_o.jpg',1,0,0),(7,'vi','áº¢nh 3','/educare/uploads/ANH_7408.jpg',1,0,0),(8,'vi','áº¢nh 4','/educare/uploads/VNE_0244.jpg',1,0,0);
/*!40000 ALTER TABLE `lvn_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_poll`
--

DROP TABLE IF EXISTS `lvn_poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_poll` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `voters` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_poll`
--

LOCK TABLES `lvn_poll` WRITE;
/*!40000 ALTER TABLE `lvn_poll` DISABLE KEYS */;
INSERT INTO `lvn_poll` (`id`, `lang`, `title`, `alias`, `voters`, `published`) VALUES (1,'vi','Sáº£n pháº©m báº¡n quan tÃ¢m','san-pham-ma-ban-quan-tam',17,1);
/*!40000 ALTER TABLE `lvn_poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_poll_data`
--

DROP TABLE IF EXISTS `lvn_poll_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` varchar(255) NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_poll_data`
--

LOCK TABLES `lvn_poll_data` WRITE;
/*!40000 ALTER TABLE `lvn_poll_data` DISABLE KEYS */;
INSERT INTO `lvn_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES (1,1,'MÃ¡y hÃ n TIG',6),(2,1,'MÃ¡y hÃ n MIG',3),(3,1,'MÃ¡y hÃ n há»“ quang',4),(4,1,'MÃ¡y cáº¯t plasma',4),(5,1,'Thiáº¿t bá»‹ cáº¯t gas',0),(6,1,'',0),(7,1,'',0),(8,1,'',0);
/*!40000 ALTER TABLE `lvn_poll_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_product`
--

DROP TABLE IF EXISTS `lvn_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_product` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `price` varchar(20) NOT NULL,
  `images` varchar(250) NOT NULL,
  `introProduct` text NOT NULL,
  `fullProduct` text NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `home` tinyint(1) NOT NULL default '0',
  `leftNow` tinyint(1) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `hits` int(11) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `nhanhieu` int(11) NOT NULL default '0',
  `type` int(11) NOT NULL default '0',
  `size` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`),
  KEY `created_by` (`created_by`),
  KEY `published` (`published`),
  KEY `category` (`category`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_product`
--

LOCK TABLES `lvn_product` WRITE;
/*!40000 ALTER TABLE `lvn_product` DISABLE KEYS */;
INSERT INTO `lvn_product` (`id`, `lang`, `title`, `alias`, `price`, `images`, `introProduct`, `fullProduct`, `created`, `created_by`, `metakey`, `metadesc`, `home`, `leftNow`, `published`, `hits`, `category`, `nhanhieu`, `type`, `size`, `ordering`) VALUES (1,'vi','TNA: 5 thÃ¡ng Ä‘áº¡t 17,1 tá»· Ä‘á»“ng','tna-5-thang-dat-171-ty-dong-lntt-hoan-thanh-427-ke-hoach1259','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/08/TNA2_150.JPG','So vá»›i káº¿ hoáº¡ch 650 tá»· Ä‘á»“ng doanh thu vÃ  40 tá»· Ä‘á»“ng LNTT nÄƒm 2010, káº¿t thÃºc thÃ¡ng','<p style=\"text-align: justify;\"><!--[if gte mso 9]><![endif]--><style> <!--\r\n/* Font Definitions */\r\n@font-face\r\n{font-family:\"Cambria Math\";\r\npanose-1:2 4 5 3 5 4 6 3 2 4;\r\nmso-font-charset:1;\r\nmso-generic-font-family:roman;\r\nmso-font-format:other;\r\nmso-font-pitch:variable;\r\nmso-font-signature:0 0 0 0 0 0;}\r\n@font-face\r\n{font-family:Calibri;\r\npanose-1:2 15 5 2 2 2 4 3 2 4;\r\nmso-font-charset:0;\r\nmso-generic-font-family:swiss;\r\nmso-font-pitch:variable;\r\nmso-font-signature:-1610611985 1073750139 0 0 159 0;}\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-unhide:no;\r\nmso-style-qformat:yes;\r\nmso-style-parent:\"\";\r\nmargin-top:0in;\r\nmargin-right:0in;\r\nmargin-bottom:10.0pt;\r\nmargin-left:0in;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:13.0pt;\r\nmso-bidi-font-size:11.0pt;\r\nfont-family:\"Times New Roman\",\"serif\";\r\nmso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:\"Times New Roman\";\r\nmso-bidi-theme-font:minor-bidi;}\r\n.MsoChpDefault\r\n{mso-style-type:export-only;\r\nmso-default-props:yes;\r\nfont-size:13.0pt;\r\nmso-ansi-font-size:13.0pt;\r\nmso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:\"Times New Roman\";\r\nmso-bidi-theme-font:minor-bidi;}\r\n.MsoPapDefault\r\n{mso-style-type:export-only;\r\nmargin-bottom:10.0pt;\r\nline-height:115%;}\r\n@page Section1\r\n{size:8.5in 11.0in;\r\nmargin:1.0in 1.0in 1.0in 1.0in;\r\nmso-header-margin:.5in;\r\nmso-footer-margin:.5in;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n--> </style><!--[if gte mso 10]> <style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:\"Table Normal\";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-priority:99;\r\nmso-style-qformat:yes;\r\nmso-style-parent:\"\";\r\nmso-padding-alt:0in 5.4pt 0in 5.4pt;\r\nmso-para-margin-top:0in;\r\nmso-para-margin-right:0in;\r\nmso-para-margin-bottom:10.0pt;\r\nmso-para-margin-left:0in;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:11.0pt;\r\nfont-family:\"Calibri\",\"sans-serif\";\r\nmso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:\"Times New Roman\";\r\nmso-fareast-theme-font:minor-fareast;\r\nmso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;}\r\n</style> <![endif]--> </p><p style=\"text-align: justify;\">CTCP ThÆ°Æ¡ng máº¡i vÃ  Xuáº¥t nháº­p kháº©u ThiÃªn Nam (MCK: TNA) thÃ´ng\r\nbÃ¡o káº¿t quáº£ kinh doanh thÃ¡ng 5 vÃ  5 thÃ¡ng Ä‘áº§u nÄƒm 2010.</p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\">Theo Ä‘Ã³, doanh thu thuáº§n thÃ¡ng 5 cÃ´ng ty Ä‘áº¡t Ä‘Æ°á»£c lÃ  77,2 tá»·\r\nÄ‘á»“ng, lÅ©y káº¿ 5 thÃ¡ng Ä‘áº§u nÄƒm lÃ  324,7 tá»· Ä‘á»“ng, Ä‘áº¡t 50% káº¿ hoáº¡ch nÄƒm 2010 (650 tá»· Ä‘á»“ng) vÃ  tÄƒng 132 % so vá»›i cÃ¹ng ká»³ nÄƒm\r\ntrÆ°á»›c.</p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\">Lá»£i nhuáº­n trÆ°á»›c thuáº¿ thÃ¡ng 5 Ä‘áº¡t 4,5 tá»· Ä‘á»“ng, lÅ©y káº¿ 5 thÃ¡ng\r\nÄ‘áº§u nÄƒm lÃ  17,1 tá»· Ä‘á»“ng, Ä‘áº¡t 42,7% káº¿ hoáº¡ch nÄƒm 2010 (40 tá»· Ä‘á»“ng) vÃ  tÄƒng 123%\r\nso vá»›i cÃ¹ng ká»³ nÄƒm trÆ°á»›c.</p><p style=\"text-align: right;\">Theo <span style=\"font-style: italic;\">TNA</span></p><p style=\"text-align: right;\"> <span style=\"font-weight: bold;\">N.V.T</span><br></p>','2010-06-20 06:40:31',1,'','',0,0,1,0,34,0,0,0,0),(2,'vi','PVFI vÃ  TLS trá»Ÿ thÃ nh cá»• Ä‘Ã´ng','pvfi-va-tls-tro-thanh-co-dong-chien-luoc-cua-csc3681','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/08/csc4_150.jpg','Viá»‡c trá»Ÿ thÃ nh cá»• Ä‘Ã´ng chiáº¿n lÆ°á»£c Ä‘Æ°á»£c thá»±c hiá»‡n thÃ´ng qua viá»‡c mua cá»• phiáº¿u phÃ¡t hÃ nh thÃªm','<p style=\"text-align: justify;\"><!--[if gte mso 9]><![endif]--><style> <!--\r\n/* Font Definitions */\r\n@font-face\r\n{font-family:\"Cambria Math\";\r\npanose-1:2 4 5 3 5 4 6 3 2 4;\r\nmso-font-charset:0;\r\nmso-generic-font-family:roman;\r\nmso-font-pitch:variable;\r\nmso-font-signature:-1610611985 1107304683 0 0 159 0;}\r\n@font-face\r\n{font-family:Calibri;\r\npanose-1:2 15 5 2 2 2 4 3 2 4;\r\nmso-font-charset:0;\r\nmso-generic-font-family:swiss;\r\nmso-font-pitch:variable;\r\nmso-font-signature:-1610611985 1073750139 0 0 159 0;}\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-unhide:no;\r\nmso-style-qformat:yes;\r\nmso-style-parent:\"\";\r\nmargin-top:0in;\r\nmargin-right:0in;\r\nmargin-bottom:10.0pt;\r\nmargin-left:0in;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:13.0pt;\r\nmso-bidi-font-size:11.0pt;\r\nfont-family:\"Times New Roman\",\"serif\";\r\nmso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:\"Times New Roman\";\r\nmso-bidi-theme-font:minor-bidi;}\r\n.MsoChpDefault\r\n{mso-style-type:export-only;\r\nmso-default-props:yes;\r\nfont-size:13.0pt;\r\nmso-ansi-font-size:13.0pt;\r\nmso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:\"Times New Roman\";\r\nmso-bidi-theme-font:minor-bidi;}\r\n.MsoPapDefault\r\n{mso-style-type:export-only;\r\nmargin-bottom:10.0pt;\r\nline-height:115%;}\r\n@page Section1\r\n{size:8.5in 11.0in;\r\nmargin:1.0in 1.0in 1.0in 1.0in;\r\nmso-header-margin:.5in;\r\nmso-footer-margin:.5in;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n--> </style><!--[if gte mso 10]> <style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:\"Table Normal\";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-priority:99;\r\nmso-style-qformat:yes;\r\nmso-style-parent:\"\";\r\nmso-padding-alt:0in 5.4pt 0in 5.4pt;\r\nmso-para-margin-top:0in;\r\nmso-para-margin-right:0in;\r\nmso-para-margin-bottom:10.0pt;\r\nmso-para-margin-left:0in;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:11.0pt;\r\nfont-family:\"Calibri\",\"sans-serif\";\r\nmso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:\"Times New Roman\";\r\nmso-fareast-theme-font:minor-fareast;\r\nmso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;}\r\n</style> <![endif]--> </p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\">Theo tin tá»« CÃ´ng ty Cá»• pháº§n Äáº§u tÆ° vÃ  XÃ¢y dá»±ng ThÃ nh Nam (mÃ£\r\nCK CSC), ngÃ y 15/5 vá»«a qua, cÃ´ng ty Ä‘Ã£ kÃ½ káº¿t thoáº£ thuáº­n há»£p tÃ¡c vá»›i CÃ´ng ty Cá»•\r\npháº§n Äáº§u tÆ° tÃ i chÃ­nh CÃ´ng Ä‘oÃ n Dáº§u khÃ­ Viá»‡t Nam (PVFI) vÃ  CÃ´ng ty Cá»• pháº§n\r\nChá»©ng khoÃ¡n ThÄƒng Long (TLS).</p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\">Theo ná»™i dung thá»a thuáº­n, tá»« ngÃ y 15/05/2010, hai cÃ´ng ty\r\ntrÃªn Ä‘Ã£ chÃ­nh thá»©c trá»Ÿ thÃ nh cá»• Ä‘Ã´ng chiáº¿n lÆ°á»£c cá»§a CSC. Viá»‡c trá»Ÿ thÃ nh cá»• Ä‘Ã´ng\r\nchiáº¿n lÆ°á»£c Ä‘Æ°á»£c thá»±c hiá»‡n thÃ´ng qua viá»‡c mua cá»• phiáº¿u phÃ¡t hÃ nh thÃªm cá»§a CSC\r\ntheo ná»™i dung Nghá»‹ quyáº¿t ÄHCÄ.</p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\">CSC chÆ°a cÃ´ng bá»‘ sá»‘ lÆ°á»£n<a onmouseover=\"stm(\'\',Style[5])\" href=\"http://cafef.vn/Thi-truong-niem-yet/Thong-tin-cong-ty/.chn\" style=\"background: none repeat scroll 0% 0% transparent; border-bottom: 1px dashed rgb(0, 102, 204);\" onmouseout=\"ChangeStatus();\"></a>g cá»• phiáº¿u vÃ  giÃ¡ bÃ¡n cá»¥ thá»ƒ cho 2\r\nnhÃ  Ä‘áº§u tÆ° chiáº¿n lÆ°á»£c nhÆ°ng theo ná»™i dung Nghá»‹ quyáº¿t ÄHCÄ, tá»•ng lÆ°á»£ng cá»• phiáº¿u cÃ´ng\r\nty phÃ¡t hÃ nh thÃªm cho cá»• Ä‘Ã´ng chiáº¿n lÆ°á»£c lÃ  1.475.000 cá»• phiáº¿u, giÃ¡ phÃ¡t hÃ nh dá»±\r\nkiáº¿n lÃ  21.000 Ä‘á»“ng/ CP.</p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\">Vá»›i vai trÃ² lÃ  cÃ¡c cá»• Ä‘Ã´ng chiáº¿n lÆ°á»£c, hai CÃ´ng ty trÃªn sáº½ há»—\r\ntrá»£ vÃ  tÆ° váº¥n cho CSC trong viá»‡c quáº£n trá»‹ cÃ´ng ty Ä‘á»ƒ sá»­ dá»¥ng hiá»‡u quáº£ nguá»“n vá»‘n,\r\ncÃ¹ng nhau tham gia vÃ o cÃ¡c cÆ¡ há»™i Ä‘áº§u tÆ°, phÃ¡t triá»ƒn kinh doanh Ä‘á»ƒ tá»‘i Æ°u hoÃ¡ lá»£i\r\nnhuáº­n cho táº¥t cáº£ cÃ¡c bÃªn.</p><p style=\"text-align: right;\">Theo <span style=\"font-style: italic;\">CSC </span><br></p><p style=\"text-align: right;\"><span style=\"font-weight: bold;\">T.HÆ°Æ¡ng</span><br></p>','2010-06-20 05:23:35',1,'','',0,0,1,0,33,4,0,0,0),(3,'vi','Kiá»ƒm kÃª tÃ i sáº£n táº¡i doanh nghiá»‡p','kiem-ke-tai-san-tai-doanh-nghiep-100-von-nha-nuoc8023','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/08/doanhnghiep_150.jpg','ÄÃ¢y lÃ  má»™t trong nhá»¯ng ná»™i dung quan trá»ng cá»§a Ä‘á» Ã¡n Ä‘Ã¡nh giÃ¡ láº¡i tÃ i sáº£n vÃ  vá»‘n cá»§a doanh nghiá»‡p<br>','<span id=\"dnn_ctr427_ContentPane\"><p id=\"NewsDetail_Box_Info\"> </p><p id=\"VietAd\"> </p><p>Theo Ä‘á» Ã¡n nÃ y, Bá»™ TÃ i chÃ­nh sáº½ kiá»ƒm kÃª, Ä‘Ã¡nh giÃ¡ láº¡i \r\nvá»‘n, tÃ i sáº£n táº¡i nhá»¯ng DN do NhÃ  nÆ°á»›c Ä‘áº§u tÆ° 100% vá»‘n Ä‘iá»u lá»‡; cÃ¡c cÃ´ng \r\nty liÃªn doanh 100% vá»‘n nhÃ  nÆ°á»›c (DN cÃ³ cÃ¡c bÃªn tham gia liÃªn doanh Ä‘á»u \r\nlÃ  cÃ´ng ty do NhÃ  nÆ°á»›c náº¯m giá»¯ 100% vá»‘n Ä‘iá»u lá»‡).\r\n</p><p>TÃ i sáº£n Ä‘Æ°á»£c kiá»ƒm kÃª, Ä‘Ã¡nh giÃ¡ gá»“m: tÃ i sáº£n ngáº¯n háº¡n \r\n(tiá»n, cÃ¡c khoáº£n Ä‘áº§u tÆ° tÃ i chÃ­nh ngáº¯n háº¡n, khoáº£n pháº£i thu ngáº¯n háº¡n, \r\nhÃ ng tá»“n khoâ€¦); tÃ i sáº£n dÃ i háº¡n (tÃ i sáº£n cá»‘ Ä‘á»‹nh, báº¥t Ä‘á»™ng sáº£n Ä‘áº§u tÆ°, \r\ngiÃ¡ trá»‹ quyá»n sá»­ dá»¥ng Ä‘áº¥t, lá»£i tháº¿ thÆ°Æ¡ng máº¡i, giÃ¡ trá»‹ thÆ°Æ¡ng hiá»‡uâ€¦); \r\nvá»‘n hoáº¡t Ä‘á»™ng cá»§a DN (gá»“m ná»£ ngáº¯n háº¡n, ná»£ dÃ i háº¡n, vá»‘n chá»§ sá»Ÿ há»¯u).</p> <p>Theo Bá»™ TÃ i chÃ­nh, Ä‘á» Ã¡n nÃ y sáº½ gÃ³p pháº§n Ä‘Ã¡nh giÃ¡ Ä‘Ãºng \r\nthá»±c tráº¡ng giÃ¡ trá»‹ tÃ i sáº£n do DNNN Ä‘ang quáº£n lÃ½, sá»­ dá»¥ng; tá»« Ä‘Ã³ tá»«ng \r\nbÆ°á»›c xá»­ lÃ½ nhá»¯ng váº¥n Ä‘á» cÃ²n tá»“n táº¡i.</p> <p style=\"text-align: right;\">Theo <span style=\"font-weight: bold;\">KhÃ¡nh Ly</span><br><span style=\"font-style: italic;\">HÃ  Ná»™i Má»›i</span></p> <p></p> <p></p></span>','2010-06-20 05:23:40',1,'','',0,0,1,0,33,0,10,0,0),(4,'vi','TAS: LNST thÃ¡ng 5 giáº£m 80,67%','tas-lnst-thang-5-giam-8067-so-voi-thang-41563','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/08/ck26_150.jpg','LÅ©y káº¿ 5 thÃ¡ng cÃ´ng ty Ä‘áº¡t 20,94 tá»· Ä‘á»“ng doanh thu.','<p style=\"text-align: justify;\"><!--[if gte mso 9]><![endif]--><style> <!--\r\n/* Font Definitions */\r\n@font-face\r\n{font-family:\"Cambria Math\";\r\npanose-1:2 4 5 3 5 4 6 3 2 4;\r\nmso-font-charset:0;\r\nmso-generic-font-family:roman;\r\nmso-font-pitch:variable;\r\nmso-font-signature:-1610611985 1107304683 0 0 159 0;}\r\n@font-face\r\n{font-family:Calibri;\r\npanose-1:2 15 5 2 2 2 4 3 2 4;\r\nmso-font-charset:0;\r\nmso-generic-font-family:swiss;\r\nmso-font-pitch:variable;\r\nmso-font-signature:-1610611985 1073750139 0 0 159 0;}\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-unhide:no;\r\nmso-style-qformat:yes;\r\nmso-style-parent:\"\";\r\nmargin-top:0in;\r\nmargin-right:0in;\r\nmargin-bottom:10.0pt;\r\nmargin-left:0in;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:13.0pt;\r\nmso-bidi-font-size:11.0pt;\r\nfont-family:\"Times New Roman\",\"serif\";\r\nmso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:\"Times New Roman\";\r\nmso-bidi-theme-font:minor-bidi;}\r\n.MsoChpDefault\r\n{mso-style-type:export-only;\r\nmso-default-props:yes;\r\nfont-size:13.0pt;\r\nmso-ansi-font-size:13.0pt;\r\nmso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:\"Times New Roman\";\r\nmso-bidi-theme-font:minor-bidi;}\r\n.MsoPapDefault\r\n{mso-style-type:export-only;\r\nmargin-bottom:10.0pt;\r\nline-height:115%;}\r\n@page Section1\r\n{size:8.5in 11.0in;\r\nmargin:1.0in 1.0in 1.0in 1.0in;\r\nmso-header-margin:.5in;\r\nmso-footer-margin:.5in;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n--> </style><!--[if gte mso 10]> <style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:\"Table Normal\";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-priority:99;\r\nmso-style-qformat:yes;\r\nmso-style-parent:\"\";\r\nmso-padding-alt:0in 5.4pt 0in 5.4pt;\r\nmso-para-margin-top:0in;\r\nmso-para-margin-right:0in;\r\nmso-para-margin-bottom:10.0pt;\r\nmso-para-margin-left:0in;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:11.0pt;\r\nfont-family:\"Calibri\",\"sans-serif\";\r\nmso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:\"Times New Roman\";\r\nmso-fareast-theme-font:minor-fareast;\r\nmso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;}\r\n</style> <![endif]--> </p><p style=\"text-align: justify;\">CÃ´ng ty cá»• pháº§n Chá»©ng khoÃ¡n TrÃ ng An (mÃ£ CK TAS) thÃ´ng bÃ¡o káº¿t\r\nquáº£ kinh doanh thÃ¡ng 5 vÃ  5 thÃ¡ng Ä‘áº§u nÄƒm 2010.</p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\">Doanh thu tá»« hoáº¡t Ä‘á»™ng kinh doanh chá»©ng khoÃ¡n thÃ¡ng 5 cá»§a\r\nTAS lÃ  3,78 tá»· Ä‘á»“ng, giáº£m 45,2%\r\nso vá»›i má»©c 6,892 tá»· Ä‘á»“ng doanh thu Ä‘áº¡t Ä‘Æ°á»£c vÃ o thÃ¡ng 4. LÅ©y káº¿ 5 thÃ¡ng cÃ´ng ty\r\nÄ‘áº¡t 20,94 tá»· Ä‘á»“ng doanh thu.</p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\">Lá»£i nhuáº­n sau thuáº¿ thÃ¡ng 5 cá»§a TAS lÃ  51 triá»‡u Ä‘á»“ng, giáº£m máº¡nh\r\nso vá»›i má»©c 2,639 tá»· Ä‘á»“ng LNST Ä‘áº¡t Ä‘Æ°á»£c vÃ o thÃ¡ng 4/2010. Tá»•ng lá»£i nhuáº­n sau thuáº¿\r\nlÅ©y káº¿ 5 thÃ¡ng lÃ  5,727 tá»· Ä‘á»“ng.</p><p style=\"text-align: right;\">Theo <span style=\"font-style: italic;\">TAS </span><br></p><p style=\"text-align: right;\"><span style=\"font-weight: bold;\">N.V.T</span><br></p>','2010-06-20 05:23:44',1,'','',0,0,1,0,33,0,0,0,0),(5,'vi','TKC: ÄÆ°á»£c cháº¥p thuáº­n chÃ o bÃ¡n cá»• phiáº¿u','tkc-duoc-chap-thuan-chao-ban-co-phieu-ra-cong-chung5658','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/08/TKCSPLENDOR1_150.jpg','TKC sáº½ chia cá»• phiáº¿u thÆ°á»Ÿng vá»›i tá»· lá»‡ 20% vÃ  chÃ o bÃ¡n cho cá»• Ä‘Ã´ng hiá»‡n há»¯u tá»· lá»‡ 3:1 vá»›i giÃ¡ 15.000 Ä‘á»“ng/cp.','<p>NgÃ y 04/06/2010, UBCK Ä‘Ã£ cáº¥p giáº¥y chá»©ng nháº­n chÃ o bÃ¡n cá»• phiáº¿u ra cÃ´ng chÃºng cá»§a CÃ´ng ty Cá»• pháº§n XÃ¢y dá»±ng vÃ  Kinh doanh Äá»‹a á»‘c TÃ¢n Ká»· (<a onmouseover=\"stm(\'TKC\',Style[5])\" style=\"background: none repeat scroll 0% 0% transparent; border-bottom: 1px dashed rgb(0, 102, 204);\" onmouseout=\"ChangeStatus();\" href=\"http://cafef.vn/Thi-truong-niem-yet/Thong-tin-cong-ty/TKC.chn\">TKC</a>).</p> <p>Theo Ä‘Ã³, cÃ´ng ty sáº½ tÄƒng vá»‘n tá»« 60,5 tá»· lÃªn hÆ¡n 95,2 tá»· Ä‘á»“ng thÃ´ng qua:</p> <p>+ PhÃ¡t hÃ nh cá»• phiáº¿u thÆ°á»Ÿng cho cá»• Ä‘Ã´ng hiá»‡n há»¯u vá»›i tá»· lá»‡ 20% tá»« nguá»“n lá»£i nhuáº­n Ä‘á»ƒ láº¡i.</p> <p>+ PhÃ¡t hÃ nh thÃªm cá»• phiáº¿u cho cá»• Ä‘Ã´ng hiá»‡n há»¯u tá»· lá»‡ 3:1 vá»›i giÃ¡ chÃ o bÃ¡n lÃ  15.000 Ä‘á»“ng/cp.</p> <p>+ PhÃ¡t hÃ nh cá»• phiáº¿u cho cÃ¡n bá»™ cÃ´ng nhÃ¢n viÃªn tá»· lá»‡ 5% vá»‘n cá»• pháº§n Ä‘ang lÆ°u hÃ nh vá»›i giÃ¡ 15.200 Ä‘á»“ng/cp.</p> <p>Theo TKC, trong nÄƒm 2010, cÃ´ng ty Ä‘Ã£ hoÃ n thÃ nh dá»± Ã¡n vÃ  bÃ¡n háº¿t sá»‘ cÄƒn há»™ Cao cáº¥p The Splendor 1. Má»¥c Ä‘Ã­ch tÄƒng vá»‘n láº§n nÃ y Ä‘á»ƒ Ä‘áº§u tÆ° dá»± Ã¡n chung cÆ° The Splendor 2, quáº­n Thá»§ Äá»©c, TP HCM. Dá»± Ã¡n nÃ y Ä‘Ã£ giáº£i phÃ³ng máº·t báº±ng xong vÃ  chuáº©n bá»‹ khá»Ÿi cÃ´ng trong QI/2011.</p> <p>Hiá»‡n táº¡i, má»™t dá»± Ã¡n lá»›n mang tÃ­nh chiáº¿n lÆ°á»£c cá»§a cÃ´ng ty cÅ©ng Ä‘ang gáº¥p rÃºt triá»ƒn khai. Dá»± Ã¡n á»Ÿ giá»¯a trung tÃ¢m Nam SÃ i GÃ²n, ká» liá»n khu Ä‘Ã´ thá»‹ má»›i GS vÃ  khu Ä‘Ã´ thá»‹ má»›i PhÃº Má»¹ HÆ°ng, tá»•ng diá»‡n tÃ­ch 10ha.</p> <p>TrÆ°á»›c máº¯t, TKC sáº½ triá»ƒn khai xÃ¢y dá»±ng 3 cao á»‘c trÃªn diá»‡n tÃ­ch 1.35 ha vá»›i 1.000 cÄƒn há»™. <a onmouseover=\"stm(\'TKC\',Style[5])\" style=\"background: none repeat scroll 0% 0% transparent; border-bottom: 1px dashed rgb(0, 102, 204);\" onmouseout=\"ChangeStatus();\" href=\"http://cafef.vn/Thi-truong-niem-yet/Thong-tin-cong-ty/TKC.chn\">TKC</a> liÃªn doanh 50%. </p> <p>LÃ£nh Ä‘áº¡o TKC cho biáº¿t, káº¿ hoáº¡ch cá»• tá»©c cho cÃ¡c nÄƒm 2010-2011 tá»‘i thiá»ƒu tÆ°Æ¡ng á»©ng lÃ  25% vÃ  30%.</p> <p>&nbsp;</p> <p align=\"right\"><span style=\"font-weight: bold;\">Quá»‘c Tháº¯ng</span></p> <p align=\"right\">Theo <span style=\"font-style: italic;\">TKC</span></p>','2010-06-20 05:23:49',1,'','',0,0,1,0,33,0,0,0,0),(6,'vi','VNG: Ã”ng Tráº§n Ngá»c Tuáº¥n- cá»• Ä‘Ã´ng','vng-ong-tran-ngoc-tuan-co-dong-lon-dang-ky-mua-1-trieu-cp-va-ban-500000-cp1076','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/08/golf2_150.jpg','Giao dá»‹ch dá»± kiáº¿n thá»±c hiá»‡n báº±ng phÆ°Æ¡ng thá»©c khá»›p lá»‡nh vÃ  thá»a thuáº­n tá»« ngÃ y 10/6 Ä‘áº¿n 9/7/2010.','<p align=\"justify\">CTCP Du lá»‹ch Golf Viá»‡t Nam (mÃ£ CK: VNG) thÃ´ng bÃ¡o giao dá»‹ch cá»• phiáº¿u cá»§a cá»• Ä‘Ã´ng lá»›n.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">Theo Ä‘Ã³, Ã´ng Tráº§n Ngá»c Tuáº¥n lÃ  cá»• Ä‘Ã´ng lá»›n Ä‘Ã£ mua 198.330 cá»• phiáº¿u nÃ¢ng lÆ°á»£ng cá»• phiáº¿u náº¯m giá»¯ tá»« 198.330 cá»• phiáº¿u nÃ¢ng tá»· lá»‡ náº¯m giá»¯ lÃªn 5,456% vÃ  trá»Ÿ thÃ nh cá»• Ä‘Ã´ng lá»›n cá»§a cÃ´ng ty. NgÃ y giao dá»‹ch trá»Ÿ thÃ nh cá»• Ä‘Ã´ng lá»›n lÃ  7/6/2010.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">Ã”ng Tuáº¥n Ä‘Äƒng kÃ½ mua tiáº¿p 1 triá»‡u cá»• phiáº¿u vÃ  bÃ¡n luÃ´n 500.000 cá»• phiáº¿u nÃ¢ng tá»· lá»‡ cá»• phiáº¿u náº¯m giá»¯ tá»« 709.320 á»• phiáº¿u tÆ°Æ¡ng Ä‘Æ°Æ¡ng tá»· lá»‡ 5,46% lÃªn 1.209.320 cá»• phiáº¿u tÆ°Æ¡ng Ä‘Æ°Æ¡ng tá»· lá»‡ 9,3%. Má»¥c Ä‘Ã­ch cá»§a giao dá»‹ch lÃ  Ä‘á»ƒ cÆ¡ cáº¥u láº¡i tÃ i khoáº£n. Giao dá»‹ch dá»± kiáº¿n thá»±c hiá»‡n báº±ng phÆ°Æ¡ng thá»©c khá»›p lá»‡nh vÃ  thá»a thuáº­n tá»« ngÃ y 10/6 Ä‘áº¿n 9/7/2010.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">Káº¿t thÃºc phiÃªn giao dá»‹ch sÃ¡ng nay, ngÃ y 8/6/2010, VNG Ä‘á»©ng giÃ¡ Ä‘áº¡t 14.100 Ä‘á»“ng/ cá»• phiáº¿u.</p> <p style=\"margin-bottom: 0in;\" align=\"right\">Theo <span style=\"font-style: italic;\">Hose </span></p> <p style=\"margin-bottom: 0in;\" align=\"right\"><span style=\"font-weight: bold;\">N.V.T<br></span></p>','2010-06-20 05:23:53',1,'','',0,0,1,0,33,0,0,0,0),(7,'vi','PVD kÃ½ há»£p Ä‘á»“ng cung cáº¥p','pvd-ky-hop-dong-cung-cap-dan-khoan-maersk-convincer-voi-joc1705','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/08/khoandau_150.jpg','NgÃ y 30-4, dÃ²ng dáº§u Ä‘áº§u tiÃªn tá»« giáº¿ng SÆ° Tá»­ Äen ÄÃ´ng Báº¯c 5P thuá»™c lÃ´ 15.1 thá»m lá»¥c Ä‘á»‹a','<span id=\"dnn_ctr427_ContentPane\"> <p align=\"justify\">Theo tin tá»« Tá»•ng CÃ´ng ty cá»• pháº§n Khoan vÃ  Dá»‹ch vá»¥ khoan Dáº§u khÃ­ (mÃ£ CK: PVD), ngÃ y 20/05/2010 vá»«a qua táº¡i khÃ¡ch sáº¡n Renaissance Riverside SÃ i GÃ²n, PVD Ä‘Ã£ chÃ­nh thá»©c kÃ½ há»£p Ä‘á»“ng cung cáº¥p giÃ n khoan biá»ƒn tá»± nÃ¢ng Maersk Convincer cho CÃ´ng ty Äiá»u hÃ nh chung HoÃ ng Long (HoÃ ng Long JOC).</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">Há»£p Ä‘á»“ng chÃ­nh thá»©c báº¯t Ä‘áº§u ká»ƒ tá»« ThÃ¡ng 06/2010. TÆ°Æ¡ng tá»± nhÆ° cÃ¡c giÃ n khoan biá»ƒn tá»± nÃ¢ng khÃ¡c cá»§a Tá»•ng CÃ´ng ty, viá»‡c quáº£n lÃ½, váº­n hÃ nh giÃ n khoan Maersk Convincer vÃ  cÃ¡c dá»‹ch vá»¥ liÃªn quan Ä‘áº¿n cÃ´ng tÃ¡c khoan cho HoÃ ng Long JOC cÅ©ng sáº½ do PV Drilling trá»±c tiáº¿p thá»±c hiá»‡n. </p> <p style=\"margin-bottom: 0in;\" align=\"justify\">&nbsp;</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">NhÆ° váº­y, bÃªn cáº¡nh 3 giÃ n khoan biá»ƒn PV DRILLING I, II vÃ  III do PV Drilling sá»Ÿ há»¯u hiá»‡n Ä‘ang hoáº¡t Ä‘á»™ng, Maersk Convincer lÃ  giÃ n khoan Ä‘Æ°á»£c PV Drilling thuÃª tá»« Ä‘á»‘i tÃ¡c nÆ°á»›c ngoÃ i Ä‘á»ƒ ká»‹p thá»i cung cáº¥p dá»‹ch vá»¥ cho khÃ¡ch hÃ ng. </p> <p style=\"margin-bottom: 0in;\" align=\"justify\">&nbsp;</p> <p style=\"margin-bottom: 0in;\" align=\"right\">Theo <span style=\"font-style: italic;\">PVD</span></p> <p style=\"margin-bottom: 0in;\" align=\"right\"><span style=\"font-weight: bold;\"></span></p> <p style=\"margin-bottom: 0in;\" align=\"justify\"><br></p> <p style=\"margin-bottom: 0in;\" align=\"justify\"><br></p></span>','2010-06-20 06:35:43',1,'','',0,0,1,0,28,0,0,0,0),(8,'vi','VNC: 18/06 chá»‘t danh sÃ¡ch láº¥y','vnc-1806-chot-danh-sach-lay-y-kien-co-dong-bang-van-ban-ve-viec-tang-von-dieu-le7226','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/08/imagedanang_150.jpg','NÄƒm 2010, VNC Ä‘áº·t káº¿ hoáº¡ch Ä‘áº¡t 165 tá»· Ä‘á»“ng doanh thu; tá»· lá»‡ cá»• tá»©c Ä‘áº£m báº£o','<style type=\"text/css\"> <!--\r\n@page { margin: 0.79in }\r\nP { margin-bottom: 0.08in }\r\n--> </style> <p> </p> <p>Theo Trung tÃ¢m LÆ°u\r\nkÃ½ Chá»©ng khoÃ¡n Viá»‡t Nam (VSD), ngÃ y 18/06/2010 lÃ  ngÃ y Ä‘Äƒng\r\nkÃ½ cuá»‘i cÃ¹ng Ä‘á»ƒ láº¥y Ã½ kiáº¿n cá»• Ä‘Ã´ng báº±ng vÄƒn báº£n\r\ncá»§a CÃ´ng ty cá»• pháº§n GiÃ¡m Ä‘á»‹nh Vinacontrol vá» viá»‡c tÄƒng\r\nvá»‘n Ä‘iá»u lá»‡ CÃ´ng ty.</p> <p>Thá»i gian thá»±c\r\nhiá»‡n: Dá»± kiáº¿n ngÃ y 30/6/2010.</p> <p>NÄƒm\r\n2010, <a onmouseover=\"stm(\'VNC\',Style[5])\" href=\"http://cafef.vn/Thi-truong-niem-yet/Thong-tin-cong-ty/VNC.chn\" style=\"background: none repeat scroll 0% 0% transparent; border-bottom: 1px dashed rgb(0, 102, 204);\" onmouseout=\"ChangeStatus();\">VNC</a> Ä‘áº·t káº¿ hoáº¡ch Ä‘áº¡t 165 tá»· Ä‘á»“ng doanh thu (nÄƒm\r\n2009 Ä‘áº¡t 162.7 tá»· Ä‘á»“ng); tá»· lá»‡ cá»• tá»©c Ä‘áº£m báº£o\r\ntá»‘i thiá»ƒu á»Ÿ má»©c 12%/nÄƒm/vá»‘n Ä‘iá»u lá»‡.</p><p style=\"text-align: right;\"><span style=\"font-weight: bold;\">HoÃ ng Ly</span><br>Theo<span style=\"font-style: italic;\"> VSD</span><br> </p>','2010-06-20 05:24:04',1,'','',0,0,1,0,33,0,0,0,0),(9,'vi','SDH: 18/6 GDKHQ nháº­n cá»• tá»©c nÄƒm 2009','sdh-186-gdkhq-nhan-co-tuc-nam-2009-bang-tien-ty-le-165547','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/08/SDHD_150.jpg','Cá»• tá»©c sáº½ Ä‘Æ°á»£c chi tráº£ tá»« 5/7/2010 Ä‘áº¿n 9/7/2010.','<p align=\"justify\">CÃ´ng ty cá»• pháº§n XÃ¢y dá»±ng Háº¡ táº§ng SÃ´ng ÄÃ  (mÃ£ CK: SDH) thÃ´ng bÃ¡o chá»‘t quyá»n nháº­n cá»• tá»©c nÄƒm 2009 báº±ng tiá»n.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">NgÃ y giao dá»‹ch khÃ´ng hÆ°á»Ÿng quyá»n lÃ  18/6/2010 vÃ  ngÃ y Ä‘Äƒng kÃ½ cuá»‘i cÃ¹ng lÃ  22/6/2010.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">CÃ´ng ty tráº£ cá»• tá»©c nÄƒm 2009 tá»· lá»‡ 16%. Cá»• tá»©c sáº½ Ä‘Æ°á»£c chi tráº£ tá»« 5/7/2010 Ä‘áº¿n 9/7/2010.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">Äá»‘i vá»›i chá»©ng khoÃ¡n lÆ°u kÃ½, ngÆ°á»i sá»Ÿ há»¯u lÃ m thá»§ tá»¥c nháº­n cá»• tá»©c táº¡i thÃ nh viÃªn lÆ°u kÃ½ nÆ¡i má»Ÿ tÃ i khoáº£n.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">&nbsp;</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">Äá»‘i vá»›i chá»©ng khoÃ¡n chÆ°a lÆ°u lÃ½, ngÆ°á»i sá»Ÿ há»¯u lÃ m thá»§ tá»¥c nháº­n cá»• phiáº¿u táº¡i SDH.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">&nbsp;</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">Viá»‡c tráº£ cá»• tá»©c Ä‘Ã£ Ä‘Æ°á»£c ÄHCÄ thÆ°á»ng niÃªn nÄƒm 2010 cá»§a cÃ´ng ty thÃ´ng qua.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">&nbsp;</p> <p style=\"margin-bottom: 0in;\" align=\"justify\"><a href=\"http://images1.cafef.vn/Images/Uploaded/Share/2010/06/08/SDH-1.pdf\"><span style=\"font-style: italic;\">ThÃ´ng bÃ¡o chi tráº£ cá»• tá»©c cá»§a SDH Page 1</span></a><span style=\"font-style: italic;\"></span>&nbsp;&nbsp; <a href=\"http://images1.cafef.vn/Images/Uploaded/Share/2010/06/08/SDH-2.pdf\"><span style=\"font-style: italic;\">Page 2</span></a></p> <p style=\"margin-bottom: 0in;\" align=\"right\">Theo <span style=\"font-style: italic;\">SDH</span></p> <p style=\"margin-bottom: 0in;\" align=\"right\"><span style=\"font-weight: bold;\">&nbsp;T.HÆ°Æ¡ng<br></span></p> <p style=\"margin-bottom: 0in;\" align=\"justify\"><br></p>','2010-06-20 05:24:09',1,'','',0,0,1,0,33,0,0,0,0),(10,'vi','TCR: 18/06 chá»‘t danh sÃ¡ch tráº£ cá»•','tcr-1806-chot-danh-sach-tra-co-tuc-nam-2009-bang-4-tien-mat-va-4-co-phieu843','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/08/Gom01_150.jpg','QuÃ½ I/2010, lá»£i nhuáº­n sau thuáº¿ cá»§a cÃ´ng ty Ä‘áº¡t gáº§n 556.57 triá»‡u Ä‘á»“ng (trong khi cÃ¹ng ká»³ nÄƒm','<style type=\"text/css\"> <!--\r\n@page { margin: 0.79in }\r\nP { margin-bottom: 0.08in }\r\n--></style><p>Theo\r\nTrung tÃ¢m LÆ°u kÃ½ Chá»©ng khoÃ¡n Viá»‡t nam (VSD), ngÃ y 18/06/2010\r\nlÃ  ngÃ y Ä‘Äƒng kÃ½ cuá»‘i cÃ¹ng Ä‘á»ƒ tráº£ cá»• tá»©c nÄƒm 2009\r\nbáº±ng tiá»n máº·t vÃ  cá»• phiáº¿u cá»§a CÃ´ng ty cá»• pháº§n CÃ´ng\r\nnghiá»‡p Gá»‘m sá»© Taicera (mÃ£ TCR).</p> <p>Theo\r\nÄ‘Ã³, cÃ´ng ty sáº½ tráº£ cá»• tá»©c báº±ng tiá»n máº·t nÄƒm 2009 tá»·\r\nlá»‡ 4%, thá»i gian thanh toÃ¡n: 30/06/2010; tráº£ cá»• tá»©c báº±ng\r\ncá»• phiáº¿u nÄƒm 2009 tá»· lá»‡ 4% (cá»• Ä‘Ã´ng sá»Ÿ há»¯u 100 cá»•\r\nphiáº¿u Ä‘Æ°á»£c nháº­n 04 cá»• phiáº¿u má»›i). Cá»• phiáº¿u phÃ¡t\r\nhÃ nh thÃªm Ä‘á»ƒ chi tráº£ cá»• tá»©c sáº½ Ä‘Æ°á»£c lÃ m trÃ²n xuá»‘ng\r\nÄ‘áº¿n hÃ ng Ä‘Æ¡n vá»‹. Sá»‘ cá»• phiáº¿u láº» hÃ ng tháº­p phÃ¢n sáº½\r\nÄ‘Æ°á»£c CÃ´ng ty lÃ m trÃ²n xuá»‘ng 2 chá»¯ sá»‘ vÃ  mua láº¡i giÃ¡\r\n10.000 Ä‘/cp Ä‘á»ƒ giá»¯ láº¡i lÃ m cá»• phiáº¿u quá»¹.</p> <p>NgÃ y\r\ntráº£ tiá»n mua cá»• phiáº¿u láº»: 09/07/2010.</p> <p>NgÃ y\r\ndá»± kiáº¿n giao dá»‹ch: 01/08/2010.</p> <p>Má»™t\r\ntrong cÃ¡c káº¿ hoáº¡ch dá»± kiáº¿n Ä‘áº§u tÆ° vÃ  hoáº¡t Ä‘á»™ng sáº£n\r\nxuáº¥t kinh doanh nÄƒm 2010 cá»§a TCR lÃ  cÃ´ng ty sáº½ thiáº¿t láº­p\r\nmá»‘i quan há»‡ Ä‘á»‘i tÃ¡c chiáº¿n lÆ°á»£c vá»›i doanh nghiá»‡p TÃ¢y\r\nBan Nha lÃ  cÃ´ng ty Keraben, hai bÃªn dá»± kiáº¿n sáº½ thÃ nh láº­p\r\ncÃ´ng ty liÃªn doanh táº¡i Viá»‡t Nam, cÃ´ng ty Keraben sáº½ phá»¥\r\ntrÃ¡ch pháº§n cung á»©ng thiáº¿t káº¿, cÃ´ng nghá»‡ ká»¹ thuáº­t,\r\nthÆ°Æ¡ng hiá»‡u sáº£n pháº©m.</p> <p>NÄƒm\r\n2010, cÃ´ng ty Ä‘áº·t káº¿ hoáº¡ch Ä‘áº¡t doanh thu bÃ¡n hÃ ng dá»±\r\nkiáº¿n Ä‘áº¡t 1,227.5 tá»· Ä‘á»“ng, lá»£i nhuáº­n sau thuáº¿ Ä‘áº¡t\r\n35.4 tá»· Ä‘á»“ng. (NÄƒm 2009, cÃ´ng ty Ä‘áº¡t 932 tá»· Ä‘á»“ng doanh\r\nthu vÃ  4.15 tá»· Ä‘á»“ng LNST).</p> <p>QuÃ½\r\nI/2010, lá»£i nhuáº­n sau thuáº¿ cá»§a cÃ´ng ty Ä‘áº¡t gáº§n 556.57\r\ntriá»‡u Ä‘á»“ng (trong khi cÃ¹ng ká»³ nÄƒm ngoÃ¡i lá»— hÆ¡n 9.6 tá»·\r\nÄ‘á»“ng). Doanh thu trong quÃ½ 1 Ä‘áº¡t 248.53 tá»· Ä‘á»“ng.</p> <p>Theo\r\ngiáº£i trÃ¬nh cá»§a TCR, tÃ¬nh hÃ¬nh tiÃªu thá»¥ cá»§a quÃ½ I/2010\r\ntá»‘t hÆ¡n so vá»›i cÃ¹ng ká»³ nÄƒm trÆ°á»›c do lÆ°á»£ng Ä‘áº·t hÃ ng\r\ntÄƒng lÃªn lÃ m lá»£i nhuáº­n sau thuáº¿ tÄƒng Ä‘Ã¡ng ká»ƒ.</p> <p align=\"RIGHT\"><span style=\"font-weight: bold;\">HoÃ ng\r\nLy</span><br>Theo <span style=\"font-style: italic;\">TCR/VSD</span></p>','2010-06-20 05:24:16',1,'','',0,0,1,0,33,0,0,0,0),(11,'vi','REE: 23/6 GDKHQ nháº­n cá»• tá»©c báº±ng CP tá»· lá»‡ 20%, cá»• phiáº¿u thÆ°á»Ÿng tá»· lá»‡ 1:1','ree-236-gdkhq-nhan-co-tuc-bang-cp-ty-le-20-co-phieu-thuong-ty-le-118521','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/10/Ree_150.PNG','NgÃ y 25/6 cÅ©ng lÃ  ngÃ y cÃ´ng ty chá»‘t danh sÃ¡ch thá»±c hiá»‡n quyá»n mua trÃ¡i phiáº¿u chuyá»ƒn Ä‘á»•i tá»· lá»‡ 100:1.','<p align=\"justify\">CÃ´ng ty cá»• pháº§n cÆ¡ Ä‘iá»‡n láº¡nh (mÃ£ CK: REE) thÃ´ng bÃ¡o chá»‘t quyá»n nháº­n cá»• tá»©c Ä‘á»£t 2/2009, cá»• phiáº¿u thÆ°á»Ÿng vÃ  quyá»n mua trÃ¡i phiáº¿u chuyá»ƒn Ä‘á»•i nÄƒm 2010. </p> <p style=\"margin-bottom: 0in;\" align=\"justify\">NgÃ y giao dá»‹ch khÃ´ng hÆ°á»Ÿng quyá»n lÃ  23/6/2010 vÃ  ngÃ y Ä‘Äƒng kÃ½ cuá»‘i cÃ¹ng lÃ  25/6/2010.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">CÃ´ng ty tráº£ cá»• tá»©c Ä‘á»£t 2/2009 báº±ng cá»• phiáº¿u tá»· lá»‡ 20% tá»©c má»—i cá»• Ä‘Ã´ng sá»Ÿ há»¯u 5 cá»• phiáº¿u táº¡i thá»i Ä‘iá»ƒm chá»‘t danh sÃ¡ch Ä‘Æ°á»£c quyá»n nháº­n 1 cá»• phiáº¿u má»›i tráº£ cá»• tá»©c.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">REE cÅ©ng chá»‘t quyá»n nháº­n cá»• phiáº¿u thÆ°á»Ÿng tá»· lá»‡ 1:1 tá»©c má»—i cá»• Ä‘Ã´ng sá»Ÿ há»¯u 1 cá»• phiáº¿u táº¡i thá»i Ä‘iá»ƒm chá»‘t danh sÃ¡ch Ä‘Æ°á»£c quyá»n nháº­n 1 cá»• phiáº¿u thÆ°á»Ÿng. Tá»•ng lÆ°á»£ng cá»• phiáº¿u phÃ¡t hÃ nh thÃªm Ä‘á»ƒ thÆ°á»Ÿng lÃ  81.041.798 Ä‘Æ¡n vá»‹. Quyá»n nháº­n cá»• tá»©c vÃ  cá»• phiáº¿u thÆ°á»Ÿng khÃ´ng Ä‘Æ°á»£c ph&eacute;p chuyá»ƒn nhÆ°á»£ng.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">&nbsp;</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">NgÃ y 25/6 cÅ©ng lÃ  ngÃ y cÃ´ng ty chá»‘t danh sÃ¡ch thá»±c hiá»‡n quyá»n mua trÃ¡i phiáº¿u chuyá»ƒn Ä‘á»•i tá»· lá»‡ 100:1. Má»—i cá»• Ä‘Ã´ng sá»Ÿ há»¯u 100 cá»• phiáº¿u táº¡i thá»i Ä‘iá»ƒm chá»‘t danh sÃ¡ch Ä‘Æ°á»£c quyá»n mua 1 trÃ¡i phiáº¿u chuyá»ƒn Ä‘á»•i. GiÃ¡ chÃ o bÃ¡n trÃ¡i phiáº¿u chuyá»ƒn Ä‘á»•i lÃ  1 triá»‡u Ä‘á»“ng/ trÃ¡i phiáº¿u (báº±ng má»‡nh giÃ¡). Tá»•ng lÆ°á»£ng trÃ¡i phiáº¿u phÃ¡t hÃ nh lÃ  810.418 Ä‘Æ¡n vá»‹. Quyá»n mua trÃ¡i phiáº¿u Ä‘Æ°á»£c ph&eacute;p chuyá»ƒn nhÆ°á»£ng 1 láº§n tá»« 6/7 Ä‘áº¿n 14/7/2010 vÃ  thá»i gian Ä‘Äƒng kÃ½ vÃ  ná»™p tiá»n mua tá»« 6/7 Ä‘áº¿n 2/8/2010.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">&nbsp;</p> <p style=\"margin-bottom: 0in;\" align=\"justify\"><a href=\"http://images1.cafef.vn/download/100610/REE_BCB_2010.pdf\" target=\"_blank\"><span style=\"font-style: italic;\">Báº£n cÃ¡o báº¡ch phÃ¡t hÃ nh TPCÄ</span></a></p> <p style=\"margin-bottom: 0in;\" align=\"justify\">&nbsp;</p> <p style=\"margin-bottom: 0in;\" align=\"right\">Theo <span style=\"font-style: italic;\">Hose </span></p> <p style=\"margin-bottom: 0in;\" align=\"right\"><span style=\"font-weight: bold;\">T.HÆ°Æ¡ng</span></p>','2010-06-20 06:17:50',1,'','',0,0,1,0,35,0,0,0,0),(12,'vi','PVD Ä‘Äƒng kÃ½ mua 1 triá»‡u cá»• phiáº¿u quá»¹','pvd-dang-ky-mua-1-trieu-co-phieu-quy8595','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/10/PVD2_150.jpg','Giao dá»‹ch dá»± kiáº¿n thá»±c hiá»‡n báº±ng phÆ°Æ¡ng thá»©c khá»›p lá»‡nh hoáº·c thá»a thuáº­n tá»« ngÃ y 16/6 Ä‘áº¿n 16/9/2010.','Tá»•ng cÃ´ng ty cá»• pháº§n Khoan vÃ  Dá»‹ch vá»¥ khoan Dáº§u khÃ­ (mÃ£ CK: PVD) thÃ´ng bÃ¡o giao dá»‹ch cá»• phiáº¿u quá»¹.\r\n<p style=\"margin-bottom: 0in;\">Theo Ä‘Ã³, PVD Ä‘Äƒng kÃ½ mua láº¡i 1 triá»‡u cá»• phiáº¿u lÃ m cá»• phiáº¿u quá»¹. Má»¥c Ä‘Ã­ch cá»§a giao dá»‹ch lÃ  Ä‘á»ƒ bÃ¬nh á»•n giÃ¡ cá»• phiáº¿u trÃªn thá»‹ trÆ°á»ng. </p> <p style=\"margin-bottom: 0in;\">Nguá»“n vá»‘n Ä‘á»ƒ mua láº¡i cá»• phiáº¿u quá»¹ lÃ  tá»« quá»¹ Ä‘áº§u tÆ° phÃ¡t triá»ƒn tÃ­nh Ä‘áº¿n ngÃ y 31/3/2010.</p> <p style=\"margin-bottom: 0in;\">Giao dá»‹ch dá»± kiáº¿n thá»±c hiá»‡n báº±ng phÆ°Æ¡ng thá»©c khá»›p lá»‡nh hoáº·c thá»a thuáº­n tá»« ngÃ y 16/6 Ä‘áº¿n 16/9/2010.</p> <p style=\"margin-bottom: 0in;\">&nbsp;</p> <p style=\"margin-bottom: 0in;\">Káº¿t thÃºc phiÃªn giao dá»‹ch sÃ¡ng nay, ngÃ y 10/6/2010, cá»• phiáº¿u PVD tÄƒng 200 Ä‘á»“ng Ä‘áº¡t 48.300 Ä‘á»“ng/ cá»• phiáº¿u.</p> <p style=\"margin-bottom: 0in;\">&nbsp;</p> <p style=\"margin-bottom: 0in;\" align=\"right\">Theo <span style=\"font-style: italic;\">Hose</span></p> <p style=\"margin-bottom: 0in;\" align=\"right\"><span style=\"font-weight: bold;\">&nbsp;T.HÆ°Æ¡ng</span></p>','2010-06-20 05:24:27',1,'','',0,0,1,0,33,0,0,0,0),(13,'vi','PVA: SHS mua hÆ¡n 140.000 cá»• phiáº¿u nÃ¢ng tá»· lá»‡ náº¯m giá»¯ lÃªn hÆ¡n 9%','pva-shs-mua-hon-140000-co-phieu-nang-ty-le-nam-giu-len-hon-97901','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/10/PVA_150.jpg','Giao dá»‹ch Ä‘Æ°á»£c thá»±c hiá»‡n tá»« 27/5 Ä‘áº¿n 7/6/2010.','<p align=\"justify\">CTCP XÃ¢y láº¯p Dáº§u khÃ­ Nghá»‡ An (mÃ£ CK: PVA) thÃ´ng bÃ¡o thay Ä‘á»•i tá»· lá»‡ sá»Ÿ há»¯u cá»§a cá»• Ä‘Ã´ng lá»›n.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">Theo Ä‘Ã³, CÃ´ng ty cá»• pháº§n Chá»©ng khoÃ¡n SÃ i GÃ²n â€“ HÃ  Ná»™i (mÃ£ CK: SHS) Ä‘Ã£ mua 142.200 cá»• phiáº¿u nÃ¢ng lÆ°á»£ng cá»• phiáº¿u náº¯m giá»¯ tá»« 766.430 Ä‘Æ¡n vá»‹ tÆ°Æ¡ng Ä‘Æ°Æ¡ng tá»· lá»‡ 7,664% lÃªn 908.630 Ä‘Æ¡n vá»‹ tÆ°Æ¡ng Ä‘Æ°Æ¡ng tá»· lá»‡ 9,086%.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">Giao dá»‹ch Ä‘Æ°á»£c thá»±c hiá»‡n tá»« 27/5 Ä‘áº¿n 7/6/2010.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">&nbsp;</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">Theo Nghá»‹ quyáº¿t cá»§a PVA vá» phÃ¡t hÃ nh cá»• phiáº¿u cho Ä‘á»‘i tÃ¡c chiáº¿n lÆ°á»£c, SHS sáº½ mua 5 triá»‡u cá»• phiáº¿u trong Ä‘á»£t phÃ¡t hÃ nh riÃªng láº».</p> <p style=\"margin-bottom: 0in;\" align=\"justify\">&nbsp;</p> <p style=\"margin-bottom: 0in;\" align=\"right\">Theo <span style=\"font-style: italic;\">HNX</span> </p> <p style=\"margin-bottom: 0in;\" align=\"right\"><span style=\"font-weight: bold;\">T.HÆ°Æ¡ng</span></p>','2010-06-20 06:17:41',1,'','',0,0,1,0,35,0,0,0,0),(14,'vi','VNA, HPB, MAFPF1: ThÃ´ng tin giao dá»‹ch lÆ°á»£ng lá»›n cá»• phiáº¿u','vna-hpb-mafpf1-thong-tin-giao-dich-luong-lon-co-phieu4630','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/10/usd-14_150.jpg','VF4 Ä‘Ã£ mua 213.940 cá»• phiáº¿u VNA ngÃ y 4/6/2010.','<p style=\"margin-bottom: 0in;\" align=\"justify\"><span style=\"font-weight: bold;\">CTCP Váº­n Biá»ƒn Vinaship</span> (mÃ£ CK: VNA): Quá»¹ Ä‘áº§u tÆ° doanh nghiá»‡p hÃ ng Ä‘áº§u Viá»‡t Nam (VF4) Ä‘Ã£ mua 213.940 cá»• phiáº¿u nÃ¢ng lÆ°á»£ng cá»• phiáº¿u náº¯m giá»¯ tá»« 1.003.970 Ä‘Æ¡n vá»‹ tÆ°Æ¡ng Ä‘Æ°Æ¡ng tá»· lá»‡ 5,02% lÃªn 1.217.910 Ä‘Æ¡n vá»‹ tÆ°Æ¡ng Ä‘Æ°Æ¡ng tá»· lá»‡ 6,09%. Giao dá»‹ch thá»±c hiá»‡n ngÃ y 4/6/2010.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\"><span style=\"font-weight: bold;\"></span>&nbsp;</p> <p style=\"margin-bottom: 0in;\" align=\"justify\"><span style=\"font-weight: bold;\">CÃ´ng ty Cá»• pháº§n Bao bÃ¬ PP</span> (mÃ£ CK: HPB): CÃ´ng ty TÃ i chÃ­nh Cá»• pháº§n Handico lÃ  bÃªn cÃ³ liÃªn quan Ä‘áº¿n Ã´ng Tráº§n Ngá»c Tuáº¥n hiá»‡n lÃ  ThÃ nh viÃªn HÄQT cÃ´ng ty Ä‘Äƒng kÃ½ mua 150.000 cá»• phiáº¿u vÃ  Ä‘Äƒng kÃ½ bÃ¡n 150.000 cá»• phiáº¿u. Sau khi giao dá»‹ch, lÆ°á»£ng cá»• phiáº¿u HPB mÃ  Handico náº¯m giá»¯ giá»¯ nguyÃªn lÃ  101.000 cá»• phiáº¿u. Giao dá»‹ch dá»± kiáº¿n thá»±c hiá»‡n tá»« 11/6 Ä‘áº¿n 7/7/2010.</p> <p style=\"margin-bottom: 0in;\" align=\"justify\"> </p><p align=\"justify\"><span style=\"font-weight: bold;\">Quá»¹ Ä‘áº§u tÆ° tÄƒng trÆ°á»Ÿng Manulife</span> (MAFPF1): CÃ´ng ty Cá»• pháº§n Äáº§u tÆ° HÃ  Viá»‡t Ä‘Ã£ mua 213.950 chá»©ng chá»‰ quá»¹ nÃ¢ng lÆ°á»£ng cá»• phiáº¿u náº¯m giá»¯ tá»« 3.282.460 chá»©ng chá»‰ quá»¹ tÆ°Æ¡ng Ä‘Æ°Æ¡ng tá»· lá»‡ 15,33% lÃªn 3.320.240 Ä‘Æ¡n vá»‹ tÆ°Æ¡ng Ä‘Æ°Æ¡ng tá»· lá»‡ 15,51%. NgÃ y thay Ä‘á»•i sá»Ÿ há»¯u lÃ  9/6/2010.</p><p></p> <p style=\"margin-bottom: 0in;\" align=\"justify\">&nbsp;</p> <p style=\"margin-bottom: 0in;\" align=\"right\">Theo <span style=\"font-style: italic;\">Hose / HNX </span></p> <p style=\"margin-bottom: 0in;\" align=\"right\"><span style=\"font-weight: bold;\">N.V.T</span></p> <p style=\"margin-bottom: 0in;\" align=\"justify\"><br></p> <p style=\"margin-bottom: 0in;\" align=\"justify\"><br></p>','2010-06-20 06:15:29',1,'','',0,0,1,0,34,0,0,0,0),(15,'vi','LCG: Láº¥y Ã½ kiáº¿n cá»• Ä‘Ã´ng phÆ°Æ¡ng','lcg-lay-y-kien-co-dong-phuong-an-chao-ban-trai-phieu-chuyen-doi6911','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/10/LCG2_150.jpg','LCG xin Ã½ kiáº¿n cá»• Ä‘Ã´ng há»§y bá» viá»‡c chÃ o bÃ¡n thÃªm 12,5 triá»‡u cá»• phiáº¿u vá»›i giÃ¡ 20.000 Ä‘á»“ng/cp','<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">HÄQT CÃ´ng ty CP licogi 16 (<a onmouseover=\"stm(\'LCG\',Style[5])\" style=\"background: none repeat scroll 0% 0% transparent; border-bottom: 1px dashed rgb(0, 102, 204);\" onmouseout=\"ChangeStatus();\" href=\"http://cafef.vn/Thi-truong-niem-yet/Thong-tin-cong-ty/LCG.chn\">LCG</a>) vá»«a cÃ³ Tá» trÃ¬nh xin Ã½ kiáº¿n cá»• Ä‘Ã´ng báº±ng vÄƒn báº£n vá» PhÆ°Æ¡ng Ã¡n chÃ o bÃ¡n trÃ¡i phiáº¿u chuyá»ƒn Ä‘á»•i.</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><o:p>&nbsp;</o:p></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">Theo Tá» trÃ¬nh, LCG nÃªu rÃµ CÃ´ng ty Ä‘Ã£ trÃ¬nh ÄHÄCÄ thÆ°á»ng niÃªn nÄƒm 2010 phÆ°Æ¡ng Ã¡n phÃ¡t hÃ nh thÃªm cá»• phiáº¿u tÄƒng vá»‘n Ä‘iá»u lá»‡ tá»« 250 tá»· Ä‘á»“ng lÃªn 500 tá»· Ä‘á»“ng, trong Ä‘Ã³ tráº£ cá»• tá»©c 50% vÃ  chÃ o bÃ¡n 12,5 triá»‡u cá»• phiáº¿u cho cá»• Ä‘Ã´ng hiá»‡n há»¯u, tá»· lá»‡ 2:1 vá»›i giÃ¡ 20.000 Ä‘á»“ng/cp. PhÆ°Æ¡ng Ã¡n nÃ y Ä‘Ã£ Ä‘Æ°á»£c ÄHÄCÄ thÃ´ng qua.</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><o:p>&nbsp;</o:p></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">Tuy nhiÃªn, theo LCG phÆ°Æ¡ng Ã¡n chÃ o bÃ¡n cá»• phiáº¿u tÄƒng vá»‘n Ä‘iá»u lá»‡ sáº½ gÃ¢y Ã¡p lá»±c lá»£i nhuáº­n vÃ  tÃ i chÃ­nh cho CÃ´ng ty, khÃ´ng thuáº­n lá»£i duy trÃ¬ Ä‘Æ°á»£c chá»‰ sá»‘ EPS cao vÃ  P/E háº¥p dáº«n, cÅ©ng nhÆ° thá»i gian huy Ä‘á»™ng vá»‘n lÃ¢u khÃ´ng Ä‘Ã¡p á»©ng Ä‘Æ°á»£c nhu cáº§u vá»‘n táº¡i thá»i Ä‘iá»ƒm LCG cáº§n.</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><o:p>&nbsp;</o:p></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">Äiá»u nÃ y sáº½ áº£nh hÆ°á»Ÿng Ä‘áº¿n giÃ¡ trá»‹ cá»• phiáº¿u vÃ  quyá»n lá»£i cho cÃ¡c cá»• Ä‘Ã´ng. HÄQT cá»§a <a onmouseover=\"stm(\'LCG\',Style[5])\" style=\"background: none repeat scroll 0% 0% transparent; border-bottom: 1px dashed rgb(0, 102, 204);\" onmouseout=\"ChangeStatus();\" href=\"http://cafef.vn/Thi-truong-niem-yet/Thong-tin-cong-ty/LCG.chn\">LCG</a> Ä‘á» xuáº¥t phÆ°Æ¡ng Ã¡n chÃ o bÃ¡n trÃ¡i phiáº¿u chuyá»ƒn Ä‘á»•i thÃ nh cá»• phiáº¿u thay tháº¿ cho phÆ°Æ¡ng Ã¡n chÃ o bÃ¡n cá»• phiáº¿u.</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><o:p>&nbsp;</o:p></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">VÃ  xin Ã½ kiáº¿n cá»• Ä‘Ã´ng báº±ng vÄƒn báº£n há»§y bá» phÆ°Æ¡ng Ã¡n chÃ o bÃ¡n 12,5 triá»‡u cá»• phiáº¿u vá»›i giÃ¡ 20.000 Ä‘á»“ng/cp vÃ  thÃ´ng qua phÆ°Æ¡ng Ã¡n chÃ o bÃ¡n trÃ¡i phiáº¿u chuyá»ƒn Ä‘á»•i.</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><o:p>&nbsp;</o:p></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><span style=\"font-weight: bold;\">PhÆ°Æ¡ng Ã¡n chÃ o bÃ¡n trÃ¡i phiáº¿u<o:p></o:p></span></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><o:p>&nbsp;</o:p></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">Tá»•ng sá»‘ lÆ°á»£ng trÃ¡i phiáº¿u chÃ o bÃ¡n lÃ  300.000 trÃ¡i phiáº¿u má»‡nh giÃ¡ 1.000.000 Ä‘á»“ng/trÃ¡i phiáº¿u, giÃ¡ chÃ o bÃ¡n báº±ng má»‡nh giÃ¡, tÆ°Æ¡ng á»©ng vá»›i tá»•ng giÃ¡ trá»‹ 300 tá»· Ä‘á»“ng.</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><o:p>&nbsp;</o:p></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">ChÃ o bÃ¡n cho cÃ¡n bá»™ chá»§ chá»‘t 15 tá»· Ä‘á»“ng, chÃ o bÃ¡n cho Ä‘á»‘i tÃ¡c khÃ¡c 285 tá»· Ä‘á»“ng, tá»•ng sá»‘ nhÃ  Ä‘áº§u tÆ° trong Ä‘á»£t chÃ o bÃ¡n ká»ƒ cáº£ cÃ¡n bá»™ chá»§ chá»‘t khÃ´ng quÃ¡ 100 nhÃ  Ä‘áº§u tÆ°.</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><o:p>&nbsp;</o:p></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">LÃ£i suáº¥t trÃ¡i phiáº¿u Ä‘á»‹nh ká»³ 5%/nÄƒm. GiÃ¡ chuyá»ƒn Ä‘á»•i Chiáº¿u kháº¥u khÃ´ng quÃ¡ <span style=\"\">50%<span style=\"font-weight: bold;\"></span></span>giÃ¡ thá»‹ trÆ°á»ng cho Ä‘á»‘i tÆ°á»£ng lÃ  <span style=\"\">cÃ¡n bá»™ chá»§ chá»‘t.</span> Chiáº¿t kháº¥u khÃ´ng quÃ¡ <span style=\"\">20%<span style=\"font-weight: bold;\"></span></span>giÃ¡ thá»‹ trÆ°á»ng cho <span style=\"\">Ä‘á»‘i tÆ°á»£ng khÃ¡c</span>;</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><o:p>&nbsp;</o:p></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">NguyÃªn táº¯c xÃ¡c Ä‘á»‹nh giÃ¡ thá»‹ trÆ°á»ng: BÃ¬nh quÃ¢n giÃ¡ cá»‘ phiáº¿u LCG Ä‘Ã³ng cá»­a 10 ngÃ y giao dá»‹ch liÃªn tiáº¿p trÆ°á»›c <span style=\"font-style: italic;\">NgÃ y Ä‘Äƒng kÃ½</span> <span style=\"font-style: italic;\">cuá»‘i cÃ¹ng </span>Ä‘á»ƒ mua TrÃ¡i phiáº¿u</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><o:p>&nbsp;</o:p></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">Thá»i gian thá»±c hiá»‡n vÃ o quÃ½ III nÄƒm 2010. NhÃ  Ä‘áº§u tÆ° Ä‘Æ°á»£c tá»± do chuyá»ƒn nhÆ°á»£ng TrÃ¡i phiáº¿u chuyá»ƒn Ä‘á»•i</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><o:p>&nbsp;</o:p></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">Má»¥c Ä‘Ã­ch cá»§a Ä‘á»£t chÃ o bÃ¡n nÃ y nháº±m huy Ä‘á»™ng vá»‘n tÃ¡i cáº¥u trÃºc nguá»“n vá»‘n CÃ´ng ty, nÃ¢ng cao nÄƒng lá»±c tÃ i chÃ­nh, vÃ  huy Ä‘á»™ng vá»‘n triá»ƒn khai cÃ¡c dá»± Ã¡n trá»ng Ä‘iá»ƒm cá»§a CÃ´ng ty trong nÄƒm 2010:</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">&nbsp;</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">+ Dá»± Ã¡n Nguyá»…n Phong Sáº¯c k&eacute;o dÃ i, Cáº§u Giáº¥y, HÃ  Ná»™i: 100&nbsp;tá»· Ä‘á»“ng. DÃ¹ng Ä‘á»ƒ ná»™p tiá»n vÃ o NgÃ¢n sÃ¡ch nhÃ  nÆ°á»›c;</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><o:p>&nbsp;</o:p></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">+ GÃ³p vá»‘n vÃ o CÃ´ng ty TNHH nhiÃªn liá»‡u sinh há»c PhÆ°Æ¡ng ÄÃ´ng Ä‘á»ƒ xÃ¢y nhÃ  mÃ¡y cá»“n nhiÃªn liá»‡u sinh há»c táº¡i BÃ¬nh PhÆ°á»›c: 50&nbsp;tá»· Ä‘á»“ng;</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><o:p>&nbsp;</o:p></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">+ Dá»± Ã¡n khu Ä‘Ã´ thá»‹ má»›i Ä‘Æ°á»ng LÃ½ ThÆ°á»ng Kiá»‡t, P. Lá»™c PhÃ¡t, Tp. Báº£o Lá»™c, LÃ¢m Äá»“ng: 50&nbsp;tá»· Ä‘á»“ng.</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><o:p>&nbsp;</o:p></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">+ Nháº­n chuyá»ƒn nhÆ°á»£ng má»™t pháº§n diá»‡n tÃ­ch Ä‘áº¥t trong dá»± Ã¡n táº¡i PhÆ°á»ng BÃ¬nh An, Q.2, TP. HCM Ä‘á»ƒ thá»±c hiá»‡n Ä‘áº§u tÆ° xÃ¢y dá»±ng 2 block chung cÆ°: 100&nbsp;tá»· Ä‘á»“ng.</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\"><o:p>&nbsp;</o:p></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\">ÄÃ¢y lÃ  cÃ¡c dá»± Ã¡n Ä‘Æ°á»£c thá»±c hiá»‡n nháº±m Ä‘áº£m báº£o káº¿ hoáº¡ch doanh thu, lá»£i nhuáº­n cho cÃ¡c nÄƒm 2010 - 2012 cá»§a CÃ´ng ty cÃ¹ng vá»›i cÃ¡c dá»± Ã¡n khÃ¡c Ä‘ang Ä‘Æ°á»£c triá»ƒn khai thá»±c hiá»‡n. Do nhu cáº§u vá»‘n cá»§a CÃ´ng ty trong nÄƒm 2010 lÃ  cáº§n thiáº¿t, viá»‡c thiáº¿u vá»‘n sáº½ áº£nh hÆ°á»Ÿng Ä‘áº¿n káº¿ hoáº¡ch cá»§a CÃ´ng ty cÃ¡c nÄƒm sau.</p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt; text-align: right;\" align=\"right\"><span style=\"font-weight: bold;\">K.T<o:p></o:p></span></p> <p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt; text-align: right;\" align=\"right\">Theo <span style=\"font-style: italic;\">LCG</span></p>','2010-06-20 06:14:57',1,'','',0,0,1,0,34,0,0,0,0),(16,'vi','API: 18/6 ÄKCC chá»‘t danh sÃ¡ch cá»• Ä‘Ã´ng ná»™p há»“ sÆ¡ niÃªm yáº¿t trÃªn HNX','api-186-dkcc-chot-danh-sach-co-dong-nop-ho-so-niem-yet-tren-hnx6341','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/10/ck5_150.jpg','API hiá»‡n cÃ³ vá»‘n Ä‘iá»u lá»‡ lÃ  264 tá»· Ä‘á»“ng vÃ  giao dá»‹ch cá»• phiáº¿u trÃªn Upcom.','<p style=\"text-align: justify;\"><!--[if gte mso 9]><![endif]--><style> <!--\r\n/* Font Definitions */\r\n@font-face\r\n{font-family:\"Cambria Math\";\r\npanose-1:2 4 5 3 5 4 6 3 2 4;\r\nmso-font-charset:0;\r\nmso-generic-font-family:roman;\r\nmso-font-pitch:variable;\r\nmso-font-signature:-1610611985 1107304683 0 0 159 0;}\r\n@font-face\r\n{font-family:Calibri;\r\npanose-1:2 15 5 2 2 2 4 3 2 4;\r\nmso-font-charset:0;\r\nmso-generic-font-family:swiss;\r\nmso-font-pitch:variable;\r\nmso-font-signature:-1610611985 1073750139 0 0 159 0;}\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-unhide:no;\r\nmso-style-qformat:yes;\r\nmso-style-parent:\"\";\r\nmargin-top:0in;\r\nmargin-right:0in;\r\nmargin-bottom:10.0pt;\r\nmargin-left:0in;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:13.0pt;\r\nmso-bidi-font-size:11.0pt;\r\nfont-family:\"Times New Roman\",\"serif\";\r\nmso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:\"Times New Roman\";\r\nmso-bidi-theme-font:minor-bidi;}\r\n.MsoChpDefault\r\n{mso-style-type:export-only;\r\nmso-default-props:yes;\r\nfont-size:13.0pt;\r\nmso-ansi-font-size:13.0pt;\r\nmso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:\"Times New Roman\";\r\nmso-bidi-theme-font:minor-bidi;}\r\n.MsoPapDefault\r\n{mso-style-type:export-only;\r\nmargin-bottom:10.0pt;\r\nline-height:115%;}\r\n@page Section1\r\n{size:8.5in 11.0in;\r\nmargin:1.0in 1.0in 1.0in 1.0in;\r\nmso-header-margin:.5in;\r\nmso-footer-margin:.5in;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n--> </style><!--[if gte mso 10]> <style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:\"Table Normal\";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-priority:99;\r\nmso-style-qformat:yes;\r\nmso-style-parent:\"\";\r\nmso-padding-alt:0in 5.4pt 0in 5.4pt;\r\nmso-para-margin-top:0in;\r\nmso-para-margin-right:0in;\r\nmso-para-margin-bottom:10.0pt;\r\nmso-para-margin-left:0in;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:11.0pt;\r\nfont-family:\"Calibri\",\"sans-serif\";\r\nmso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:\"Times New Roman\";\r\nmso-fareast-theme-font:minor-fareast;\r\nmso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;}\r\n</style> <![endif]--> </p><p style=\"text-align: justify;\">CÃ´ng ty cá»• pháº§n Äáº§u tÆ° ChÃ¢u Ã â€“ ThÃ¡i BÃ¬nh DÆ°Æ¡ng (mÃ£ CK Upcom:API) thÃ´ng bÃ¡o vá» ngÃ y\r\nÄ‘Äƒng kÃ½ cuá»‘i cÃ¹ng Ä‘á»ƒ chá»‘t danh sÃ¡ch lÃ m há»“ sÆ¡ niÃªm yáº¿t trÃªn HNX.</p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\">NgÃ y Ä‘Äƒng kÃ½ cuá»‘i cÃ¹ng lÃ  18/6/2010. CÃ´ng ty chá»‘t danh sÃ¡ch\r\ncá»• Ä‘Ã´ng Ä‘á»ƒ lÃ m há»“ sÆ¡ niÃªm yáº¿t trÃªn HNX.</p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\">API hiá»‡n cÃ³ vá»‘n Ä‘iá»u lá»‡ lÃ  264 tá»· Ä‘á»“ng vÃ  giao dá»‹ch cá»• phiáº¿u\r\ntrÃªn Upcom. Káº¿t thÃºc phiÃªn giao dá»‹ch ngÃ y 10/6/2010, API Ä‘áº¡t 13.800 Ä‘á»“ng/ cá»•\r\nphiáº¿u.</p><p style=\"text-align: right;\">Theo <span style=\"font-style: italic;\">VSD </span><br></p><p style=\"text-align: right;\"><span style=\"font-weight: bold;\">T.H</span><br></p>','2010-06-20 06:14:40',1,'','',0,0,1,0,34,0,0,0,0),(17,'vi','TKC: 28/6 GDKHQ nháº­n cá»• tá»©c báº±ng CP tá»· lá»‡ 20% vÃ  mua CP giÃ¡ 15.000 Ä‘á»“ng tá»· lá»‡ 3:1','tkc-286-gdkhq-nhan-co-tuc-bang-cp-ty-le-20-va-mua-cp-gia-15000-dong-ty-le-319459','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/11/TKC-SPLENDOR-1_150.jpg','Vá»‘n thu Ä‘Æ°á»£c tá»« Ä‘Æ¡t phÃ¡t hÃ nh cá»• phiáº¿u Ä‘Æ°á»£c sá»­ dá»¥ng Ä‘á»ƒ Ä‘áº§u tÆ° xÃ¢y dá»±ng dá»± Ã¡n Spendor2.','<p style=\"text-align: justify;\"><!--[if gte mso 9]><![endif]--><style> <!--\r\n/* Font Definitions */\r\n@font-face\r\n{font-family:\"Cambria Math\";\r\npanose-1:2 4 5 3 5 4 6 3 2 4;\r\nmso-font-charset:1;\r\nmso-generic-font-family:roman;\r\nmso-font-format:other;\r\nmso-font-pitch:variable;\r\nmso-font-signature:0 0 0 0 0 0;}\r\n@font-face\r\n{font-family:Calibri;\r\npanose-1:2 15 5 2 2 2 4 3 2 4;\r\nmso-font-charset:0;\r\nmso-generic-font-family:swiss;\r\nmso-font-pitch:variable;\r\nmso-font-signature:-1610611985 1073750139 0 0 159 0;}\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-unhide:no;\r\nmso-style-qformat:yes;\r\nmso-style-parent:\"\";\r\nmargin-top:0in;\r\nmargin-right:0in;\r\nmargin-bottom:10.0pt;\r\nmargin-left:0in;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:13.0pt;\r\nmso-bidi-font-size:11.0pt;\r\nfont-family:\"Times New Roman\",\"serif\";\r\nmso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:\"Times New Roman\";\r\nmso-bidi-theme-font:minor-bidi;}\r\n.MsoChpDefault\r\n{mso-style-type:export-only;\r\nmso-default-props:yes;\r\nfont-size:13.0pt;\r\nmso-ansi-font-size:13.0pt;\r\nmso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:\"Times New Roman\";\r\nmso-bidi-theme-font:minor-bidi;}\r\n.MsoPapDefault\r\n{mso-style-type:export-only;\r\nmargin-bottom:10.0pt;\r\nline-height:115%;}\r\n@page Section1\r\n{size:8.5in 11.0in;\r\nmargin:1.0in 1.0in 1.0in 1.0in;\r\nmso-header-margin:.5in;\r\nmso-footer-margin:.5in;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n--> </style><!--[if gte mso 10]> <style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:\"Table Normal\";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-priority:99;\r\nmso-style-qformat:yes;\r\nmso-style-parent:\"\";\r\nmso-padding-alt:0in 5.4pt 0in 5.4pt;\r\nmso-para-margin-top:0in;\r\nmso-para-margin-right:0in;\r\nmso-para-margin-bottom:10.0pt;\r\nmso-para-margin-left:0in;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:11.0pt;\r\nfont-family:\"Calibri\",\"sans-serif\";\r\nmso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:\"Times New Roman\";\r\nmso-fareast-theme-font:minor-fareast;\r\nmso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;}\r\n</style> <![endif]--> </p><!--[if gte mso 9]><![endif]--><style> <!--\r\n/* Font Definitions */\r\n@font-face\r\n{font-family:\"Cambria Math\";\r\npanose-1:2 4 5 3 5 4 6 3 2 4;\r\nmso-font-charset:1;\r\nmso-generic-font-family:roman;\r\nmso-font-format:other;\r\nmso-font-pitch:variable;\r\nmso-font-signature:0 0 0 0 0 0;}\r\n@font-face\r\n{font-family:Calibri;\r\npanose-1:2 15 5 2 2 2 4 3 2 4;\r\nmso-font-charset:0;\r\nmso-generic-font-family:swiss;\r\nmso-font-pitch:variable;\r\nmso-font-signature:-1610611985 1073750139 0 0 159 0;}\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-unhide:no;\r\nmso-style-qformat:yes;\r\nmso-style-parent:\"\";\r\nmargin-top:0in;\r\nmargin-right:0in;\r\nmargin-bottom:10.0pt;\r\nmargin-left:0in;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:13.0pt;\r\nmso-bidi-font-size:11.0pt;\r\nfont-family:\"Times New Roman\",\"serif\";\r\nmso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:\"Times New Roman\";\r\nmso-bidi-theme-font:minor-bidi;}\r\n.MsoChpDefault\r\n{mso-style-type:export-only;\r\nmso-default-props:yes;\r\nfont-size:13.0pt;\r\nmso-ansi-font-size:13.0pt;\r\nmso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:\"Times New Roman\";\r\nmso-bidi-theme-font:minor-bidi;}\r\n.MsoPapDefault\r\n{mso-style-type:export-only;\r\nmargin-bottom:10.0pt;\r\nline-height:115%;}\r\n@page Section1\r\n{size:8.5in 11.0in;\r\nmargin:1.0in 1.0in 1.0in 1.0in;\r\nmso-header-margin:.5in;\r\nmso-footer-margin:.5in;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n--> </style><!--[if gte mso 10]> <style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:\"Table Normal\";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-priority:99;\r\nmso-style-qformat:yes;\r\nmso-style-parent:\"\";\r\nmso-padding-alt:0in 5.4pt 0in 5.4pt;\r\nmso-para-margin-top:0in;\r\nmso-para-margin-right:0in;\r\nmso-para-margin-bottom:10.0pt;\r\nmso-para-margin-left:0in;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:11.0pt;\r\nfont-family:\"Calibri\",\"sans-serif\";\r\nmso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:\"Times New Roman\";\r\nmso-fareast-theme-font:minor-fareast;\r\nmso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;}\r\n</style> <![endif]--> <p style=\"text-align: justify;\">CÃ´ng ty cá»• pháº§n XÃ¢y dá»±ng vÃ  kinh doanh Ä‘á»‹a á»‘c TÃ¢n Ká»· (mÃ£ CK: TKC) thÃ´ng bÃ¡o chá»‘t quyá»n\r\nchia cá»• tá»©c báº±ng cá»• phiáº¿u cho cá»• Ä‘Ã´ng hiá»‡n há»¯u vÃ  chÃ o bÃ¡n cho cá»• Ä‘Ã´ng hiá»‡n há»¯u.</p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\">NgÃ y\r\ngiao dá»‹ch khÃ´ng hÆ°á»Ÿng quyá»n lÃ  28/6/2010 vÃ  ngÃ y Ä‘Äƒng kÃ½ cuá»‘i cÃ¹ng lÃ \r\n30/6/2010.</p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\">TKC chá»‘t\r\nquyá»n nháº­n cá»• tá»©c báº±ng cá»• phiáº¿u tá»· lá»‡ 20% tÆ°Æ¡ng Ä‘Æ°Æ¡ng tá»· lá»‡ 5:1. Tá»•ng lÆ°á»£ng cá»•\r\nphiáº¿u phÃ¡t hÃ nh Ä‘á»ƒ tráº£ cá»• tá»©c lÃ  1,19 triá»‡u Ä‘Æ¡n vá»‹.</p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\">CÃ´ng ty\r\ncÅ©ng phÃ¡t hÃ nh 1.983.333 cá»• phiáº¿u chÃ o bÃ¡n vá»›i giÃ¡ 15.000 Ä‘á»“ng/ cá»• phiáº¿u vá»›i tá»·\r\nlá»‡ thá»±c hiá»‡n quyá»n lÃ  3:1 vÃ  phÃ¡t hÃ nh 297.500 cá»• phiáº¿u vá»›i giÃ¡ 15.200 Ä‘á»“ng\r\ntheo chÆ°Æ¡ng trÃ¬nh lá»±a chá»n ngÆ°á»i lao Ä‘á»™ng. Quyá»n mua Ä‘Æ°á»£c chuyá»ƒn nhÆ°á»£ng 1 láº§n tá»«\r\n19/7 Ä‘áº¿n 11/8/2010, thá»i gian Ä‘Äƒng kÃ½ vÃ  ná»™p tiá»n mua cá»• phiáº¿u lÃ  19/7 Ä‘áº¿n\r\n13/8/2010.</p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\">Vá»‘n thu\r\nÄ‘Æ°á»£c tá»« Ä‘Æ¡t phÃ¡t hÃ nh cá»• phiáº¿u Ä‘Æ°á»£c sá»­ dá»¥ng Ä‘á»ƒ Ä‘áº§u tÆ° xÃ¢y dá»±ng dá»± Ã¡n Spendor2.<br></p><a style=\"font-style: italic;\" href=\"http://images1.cafef.vn/Images/Uploaded/Share/2010/06/11/TKC.pdf\">ThÃ´ng bÃ¡o chá»‘t quyá»n cá»§a TKC</a><p style=\"text-align: right;\">Theo <span style=\"font-style: italic;\">TKC </span><br></p><p style=\"text-align: right;\"><span style=\"font-weight: bold;\">T.HÆ°Æ¡ng</span><br></p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\"> </p><p style=\"text-align: justify;\"> </p>','2010-06-20 05:24:52',1,'','',0,0,1,0,32,0,0,0,0),(18,'vi','Chá»©ng khoÃ¡n EuroCapital ra máº¯t chi nhÃ¡nh TP.HCM','chung-khoan-eurocapital-ra-mat-chi-nhanh-tphcm1419','','','EuroCapital tiáº¿p tá»¥c phÃ¡t triá»ƒn theo chiá»u sÃ¢u máº£ng dá»‹ch vá»¥ tÆ° váº¥n tÃ i chÃ­nh doanh nghiá»‡p, vá»‘n lÃ  tháº¿ máº¡nh cá»§a EuroCapital trong thá»i gian qua.','<p align=\"justify\">Theo tin tá»« CÃ´ng ty CP Chá»©ng khoÃ¡n EuroCapital (EuroCapital), Chi nhÃ¡nh Há»“ ChÃ­ Minh cá»§a táº¡i sá»‘ 5, Tráº§n Quá»‘c Tháº£o cá»§a cÃ´ng ty Ä‘Ã£ chÃ­nh thá»©c Ä‘i vÃ o hoáº¡t Ä‘á»™ng. </p> <p style=\"line-height: 130%; margin-bottom: 0in;\" align=\"justify\">Viá»‡c thÃ nh láº­p chi nhÃ¡nh nháº±m tÄƒng cÆ°á»ng vÃ  má»Ÿ rá»™ng quy mÃ´ hoáº¡t Ä‘á»™ng cá»§a EuroCapital, Ä‘á»“ng thá»i thá»±c hiá»‡n chiáº¿n lÆ°á»£c phÃ¡t triá»ƒn má»›i cá»§a EuroCapital trong thá»i gian tá»›i. </p> <p style=\"line-height: 130%; margin-bottom: 0in;\" align=\"justify\">Äá»ƒ chiáº¿m lÄ©nh thá»‹ pháº§n cá»§a thá»‹ trÆ°á»ng quan trá»ng, nhiá»u tiá»m nÄƒng phÃ­a Nam, EuroCapital sáº½ táº­p trung nguá»“n lá»±c Ä‘áº©y máº¡nh nghiá»‡p vá»¥ mÃ´i giá»›i vÃ  tÆ° váº¥n Ä‘áº§u tÆ° chá»©ng khoÃ¡n báº±ng viá»‡c cung cáº¥p tá»›i nhÃ  Ä‘áº§u tÆ° giao dá»‹ch táº¡i sÃ n, cÅ©ng nhÆ° giao dá»‹ch trá»±c tuyáº¿n nhá»¯ng sáº£n pháº©m, dá»‹ch vá»¥ tiá»‡n Ã­ch, báº£o máº­t, cháº¥t lÆ°á»£ng cao. BÃªn cáº¡nh Ä‘Ã³, EuroCapital tiáº¿p tá»¥c phÃ¡t triá»ƒn theo chiá»u sÃ¢u máº£ng dá»‹ch vá»¥ tÆ° váº¥n tÃ i chÃ­nh doanh nghiá»‡p, vá»‘n lÃ  tháº¿ máº¡nh cá»§a EuroCapital trong thá»i gian qua. </p> <p style=\"line-height: 130%; margin-bottom: 0in;\" align=\"justify\"><span style=\"font-weight: bold;\">Báº£ng giÃ¡ trá»±c tuyáº¿n</span> cá»§a EuroCapital cho ph&eacute;p cáº­p nháº­t liÃªn tá»¥c má»i diá»…n biáº¿n trÃªn thá»‹ trÆ°á»ng. Há»‡ <span style=\"font-weight: normal;\">thá»‘ng </span><span style=\"font-weight: bold;\">giao dá»‹ch trá»±c tuyáº¿n</span> an toÃ n, thuáº­n tiá»‡n, chÃ­nh xÃ¡c, minh báº¡ch Ä‘áº£m báº£o cho cÃ¡c lá»‡nh giao dá»‹ch Ä‘Æ°á»£c chuyá»ƒn tháº³ng vÃ o Há»‡ thá»‘ng vÃ  cÃ¡c Sá»Ÿ Giao dá»‹ch Chá»©ng khoÃ¡n sau vÃ i giÃ¢y. ToÃ n bá»™ tráº¡ng thÃ¡i lá»‡nh, thÃ´ng tin tÃ i khoáº£n, lá»‹ch sá»­ giao dá»‹ch, sá»‘ dÆ° tÃ i khoáº£n Ä‘Æ°á»£c cung cáº¥p chuáº©n xÃ¡c, nhanh chÃ³ng tá»›i nhÃ  Ä‘áº§u tÆ°. </p> <p style=\"line-height: 130%; margin-bottom: 0in;\" align=\"justify\">Khi má»Ÿ tÃ i khoáº£n giao dá»‹ch táº¡i EuroCapital, nhÃ  Ä‘áº§u tÆ° sáº½ Ä‘Æ°á»£c cung cáº¥p nhiá»u sáº£n pháº©m, dá»‹ch vá»¥ cháº¥t lÆ°á»£ng cao, an toÃ n. Cá»¥ thá»ƒ, nhÃ  Ä‘áº§u tÆ° cÃ³ thá»ƒ Ä‘áº·t lá»‡nh qua Ä‘iá»‡n thoáº¡i, internet, dá»… dÃ ng theo dÃµi tÃ¬nh tráº¡ng lá»‡nh tá»« lÃºc Ä‘áº·t lá»‡nh Ä‘áº¿n khi lá»‡nh Ä‘Æ°á»£c khá»›p, truy váº¥n lá»‹ch sá»­ giao dá»‹ch, sá»‘ dÆ° tÃ i khoáº£n chá»©ng khoÃ¡n trá»±c tuyáº¿n. </p> <p style=\"line-height: 130%; margin-bottom: 0in;\" align=\"justify\">NgoÃ i ra, há»‡ thá»‘ng <span style=\"font-weight: bold;\">Quáº£n lÃ½ Cá»• Ä‘Ã´ng trá»±c tuyáº¿n</span> cá»§a EuroCapital cho ph&eacute;p bÃ¡o cÃ¡o trá»±c tuyáº¿n cho doanh nghiá»‡p cÃ¡c khÃ­a cáº¡nh vá» tÃ¬nh hÃ¬nh cá»• Ä‘Ã´ng cá»§a CÃ´ng ty, Ä‘á»“ng thá»i thÃ´ng tin tá»©c thá»i cho NhÃ  quáº£n lÃ½ vá» nhá»¯ng giao dá»‹ch diá»…n ra, giáº£m thiá»ƒu tá»‘i Ä‘a thá»i gian vÃ  cÃ´ng sá»©c lÃ m bÃ¡o cÃ¡o cho cÆ¡ quan quáº£n lÃ½ .</p> <p style=\"line-height: 130%; font-style: normal; margin-bottom: 0in;\" align=\"justify\"><span style=\"background: none repeat scroll 0% 0% rgb(255, 255, 255);\"></span>&nbsp;</p> <p style=\"line-height: 130%; font-style: normal; margin-bottom: 0in;\" align=\"justify\"><span style=\"background: none repeat scroll 0% 0% rgb(255, 255, 255);\">NhÃ¢n sá»± kiá»‡n khai trÆ°Æ¡ng Chi nhÃ¡nh Há»“ ChÃ­ Minh, EuroCapital cho biáº¿t, tá»« nay Ä‘áº¿n háº¿t thÃ¡ng 9/2010, má»i khÃ¡ch hÃ ng má»Ÿ tÃ i khoáº£n vÃ  giao dá»‹ch táº¡i ECC Há»“ ChÃ­ Minh sáº½ Ä‘Æ°á»£c hÆ°á»Ÿng má»©c phÃ­ giao dá»‹ch Æ°u Ä‘Ã£i 0,15%. Äáº·c biá»‡t, 50 khÃ¡ch hÃ ng má»Ÿ tÃ i khoáº£n giao dá»‹ch Ä‘áº§u tiÃªn sáº½ nháº­n Ä‘Æ°á»£c nhá»¯ng pháº§n quÃ  cÃ³ giÃ¡ trá»‹.</span></p> <p style=\"line-height: 130%; font-style: normal; margin-bottom: 0in;\" align=\"justify\"><span style=\"background: none repeat scroll 0% 0% rgb(255, 255, 255);\"></span>&nbsp;</p> <p style=\"line-height: 130%; font-style: normal; margin-bottom: 0in;\" align=\"right\"><span style=\"background: none repeat scroll 0% 0% rgb(255, 255, 255);\">Theo <span style=\"font-style: italic;\">EuroCapital</span></span></p> <p style=\"line-height: 130%; font-style: normal; margin-bottom: 0in;\" align=\"justify\"><span style=\"background: none repeat scroll 0% 0% rgb(255, 255, 255);\"></span>&nbsp;</p>','2010-06-20 05:24:57',1,'','',0,0,1,0,32,0,0,0,0),(19,'vi','FPT lÃ m Ä‘iá»‡n thoáº¡i: â€œHá»c há»i khÃ´ng cÃ³ gÃ¬ lÃ  xáº¥uâ€','fpt-lam-dien-thoai-hoc-hoi-khong-co-gi-la-xau6214','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/11/f99260_150.jpg','Máº«u Ä‘iá»‡n thoáº¡i FPT F99 cá»§a FPT Ä‘Æ°á»£c nháº­n x&eacute;t lÃ  khÃ¡ giá»‘ng BlackBerry 8900.','<!--[if gte mso 9]><![endif]--><!--[if !mso]> <style>\r\nst1:*{behavior:url(#ieooui) }\r\n</style> <![endif]--><style> <!--\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-parent:\"\";\r\nmargin:0in;\r\nmargin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:12.0pt;\r\nfont-family:\"Times New Roman\";\r\nmso-fareast-font-family:\"Times New Roman\";}\r\n@page Section1\r\n{size:8.5in 11.0in;\r\nmargin:1.0in 1.25in 1.0in 1.25in;\r\nmso-header-margin:.5in;\r\nmso-footer-margin:.5in;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n--> </style><!--[if gte mso 10]> <style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:\"Table Normal\";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-parent:\"\";\r\nmso-padding-alt:0in 5.4pt 0in 5.4pt;\r\nmso-para-margin:0in;\r\nmso-para-margin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:10.0pt;\r\nfont-family:\"Times New Roman\";\r\nmso-ansi-language:#0400;\r\nmso-fareast-language:#0400;\r\nmso-bidi-language:#0400;}\r\n</style> <![endif]--> <p></p> <p></p> <p>â€œKhi chÆ°a phÃ¡t triá»ƒn Ä‘Æ°á»£c má»™t ná»n táº£ng cÃ´ng nghá»‡, chÆ°a thiáº¿t\r\nkáº¿ Ä‘Æ°á»£c thÃ¬ pháº£i Ä‘i há»c há»i thÃ´iâ€.</p> <p></p> <p>Ã”ng BÃ¹i Ngá»c KhÃ¡nh, Tá»•ng giÃ¡m Ä‘á»‘c CÃ´ng ty Sáº£n pháº©m CÃ´ng nghá»‡\r\nFPT Ä‘Ã£ tháº³ng tháº¯n nÃ³i nhÆ° váº­y vá»›i VnEconomy, sau khi cÃ³ khÃ´ng Ã­t ngÆ°á»i nháº­n x&eacute;t\r\nchiáº¿c Ä‘iá»‡n thoáº¡i F99 cá»§a FPT vá»«a ra máº¯t cuá»‘i thÃ¡ng 5, lÃ  \"nhÃ¡i\" máº«u\r\ndi Ä‘á»™ng cá»§a má»™t hÃ£ng cÃ´ng nghá»‡ ná»•i tiáº¿ng tháº¿ giá»›i.</p> <p></p> <p>Ã”ng KhÃ¡nh nÃ³i:</p> <p></p> <p>- Sau gáº§n má»™t nÄƒm nghiÃªn cá»©u, phÃ¡t triá»ƒn vÃ  kinh doanh Ä‘iá»‡n\r\nthoáº¡i di Ä‘á»™ng (tá»« Ä‘áº§u nÄƒm 2009), vá»›i thÆ°Æ¡ng hiá»‡u F-Mobile, chÃºng tÃ´i Ä‘Ã£ há»c\r\nÄ‘Æ°á»£c quy trÃ¬nh sáº£n xuáº¥t vÃ  kiá»ƒm soÃ¡t cháº¥t lÆ°á»£ng cá»§a sáº£n pháº©m, vá»›i tháº¿ máº¡nh vá»\r\nviá»‡c phÃ¡t triá»ƒn pháº§m má»m, cÃ´ng ty hoÃ n toÃ n cÃ³ kháº£ nÄƒng táº¡o ra cÃ¡c giÃ¡ trá»‹ gia\r\ntÄƒng cho chiáº¿c Ä‘iá»‡n thoáº¡i Ä‘Ã¡p á»©ng Ä‘Æ°á»£c nhu cáº§u ngÃ y cÃ ng tÄƒng cá»§a khÃ¡ch hÃ ng.</p> <p><span style=\"font-weight: bold;\"></span></p> <p><span style=\"font-weight: bold;\">GiÃ¡ trá»‹ \"cá»‘t\r\nlÃµi\" lÃ  pháº§n má»m</span></p> <p></p> <p><span style=\"font-style: italic;\">Váº­y quy trÃ¬nh sáº£n xuáº¥t\r\nÄ‘iá»‡n thoáº¡i F99 Ä‘Ã£ Ä‘Æ°á»£c cÃ´ng ty lÃªn káº¿ hoáº¡ch thá»±c hiá»‡n nhÆ° tháº¿ nÃ o?</span></p> <p></p> <p>ChÃºng tÃ´i Ä‘Ã£ tiáº¿n hÃ nh nghiÃªn cá»©u nhu cáº§u cá»§a khÃ¡ch hÃ ng Ä‘á»ƒ\r\nbiáº¿t Ä‘Æ°á»£c nhá»¯ng nhu cáº§u cÆ¡ báº£n cá»§a há» vÃ  lÃ m cÆ¡ sá»Ÿ Ä‘á»ƒ phÃ¡t triá»ƒn sáº£n pháº©m phÃ¹\r\nhá»£p cho tá»«ng phÃ¢n khÃºc, Ä‘á»‘i tÆ°á»£ng khÃ¡ch hÃ ng Viá»‡t.</p> <p></p> <p>Trong Ä‘Ã³, Ä‘áº·c biá»‡t lÃ  nhÃ³m Ä‘á»‘i tÆ°á»£ng khÃ¡ch hÃ ng tráº» yÃªu\r\nthÃ­ch nháº¯n tin, chat, vÃ¬ tháº¿ ráº¥t thÃ­ch há»£p vá»›i bÃ n phÃ­m Qwerty, ngÆ°á»i dÃ¹ng cÃ³\r\nthá»ƒ chat trÃªn sáº£n pháº©m Vitalk thÃ´ng qua GPRS hoáº·c Wi-Fi.</p> <p></p> <p>TrÃªn ná»n táº£ng sáº£n pháº©m pháº§n má»m Ä‘Ã£ cÃ³ vÃ  Ä‘Ã£ táº¡o ra hÃ¬nh hÃ i\r\nsÆ¡ bá»™ cá»§a chiáº¿c Ä‘iá»‡n thoáº¡i, chÃºng tÃ´i Ä‘Ã£ sang Trung Quá»‘c tÃ¬m táº¥t cáº£ cÃ¡c nhÃ  sáº£n\r\nxuáº¥t linh kiá»‡n lá»›n nháº¥t, lá»±a chá»n há»£p tÃ¡c vá»›i há» Ä‘á»ƒ sáº£n xuáº¥t pháº§n cá»©ng. </p> <p></p> <p><span style=\"font-style: italic;\">CÃ²n há»‡ Ä‘iá»u hÃ nh vÃ \r\nthiáº¿t káº¿ máº«u mÃ£ cá»§a F99 cÃ³ pháº£i lÃ  do FPT lÃ m?</span></p> <p></p> <p>Há»‡ Ä‘iá»u hÃ nh cá»§a sáº£n pháº©m F99 do chÃºng tÃ´i há»£p tÃ¡c vá»›i cÃ´ng\r\nty MTK (ÄÃ i Loan). ÄÃ¢y lÃ  má»™t trong nhá»¯ng cÃ´ng ty lá»›n vá» thiáº¿t káº¿ vÃ  sáº£n xuáº¥t\r\nchip cho Ä‘iá»‡n thoáº¡i. FPT dá»±a trÃªn ná»n táº£ng nÃ y Ä‘á»ƒ phÃ¡t triá»ƒn kho chá»©a á»©ng dá»¥ng,\r\ná»©ng dá»¥ng vÃ  cÃ¡c ná»™i dung sá»‘ cung cáº¥p cho khÃ¡ch hÃ ng.</p> <p></p> <p>Sau khi Ä‘Ã£ nghiÃªn cá»©u ká»¹ nhu cáº§u cá»§a khÃ¡ch hÃ ng cÃ´ng ty, FPT\r\nmá»›i chá»n tá»«ng chi tiáº¿t nhá» Ä‘á»ƒ táº¡o ra máº«u cho F99 hiá»‡n nay, 30 ká»¹ sÆ° pháº§n má»m\r\ncá»§a FPT vÃ  MTK Ä‘Ã£ pháº£i máº¥t 5 thÃ¡ng lÃ m viá»‡c, tá»« cuá»‘i thÃ¡ng 8/2009 Ä‘áº¿n thÃ¡ng\r\n1/2010 má»›i xong pháº§n thiáº¿t káº¿, giao diá»‡n, tÃ­ch há»£p cÃ¡c ná»™i dung sá»‘ vÃ o kho á»©ng\r\ndá»¥ng (F-store). CÃ¡c á»©ng dá»¥ng vÃ  ná»™i dung sá»‘ Ä‘á»u do cÃ¡c ká»¹ sÆ° FPT phÃ¡t triá»ƒn vÃ \r\ncÃ¡c bÃ i hÃ¡t Ä‘á»u Ä‘Æ°á»£c mua báº£n quyá»n.</p> <p></p> <p>Khi xong táº¥t cáº£ cÃ´ng viá»‡c thiáº¿t káº¿ máº«u mÃ£, xÃ¢y dá»±ng pháº§n má»m\r\nÄ‘iá»u hÃ nh vÃ  pháº§n má»m ná»™i dung, thÃ¡ng 1 chÃºng tÃ´i má»›i ra Ä‘Æ°á»£c phiÃªn báº£n thá»­\r\nnghiá»‡m Ä‘áº§u tiÃªn Ä‘á»ƒ cháº¡y thá»­ vÃ  Ä‘áº¿n thÃ¡ng 2 thÃ¬ má»›i Ä‘áº·t hÃ ng sáº£n xuáº¥t pháº§n cá»©ng.\r\nTá»›i thÃ¡ng 5, FPT má»›i chÃ­nh thá»©c giá»›i thiá»‡u Ä‘Æ°á»£c sáº£n pháº©m F99 ra thá»‹ trÆ°á»ng.</p> <p><span style=\"font-style: italic;\"></span></p> <p><span style=\"font-style: italic;\">NhÆ°ng khi F99 ra máº¯t,\r\nnhiá»u ngÆ°á»i cho ráº±ng, máº«u mÃ£ cá»§a F99 cÃ³ pháº§n giá»‘ng vá»›i chiáº¿c Ä‘iá»‡n thoáº¡i\r\nBlackBerry?</span></p> <p></p> <p>Thá»±c táº¿, bÃ n phÃ­m Qwerty cá»§a F99, tÃ´i Ä‘Ã£ há»c há»i tá»« cÃ¡c sáº£n\r\npháº©m cá»§a BlackBerry.</p> <p></p> <p>Vá»›i mong muá»‘n táº¡o ra sáº£n pháº©m cho khÃ¡ch hÃ ng dá»… sá»­ dá»¥ng thÃ¬\r\ntá»‘t nháº¥t hÃ£y Ä‘i theo xu hÆ°á»›ng chung vÃ  khÃ´ng lÃ m thay Ä‘á»•i thÃ³i quen cá»§a ngÆ°á»i\r\ntiÃªu dÃ¹ng. F99 cÃ³ Ä‘áº§y Ä‘á»§ tÃ­nh nÄƒng nhÆ° chat, email, lÆ°á»›t web, kho á»©ng dá»¥ng\r\n(F-store)â€¦ BÃ n phÃ­m Qwerty lÃ  lá»±a chá»n phÃ¹ há»£p nháº¥t Ä‘á»ƒ khÃ¡ch hÃ ng tráº£i nghiá»‡m\r\ncÃ¡c tiá»‡n Ã­ch trÃªn.</p> <p></p> <p>Theo tÃ´i, Ä‘á»ƒ Ä‘Ã¡p á»©ng nhu cáº§u tá»‘t nháº¥t cho khÃ¡ch hÃ ng thÃ¬ hÃ£y\r\nnghiÃªn cá»©u sá»­a Ä‘á»•i cÃ¡c tiá»‡n Ã­ch sáºµn cÃ³ vÃ  tÃ­ch há»£p vÃ o sáº£n pháº©m. Khi mÃ¬nh chÆ°a\r\ntá»± thiáº¿t káº¿ Ä‘Æ°á»£c thÃ¬ viá»‡c Ä‘i há»c há»i nhá»¯ng gÃ¬ thuá»™c tinh tÃºy cá»§a tháº¿ giá»›i thÃ¬\r\nkhÃ´ng cÃ³ gÃ¬ lÃ  xáº¥u cáº£. MÃ¬nh vá»«a lÃ m vá»«a há»c há»i, nghiÃªn cá»©u sÃ¡ng táº¡o vÃ  phÃ¡t\r\ntriá»ƒn cá»§a riÃªng mÃ¬nh, nhÆ° tháº¿ má»›i rÃºt ngáº¯n Ä‘Æ°á»£c khoáº£ng cÃ¡ch cÃ´ng nghá»‡ cÅ©ng nhÆ°\r\nká»¹ nÄƒng, kinh nghiá»‡m vá»›i tháº¿ giá»›i.</p> <p></p> <p><span style=\"font-style: italic;\">Váº­y F99 cÃ³ nhá»¯ng khÃ¡c\r\nbiá»‡t gÃ¬ so vá»›i cÃ¡c sáº£n pháº©m Ä‘iá»‡n thoáº¡i khÃ¡c mang thÆ°Æ¡ng hiá»‡u Viá»‡t?</span></p> <p></p> <p>Sáº£n pháº©m F99 cá»§a FPT Ä‘ang chá»©a Ä‘á»±ng ráº¥t nhiá»u á»©ng dá»¥ng vÃ \r\nná»™i dung sá»‘ do cÃ¡c ká»¹ sÆ° pháº§n má»m FPT phÃ¡t triá»ƒn vá»›i má»™t kho á»©ng dá»¥ng nhiá»u ná»™i\r\ndung Ä‘Ã£ Ä‘Æ°á»£c mua báº£n quyá»n.</p> <p></p> <p>Thá»© hai cÃ¡c á»©ng dá»¥ng cá»§a F99 Ä‘á»u Ä‘Æ°á»£c Viá»‡t hÃ³a vÃ  ráº¥t dá»… sá»­\r\ndá»¥ng.</p> <p></p> <p>Thá»© ba, F99 Ä‘Æ°á»£c tÃ­ch há»£p pháº§n má»m chat Vitalk. Vitalk dÃ¹ng\r\nÄ‘á»ƒ chat qua Ä‘iá»‡n thoáº¡i, laptop, mÃ¡y tÃ­nh Ä‘á»ƒ bÃ n vá»›i cá»™ng Ä‘á»“ng cÃ³ nick Yahoo\r\nhoáº·c Vitalk.</p> <p></p> <p>TÃ³m láº¡i, F99 cÃ³ 3 Æ°u Ä‘iá»ƒm lá»›n nháº¥t lÃ  chat, e-mail vÃ  kho\r\ná»©ng dá»¥ng. Táº¥t cáº£ nhá»¯ng pháº§n má»m cho nhá»¯ng tÃ­nh nÄƒng nÃ y lÃ  do FPT lÃ m ra.</p> <p></p> <p><span style=\"font-weight: bold;\">KhÃ´ng ai sáº£n xuáº¥t tá»«\r\nÄ‘áº§u Ä‘áº¿n cuá»‘i</span></p> <p></p> <p><span style=\"font-style: italic;\">NhÆ° váº­y, FPT váº«n chÆ°a\r\nlá»±a chá»n mÃ´ hÃ¬nh sáº£n xuáº¥t Ä‘iá»‡n thoáº¡i hoÃ n toÃ n mang thÆ°Æ¡ng hiá»‡u FPT, tá»« thiáº¿t\r\nkáº¿ Ä‘áº¿n sáº£n xuáº¥t?</span></p> <p></p> <p>Thá»±c táº¿ Ä‘á»ƒ sáº£n xuáº¥t tá»« Ä‘áº§u Ä‘áº¿n cuá»‘i má»™t sáº£n pháº©m Ä‘iá»‡n thoáº¡i\r\ndi Ä‘á»™ng lÃ  ráº¥t khÃ³ khÄƒn khi chÃºng ta chÆ°a cÃ³ Ä‘á»§ nguÃ´n nhÃ¢n lá»±c, cÃ³ kinh nghiá»‡m\r\nvÃ  trang thiáº¿t bá»‹ háº¡ táº§ng cÆ¡ sá»Ÿ cho hoáº¡t Ä‘á»™ng nÃ y.</p> <p></p> <p>NÃªn náº¿u báº¯t tay vÃ o Ä‘áº§u tÆ° nhÃ  mÃ¡y sáº£n xuáº¥t Ä‘iá»‡n thoáº¡i á»Ÿ\r\nViá»‡t Nam\r\nthÃ¬ chi phÃ­ giÃ¡ thÃ nh ráº¥t lá»›n. VÃ¬ pháº£i kháº¥u hao chi phÃ­ Ä‘áº§u tÆ°, sáº£n lÆ°á»£ng tháº¥p,\r\nchi phÃ­ Ä‘Ã o táº¡o nguá»“n nhÃ¢n lá»±câ€¦ giÃ¡ thÃ nh sáº£n pháº©m sáº½ cao. VÃ¬ váº­y chÃºng tÃ´i Ä‘Ã£\r\nchá»n sáº£n xuáº¥t táº¡i Trung Quá»‘c - cÃ´ng xÆ°á»Ÿng cá»§a tháº¿ giá»›i - Ä‘á»ƒ giáº£m chi phÃ­ Ä‘áº§u\r\nvÃ o.</p> <p><span style=\"font-style: italic;\"></span></p> <p><span style=\"font-style: italic;\">Váº­y theo Ã´ng, con\r\nÄ‘Æ°á»ng xÃ¢y dá»±ng Ä‘iá»‡n thoáº¡i di Ä‘á»™ng thÆ°Æ¡ng hiá»‡u Viá»‡t Nam cá»§a cÃ¡c doanh nghiá»‡p sáº½\r\nlÃ  Ä‘i thuÃª ngoÃ i, hay Ä‘áº§u tÆ° sáº£n xuáº¥t tá»« Ä‘áº§u Ä‘áº¿n cuá»‘i?</span></p> <p></p> <p>Äá»ƒ sáº£n xuáº¥t Ä‘Æ°á»£c Ä‘iá»‡n thoáº¡i trong nÆ°á»›c thÃ¬ cÃ¡c doanh nghiá»‡p\r\ncáº§n pháº£i cÃ³ thÃªm thá»i gian chuáº©n bá»‹. Trong khi chuáº©n bá»‹, chÃºng tÃ´i sáº½ chá»n cÃ¡c\r\nnhÃ  mÃ¡y lá»›n Ä‘á»ƒ sáº£n xuáº¥t pháº§n cá»©ng. FPT sáº½ há»£p tÃ¡c vá»›i MTK Ä‘á»ƒ phÃ¡t triá»ƒn pháº§n\r\nmá»m táº¡o ra cÃ¡c tiá»‡n Ã­ch phÃ¹ há»£p vá»›i khÃ¡ch hÃ ng Viá»‡t.</p> <p></p> <p>BÃ¢y giá» khÃ´ng má»™t cÃ´ng ty nÃ o trÃªn tháº¿ giá»›i láº¡i Ä‘i lÃ m toÃ n\r\nbá»™ tá»« Ä‘áº§u Ä‘áº¿n cuá»‘i cáº£. NgÆ°á»i ta chá»‰ thiáº¿t káº¿ ra pháº§n lÃµi, máº«u mÃ£, pháº§n má»m cá»§a\r\nsáº£n pháº©m, cÃ²n pháº§n cá»©ng ngÆ°á»i ta sáº½ há»£p tÃ¡c vá»›i cÃ¡c Ä‘á»‘i tÃ¡c bÃªn ngoÃ i Ä‘á»ƒ sáº£n\r\nxuáº¥t.</p> <p></p> <p>Doanh nghiá»‡p Viá»‡t Nam lá»±a chá»n phÃ¡t triá»ƒn Ä‘iá»‡n thoáº¡i di Ä‘á»™ng\r\nthÆ°Æ¡ng hiá»‡u Viá»‡t, trÆ°á»›c máº¯t, vá» cÆ¡ báº£n lÃ  cáº§n táº¡o ra pháº§n lÃµi, pháº§n má»m cá»§a\r\nchÃ­nh mÃ¬nh, rá»“i vá»«a lÃ m vá»«a há»c há»i vÃ  tá»± thiáº¿t káº¿ ra máº«u mÃ£, thÆ°Æ¡ng hiá»‡u cho\r\nmÃ¬nh. Theo tÃ´i, Ä‘Ã³ sáº½ lÃ  con Ä‘Æ°á»ng ngáº¯n nháº¥t Ä‘á»ƒ cÃ³ thá»ƒ xÃ¢y dá»±ng nhá»¯ng thÆ°Æ¡ng\r\nhiá»‡u Ä‘iá»‡n thoáº¡i Viá»‡t Ä‘Ã­ch thá»±c.</p> <p></p> <p align=\"right\">Theo <span style=\"font-weight: bold;\">Máº¡nh Chung</span><br> <span style=\"font-style: italic;\">VnEconomy</span></p>','2010-06-20 05:25:02',1,'','',0,0,1,0,32,0,0,0,0),(20,'vi','Vinaconex 34: 11/6 Chá»‘t danh sÃ¡ch cá»• Ä‘Ã´ng Ä‘á»ƒ Ä‘Äƒng kÃ½ niÃªm yáº¿t cá»• phiáº¿u trÃªn HNX','vinaconex-34-116-chot-danh-sach-co-dong-de-dang-ky-niem-yet-co-phieu-tren-hnx7459','','http://img.cafef.vn/thumbImages/Uploaded/Share/2010/06/11/xaydung2_150.jpg','CÃ´ng ty Ä‘Äƒng kÃ½ niÃªm yáº¿t 4 triá»‡u cá»• phiáº¿u trÃªn HNX.','CÃ´ng ty Cá»• pháº§n Äáº§u tÆ° XÃ¢y dá»±ng vÃ  PhÃ¡t triá»ƒn háº¡ táº§ng Vinaconex (Vinaconex 34) thÃ´ngbÃ¡o chá»‘t danh sÃ¡ch cá»• Ä‘Ã´ng Ä‘á»ƒ ná»™p há»“ sÆ¡ Ä‘Äƒng kÃ½ niÃªm yáº¿t cá»• phiáº¿u trÃªn Sá»Ÿ Giao dá»‹ch Chá»©ng khoÃ¡n HÃ  Ná»™i (HNX). \r\n<p style=\"margin-bottom: 0in;\"></p> <p style=\"margin-bottom: 0in;\">Thá»i gian chá»‘t danh sÃ¡ch cá»• Ä‘Ã´ng lÃ  16h ngÃ y&nbsp;11/6/2010. CÃ´ng ty Ä‘Äƒng kÃ½ niÃªm yáº¿t 4 triá»‡u cá»• phiáº¿u trÃªn HNX vá»›i tá»•ng giÃ¡ trá»‹ niÃªm yáº¿t (tÃ­nh theo má»‡nh giÃ¡) lÃ  40 tá»· Ä‘á»“ng.</p> <p style=\"margin-bottom: 0in;\" align=\"right\">Theo <span style=\"font-style: italic;\">UBCKNN<br></span></p> <p style=\"margin-bottom: 0in;\"><br></p>','2010-06-20 05:25:06',1,'','',0,0,1,0,32,0,0,0,0);
/*!40000 ALTER TABLE `lvn_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_session`
--

DROP TABLE IF EXISTS `lvn_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_session` (
  `id` varchar(32) NOT NULL,
  `modified` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_session`
--

LOCK TABLES `lvn_session` WRITE;
/*!40000 ALTER TABLE `lvn_session` DISABLE KEYS */;
INSERT INTO `lvn_session` (`id`, `modified`, `lifetime`, `data`) VALUES ('2a3dbea92cce98e3e67c012e41f6d4dc',1284479901,600,'counter|a:1:{s:7:\"counter\";i:1284479901;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}'),('8b51b4c57a24a548e1a44252392e109d',1284485060,600,'counter|a:1:{s:7:\"counter\";i:1284485060;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}'),('7a11ada5399fe70e40d1646d4db09d05',1284485061,600,'counter|a:1:{s:7:\"counter\";i:1284485061;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}'),('38eb173f01e3e02086018f81f40caec8',1284485061,600,'counter|a:1:{s:7:\"counter\";i:1284485061;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}'),('b3e39c026c2f1ddc168295c5c2c9595b',1284485722,600,'counter|a:1:{s:7:\"counter\";i:1284485660;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}'),('c51bca3fb44254d93f73e5bfdf63812f',1284528834,600,'counter|a:1:{s:7:\"counter\";i:1284528834;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}'),('94d1a1e4131f6792acef61855d7a1945',1284528834,600,'counter|a:1:{s:7:\"counter\";i:1284528834;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}'),('f04563d339b56c53101e49a61de31cc2',1284478277,600,'counter|a:1:{s:7:\"counter\";i:1284478277;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}'),('f751786bf5d53ada332322a0e2c95ed2',1284479901,600,'counter|a:1:{s:7:\"counter\";i:1284479901;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}'),('79bbf9517fe422efb8fd3fcfe4f204c4',1284478277,600,'counter|a:1:{s:7:\"counter\";i:1284478276;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}'),('15ed35c6747bae6c10d8628b798eeab9',1284455515,600,'counter|a:1:{s:7:\"counter\";i:1284455477;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}token|a:1:{s:5:\"token\";s:5:\"30EE7\";}'),('05dfe54a336459c059c40041edde7767',1284457287,600,'counter|a:1:{s:7:\"counter\";i:1284457287;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}'),('0565330e9d4604912d36e175ad2c7731',1284433779,600,'counter|a:1:{s:7:\"counter\";i:1284433779;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}'),('1635f88d5adee77b0880b3491ee9d79d',1284433778,600,'counter|a:1:{s:7:\"counter\";i:1284433778;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}'),('b71c94a5ec1df4930f8bb74b36b26b02',1284401013,600,'counter|a:1:{s:7:\"counter\";i:1284401013;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}'),('00689f2b40e595c0e0a94963ebb3842d',1284400998,600,'counter|a:1:{s:7:\"counter\";i:1284400998;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}'),('8febc9005d95ab3c166de23f3f68bbfc',1284400999,600,'counter|a:1:{s:7:\"counter\";i:1284400998;}slang|a:1:{s:5:\"slang\";s:2:\"vi\";}');
/*!40000 ALTER TABLE `lvn_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_size`
--

DROP TABLE IF EXISTS `lvn_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_size` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(200) NOT NULL,
  `banner` varchar(250) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_size`
--

LOCK TABLES `lvn_size` WRITE;
/*!40000 ALTER TABLE `lvn_size` DISABLE KEYS */;
INSERT INTO `lvn_size` (`id`, `lang`, `title`, `banner`, `published`, `ordering`) VALUES (10,'vi','600X400','',1,0),(11,'vi','400X200','',1,0),(12,'vi','1200X300','',1,0);
/*!40000 ALTER TABLE `lvn_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_soghe`
--

DROP TABLE IF EXISTS `lvn_soghe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_soghe` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(250) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_soghe`
--

LOCK TABLES `lvn_soghe` WRITE;
/*!40000 ALTER TABLE `lvn_soghe` DISABLE KEYS */;
INSERT INTO `lvn_soghe` (`id`, `lang`, `title`, `published`) VALUES (1,'vi','Xe 4 chá»—',1),(2,'vi','Line of 4 - 5 seats',1),(3,'vi','Line of 6 - 7 seats',1),(4,'vi','Xe 7 chá»—',1);
/*!40000 ALTER TABLE `lvn_soghe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_support`
--

DROP TABLE IF EXISTS `lvn_support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_support` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(150) NOT NULL,
  `support` varchar(255) NOT NULL COMMENT 'path to image or swf file',
  `position` varchar(100) NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_support`
--

LOCK TABLES `lvn_support` WRITE;
/*!40000 ALTER TABLE `lvn_support` DISABLE KEYS */;
INSERT INTO `lvn_support` (`id`, `lang`, `title`, `support`, `position`, `published`, `ordering`) VALUES (13,'vi','TÆ° váº¥n CN Táº¡ Quang Bá»­u','nguyenngoc212005','yahoo',1,0),(15,'vi','TÆ° váº¥n CN Phan VÄƒn TrÆ°á»ng','kocanbiet','yahoo',1,0),(16,'vi','TÆ° váº¥n','thanhtrang_ttv','skype',1,0);
/*!40000 ALTER TABLE `lvn_support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_tours`
--

DROP TABLE IF EXISTS `lvn_tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_tours` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `images` varchar(250) NOT NULL,
  `introTours` text NOT NULL,
  `fullTours` text NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `home` tinyint(1) NOT NULL default '0',
  `hottours` tinyint(1) NOT NULL default '0',
  `sales` tinyint(1) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `hits` int(11) NOT NULL default '0',
  `category` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`),
  KEY `created_by` (`created_by`),
  KEY `published` (`published`),
  KEY `category` (`category`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_tours`
--

LOCK TABLES `lvn_tours` WRITE;
/*!40000 ALTER TABLE `lvn_tours` DISABLE KEYS */;
INSERT INTO `lvn_tours` (`id`, `lang`, `title`, `alias`, `images`, `introTours`, `fullTours`, `created`, `created_by`, `metakey`, `metadesc`, `home`, `hottours`, `sales`, `published`, `hits`, `category`, `ordering`) VALUES (5,'vi','Cambodia Explorer- 7Days','cambodia-explorer-7days','/uploads/cambodia_tour.gif','Day 1: Phnom Penh<br>\r\nUpon arrival you will be accompanied to your hotel. After the lunch and \r\ngroup meeting we embark on an afternoon tour of the capital city.','Day 1: Phnom Penh<br>Upon arrival you will be accompanied to your hotel. After the lunch and group meeting we embark on an afternoon tour of the capital city.<br><br>&nbsp;<br><br>Day 2: Phnom Penh â€“ Siem Reap<br>Today we board the 5hour hydrofoil to Siem Reap. From the water we can see how many ordinary Cambodians live in the floating villages. This afternoon we start our discovery of Angkor with a visit to the Rolous group, the ancient capital of the 9th century.<br><br>&nbsp;<br><br>Day 3: Angkor Complex<br>This morning we visit Angkor Thom â€“ â€œthe World of Godsâ€ that includes South Gate, the famous Bayon<br><br>and Elephant terrace. In the afternoon we visit more sights in the before making our way to the hill top temple<br><br>of Phnom Pakheng to watch the sunset over this timeless land.<br><br>&nbsp;<br><br>Day 4: Angkor Complex<br>We drive to Koulen Mountain where we find the great reclining Buddha and the Siva lingas carved on the riverbed. Here we have a picnic lunch before visiting Banteay Srey and Banteay Samre Temples.<br><br>&nbsp;<br><br>Day 5: Angkor Complex<br>This morning is reserved to admire the beauty of Angkor Wat. In the afternoon<br><br>we visit the amazing Ta Prohm as well as the temples of Banteay Kdei.<br><br>&nbsp;<br><br>Day 6: Siem Reap<br>A change of pace today, as we visit the silk farm of Pok, the Artisan D\' Angkor and the Land Mine museum. In the afternoon we visit the Wat Bo Pagoda and the Old market.','2010-07-23 00:24:28',1,'','',0,0,1,1,0,12,0),(6,'vi','Easy Hanoi-Halong-Sapa Package 10 Days','easy-hanoi-halong-sapa-package-10-days','/uploads/2392008153658_halong.jpg','You are welcomed by our guide with flower at Noi Bai airport - and then \r\nbe transferred to your hotel in the center of Hanoi city. Vietnam\'s \r\ncapital is stylish and stately. ','<span style=\"font-weight: bold;\">Day 1: Arrival Day - Hanoi Capital&nbsp; </span><img alt=\"\" src=\"/uploads/9412df38ac57531ed7aa0392ad36438c-hochiminh.gif\" align=\"right\" border=\"0px\"><br><br>You are welcomed by our guide with flower at Noi Bai airport - and then \r\nbe transferred to your hotel in the center of Hanoi city. Vietnam\'s \r\ncapital is stylish and stately. Experience its thousand-year-old \r\nhistory, tree-lined boulevards and faded colonial architecture during \r\nour car tour . Welcome Dinner at a garden Vietnamese restaurant <br><br><div style=\"text-align: center;\"><br></div><br><span style=\"font-weight: bold;\">Day 2: Hanoi City Tour </span><br><br>We will have a all day Hanoi city tour to visit the most attractions of Hanoi:<img style=\"margin-top: 20px;\" alt=\"\" src=\"/uploads/9029e568ce54741ccca22392ad64138e-Untitled-10.gif\" align=\"right\" border=\"0\"><br><br>Hoan Kiem lake (the lake of the Restored Sword), Tran Quoc Pagoda and Quan Thanh Temple, Ho Chi Minh Mausoleum, Presidential palace ( open only in the morning) , one pillar pagoda. Lunch at Vietnamese restaurant,<br><br>Afternoon : more sightseeing : Ethnology Museum where is showing 54 ethnic group in Vietnam...Rickshaw tour around Old Quarter. And Water Puppet show. Dinner at one of the city\'s great local <br><br><span style=\"font-weight: bold;\">Day3: Hanoi - Halong Bay Cruise with Top end of Luxury wooden \r\nJunk </span><img alt=\"\" src=\"/uploads/999816f8c6d16815f5007392ad62f387-homstay.gif\" align=\"right\" border=\"0px\"><br><br>The Chinese style Halong Junk boat could bring to you a wonderful night on the bay with luxury and antique accommodations with perfect services provided by the friendly crew. Spending time on the junk, you\'ll not only savor a unique feeling in a world of wonder but also enjoy various of such interesting activities as: watching Vietnamese folk music performance, going fishing on the bay at night, kayaking, learning Vietnamese cuisine.<br><br>&nbsp;<br><br>0830 :Pick up from your hotel for a four-hours drive through the Red River Delta to Ha Long Bay.<br><br>12h30: Board Luxury Sail Junk, check-in registration<br><br>13h00: Have lunch with welcome wine during the board is still taking us discover the Bay .<img alt=\"\" src=\"/uploads/b69c4848b99c363d058b2392ad4523af-nhatrang4.gif\" align=\"right\" border=\"0px\"><br><br>14h00: A fantastic cruise in Ha Long bay, Get down on Sundeck to take whole vision of Heritage site<br><br>15h00. Cruise amongst stunning limestone back drop and round over Thien Cung cave , Dau Go cave, Tuan Chau island, visit Sungsot cave .<br><br>Optional swim at lovely beaches. Afternoon tea with pastries on the sundeck or in the restaurant and drink before dinner <br>','2010-08-29 00:36:43',1,'','',1,0,0,1,0,5,0),(4,'vi','Inside Cambodia- 4Days','inside-cambodia-4days','/uploads/images.jpg','Upon arrival at Phnom Penh you will be greeted at the airport and \r\ntransferred to your hotel. Following this there will be a city tour \r\nincluding the Silver Pagoda, the National Museum, the Toul Sleng Museum \r\nof Genocide, and Wat Phnom.','<div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Day 1: Phnom Penh</span><br>Upon arrival at Phnom Penh you will be greeted at the airport and transferred to your hotel. Following this there will be a city tour including the Silver Pagoda, the National Museum, the Toul Sleng Museum of Genocide, and Wat Phnom. The Silver Pagoda, also known as the Pagoda of the Emerald Buddha, named after the statue housed there, was created by King Norodom in 1892. The floor is comprised of more than 5,000 silver blocks, weighing a total of 6 tones. The National Museum, built in the Khmer style in the 1920\'s has an extensive collection of Khmer art. The highlight of the exhibit is a 6th century bronze figure of the Hindu god Vishnu. The Tuol Sleng Museum or Museum of Genocide is testament to a more recent and bloody past. Originally this building used to be a high school, until in 1975, it became the Khmer Rouge\'s main torture and interrogation center, gaining the acronym \'S-21\'. From here the victims were taken out and executed in what is now known as the Killing Fields.<br><br>&nbsp;<br><br>Day 2: Phnom Penh - Siem Reap &amp; Angkor Wat<br>This morning you will be transferred to the airport for the short morning flight to Siem Reap. Once in Seam Reap you will tour Angkor Wat, Angkor Thom, and Bayon. The Angkor Complex is perhaps the most stunning temple complex in the world. Rediscovered by the French in 1860, this huge site has over 400 temples in total, spanning a period of 500 years. Founded in the 9th century, the complex flourished for centuries; its zenith culminating with the creation of Angkor Wat in the first half of the12th century. The builders of these awesome creations likened themselves to Gods, or Devaraja and indeed several of the temples are dedicated to former monarchs.<br>Angkor Wat was built between 1112 and 1152 by King Suryavarman II and dedicated to Vishnu, the Hindu god of preservation, although some people<br><br>believe it is actually dedicated to the king himself as the temple faces west, representing death. It is the best preserved of all the temples. Its layout and its scale are simply breathtaking: the wall surrounding the enclosure measures 1,000 by 800 meters in length and the moat, said to represent the oceans of the world is 200 meters wide. The five towers that dominate the scene are said to represent the five peaks of Mount Meru, the mythical home of the omnipotent Hindu deity Shiva. Beautiful bas beliefs and carvings<br><br>adorn the inner sanctuaries depicting various Hindu mythological epics, including the longest<br><br>continuous bas relief in the world, which runs along the outer gallery walls. From here we visit the fortified Royal City of Angkor Thom, constructed by King Jayavarman II at the end of the 12th century, not long after the completion of Angkor Wat. It is surrounded with a massive perimeter wall and a moat with five monumental gates and covers an area of more than ten square kilometers. The most important monuments are located in the centre of the city, namely the Bayon, Baphoun and the Terrace of Elephants. The Bayon in particular is a fascinating piece of architecture and one of the most photographed. It is a bizarre structure, with a total of 54 towers elaborately decorated with over 200 enigmatic smiling faces.<br><br>&nbsp;<br><br>Day 3: Siem Reap &amp; Angkor Wat<br>Today will include visits to several sites within the Angkor complex including Ta<br><br>Prohm temple, whose principal attraction is that it has not been rescued from the thick jungle, as the rest of the Angkor Complex has. It looks much the same as it would have done when the French explorers came here 140 years ago, shrouded in undergrowth and the huge roots of old Banyan trees. Also included today are the Temples of, Takeo, Chau Say Tevoda, Thammanon, Banteay Kdei, Sras Srang, and Prasat Kravan. In the afternoon following lunch there will be a boat trip on Tonle Sap Lake, Asia\'s largest inland lake, which swells to ten times it\'s normal size during the wet season.<br><br>&nbsp;<br><br>Day 4: Depart Siem Reap<br>This morning there will be a transfer waiting to take you to the airport for your connecting flight out of Cambodia. <br></div>','2010-07-23 00:22:52',1,'','',0,0,1,1,0,12,0),(7,'vi','North Vietnam Discovery 9 Days','north-vietnam-discovery-9-days','/uploads/ha_long_travel.jpg','You are welcomed by our guide at Noi Bai airport and \r\nthen be transferred to your hotel in the center of Hanoi city. Vietnam\'s\r\n capital is stylish and stately. Experience its thousand-year-old \r\nhistory, tree-lined boulevards and faded colonial architecture during \r\nour transfer to Hotel. \r\n			We will have a half day Hanoi city tour to visit \r\nthe most attractions of Hanoi: ','You are welcomed by our guide at Noi Bai airport and \r\nthen be transferred to your hotel in the center of Hanoi city. Vietnam\'s\r\n capital is stylish and stately. Experience its thousand-year-old \r\nhistory, tree-lined boulevards and faded colonial architecture during \r\nour transfer to Hotel. \r\n			We will have a half day Hanoi city tour to visit \r\nthe most attractions of Hanoi: <br>\r\n  Hoan Kiem lake (the lake of the Restored Sword), Tran Quoc Pagoda and \r\nQuan Thanh Temple,&nbsp; Ho Chi Minh Mausoleum, Presidential palace ( open \r\nonly in the morning) , one pillar pagoda. Lunch at the Garden Vietnamese\r\n restaurant, <br>\r\n  Afternoon :&nbsp; more sightseeing : Ethnology Museum where is showing 54 \r\nethnic group in Vietnam...Rickshaw tour around Old Quarter. And Water \r\nPuppet show ','2010-07-23 00:29:08',1,'','',1,0,0,1,0,5,0),(8,'vi','Essential Vietnam 7 Days - 6 Nights!','essential-vietnam-7-days-6-nights','/uploads/The-Best-Image-of-Vietnam-7-days-tour_217151124_Hoan kiem lake.jpg','Arrive in Hanoi and transfer to hotel. The rest of the day is free to \r\nrelax or to begin exploring the city. In the evening watch a performance\r\n of the renowned water puppet theatre whose origins date back over a \r\nthousand years.','<span style=\"font-weight: bold;\">Day 1: Hanoi - Arrival<br></span>Arrive in Hanoi and transfer to hotel. The rest of the day is free to \r\nrelax or to begin exploring the city. In the evening watch a performance\r\n of the renowned water puppet theatre whose origins date back over a \r\nthousand years.<br><br><span style=\"font-weight: bold;\">Day 2: Hanoi - Sightseeing</span><br>A full day to explore Hanoiâ€™s illustrious history. In the morning, visit\r\n the Ho Chi Minh Complex containing his mausoleum, former residence and \r\nthe One Pillar Pagoda. Also visit the Temple of Literature. In the \r\nafternoon visit the Vietnam Museum of Fine Arts, Hoan Kiem Lake and Ngoc\r\n Son Temple. A one-hour tour of Hanoiâ€™s Old Quarter by cyclo is a \r\nrelaxing way to end the day. The tour includes a stop at an ancient \r\nVietnamese â€œlong houseâ€.<br><br><span style=\"font-weight: bold;\">Day 3: Hanoi - Danang - Hoi An - Sightseeing</span><br>Morning flight to the central coastal city of Danang. Upon arrival, \r\ntransfer to the ancient port town of Hoi An. Embark on a walking tour of\r\n this charming town, visiting ancient merchantsâ€™ houses, a Hokkien \r\ntemple, the 400-year-old Japanese Covered Bridge, and the colorful \r\nriverside market. Afternoon trip to one of Hoi Anâ€™s famous lantern \r\nworkshops. Guests learn how the lanterns are made and then have a chance\r\n to create their own.<br>','2010-07-23 00:34:40',1,'','',0,1,0,1,0,11,0),(9,'vi','Historical sites 13 Days','historical-sites-13-days','/uploads/mtc_stlouis-skyline-w_arch1.jpg','You are welcomed by our guide with flower\r\n at Noi Bai airport and then be transferred to your hotel in the center \r\nof Hanoi city. Vietnam\'s capital is stylish and stately. ','<span style=\"font-weight: bold;\">Day 1 : Arrival Day&amp; Hanoi City &amp; Rickshaw Tour and \r\nWater Puppet show<br></span>You are welcomed by our guide with flower\r\n at Noi Bai airport and then be transferred to your hotel in the center \r\nof Hanoi city. Vietnam\'s capital is stylish and stately. \r\n			<p class=\"byline\">Arrival Hanoi , check in Hotel Transfer to Garden \r\nBamboo Restaurant to have a welcome Lunch in open air garden. </p>\r\n			<p class=\"byline\">Take more than one hour easy to explorer 36streets \r\nin Old Quarter by Rickshaw. We will then witness a performance of the \r\nunique art of water puppetry and finish the day with a Vietnamese buffet\r\n at one of Hanoi\'s great local restaurants base on the West lake ï¿½ \r\nshore. <br></p><p class=\"byline\"><span style=\"font-weight: bold;\">Day 2 : Hanoi City Tour &amp; Victoria Express Train to Sapa <br></span></p><p class=\"byline\">. After breakfast, guide and car will meet you for a \r\nwhole day explore Hanoi Capital. Vietnam\'s capital is stylish and \r\nstately. Experience its thousand-year-old history, tree-lined boulevards\r\n and faded colonial architecture during our trip. \r\n			</p><p class=\"byline\">We will visit the most attractions of Hanoi: <br>\r\n  Hoan Kiem lake (the lake of the Restored Sword), Tran Quoc Pagoda and \r\nQuan Thanh Temple,&nbsp; Ho Chi Minh Mausoleum, Presidential palace ( open \r\nonly in the morning) , one pillar pagoda. Lunch at Vietnamese \r\nrestaurant, <br>\r\n  Afternoon :&nbsp; more sightseeing : Ethnology Museum where is showing 54 \r\nethnic group in Vietnam.... </p>\r\n			<p class=\"byline\">Evening : Have a dinner at Local restaurant then \r\ntransfer to Station for overnight with Express train to Sapa </p>\r\n			<p class=\"byline\">Train will leave at 21:00 PM </p>','2010-07-23 00:36:19',1,'','',0,1,0,1,0,11,0);
/*!40000 ALTER TABLE `lvn_tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_type`
--

DROP TABLE IF EXISTS `lvn_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_type` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(200) NOT NULL,
  `banner` varchar(250) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_type`
--

LOCK TABLES `lvn_type` WRITE;
/*!40000 ALTER TABLE `lvn_type` DISABLE KEYS */;
INSERT INTO `lvn_type` (`id`, `lang`, `title`, `banner`, `published`, `ordering`) VALUES (6,'vi','Xe du lá»‹ch','',1,0),(7,'vi','Xe SUV','',1,0),(8,'vi','Xe táº£i nháº¹','',1,0),(10,'vi','LazÄƒng','',1,0);
/*!40000 ALTER TABLE `lvn_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_user`
--

DROP TABLE IF EXISTS `lvn_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_user` (
  `id` int(11) NOT NULL auto_increment,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `usertype` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `usertype` (`usertype`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_user`
--

LOCK TABLES `lvn_user` WRITE;
/*!40000 ALTER TABLE `lvn_user` DISABLE KEYS */;
INSERT INTO `lvn_user` (`id`, `fullname`, `username`, `email`, `password`, `registerDate`, `lastvisitDate`, `usertype`) VALUES (1,'Nguyen Ngoc','admin','nguyenngoc@ttv.vn','c3284d0f94606de1fd2af172aba15bf3','2009-03-06 20:02:18','2010-08-30 16:25:48','Supper Administrator'),(6,'Nguyá»…n VÄƒn Ngá»c','nguyenngoc','nguyenngoc212005@gmail.com','c3284d0f94606de1fd2af172aba15bf3','2009-09-07 13:00:47','2009-09-26 23:13:36','Manager'),(11,'Nguyá»…n Quá»‘c Trinh','quoctrinh','trinhhp110@gmail.com','c3284d0f94606de1fd2af172aba15bf3','2009-09-07 13:01:21','0000-00-00 00:00:00','Manager');
/*!40000 ALTER TABLE `lvn_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_user_cat`
--

DROP TABLE IF EXISTS `lvn_user_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_user_cat` (
  `uid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `ac_add` tinyint(1) NOT NULL,
  `ac_edit` tinyint(1) NOT NULL,
  `ac_del` tinyint(1) NOT NULL,
  `ac_addcon` tinyint(1) NOT NULL,
  `ac_delcon` tinyint(1) NOT NULL,
  `ac_editcon` tinyint(1) NOT NULL,
  KEY `uid` (`uid`,`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_user_cat`
--

LOCK TABLES `lvn_user_cat` WRITE;
/*!40000 ALTER TABLE `lvn_user_cat` DISABLE KEYS */;
INSERT INTO `lvn_user_cat` (`uid`, `cid`, `ac_add`, `ac_edit`, `ac_del`, `ac_addcon`, `ac_delcon`, `ac_editcon`) VALUES (1,1,1,0,0,0,1,0),(1,2,0,1,1,0,0,1);
/*!40000 ALTER TABLE `lvn_user_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvn_weblink`
--

DROP TABLE IF EXISTS `lvn_weblink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvn_weblink` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `clickurl` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvn_weblink`
--

LOCK TABLES `lvn_weblink` WRITE;
/*!40000 ALTER TABLE `lvn_weblink` DISABLE KEYS */;
INSERT INTO `lvn_weblink` (`id`, `lang`, `title`, `clickurl`, `published`, `ordering`) VALUES (1,'vi','CÃ´ng ty CP VNUNI','http://vnuni.com.vn',1,2),(2,'vi','TrÃ­ Tuá»‡ Viá»‡t','http://ttv.vn',1,1),(4,'vi','CÃ´ng ty Web Viá»‡t','http://vinaweb.vn',1,0);
/*!40000 ALTER TABLE `lvn_weblink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `addCategory` int(11) NOT NULL default '0',
  `editCategory` int(11) NOT NULL default '0',
  `delCategory` int(11) NOT NULL default '0',
  `addContent` int(11) NOT NULL default '0',
  `editContent` int(11) NOT NULL default '0',
  `delContent` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `title` varchar(250) NOT NULL,
  `images` varchar(250) NOT NULL,
  `path` varchar(250) NOT NULL,
  `hits` int(11) NOT NULL default '1',
  `code` varchar(5) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `home` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` (`id`, `lang`, `title`, `images`, `path`, `hits`, `code`, `published`, `ordering`, `home`) VALUES (1,'vi','Äá»“ RÃª MÃ­ - Tá»‘p Ca','','/bvl/uploads/media/19h.flv',6,'',1,2,0),(4,'vi','Äá»“ RÃª MÃ­ 9 - 6 bÃ© vÃ²ng 3','','/bvl/uploads/media/19h.flv',3,'',1,3,0),(5,'vi','Táº¡m biá»‡t - 6 bÃ© vÃ²ng 3','','/bvl/uploads/media/19h.flv',1,'',1,4,0),(6,'vi','Thá»‹ Máº§u lÃªn chÃ¹a - HoÃ ii BÄƒng & Tháº£o My & Tá»± Long','','/bvl/uploads/media/chuyenvanphong.flv',1,'',1,1,1),(7,'vi','TÃ´i thÃ­ch - Gia NhÆ°','','/bvl/uploads/media/19h.flv',1,'',1,5,0),(8,'vi','HÃ¡t vá»›i chÃº ve con - Báº£o Ngá»c','','/bvl/uploads/media/19h.flv',1,'',1,6,0);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tweb_hoidap`
--

DROP TABLE IF EXISTS `tweb_hoidap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tweb_hoidap` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(2) NOT NULL,
  `hoi` varchar(250) NOT NULL,
  `dap` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweb_hoidap`
--

LOCK TABLES `tweb_hoidap` WRITE;
/*!40000 ALTER TABLE `tweb_hoidap` DISABLE KEYS */;
INSERT INTO `tweb_hoidap` (`id`, `lang`, `hoi`, `dap`, `published`, `ordering`) VALUES (2,'vi','TÃ´i sáº½ Ä‘Æ°á»£c báº£o hÃ nh vÃ  há»— trá»£ ká»¹ thuáº­t trong thá»i gian bao lÃ¢u ?','Vertu Ascent Ti \"káº¿t thÃ¢n\" vá»›i siÃªu xe vá» cháº¥t liá»‡u, tÃ­nh nÄƒng váº­n hÃ nh\r\nvÃ  thiáº¿t káº¿, trong khi phiÃªn báº£n Modiado Grand 350 Pioneer lÃ  Ä‘iá»‡n\r\nthoáº¡i cao cáº¥p Ä‘áº§u tiÃªn sá»­ dá»¥ng cháº¥t liá»‡u thiÃªn tháº¡ch Gibeon.Vertu Ascent Ti \"káº¿t thÃ¢n\" vá»›i siÃªu xe vá» cháº¥t liá»‡u, tÃ­nh nÄƒng váº­n hÃ nh\r\nvÃ  thiáº¿t káº¿, trong khi phiÃªn báº£n Modiado Grand 350 Pioneer lÃ  Ä‘iá»‡n\r\nthoáº¡i cao cáº¥p Ä‘áº§u tiÃªn sá»­ dá»¥ng cháº¥t liá»‡u thiÃªn tháº¡ch Gibeon.',1,1),(3,'vi','Äá»‹a Ä‘iá»ƒm báº£o hÃ nh dá»‹ch vá»¥ á»Ÿ Ä‘Ã¢u?','Robert Pattinson vÃ  Kristen Stewart thuÃª toÃ n bá»™ táº§ng cao nháº¥t cá»§a\r\nkhÃ¡ch sáº¡n Sheraton Wall Centre á»Ÿ Vancouver (Canada), khi quay táº­p phim\r\nâ€œEclipseâ€ (Nháº­t thá»±c).Robert Pattinson vÃ  Kristen Stewart thuÃª toÃ n bá»™ táº§ng cao nháº¥t cá»§a\r\nkhÃ¡ch sáº¡n Sheraton Wall Centre á»Ÿ Vancouver (Canada), khi quay táº­p phim\r\nâ€œEclipseâ€ (Nháº­t thá»±c).',1,3),(4,'vi','ThÃ´ng tin cáº§n thiáº¿t khi báº£o hÃ nh?','TÃªn cÃºng cÆ¡m cá»§a nÃ³ lÃ  VÃµ Thá»‹ Dung. Song tá»« ngÃ y nÃ³ táº¥p tá»ƒnh láº­p nick\r\nchat, tháº¥y nick cá»§a nÃ³ lÃ  Vodung, thÃ¬ bá»n cÃ¹ng lá»›p á»“ ra thÃ­ch thÃº:\r\nâ€œKhÃ´ng cÃ²n cÃ¡i tÃªn nÃ o thÃ­ch há»£p hÆ¡n!â€. NÃ³ cÆ°á»i há»nh há»‡ch: â€œVÃ´ dá»¥ng hay\r\nvÃ´ dáº¡ng, tÃªn nÃ o cÅ©ng Ä‘Æ°á»£câ€.TÃªn cÃºng cÆ¡m cá»§a nÃ³ lÃ  VÃµ Thá»‹ Dung. Song tá»« ngÃ y nÃ³ táº¥p tá»ƒnh láº­p nick\r\nchat, tháº¥y nick cá»§a nÃ³ lÃ  Vodung, thÃ¬ bá»n cÃ¹ng lá»›p á»“ ra thÃ­ch thÃº:\r\nâ€œKhÃ´ng cÃ²n cÃ¡i tÃªn nÃ o thÃ­ch há»£p hÆ¡n!â€. NÃ³ cÆ°á»i há»nh há»‡ch: â€œVÃ´ dá»¥ng hay\r\nvÃ´ dáº¡ng, tÃªn nÃ o cÅ©ng Ä‘Æ°á»£câ€.',1,2),(5,'vi','Khi PhÃ¡t sinh lá»—i tÃ´i cÃ³ Ä‘Æ°á»£c Ä‘á»•i báº£n khÃ¡c hay khÃ´ng?','Bá»‡nh nhÃ¢n lÃ  ná»¯, 60 tuá»•i, á»Ÿ SÆ¡n Äá»™ng, tá»‰nh Báº¯c Giang, cÃ³ tiá»n sá»­ Ä‘Ã¡i thÃ¡o Ä‘Æ°á»ng, huyáº¿t Ã¡p cao, Ä‘Ã£ suy tháº­n.Bá»‡nh nhÃ¢n lÃ  ná»¯, 60 tuá»•i, á»Ÿ SÆ¡n Äá»™ng, tá»‰nh Báº¯c Giang, cÃ³ tiá»n sá»­ Ä‘Ã¡i thÃ¡o Ä‘Æ°á»ng, huyáº¿t Ã¡p cao, Ä‘Ã£ suy tháº­n.\r\n														Bá»‡nh nhÃ¢n lÃ  ná»¯, 60 tuá»•i, á»Ÿ SÆ¡n Äá»™ng, tá»‰nh Báº¯c Giang, cÃ³ tiá»n sá»­ Ä‘Ã¡i thÃ¡o Ä‘Æ°á»ng, huyáº¿t Ã¡p cao, Ä‘Ã£ suy tháº­n.\r\n														',1,4),(6,'vi','Pháº§n má»m Ä‘Æ°á»£c cÃ i Ä‘áº·t tá»‘i Ä‘a bao nhiÃªu mÃ¡y vÃ  cÃ³ Ä‘Æ°á»£c chia sáº» hay khÃ´ng?','Hiá»‡n nay chÃºng tÃ´i Ä‘Ã£ thiáº¿t káº¿ trÃªn 300 website doanh nghiá»‡p, trong Ä‘Ã³\r\ncÃ³ nhá»¯ng website cÃ³ Ä‘á»™ khÃ³ cao, Ä‘Ã²i há»i kháº¯t khe cÃ¡c yÃªu cáº§u ká»¹ thuáº­t\r\nnhÆ°:Hiá»‡n nay chÃºng tÃ´i Ä‘Ã£ thiáº¿t káº¿ trÃªn 300 website doanh nghiá»‡p, trong Ä‘Ã³\r\ncÃ³ nhá»¯ng website cÃ³ Ä‘á»™ khÃ³ cao, Ä‘Ã²i há»i kháº¯t khe cÃ¡c yÃªu cáº§u ká»¹ thuáº­t\r\nnhÆ°:Hiá»‡n nay chÃºng tÃ´i Ä‘Ã£ thiáº¿t káº¿ trÃªn 300 website doanh nghiá»‡p, trong Ä‘Ã³\r\ncÃ³ nhá»¯ng website cÃ³ Ä‘á»™ khÃ³ cao, Ä‘Ã²i há»i kháº¯t khe cÃ¡c yÃªu cáº§u ká»¹ thuáº­t\r\nnhÆ°:',1,5),(7,'vi','Pháº§n má»m Ä‘Æ°á»£c sá»­ dá»¥ng trong bao nhiÃªu nÄƒm? CÃ³ Ä‘Æ°á»£c update khÃ´ng?','NhÃ¢n dá»‹p chÃ o Ä‘Ã³n khÃ¡ch hÃ ng thá»© 400. TrÃ­ Tuá»‡ Viá»‡t tá»• khuyáº¿n máº¡i cá»±c ká»³ háº¥p dáº«n : \r\n\r\n- Táº·ng 01 tÃªn miá»n quá»‘c táº¿\r\n\r\n- Quáº£ng cÃ¡o 01 tuáº§n trÃªn bÃ¡o www.baokinhte.vn\r\n\r\n- ÄÄƒng tin VIP 01 thÃ¡ng trÃªn website rao váº·t hÃ ng Ä‘áº§u www.chutin.vn\r\n\r\n\r\n\r\n\r\n\r\nTham kháº£o danh sÃ¡ch khÃ¡ch hÃ ng cá»§a chÃºng tÃ´iNhÃ¢n dá»‹p chÃ o Ä‘Ã³n khÃ¡ch hÃ ng thá»© 400. TrÃ­ Tuá»‡ Viá»‡t tá»• khuyáº¿n máº¡i cá»±c ká»³ háº¥p dáº«n : \r\n\r\n- Táº·ng 01 tÃªn miá»n quá»‘c táº¿\r\n\r\n- Quáº£ng cÃ¡o 01 tuáº§n trÃªn bÃ¡o www.baokinhte.vn\r\n\r\n- ÄÄƒng tin VIP 01 thÃ¡ng trÃªn website rao váº·t hÃ ng Ä‘áº§u www.chutin.vn\r\n\r\n\r\n\r\n\r\n\r\nTham kháº£o danh sÃ¡ch khÃ¡ch hÃ ng cá»§a chÃºng tÃ´i',1,6),(8,'vi','NgÆ°á»i dÃ¹ng cÃ³ thá»ƒ tá»± chá»‰nh sá»­a bÃ¡o cÃ¡o Ä‘Æ°á»£c khÃ´ng','Sau khi nháº­n Ä‘Æ°á»£c kiáº¿n nghá»‹ cá»§a ngÆ°á»i dÃ¢n cÃ¡ch Ä‘Ã¢y má»™t thÃ¡ng, cÃ´ng an\r\nphÆ°á»ng Kim Giang Ä‘Ã£ tiáº¿n hÃ nh Ä‘iá»u tra, káº¿t há»£p vá»›i Quáº£n lÃ½ thá»‹ trÆ°á»ng\r\nvÃ  Chi cá»¥c TiÃªu chuáº©n vÃ  Ä‘o lÆ°á»ng cháº¥t lÆ°á»£ng TP HÃ  Ná»™i tiáº¿n hÃ nh kiá»ƒm\r\ntra Ä‘á»™t xuáº¥t cá»­a hÃ ng xÄƒng dáº§u Kim Giang cá»§a CÃ´ng ty XÄƒng dáº§u cháº¥t Ä‘á»‘t\r\nHÃ  Ná»™i. ÄÃ¢y cÅ©ng chÃ­nh lÃ  Ä‘Æ¡n vá»‹ quáº£n lÃ½ cÃ¢y xÄƒng Tráº§n KhÃ¡t ChÃ¢n, nÆ¡i\r\ntá»«ng bá»‹ khiáº¿u náº¡i Ä‘ong thiáº¿u vÃ  cÃ³ sá»± nháº£y sá»‘ ká»³ láº¡.',1,0);
/*!40000 ALTER TABLE `tweb_hoidap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'keutour1_sonkeu'
--
DELIMITER ;;
DELIMITER ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-09-15  9:24:50
