-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: getrooms
-- ------------------------------------------------------
-- Server version	5.5.49

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
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_login` (
  `aid` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES ('admin@gmail.com','admin',NULL);
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `checkindate` date DEFAULT NULL,
  `checkoutdate` date DEFAULT NULL,
  `noofrooms` int(11) DEFAULT NULL,
  `noofguests` int(11) DEFAULT NULL,
  `breakfastincluded` varchar(45) DEFAULT NULL,
  `totalcharges` int(11) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `fkrid_idx` (`rid`),
  KEY `fkhid_idx` (`hid`),
  KEY `fkcid_idx` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `owner_name` varchar(45) DEFAULT NULL,
  `facilities` varchar(45) DEFAULT NULL,
  `owner_photo` blob,
  `password` varchar(45) DEFAULT NULL,
  `pricestartingfrom` int(11) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hid`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'hghjh','Andhra Pradesh Anantapur hgfj','3556667777','abc@gmail.com','ghghg','on on ','ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿş\0<CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 90\n\0ÿ\Û\0C\0		\n\n\r\n\n	\rÿ\Û\0CÿÀ\0\0d\0d\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ùş\"öı²?\è/ğ÷ÿ\0	ˆÿ\0øº?\â/o\Û#ş‚ÿ\0ğ˜ÿ\0‹¯\Ë\ê(õş\"õı²?\è/ğ÷ÿ\0	ˆÿ\0øº?\â/_\Û#ş‚ÿ\0ğ˜ÿ\0‹¯\Ë\ê(õş\"õı²?\è/ğ÷ÿ\0	ˆÿ\0øº?\â/_\Û#ş‚ÿ\0ğ˜ÿ\0‹¯\Ïÿ\0Ù‹öTø‰ûfü^°ğ\Â\ï\êş3ñ^¤7Ec`ƒ÷Q†Ui¦‘Š\Ç*YCK+*.\á–¯\Ü/Ø‡ş¢·“J²\Õÿ\0hoŠ7Kw*——ÃDUƒ¡Pú…\Ê6ó\Ü\0A\Û+p\Ôñ\ïüE\íûd\Ğ_\á\ïşÿ\0ñt\Ä^ß¶Gışÿ\0\á1ÿ\0_¼ÿ\0?\à\İ\ï\Ø\×öwH\ßKø\áM~\íc	%ÇŠL\Ş!3œ`¹Šñ\ä…I\ëòF£=\0¯\ËOø;ö	ø™ğÿ\0LğwŠ~ø#\Â\Zg\ì\Ñ\á›8â¸°ğ‡mlÃº«<Š\×7\ÂÃ˜%G#”%J2\Æò#\\\0|\Çÿ\0{~\Ùôø{ÿ\0„\Äü]ñ·\í‘ÿ\0A‡¿øLGÿ\0\Å\×\åõúƒÿ\0{~\Ùôø{ÿ\0„\Äü]ñ¯\í‘ÿ\0A‡¿øLGÿ\0\Å\×\åõú†¿ğw§\íGü…şÿ\0\á1ÿ\0E~_\'J(´QE\0kB\Ğ\ï<O®Y\éº}¼·—ú„\émmK¹\ç•\Ø*\"\ä±\0}j­{WügLZÿ\0‚Šü³”f+¿ˆş…Çª¶§n\èhú\äÿ\0‚?Á)¼ÿ\0ı”ô\ß\èVV7~6\Ö!†\ï\Æ~$U\İq¯_…9\È-a.\éXT³e–W«¨¢€\n«­h¶~$\Ñ\îô\íB\Ö\Úÿ\0O¿…í®­nbYa¹‰Ô«\Æ\èÀ†VRA`‚A«TPò\çÿ\0@ÿ\0Á<3ÿ\0\çñ^…ñ\áM»\é¿|ª>—}¡³†Ãº«G$\è–\ä\ßfš8¦eB”\Ğ8İµ\ãDü¯\ê»ş\nµ\ãşû3º+45\Ò^2¶\Ü.G\à\Ä~5ü¨\ĞEP“¥\'J(´QE\0\î\ßğK…\ßÿ\04ıG¯\Äÿ\0\rüª\ÛW„\×\è·ü\Z\ÇğÀ?ÿ\0\à°^²ñİ‚jRh¶^ ğ\Ô-rğªk6MÍ¼¸R†5Y—1‚A‚ısQE\0QEùkÿ\0ÿ\0\Ênÿ\0\ìr\Òö½)µıœÿ\0Á|şø?\ã\çü7ã·Œ¡\íü-\á{\ïiR\Ã9‰\íõ;+y&´lô*e\nŒ¤\Ë#ş1¨\0¢Š(\ÉÒŠ¥\0\Ú(¢€\n÷ÿ\0ø%w\íe\ì7ÿ\0øAñN\ê\âKM+\Â\Ş\"€\êò\Ç•\ÓLŸ6\×\ÛT}\æû,\Ó\àw8¯\0¢€?¿¨fK˜RH\İdE¬§!\èA\î)\Õñüö\à\Ò?n¯ø%\Ï\Ã\rf\×P[¯x?I·ğ—‰\àw\İqo¨XÄ™$\à¯‰b¸db|g*À}@Q@˜ÿ\0ğv\í±cû.Á,õE\å\Ï\âoWi\á«L»\ZD+q{s·:¬h\ã#\rw\äòw_ª_ğvÿ\0\í\çaûXÿ\0ÁGmü\á\İE¯ü5ğ>\Â]b¬\Z¬\Ë.ıD§û]µ»‚2$´~£ù[@Q@N”P( \ÑE\0QEû£ÿ\0=èº¬ÿ\0~?\ê0\İ\Ş&‰k \é6\×v«!ó\\Iqr\ĞH\ëœDŠ\à)# K&>ñ\ÏôW_ÿ\0Á¿\à”¾ÿ\0‚^~\Ç:%½“yiñ/Çš>›¨xöö\î\å\ä–{ôŠI>\Ì>\\q\Û=\Ìñ&\ÅR\Ã\ær\ÌI¯µ¨\0¢Š(øñ\'ˆ¯¼a\â+ı[S¹–÷R\Õ.d»»¸•·<ò\È\Å\İ\Ø÷%‰\'\ëT«\îÿ\0ø8«ş	±¡Á2ÿ\0\à¢ú—†|gqağó\Æ\ZU¿‰¼9k$8\Óâ•¤†{Q+ä¸\âJ†%–)!Xü\Íğ…\0QE\09:QBt¢€E}_ÿ\0\İÿ\0‚,ü}ÿ\0‚£\ëAşøP\ÙxFŒ7/\×\ì´;F\0’‹.\Öy\ä\0c·IK¡pªwWô\'ÿ\0\çÿ\0ƒU?g?Ø¶\Ş\ÓYñÕŠürñ\Ì_3^ø’\ÍFl\ß0ıÆ›—ˆŒ“pÓ\ÈJgü\éş\ÃğH?\Ú#ş\n/u¿¾kZŸ‡\å”\Å\'‰/”iú;\\$Ÿ\ésmFBr\Ñ\Âd”ˆkö\ãş	­ÿ\0tø?\à<5ãŸ\Ş:>>ñƒw¥†´+#@[ˆœ°I\æ™|\ëÈ²¶„·®\Ö¤ƒûScc™e\rµ´1[\Û[¢\ÅQ D‰`*À\0\0\0*Z\0(¢Š\0(¢Š\0ù+ş\nÁÿ\0køSÿ\0zø \éŸ&\×ôM{\Â\rrú½¢\Ü,w6>z –7Eh¦…\Ú(Y•”8òşGsüıº¿\à\Ñ?\ÚGö`¶º\Ö>O£ürğÕ¾\ç#G_\ìır$T\Ü]\ì&r\'\åT·šiÿ\0\0¯\ê\Ñ@À×<¯|,ñ£\á\ßèš¿‡<A¤Lm\ï´\ÍR\ÎK;\Ë)GT–)º0ô`\rdW÷/ûaÿ\0Á=~~\ß~M\â\ïÃ¯x\Ò#1Z\İ\İBb\Ôl°b-\î\â+q$Dr(ls‘_ˆ_ğQ¿ø3\Ä>û\Ä³/‹ÏŠ-\áñU\ÄVÚˆ\ã\î[_€JK„a\n«Ì®\ÔøN(®›\âÿ\0Á¯~\Ï_µø\çÃºÇ„üU¡L!¿ÒµKV¶ºµb¡\×r0Œ®¬8ee`H ’€?»ÿ\0x#Føi\àı3\Ã\Ş\Òt\íA\Ñ-£²\Óô\í>\Ù-­l`B¤QF€*\"¨\0*€\0ªx¢Š\0(¢Š\04QE\0QE\0QE\0QE\0y\×\Å\Ï\Ù\á/\í\âH5Ÿ|.øu\ãm^\Ú\Ùl¡¾\×ü7g©\\\Å»ºÄ²M0@\Ò;\0»dš(¢€?ÿ\Ù','1',2,'Anantapur');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_images`
--

DROP TABLE IF EXISTS `hotel_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_images` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) DEFAULT NULL,
  `image` longblob,
  PRIMARY KEY (`sno`),
  KEY `hid_idx` (`hid`),
  KEY `hid_id1` (`hid`),
  CONSTRAINT `fkhid` FOREIGN KEY (`hid`) REFERENCES `hotel` (`hid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_images`
--

LOCK TABLES `hotel_images` WRITE;
/*!40000 ALTER TABLE `hotel_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `totalrooms` int(11) DEFAULT NULL,
  `availablerooms` int(11) DEFAULT NULL,
  `facilities` varchar(200) DEFAULT NULL,
  `priceperroomperday` int(11) DEFAULT NULL,
  `Breakfastprice` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `hid_idx` (`hid`),
  CONSTRAINT `hid` FOREIGN KEY (`hid`) REFERENCES `hotel` (`hid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,1,'Luxe Room',50,45,'on ',5000,200),(2,1,'Luxe Room',50,45,'on ',5000,200),(5,1,'Family Room',50,45,'on ',1000,2000);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_images`
--

DROP TABLE IF EXISTS `room_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_images` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `image` longblob,
  PRIMARY KEY (`sno`),
  KEY `fkrid_idx` (`rid`),
  CONSTRAINT `rid` FOREIGN KEY (`rid`) REFERENCES `room` (`rid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_images`
--

LOCK TABLES `room_images` WRITE;
/*!40000 ALTER TABLE `room_images` DISABLE KEYS */;
INSERT INTO `room_images` VALUES (1,5,'ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿ\á\ÚExif\0\0MM\0*\0\0\0\02\0\0\0\0\0\0\0J;\0\0\0\0\0\0\0^GF\0\0\0\0\0\0\0GI\0\0\0\0\0?\0\0‡i\0\0\0\0\0\0\0f\0\0\0\Æ2009:03:12 13:48:35\0Corbis\0\0\0\0\0\0\0\0\0\0œ\0\0\0\0\0\0\0°’‘\0\0\0\082\0\0’’\0\0\0\082\0\0\0\0\0\02008:02:18 05:07:31\02008:02:18 05:07:31\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0\0\0\0®\0\0\0\0\0\0\0`\0\0\0\0\0\0`\0\0\0ÿ\Øÿ\Û\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿ\Û\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0\0d\0d!\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0\èÒ¦N>¾õ\ì$M)À\ë@\ÅO¥Á\0PQ\î\â£\ä\æ©Wc¼¬qQÈy‚¹H™Xö¨d„\ZdòÜ®m†zQE\É\ä.¤^µ0@£š“U\Û\È,,§¼¸b–ğ!’G\n[jø\×-¤ü@Óµµ¸{k+\ÄH\n‡’v‰n$&Nü’q÷UXú\\õ±0¥¾¦Ô°Ò«±\Ô\Ø&¡#‰®\Äp\Æ~\ì\n2yõ\'\ï÷\ÉH\Øb§°µò\Ø90\İ>|˜\ä\ã\Ï©Œôlg>a\Ü\0A7;\'>¢”ÚB\×\Ùd¹•‚\ç\Ç¥tuŒ˜\Ân\ç\ëŠ\Ñİ­Œlõ8¿j¾!±³´µÒ£“í·²ykö[C!\ÜJ£—\'?XÁÀ$t5»ô\Ñk±h÷v\íjfG’D.Ì¤RØƒ:7+Î\\K\Ä\Æ.\Ê:\ßô;]*>\ÆRë¥¿SI£8\éQ	¯N\ç(\Ã	\Ï\"Šz+›µX\ìW8¨¹j7ÿ\0\ÂqøŸ\Ãw\Ú|·\Ò\Ù\Ç6GAmªCw\í\Ç>\Õ\Ãø\áÕ¦¯\ß_=Á½{|%«<;y\Î\\¯<\à\09\ã-\ÇC^;”!\ä“\Önÿ\0r_\äz1ƒxf\×\ÙıY\è‚!œb©kZ—ˆt©´½B=\ĞK\È`>hœg¾Œ2~ x$^IJ-1Vw>Õµ]o\Â%Š\ÜK5¾¥¦‰œ¹e”p{“¹`\àğA\nú\Ãú­·‰|?i«\Ú.Ø®-rcpp\È~„{ŒõÉ‡¨ùœMªS\\©—üK#øc\Ã\Û(\ì¦\İ\ái±ıÇ‘QÁö\n\ì~£5\ä:G‰n5ÿ\0Œ:{R­Â¢»|‡\'\'ğ\Î+\ç\ÏVsw¼´òVV4ª•£\ØõrZ¥ü5\ì3”®ó\r\Ü)¢˜®k\"G÷@æ­¤\nÀb±n\Æ\É£W\ÅK¥·1}‡íŒ½›k”\Ç\æ\È\à\"¤l—\ÅB†\ã\0tô¯µ|t+[Xş§\\ejN=\Ëif…³šw\Ù\ãVÀ¯kœ–<«\ãF“¦\\i	|\Õa\Äe@\ËII#ş\Ç û·]¼Yø/\á›\Ë6\åRñX\Ûz€ô\Z\æK–NK¯ù\ZI\İ(ö=\âÂ¯µ\è\n‚dÓ®şCjù«Á3Ie\ã\ï\r]GŸ:Û³úh<³ú9®|-\ï?‘uZ¼~g\Ò~B…$â©µº\î$ŒŠõS¹\Ïa‘\à\n(¸ùP©p“µm.( qJÀ™\Î\éZ¼:Ä½mC†\Z~™¨#¤\Ş\ã\ß(>„V\äq›¶kq#D%?1OÌ™\Ü=\Æs\\Q‹S›6Ñ¤qşø¥ii\n\ëq>•t~C<ŠE¬88“¢\ç!°÷J\ìe\Õmã¾‚\ÄÜ¡¿¸ÈŠ§’H9ÿ\09\Æi\ÆıLùu<\â^»-\æ½5ºHZ\Î\Ğ\Ùû\Ø\0\é\Û?lü&\Õå±½0\ÅV\æ\ÖR¸8Ã¨üªR¼Z&N\Í?3\Ö<I,ºÆ‘u\0¼ö²C…\îY\nğ?\Zù–\ÇW7¶x$\ÚM\rÂ¿qş•‚¦\åæ‹•\ä×‘õ½\Ò,mò°+œqĞŠ‚UğıH®ˆ»«‰•ŸOÄ‡?\ît¶\n2[š™î ´\î.	[h\É+÷QFXş@\Õ9h%\ÊşE.§¯\êZˆh®\'‘C#w1i>Ÿy:ô¸/a´ó®.¦H …L²J\çT’~ƒ5Ì¯\È\Ùz\\ò=K\â\Õ\åó.\ê[+{‰K,§‰ŠùA\ÚN\Ğ:`NN@z£}mªj\Z´’–\é,6\ïõ’?\ÊGà»‰=;\ÒIEYv\İ\ßC\Ö.üùİ‰\Ü\Ì\ç\'Ú¦ƒQš\Ò[cT\Èd>\Ä\Ó<{š\Ò.Í“(^(÷Ÿ\nx\Û\Äz@&	u\Ä]Ñ»ş\ÉÁÁú¢¼Å©oŒ5Xm£Â—R(U\è>c=³šu-cHj}#\á\ï\íO\èwm)vk(Õ˜¬ƒc\ÍMm\ÙÀeb7=ê”­Á­K\ÇI\ÇI\âh¬½°ùK‘ip\áA8\ï\Ís¾4³6ş¸\Ú0ó\ŞK\rœQ“\ŞlŠŒ?\ï’Õ—µ{\Ê`=”:.µwoo\ÌQ´P\î\Æ72\Û\Ã\É÷ÁSø×|W\×%†\Î\×G˜¶ófÕ•HÚ¾ùn~ª+Kş\î\ä¥\ïX\î¾|,µ\Ñl#\Õ5¨!ºÕ¤\Å4a\Ò\ÔuÚ \äõn\İ-“ñ\ÎHme\Òm\à‚(ÛŠ \\¦p£Ë†Ç¦ãµ”]\åq\ÍZ6<rY\ÎO\"¶,4—½\Ñ/µ\å#³X¹Ûw8CœsÁeé½*Ûµ\ØtD\ÚV£\á=z9\Ğ–,oLñ$l\Æze ƒô=@¬\ÍZ\áoµ«\ë\Ä$¬ó\É\"’0pX‘V\İ\â	YŸH|-S\áœVî€µ…Ô¶ÿ\0>hÿ\0Ñ†½\íHp#@ zV0´eIu,¬2m4Tó ³7UqóV?ˆˆ¹Õ¼5\0\äi\ß\Ùc‚V\Ïıõ°~5-kpM®·™oõ™QÁ¨­\Û>Dq‘ù\Âk™—D±\Ôu\İ7Z¹\Ş\Ó\Ø«\\™\ÎA#\È\'#¸­WÁbv•\ÏZ\Ñ*?¾Y¿ñ\â?¥x¿Ç‹€<Gdƒ’¶*x\í™$ÿ\0\nP^ğªlx{\È\Äw÷¯{øC\á{=cÂ·¶—ñy–×–Î³¯B¸\nAõ\Ä!õ«)\îŒ‰\Ş‡I+F–F\Óm\âX\ŞLš ‹\Ø\0d|\Çóõ¯&\Î\é@\ê\Z¦KS\Üÿ\0g¶KŸ\Ø%JÁ2ú©üNWò¯z#ki&h¶\æcŒ\ÑJ\Â\æEHÂª\à)ú\Ödñ³x»Kb3\Z\Ø\Şu\ì\ÆK`?Mßk+’{U½†\r˜™f¼–[¶Û”–b¿˜\Ç\æ}kŠûL\Ïr––\È\ÒO#ª\"!å˜\0ÿ\0õ\Õ\í$õ=¦\Î\×\ìz}½±m\æ(\Õ‡ñ9?‰¯>7\È\Òø\ŞX÷ü‘\ÛD\0ô\ã?\Ôşu4÷M&Eg=«\ë„öağ-›\Û,¡wú(Ì·\çVşi¾&X;-¬¨Liû‰H\Û\ÎPı3‘ùz\×\Î×š4:‹\ím7±\\È…\nŸ»¶\Ò?¸{\â¦\î\Î\ë\à4Í§|I\Ôtû“\å\Ë-”±\ì=\äGBG\àşUô{IQ%\ï2\ï¡\îzQNÂ¹\æñx£UQş½±Jy×¯\æš)\ZUÜ€…!@8\Èı\ä)s1£”ñ­ †\Ş4}\ÌbV\'ÜŒ“ú\Õo¼««%\Ú1\ß\Î°py\0şfµ‘\Ï{\ÎÇ Q\ËfpwuÊ+Å¾%¼—+Õ®I,\È-‘\ÆK[GŸ\ÕZ¦\r¶mQ+6‘w:Õ¥¼Û¼©gH\ä\Úy\ÚX|f¾–\Ó5{»]>\İbF‡t‚=£y,ô*«ÚŸ\Ì-\ïü‰®u»««9m.ŒsÁ0+\":}\à~˜#\ê9\å>%\Ñ!‚ö\İ!û#ˆ\\œ1Œœ\à\Ã)§=1b\Z²jûª\è\æü3©Í¦üR³\Ô!ok\×@Çw\îCù†?{¬¾0Ô²yˆ}ñúÓ“´›*?\n ÿ\0„\ÇR^7!ü(©\ç\r§Ò¤9R#*”³`g¶Oa\ïP4qw	q«ø”\èútñLmms,€d3 T{’@ô³ü8;şš9´q{,\'8\\Ã¯\ë\Ç\á[J[£(\Â\ÒLè£%#a<òAø^u\ã#.©pÿ\0\ëf½40\Ü~¹aÿ\0}\nTš\æ.¦±8\İ\Âiu\í=r#M<n„‚2¹\È#=Gò¯y3Â¥F@\È\È\íşqD\íÊ‡\ï3.\âù¥Y5‹h\Él*\íPTõ\Ç,s\Ås\Ş4¼µ¹Ñ’x¤µ³Ÿ5T\ã÷L@©a\Ôrq\ÆFIÙ„½\åkv,\å†\îkøœ˜,\î\ãó œ‡\È\0c¹#\çºú…©F&Í·v>j\æõ~\ê(¾³i»¹”­g\ë‘Ef4’Bq\Ç¸©Q”\\ğOqş…#\Ïl/¬¼%%\ä7Zs\Ç-\Ü[\ZE»IH\Æì€¤)\0\ç\'–\É\0Úø¢\é/euo5\ËK3L¦\×\r÷‚Œ\à™\à¸ c–®\Ç{#¬—\ÅğM$\Ğ%¦7H\ÊBA\È\Ï9?pz¦³cªø¥~\Ór\"´KÆ•\Ë\ÄÎŒ¥b\\mÀn|³:t\Ïwf™*J[k¾\"ˆx\ËL½\à\Ëin#²\ß\Ë(\Û*ª@şøñš\é#ñfå‡·†i¤Á\0´\' \ã©\0Œ\àğ\Ù\ì6Ò´¥ ;E]‘\Ï\ã…S‘j‰\É(Ë½ö\Ç*p¯^:s\Æ^¹\ã§\Ëa%À‚M¸\0¬Yú\äŒò\é\×+\Ø>Y	I33C\Õ%±²º]·!$•¥qlø\0œup\İ01ø÷\èo>»\Ñ}š\æ\Ş\è\Æo–·=AÁ\äõƒŠ¥M½È”õĞ•-´» ^\Ş\\0ùC\Ä\ã	~¾ôQ\ìüÁT}\É†^zÿ\0ˆÿ\0OVı\Øb;s\ÓÊ²4D\É<‰”Ge\0ãƒ\Ô\Ò\ÌH›<n8\ï\ï\íRP’A‰û\Ø!—<Ÿ25~şâ•‘!TƒÀP]‚Hgö]€}\Â\Æ\Ô|¤ñz\ã®3Nv\Ê1öhNpNc^x=±ŠjO¸¬»X\Ô&ğ0zp1\ês¿şªƒhcP…\É\'h\Ç$uú\Ñv\rXFWò]¤v#;w1;~„ò3š…§‘%†f\Ê\ÌpÇ¨\Û\Èôû\ÕB\"\ÔQ@ÿ\Ùÿ\ì\0Ducky\0\0\0\0\0d\0\0ÿ\ánhttp://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\r\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 4.1-c036 46.276720, Mon Feb 19 2007 22:40:08        \">\r\n	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\r\n		<rdf:Description rdf:about=\"\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:xapRights=\"http://ns.adobe.com/xap/1.0/rights/\" xapRights:Marked=\"True\" xapRights:WebStatement=\"http://pro.corbis.com/search/searchresults.asp?txt=42-17066732&amp;openImage=42-17066732\">\r\n			<dc:rights>\r\n				<rdf:Alt>\r\n					<rdf:li xml:lang=\"x-default\">Â© Corbis.  All Rights Reserved.</rdf:li>\r\n				</rdf:Alt>\r\n			</dc:rights>\r\n			<dc:creator><rdf:Seq xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"><rdf:li>Corbis</rdf:li></rdf:Seq>\r\n			</dc:creator></rdf:Description>\r\n		<rdf:Description xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\"><xmp:Rating>4</xmp:Rating><xmp:CreateDate>2008-02-18T13:07:31.821Z</xmp:CreateDate></rdf:Description><rdf:Description xmlns:MicrosoftPhoto=\"http://ns.microsoft.com/photo/1.0/\"><MicrosoftPhoto:Rating>63</MicrosoftPhoto:Rating></rdf:Description></rdf:RDF>\r\n</x:xmpmeta>\r\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                             <?xpacket end=\'w\'?>ÿ\Û\0C\0		\n\n\r\n\n	\rÿ\Û\0CÿÀ\0\0d\0d\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ú;MbªI?7ÓZºwú:\ä\0X­P\éš	-— d\Ö\ÄZdv¨\ã\ÔW\îiƒS\ÂÏ¨\Èî¤™°2ÀwéŠ’@‰ş°\í\'\Ó\éX\ß>%h\ß	~\ë^(\×n^\Ë@ğí”š†£v–ò\Îm A–}‘+;q\0=~¦¾Yıÿ\0\à°^ı¨lüCy\áÿ\0x\Ş\Ê\Ó\ÃRB·—ú\Ä\Ú]Ÿ\0¸‘\ãµWsvfy¦d`°[A<¬À…GÁ5\çc³|	?­UQ·w÷}ı;½ß…\Èñ¸¿÷jn\×\é\×\Èû.^p(\éZf\İ\âX	\â¸ß…\Zgµ½Eu_&¡X:–·\Ñ!…¤•K©\Ã<ŒExòWtŸ\ë\ÒEw³\Óg‰£­\Äø¡¥]|H·ğ]\ä“h¾(\Ôw¶‘a¨‰¼C\Z\ß%ƒ†dºÛ¸o‰ÏˆmibdŸ¢–*„j4â¥·2·\àö¿™,œ%(¶¤\Öö\Ö\ß\çò4o”=¾\Õ\Æ\ìc¥R‡Ã›\ßw,H\î8®“şK\è­\ÍÄ¶\×+¿—\æ\ÙQ_Ÿ—$c<=©Ú†Ÿyk¦3Ø­™º@J%\Ğa„…fBA8\Ë\0vŒ­\Ğõ¹¨Á¸«Û±<©5Ï¡ƒı„±©C€3YúÆ–€4k\É\ëŠùwş\n£ñû\ã—\Â\Ï\0øS\Ã\r\ìu?øLş!_¶™j¾ğ›jNgHZV·³¼k©³`c\Í\Óâ”¤s:2¬n\Ë\î\Ú?\ÅMW\Ãß´™ğ³\Å\Z%Æ¨xYõ‹+»\íF\ÒkÛ‹‹ic\â\ŞXm\Æ2b•e\Ì3ƒ+\æiñm	\æT²\ØÑ©\Í5&\å\ÉhÃ–\ß\Úkšö‹³R×¡ôR\áj‹<bœ-i}e\å\Ò\Î\İu\ĞÖ»±–v&ö\ãµ«øe\'^$õ\Åz]\î!Nò‘7…¥›$œ\0k\ëy–\èğ\ëTylşC\'ú¿\çEz4\Şbÿ\02|Ãƒ’(§w\Ü\Çû)vü	t½:{¦U±\Ó\î\æº¼<öÛ™Y@\çõ\é:f—b¤Ák»# H®«Mğ\Ä°¨UUV\à×‘,g)ö4òÈ½\á?¿\àŸ_·?\ì“\ão\ê^/\Õ<¦\ë¾\\÷š}¼R\Üx+’ \ÈÀ*³&P0<\Zøsş	Kÿ\0`ğ\Ç\ì‰ûNx\ß\Æwz\ëø\êó\Ã&+M{¤›	t\Ó+Le½xYœ,\Æ8\ãH\Ùd\Êoº„NMtŸ[Yş\ÚV\ß&,\Úağ@ñ¤ğ’B\\ùò\Úyx\0Œùó\ÚKœ©Sn¸\r“`Ö¼uw,¶ñ[\Çy”X\ÕvˆÂ—‚\ãñ‡\áy?‡\ãz2\ÂQŒ°õez\íóssr(Si?u(¨FışZşƒ…¥‡yğõ\çI(Z\ÊËšòO«½ß¡\ÆC\áõiv\íaÀq\\_\í7û\"xGö\Èø)¬ü:ñ½ƒ]hZÊ‡\æ$Su£İ¢¸†úÙ‰\'ˆ»cW’\'\ÌrÈô–—ğ\Ò\Îk’Á›\æëš°\Ş²²ºÚ 1kö\Ê\Øú5 \è\Í]5©ğÔ°^Í©\ÇF™ü±ş\Ğÿ\0>0Á:?k\'B]C[ğ\ïÄ„1A¥\Ïy%\ä·ú\ÌGlÄ‘#±¸±ºC\ìx\İv€\Ğ_\ìû@x{ö\Şı˜|#ñK\Ã0]3\ÅVFi¬šC$šU\Ül\Ñ\Ü\Ú3	ò¦I9\ndM’\0Šø÷şnı¾ø\Ç\àe§Œ\í.´ø>)\è4É¡,ú–ˆ^W‘[œ)·÷£u\Ã\İpşO\îz/ø4ÿ\0]ÿ\0„—öAñ‡….Imc\ãg†&?p][\Ç˜Ÿ\èª~­\Û<üY‹¯„\ÄT”\á²ó\Ò÷ò¶Ç±¡‡«Jœb½÷«ò\ßO;\ï\ä}·ûnj\×°§\ì˜~,Z\İ\\Z\É\ák\Í\"\ëY1\ãc¼\Ôml®Õ—¡+K¹Ÿ\'£Â®0@\Ç\ä7\ì\åûoë¿µ\çüŸ\áõ\ÃZB4«{}~(\âe€\è7\î\í#7\0\É\æ#Œ`rkö³ş%\ã+{Oø\'\Ç}¢I¥\Ôşø…\0$\0¸\Ón¶}Fõü\ÖÁ/|K¨|3ÿ\0‚›~\Í~%wxÿ\0\á%×­¼;<\Îp¬º”-§IÛº]¿\ç_#ÁNT±…niJSªªÉ¶İ¹”bÒ¾\ÑJ*\Éhµ±İ›\Â+\êôJ<²Š^kTıwgô	<˜l1N9Ÿ}®Eb?\Ô6:3^®|)Vs3*(QÀ9\ç\é\\u÷„mş\Ø\Ò23\'\Ó=\ëöO¬FW±òÿ\0S•´<\ãPñ2½\Ë†\\A\Å\Şj\ZfŸ%\ÇÈˆÁF2(«ú\Â\ìQŸrm3\Åñ%û\Ê\"N0^k«Ó¼]4V\É$hD^¸ı+\Ó|„äœ–\n	À\Çó­mO\ÇúG\Ã\ï\r\İ\ëšÓµ¯‡|7m6§ª\Ü*\îöF\ÓO&:|±£·$95\ÅS\Ù\Æ<\Ì\î„j^Çˆüı¡ôŸŒÿ\0ğW_°%\Ô7iğ»á¦\ádtn\î5w{\ã\ï„x ‹*ñm\0‚Xû£·\ÄK‹\r/î´¤\Ö\ã{\Ô-Ø­Å‹L¥\ÄDC\ÆX:‘\İA¯\Êÿ\0ø †ƒ\ã]o\ã\Ç\ßø\í\'\Òuÿ\0\ê%Å¬\èC‹«©g\Ô\îƒ\ÊûM©\Ú\ËÏšÜ‚¤\Ò\Ï	üO\Ò~®±®x‹T±\Ñô?\ÚÍª_\ê7RKxQ¤–g#$…Ec…0\'\ã¨\áamŒMû\í?K$¿3\ÖSmFŒµµÏ˜¿a¯ø/o†¾-øGƒ\ãyğ{\Å3°Í¬j\ÒE\àıV\íË•a¿a\å\ÚH$º;‚±\ÆT¨\Î¾\Ãñ\ÇıHø¢x6M~\Éüyâ–•t+&YÊˆK$’ªsKİ–+¸t8\Ü\Ëø\Ïñ§ş\âO‰.¢øu\â=[À\Şñ>¥5Í¾¥\"ùZ\äö¯tV\Ù$hdf¶DR¤RF\Òm‘™™]R?0ı•¾4x\ÃÀ\ß~ |L\Ô/g6¾³\Ôô5cs†Ôµ+¥\ìF\í–\Æ\êfl|³2–b\åk¶†.´i8Õ·3Û¹çº”\İOu7»z/—\äQÿ\0‚\áşÕšÄ\ÚcX\Ñ-u	.´%\Ö\İ\'\r·\íB$X•\È`Vò÷m^no¼M{?ü\ÍûC\ê?> \ë\Úz\Í%´,ğ¾¨ö¦94v±­\âÌ˜\î°\Ù\ÜóŒôü8?iˆğ–x–öy$ó\în/]šR6\á@\Æ1Ÿ\Ã\×\å=\ÍnxW\ãF«ğ\ëXğ\Ë\è÷÷\Zc\ÚY™{i6±,­Œƒ¥+)\Èe‘”\ä\rĞ¥Nq•)¾ŠŞ¯fsâ½«T\ë\ÓZó6ÿ\0Â·_\äL¶·ˆ5\Ú7\àwŠ´h\ãw¾ñ\'†5\rË€gÌš\â\ÒX\Å\ã9g\\÷\ÆkùšøSûEGğ·\Çşñ6\Ée›ÁZÆ\â(\r\á¾\Å<Rœ@\':û_¼ÿ\0°\íÕ şÚ¿¢\Õôù¡³ñ>†\"‡^\Ó±%„\í»dÉL\ìvıC)ù‘«ğ_ş\n§h~ı»ş*\éZŒ:fe\â}B\Şh!€y\î%T\0aP>ıª8Q…\nŠ¸\nX5:”^\Ñr¿–ß™\ßbg=y}\ä[>Ó¡Ñ®q\Ä\r”¦\èğ\È\éò\çñ¬]z\Â\ÇQò\Ö\Õ\Ê\ä~ñ“·\á_?ÿ\0Á;~*Ÿÿ\0ğN‚>\'ŸQšò\â\ëÁzu­\Ì\Ìùinm!s»\ìf·“œ\ç9æ½»á·…›^¸™$\ã÷ \0\Ø\ä};ú«Ö¡$¨F¬¥\ĞS‹RqH\Ì\Ô~¥\å\ÛH·CzHŠô¹?g\ÓĞ—\Ó#9w$ÿ\0:+\í:?\Î\Â]\ÃCø£Cm…M |\ì\\ô÷5ó\Ïü\×\á«ø;öM\×\ì4(¯õ\ßjº7ƒt\Ë“\Ë[¶\Ôõ;kI\â,AÀ6’\\’H\à)\é_Si\Z„6ªD»»\ÇWş\ÙR\'>6~Íš*‚ñ¯\Äy5Û¿˜b;}?\Ãú¼\á\È$d}¥­z4ŠpqŠù	\ãqQ“Wm3Ñ…:MyŸjŸ´ŸÙ‹öƒñn…¢~÷I\Óf\Ó4_´*\×SZøsFF?¼1INK“Ôšüöÿ\0ƒ‚jK\Ã>ğ¿Â­{”\Æ\×M«k[\îyom$_eƒ\ï+\Üî¯]öõ¯\ÒoÚ“\Í\×~%|f\Ô\ím¦[H<–÷$Œÿ\0\ØZn,jBC\è\ìXd\ãs•3\ëß²çƒ¾2~\Ò\rş.xƒ\í\×\Z\ß\ÃNt\ës\"-ƒ8˜\Ë².\Í\Ìğ\Ê\ÅĞ†xpeR©L\Ş•/yX\åPŒk\ë±\ëğBø _†ÿ\0f?†š\Ä_‹z.‰\âÿ\0‹\Z¤`>—ª\ØC}a\à\Åù_\ìĞ¤‘\ïGm\Î2„¡Ú‚Y.|£ş´Ö´\Ï\ë	ô=H\Ñô‰?°®EÌ–vqÛ³Ú‰–;XN\ÕŠ[ƒ\ZŸ–3pûq\æ6Y¿e½BY~\nh·»5.§a\Ûş>¥@G¶\Ô{_Œğvo‹\Ò\Ú\ÇÁ–q\îim|k)Ú¤\ìg\Ô5=¨8\'€29\Åp\á9¥ˆ‹–»şC\Çòª1\êÖŸ4~#ø¢f»\Ôe,\ä¼|òrI\'\ë\ï\ï\éõö„¿³\Õ\×\Äÿ\0\Ù\ë\Ç<’ñ´û\0\Ûé¹\ÂeŠAs¤Êê±½Õ«Ec‡ #g¼˜\Üê³²\ã.x\ÃdŸ^ı…~öÿ\0Á¹?°—…?h\ïØ¯Æ¾ñ¶˜u/\rxóÃ—–š\Ô\0¥…¯/\"\ŞHÜƒµ\Ö-&)\ã|®TóÒ»g)*u*E\Ú\Öü\Íf—\îé¾¿\ä~Hş\Ïÿ\0ümÿ\0ùı¥ô\í^\Õ%ƒSÑŒb\îÉ¥N­§\Ü$r˜·ò¯\r\Ä\r‘¾\Ã*€È¤yŸ\í\r\ã8~)şĞ9ñM£\É$\"\ÖõJ\İ\İ\n9Y®¥•	\ÛXu\Í~ÿ\0Át\à˜\ÚO\ìózw…\îu]B\ç\á&ƒ¦\Ú\é÷W\á$¼\×4˜\í-\Õ\Öc\"o…–y‚¨\Â\Ìf‘HüšI¾Ù­Ä \ï[‚\03œ\Ï=O|\Õ\Ã\ë\ĞQ–ÿ\0\æL)¨M¸Ÿ\ÓOü\Z›\â½7\ã¿üI\Ñ.m¢’\ëá—Š5oü\Ê74r\Ì5Do¦uõR;W\è&§\à9b½;d#<•%søW\âÿ\0üWñ\nm;\Åÿ\0´_‚¤Y š\rZ¶\\L{Í\ï8’s\Ò:ı\ç–n	b7lWˆ±•hTt\Ó\Ñl\éQ„Ò’İœÕ‡‡/¢n`N;(­¶\ÖV·yıh¬\"£{\"U*KNcÑ ‚\Ö\ÙQ`¥º\â¼\×Åš$×Ÿ·?\Âû‰\Ì\Óm|\r\ã;\Æv\\¾£\ád‰=\Ê7K\ë‡oZø\ãBı»~%Y¡Î±b\ê…¬A\í\Îs\ßÖ®?\ío\ãokº]\äú•²\ÜX,±\ÛKšy±¬¦6‘¬\Ğ\ÄH\èLk‚ºªN2w»ş¾dBoñ÷â†—\áO\Ù&]2k;[]k\ÇZ–¥\âû“	Fû3\Íwq,\ÇB\Ñ\ì$¥İ\ß5ñOü&ú¶§\âû?\è6“\êz\æ©{\r¥­³÷S\É*$p‚\Ä[±\Ú-…¨ş\Ú_´5\ä^ğí•\Ú\Ü\Í6™orò³g÷’\ÆI1\Æ\é©$)#›ÿ\0‚ujZŸ\Æ\ëO\Ú\ÜMö\İšò)¦\â7•X0q#/\\g-‘^X{:*\ívıu<Š˜i‰ök\Ğı\×øk\àağ\Ûá†ƒ K?\Ûf\Ñ, ³\áI?h‘	$şó†oÆ¿oø:sYŸ\Ä?ğQ]N\È\Ü\â\ÓIğŞ”¨„ƒä†„É´\ßt\Ìq\ß\Ì\Ï\×õ\ßö»ñ×™>\íi$7_{u¬xO÷x\ãñ¯Å¯ø.§¨|Gıµ¾,\ë\í,—Si\é\áKY$M\Ñ\ï–i\ì\ë€1÷\áŸ•İƒ\\¸{]5\Ü\í\Ì\"\Ôª?>4\ÛhÎ¬C\î\âz?¯aøş_\Ö\'ü\ãğ\Ô|*ÿ\0‚møF\æ[1§­\Ão\ç(l°Xm¢M¼ôÄ­pqØ¹ –\Ù\ÏÃ¶>7ı ¼#¡\ê¦\à\é:Öµga\ä6&\ÓN‘JöbŒ\Øü3\é_Ò¯À\ï\Ú/\Äşøc [\é—ğ\éö®³j0\Ù,˜\àûT\Ò]2\ã˜€;\0vÏ‘\àdö¼’ü\ß\çbš“\ÅF+¤[ü—ù?ü\á-\Íå§„>&Ck$\Ö69\ĞugD\Şm\ÎöšÑ›¶\Æf™×Ÿ2¿‰³f—ğƒö\íğÏ†\r\Ü\'Á¾.¾³–\ÊX$f6–·-lñ\ä±…\ÄÑ†\ÏÌ±+n\Ú?¡Ÿ\Z~\Ô>#ñ×€uoøô\ß\èZ\ä2Agyiò\Ü\Æ\ç\î\îB¬¸8*\ÈUÑ‚²°`ü§ı·ÿ\0eı\'Â¾?\ÑfûF£:ø&xüE¤Ş¼«\Ô\Ö.Á\ÂK(Ø®©uo$.\ß!d	¿Å³œ`º?À\Ï\'AJ¤¶k_[?ü\ZY\âYşÿ\0ÁZş\"x\Ä®ªk	\Ôô\Ãj\Ç]B\Îş\ÎVŒz•Š+£\ë„5ı\\\ê\å\Æ\Ü0aê§ŠşB¿aŸš·Á_ø,ßƒüq¥^B··3»³[†\ã\ß‹7SÀ\Î\å¸a\ÑO\Ïü5û­­ÿ\0ÁG¼|\Ï!ót¨™˜\0İ†\Ï\Í\ë<U(*óoE}ºU\\©A÷Hı\r{ó¼½N{\Ñ_š¯ÿ\0$øk…Y0\ä\äD\Üò}\r”¨÷ş¾òn\Ï\rÓ¯’\Ãs‚À!#9ÿ\0\ëş•§­u5¬±Y5´w®„[<óa‘…\Şí€ˆ®\çb\0\0œ\àf¹?W–Pª‚³L®F@:ò?J\ÓÓ¯\à’X^\êE;Á\âfÊ‚3\Âœ†PG_›\ßpó\Ô\ìTd|\â\í/^ı¢ÿ\0k‡øW\à]gG\×eğo…|\íRõ\É\í!Škx°UC\Í3Ä¤–+\ÚL\ßÿ\0\àœ^$²ñ/Àdñuƒ½\Ô>\"“d;#9U„6\á\ßye#ş™¯­|sğ—âŸ„ÿ\0\àú·Œ´x÷M\Ôüs¦-•\Õí¿Š¬õW€Æ·\Ò(\Z8]#‘d>\ÙfW’(–6RÁ)\ßğNŸ\Û\ÃKıŒ>	\ŞxO\ÄZ³\â‰õ}Z\ç[µ—\ÃA.T,ñAŠEEy0ùŠc’CûÒ’G&\Ö\í–:u\\’[şŸ\ær\ÓÀÑ§(\Ö\ê¿ÿ\0‘ú—¢ø®\Ó]–6¶‘Èu’#x\ÆGUn³>\î:\×\ç_ü®mJµøŸ­\Şmş\Ó\×|kc§Ù¡fO&\Ó\Ïp§\0º\Ë4a<õ\Ï$\îú\çüwHñ«¢Ká……4\ÔvºÕŸÄ¶s\Û\Í\n\ÂDtò\Ë\Âd_-‹y¥FVÁğÇŸ\Ú_Á¿¿l»\íız+Â–^1ŸWº–\ëLº¼°¼¶x4{e‹\ÈØ³‘ Ó˜Ì¬Š	°¯X<L°õy\å\ëû<T=œd´\Üò\ï\Ù+\á6§¯ş\Òş\0³’\ÃQ°¸×µ­>öÉ¤…Kne2$É¸x±ÃŒF\İ6šı\ä“\ÅzU¤E\æ\Ç™™\n\ï\Ûû°gœğ7\'?\í¹¯\È/\Ú\Ãö\Ì\Ó ı¾>\Zx¶\Ã\\mWÂ¾Ko>\É\áö\Óå°µú\äKoG8³pŠB\íÁE\Ü\Æ0õô~ÿ\0øT\Úl7z•®k7\Æ\'H\åŸE˜\É¾^\ß2Hdò¢’1 …ğ“†\ÚÀªªø§VœiÓ‹º½ıJŒ½”iµf–\çÓ¾-ø¥i§]\êv÷¿<-§M-\Î\Ë[a¬RÚº†˜\'\Ï;™AA†ùF@*\n³\0>|ÿ\0‚|Iğ\ç>\0\Ù\ë:eü!Ÿ\ÂW¯ı«on\ÆşË¸’(oT\ã–~\Ç\"Ã»tL\ÒK³÷m\"s*ÿ\0‚©\Û\ÚI\æ\Ç\á\Û;K3\Ú\Ü\Úı¾ùm•TF\ÆXF³\ç\Í%_O\ŞVDò\ßÚ¯ş\nHÿ\0~j¾ğŸ‰E\Ô\ÄZ¤¶\ÚCKf_\Ìu\ÂT@\ÈZ`«,UX;¨´ı\êÓ«\îÉ¦ŸŸü\æ˜~j^ñÎ±\ãM6\îI´/x¯N7÷vpL\æ\Î7‘;°\Ñ\ÆcTˆ\Æ#bÌ§|\Ñl—\Ûú\ëª|ağ\ë\ê«`º¤1N\à\Ï\äyoö…PN?vF\í\Ã8#ƒ`“_šŸ²¯Ç­K\ág€<M“â˜­5-J\ëU½\Ã÷b( y|¼ºu!6F\0a¼\ÆÈ‘~F\í\ïÿ\0k\r\'ÄºGöˆ4?Ic¡ƒû>€fWd—-pÂ†7u\Ë\Æ\ÂEm˜\Ç \×UX×¯.~[\Ò\ÅB’T¯{u\ï÷\\\ê_´Ï…\Å\ÑM>\êmb$\0=Å‚$°\ï?1P\Í\"dŒŒ\í\Ær|·¦x+\á×\ÒK\Íc\à‡<Ks\îEIB*.\İ\0Ü–\ÜrNñ\Í\ÏõZ½¿!G¯\Íø3\ì­6öDº€`d˜\ä\à\å\ãS\Ç@?x\Ü\ß\ØU«K\æm1&t‰\ß\È·f\â\Ìr2¸ t\é‚1Á¶J+”ö6tÿ\0_\émµ­\ÕÅ¬P¹P\"•”#fû¹\ÚÀ\0À ök‰7\ì\Æ\Ì\á“\íR„oõ\İT6\Ä@`Œa0Q\\\Ë\âGD–„:·„´}f\Ä\rCE\Ñ5O0yöı:°\ÄIÄªÃŒQ\Î*{2\×Ã±ùVV¶¶°\É\î(R5ù	…Õ³\ëœt\nED¥+\î\\!-\ng\à?‚’ôÌğ”lĞ´ƒn‡f\n‘.\Ş\Ê\İ\È<ó\Î5<<=cD4\r\ÖU\äİ§A¶\\£œcĞ°<1\ÉE:ufÓ»f~\Î*\ÖE‹\r}=n¢U…ƒ4TÁÄ­»p÷p£;¸\n\Ã|\Ç	¡‹C\Óm$²‚9/eieh\Ë\İ+FK€_9ù@_»\ÅU\ÂM½Y5b’ĞŠó\Äú†£ı‘uq{{pğkq5Ì’›?›-\å31x÷31%Xœ‚+&\ï\Å7\Ún±£ip\\O­\å¬÷2A‰P\Úa\ÔnÚ§÷\Í÷@û«\Ğä’Š\éM\ÜÁ­—\È.ø¡•±÷rq\Ø~ù\ä\ä\ÑE\Ù1\Ùÿ\Ù');
/*!40000 ALTER TABLE `room_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` bigint(10) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `photo` longblob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (5,'FDF','sharad@incapp.in',9999999888,'1','ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿş\0<CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 90\n\0ÿ\Û\0C\0		\n\n\r\n\n	\rÿ\Û\0CÿÀ\0\0d\0d\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ùş\"öı²?\è/ğ÷ÿ\0	ˆÿ\0øº?\â/o\Û#ş‚ÿ\0ğ˜ÿ\0‹¯\Ë\ê(õş\"õı²?\è/ğ÷ÿ\0	ˆÿ\0øº?\â/_\Û#ş‚ÿ\0ğ˜ÿ\0‹¯\Ë\ê(õş\"õı²?\è/ğ÷ÿ\0	ˆÿ\0øº?\â/_\Û#ş‚ÿ\0ğ˜ÿ\0‹¯\Ïÿ\0Ù‹öTø‰ûfü^°ğ\Â\ï\êş3ñ^¤7Ec`ƒ÷Q†Ui¦‘Š\Ç*YCK+*.\á–¯\Ü/Ø‡ş¢·“J²\Õÿ\0hoŠ7Kw*——ÃDUƒ¡Pú…\Ê6ó\Ü\0A\Û+p\Ôñ\ïüE\íûd\Ğ_\á\ïşÿ\0ñt\Ä^ß¶Gışÿ\0\á1ÿ\0_¼ÿ\0?\à\İ\ï\Ø\×öwH\ßKø\áM~\íc	%ÇŠL\Ş!3œ`¹Šñ\ä…I\ëòF£=\0¯\ËOø;ö	ø™ğÿ\0LğwŠ~ø#\Â\Zg\ì\Ñ\á›8â¸°ğ‡mlÃº«<Š\×7\ÂÃ˜%G#”%J2\Æò#\\\0|\Çÿ\0{~\Ùôø{ÿ\0„\Äü]ñ·\í‘ÿ\0A‡¿øLGÿ\0\Å\×\åõúƒÿ\0{~\Ùôø{ÿ\0„\Äü]ñ¯\í‘ÿ\0A‡¿øLGÿ\0\Å\×\åõú†¿ğw§\íGü…şÿ\0\á1ÿ\0E~_\'J(´QE\0kB\Ğ\ï<O®Y\éº}¼·—ú„\émmK¹\ç•\Ø*\"\ä±\0}j­{WügLZÿ\0‚Šü³”f+¿ˆş…Çª¶§n\èhú\äÿ\0‚?Á)¼ÿ\0ı”ô\ß\èVV7~6\Ö!†\ï\Æ~$U\İq¯_…9\È-a.\éXT³e–W«¨¢€\n«­h¶~$\Ñ\îô\íB\Ö\Úÿ\0O¿…í®­nbYa¹‰Ô«\Æ\èÀ†VRA`‚A«TPò\çÿ\0@ÿ\0Á<3ÿ\0\çñ^…ñ\áM»\é¿|ª>—}¡³†Ãº«G$\è–\ä\ßfš8¦eB”\Ğ8İµ\ãDü¯\ê»ş\nµ\ãşû3º+45\Ò^2¶\Ü.G\à\Ä~5ü¨\ĞEP“¥\'J(´QE\0\î\ßğK…\ßÿ\04ıG¯\Äÿ\0\rüª\ÛW„\×\è·ü\Z\ÇğÀ?ÿ\0\à°^²ñİ‚jRh¶^ ğ\Ô-rğªk6MÍ¼¸R†5Y—1‚A‚ısQE\0QEùkÿ\0ÿ\0\Ênÿ\0\ìr\Òö½)µıœÿ\0Á|şø?\ã\çü7ã·Œ¡\íü-\á{\ïiR\Ã9‰\íõ;+y&´lô*e\nŒ¤\Ë#ş1¨\0¢Š(\ÉÒŠ¥\0\Ú(¢€\n÷ÿ\0ø%w\íe\ì7ÿ\0øAñN\ê\âKM+\Â\Ş\"€\êò\Ç•\ÓLŸ6\×\ÛT}\æû,\Ó\àw8¯\0¢€?¿¨fK˜RH\İdE¬§!\èA\î)\Õñüö\à\Ò?n¯ø%\Ï\Ã\rf\×P[¯x?I·ğ—‰\àw\İqo¨XÄ™$\à¯‰b¸db|g*À}@Q@˜ÿ\0ğv\í±cû.Á,õE\å\Ï\âoWi\á«L»\ZD+q{s·:¬h\ã#\rw\äòw_ª_ğvÿ\0\í\çaûXÿ\0ÁGmü\á\İE¯ü5ğ>\Â]b¬\Z¬\Ë.ıD§û]µ»‚2$´~£ù[@Q@N”P( \ÑE\0QEû£ÿ\0=èº¬ÿ\0~?\ê0\İ\Ş&‰k \é6\×v«!ó\\Iqr\ĞH\ëœDŠ\à)# K&>ñ\ÏôW_ÿ\0Á¿\à”¾ÿ\0‚^~\Ç:%½“yiñ/Çš>›¨xöö\î\å\ä–{ôŠI>\Ì>\\q\Û=\Ìñ&\ÅR\Ã\ær\ÌI¯µ¨\0¢Š(øñ\'ˆ¯¼a\â+ı[S¹–÷R\Õ.d»»¸•·<ò\È\Å\İ\Ø÷%‰\'\ëT«\îÿ\0ø8«ş	±¡Á2ÿ\0\à¢ú—†|gqağó\Æ\ZU¿‰¼9k$8\Óâ•¤†{Q+ä¸\âJ†%–)!Xü\Íğ…\0QE\09:QBt¢€E}_ÿ\0\İÿ\0‚,ü}ÿ\0‚£\ëAşøP\ÙxFŒ7/\×\ì´;F\0’‹.\Öy\ä\0c·IK¡pªwWô\'ÿ\0\çÿ\0ƒU?g?Ø¶\Ş\ÓYñÕŠürñ\Ì_3^ø’\ÍFl\ß0ıÆ›—ˆŒ“pÓ\ÈJgü\éş\ÃğH?\Ú#ş\n/u¿¾kZŸ‡\å”\Å\'‰/”iú;\\$Ÿ\ésmFBr\Ñ\Âd”ˆkö\ãş	­ÿ\0tø?\à<5ãŸ\Ş:>>ñƒw¥†´+#@[ˆœ°I\æ™|\ëÈ²¶„·®\Ö¤ƒûScc™e\rµ´1[\Û[¢\ÅQ D‰`*À\0\0\0*Z\0(¢Š\0(¢Š\0ù+ş\nÁÿ\0køSÿ\0zø \éŸ&\×ôM{\Â\rrú½¢\Ü,w6>z –7Eh¦…\Ú(Y•”8òşGsüıº¿\à\Ñ?\ÚGö`¶º\Ö>O£ürğÕ¾\ç#G_\ìır$T\Ü]\ì&r\'\åT·šiÿ\0\0¯\ê\Ñ@À×<¯|,ñ£\á\ßèš¿‡<A¤Lm\ï´\ÍR\ÎK;\Ë)GT–)º0ô`\rdW÷/ûaÿ\0Á=~~\ß~M\â\ïÃ¯x\Ò#1Z\İ\İBb\Ôl°b-\î\â+q$Dr(ls‘_ˆ_ğQ¿ø3\Ä>û\Ä³/‹ÏŠ-\áñU\ÄVÚˆ\ã\î[_€JK„a\n«Ì®\ÔøN(®›\âÿ\0Á¯~\Ï_µø\çÃºÇ„üU¡L!¿ÒµKV¶ºµb¡\×r0Œ®¬8ee`H ’€?»ÿ\0x#Føi\àı3\Ã\Ş\Òt\íA\Ñ-£²\Óô\í>\Ù-­l`B¤QF€*\"¨\0*€\0ªx¢Š\0(¢Š\04QE\0QE\0QE\0QE\0y\×\Å\Ï\Ù\á/\í\âH5Ÿ|.øu\ãm^\Ú\Ùl¡¾\×ü7g©\\\Å»ºÄ²M0@\Ò;\0»dš(¢€?ÿ\Ù');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-09 19:20:58
