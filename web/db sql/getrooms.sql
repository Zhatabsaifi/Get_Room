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
INSERT INTO `hotel` VALUES (1,'hghjh','Andhra Pradesh Anantapur hgfj','3556667777','abc@gmail.com','ghghg','on on ','�\��\�\0JFIF\0\0`\0`\0\0��\0<CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 90\n\0�\�\0C\0		\n\n\r\n\n	\r�\�\0C��\0\0d\0d\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0��\"���?\�/���\0	��\0��?\�/o\�#���\0��\0��\�\�(��\"���?\�/���\0	��\0��?\�/_\�#���\0��\0��\�\�(��\"���?\�/���\0	��\0��?\�/_\�#���\0��\0��\��\0ً�T���f�^��\�\�\��3�^�7Ec`��Q�Ui���\�*YCK+*.\��\�/؇����J�\��\0ho�7Kw*��ÞDU��P��\�6�\�\0A\�+p\��\��E\��d\�_\�\���\0�t\�^߶G���\0\�1�\0_��\0?\�\�\�\�\��wH\�K�\�M~\�c	%ǊL\�!3�`���\�I\��F�=\0�\�O�;��	����\0L�w�~�#\�\Zg\�\�\�8⸰���mlú�<�\�7\�Ø%G�#�%J2\��#\\\0|\��\0{~\���{�\0�\��]��\��\0A���LG�\0\�\�\�����\0{~\���{�\0�\��]��\��\0A���LG�\0\�\�\������w�\�G����\0\�1�\0E~_\'J(�QE\0kB\�\�<O�Y\�}�����\�mmK�\�\�*\"�\�\0}j�{W�gL�Z�\0�����f+����Ǫ��n\�h�\��\0�?�)��\0����\�\�VV7~6\�!�\�\�~$U\�q�_�9\�-a.\�XT�e�W����\n��h�~$\�\��\�B\�\��\0O���nbYa��ԫ\�\���VRA`�A�TP�\��\0@�\0�<3�\0\��^��\�M�\�|�>�}����ú�G$\�\�\�f�8�eB�\�8ݵ\�D���\��\n��\���3�+45\�^2��\�.G\�\�~5��\�EP��\'J(�QE\0\�\��K�\��\04��G�\��\0\r��\�W�\�\��\Z\���?�\0\�^��݂jRh�^ �\�-r�k6Mͼ�R�5�Y�1�A��sQE\0QE�k�\0��\0\�n�\0\�r\���)����\0�|��?\�\��7㍷���\��-\�{\�iR\�9�\��;+y&�l�*e\n��\�#�1�\0��(\�Ҋ�\0\�(��\n��\0�%w\�e\�7�\0�A�N\�\�KM+\�\�\"�\��\��\�L�6\�\�T}\��,\�\�w8�\0��?��fK�RH\�d�E��!�\�A\�)\����\�\�?n��%\�\�\rf\�P[�x?I��\�w\�qo�XĐ�$\���b�db|g*�}�@Q@��\0�v\�c�.�,��E\�\�\�o�Wi\�L�\ZD+q{s�:�h�\�#\rw\��w_�_�v�\0\�\�a�X�\0�Gm�\�\�E��5�>\�]b�\Z�\�.�D���]���2$�~��[@Q@N�P�(�\�E\0QE���\0=躬�\0~?\�0\�\�&�k�\�6\�v�!�\\Iqr\�H\�D�\�)# K&>�\��W_�\0��\����\0�^~\�:%���yi�/ǚ>��x��\�\�\�{�I>\�>\\q\�=\��&\�R\�\�r\�I���\0��(��\'���a\�+�[S���R\�.d�����<�\�\�\�\��%�\'\�T�\��\0�8��	���2�\0\����|gqa��\�\ZU���9k$�8\�╤�{Q+与\�J�%�)!X�\���\0QE\09:QBt��E}_�\0\��\0�,�}�\0��\�A��P\�xF�7�/\�\�;F\0��.\�y\�\0c�IK�p�wW�\'�\0\��\0�U?g?ض\�\�Y�Պ�r�\�_3^��\�F�l\�0�ƛ����pӐ\�Jg�\��\��H?\�#�\n/u��kZ��\�\�\'�/�i�;\\$�\�sm�FBr\�\�d��k�\��	��\0t�?\��<5㟎\�:>>��w���+#@[���I\�|\�Ȳ����\����Scc�e\r��1[\�[�\�Q D�`*��\0\0\0*Z\0(��\0(��\0�+�\n��\0k�S�\0z��\�&\��M{\�\rr���\�,w6>z��7�Eh��\�(Y��8��G�s����\�\�?\�G�`��\�>O��r�վ\�#G_\��r$T\�]\�&r\'\�T��i�\0\0�\�\�@�׏<�|,�\�\�蚿�<A�Lm\�\�R\�K;\�)GT�)�0�`\rdW�/�a�\0�=~~\�~M\�\�ïx\�#1Z\�\�Bb\�l�b-\�\�+q$Dr(ls�_�_�Q��3\�>��\��/�ϊ-\��U\�Vڈ\�\�[_��JK��a\n�̮\��N�(��\��\0��~\�_��\�úǄ�U�L!�ҵKV���b�\�r0���8ee`H ��?��\0x#F�i\��3\�\�\�t\�A\�-��\��\�>\�-�l`�B�QF�*\"�\0*�\0�x��\0(��\04QE\0QE\0QE\0QE\0y\�\�\�\�\�/\�\�H5�|.�u\�m^\�\�l��\��7g�\\\���ĲM0@\�;\0�d�(��?�\�','1',2,'Anantapur');
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
INSERT INTO `room_images` VALUES (1,5,'�\��\�\0JFIF\0\0`\0`\0\0�\�\�Exif\0\0MM\0*\0\0\0\02\0\0\0\0\0\0\0J;\0\0\0\0\0\0\0^GF\0\0\0\0\0\0\0GI\0\0\0\0\0?\0\0�i\0\0\0\0\0\0\0f\0\0\0\�2009:03:12 13:48:35\0Corbis\0\0\0�\0\0\0\0\0\0\0��\0\0\0\0\0\0\0���\0\0\0\082\0\0��\0\0\0\082\0\0\0\0\0\02008:02:18 05:07:31\02008:02:18 05:07:31\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0\0\0\0�\0\0\0\0\0\0\0`\0\0\0\0\0\0`\0\0\0�\��\�\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342�\�\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\0d\0d!\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0\�ҦN>��\�$M)�\�@\�O��\0PQ\�\�\�\�Wc��qQȁy��H�X��d�\Zd�ܮm�zQE\�\�.�^�0@���U\�\�,,���b��!�G\n[j��\�-��@ӵ��{k+\�H\n��v�n$&N��q�UX�\\��0���԰ҫ�\�\�&�#��\�p\�~\�\n2y�\'\���\�H\�b����\�90\�>|�\�\�\����lg�>a\�\0A7;\'>��ڏB\�\�d���\�\��tu��\�n\�\�\�ݭ�l�8�j�!����ң��yk�[C!\�J��\'?X��$t5��\�k�h�v\��jfG�D.̤R؃�:7+΍\\K\�\�.\�:\��;]*>\�R륿SI�8\�Q	�N\�(\�	\�\"�z+��X\�W8��j7�\0\�q��\�w\�|�\�\�\�6G�Am�Cw\�\�>\�\��\�զ��\�_=��{|%�<;y\�\\�<\�\09\�-\�C^;�!�\�\�n�\0r_\�z1�xf\�\��Y\�!�b�kZ��t���B=\�K\�`>h�g��2~��x$^IJ-1Vw>յ]o\�%�\�K5������e�p{��`\��A\n�\�����|?i�\�.خ-rcpp\�~�{��ɇ���M�S\\���K#�c\�\�(\�\�\�i��ǑQ��\n\�~�5\�:G�n5�\0�:{R�¢��|�\'\'�\�+�\�\�Vsw���VV4���\��rZ���5\�3���\r\�)���k\"G�@此\n�b�n\�\���W\�K��1}�팽�k�\�\�\�\�\"��l��\�B�\�\0t���|t+[X��\\ejN=\�if���w\�\�V��k���<�\�F��\\i	|�\�a\�e@\�II#�\� ��]�Y�/�\�\�6\�R�X\�z��\Z\�K�NK��\ZI\�(�=\�¯��\�\n�dӮ�Cj���3Ie\�\�\r]G�:۳�h<��9�|-\�?�uZ�~g\�~B�$⩵�\�$���S�\�a��\�\n(��P�p���m.( qJ��\�\�Z�:�ĽmC�\Z~��#���\�\�\�(>�V\�q��kq#D%?1O̙\�=\�s\\Q�S�6Ѥq���ii\n\�q>�t~C<�E��88��\�!���J\�e\�m㾂\�ܡ��Ȋ���H9�\09\�i\��L�u<\�^�-\�5�HZ\�\�\��\�\0\�\�?�l�&\�屽�0\�V\�\�R�8è��R�Z&N\�?3\�<I,�Ƒu\0���C�\�Y\n�?\Z��\�W7�x$\�M\r�q�����\�拕\�ב��\�,m�+�qЊ�U���H�������Oć?�\�t�\n2[���\�.	[h\�+�QFX�@\�9h%\��E.��\�Z�h�\'�C#w1i>�y:��/a��.�H��L�J\�T�~�5̯\�\�z\\�=K\�\�\��.\�[+{�K,����A\�N\�:`�NN@z�}m�j\Z���\�,6\���?\�G້=�;\�IEYv\�\�C�\�.��݉\�\�\�\'ڦ�Q�\�[c�T\�d>\�\�<{�\�.͓(^(��\nx�\�\�z@�&	u\�]ѻ�\�������ũo�5Xm�R(U\�>c�=��u-cHj}#\�\�\�O\�wm)vk(՘���c\�Mm\��eb7=ꔭ��K\�I\�I\�h����K�ip\�A8\�\�s�4�6���\�0�\�K\r�Q��\�l��?\�՗�{\�`=�:.�woo\�Q�P\�\�72\�\�\���S�מ|W\�%�\�\�G����fՕHھ�n~�+K�\�\�\�X\�|,�\�l#\�5�!�դ\�4a\�\�uڠ\��n\�-��\�Hme\�m\��(��ۊ \\�p��ˆǦ㎵�]\�q\�Z6<rY\�O\"�,4��\�/�\�#�X�ېw8C�s�e鞽*۵\�tD\�V�\�=z9\��,oL�$l\�ze ��=@�\�Z\�o��\�\�$��\�\"�0pX�V\�\�	Y�H|�-S\�V�Զ�\0�>h�\0ц�\�Hp#@�zV0��eIu,�2m4T� �7Uq�V?���ռ5\0\�i\�\�c�V\����~5-kpM���o��Q���\�>Dq��\�k��D�\�u\�7Z�\�\�\��\\��\�A#\�\'#���W�bv�\�Z\��*?�Y��\�?�x�ǋ�<Gd���*x\�$�\0\nP^�lx{\�\�w��{�C\�{=c·���y�זγ�B�\nA�\�!���)\��\��I+F�F\�m\�X\�L� ��\�\0d|\����&\�\�@\�\Z�KS\��\0g�K�\�%J�2���NW�z#ki&h�\�c�\�J\�\�EHª\�)�\�d�x�Kb3\Z\�\�u\�\�K`?Mߝk+��{U��\r��f��[�ۏ��b��\�\�}k��L\�r��\�\�O#�\"!嘐\0�\0�\�\�$�=�\�\�\�z}��m\�(\���9?���>7\�\��\�X���\�D\0�\�?\��u4�M�&Eg=�\���a�-�\�,�w�(̷\�V�i�&X;-���Li��H\�\�P�3��z\�\�ך4:�\�m7��\\ȅ\n���\�?�{\�\�\�\�\�4ͧ|I\�t��\�\�-��\�=\�GBG\��U�{IQ%\�2\�\�zQN¹\��x�UQ���Jyׯ\�)\ZU܀�!@8\��\�)s1���� �\�4}\�bV\'܌��\�o���%\�1\�\��py\0�f��\�{\�Ǡ�Q\�fpwuʎ+ž%���+ծI,\�-�\�K[G�\�Z�\r�mQ+6�w:ե�ۼ�gH\�\�y\�X�|f��\�5{�]>\�b�F�t�=�y,�*�ڟ\�-\����u���9m.�s�0+\":}\�~�#\�9\�>%\�!��\�!�#�\\�1��\��\�)�=1�b\Z�j��\�\��3�ͦ�R�\�!�ok\�@ǐw\�C��?�{��0Բy�}��ӓ��*?\n �\0�\�R^7!�(�\�\r��Ҥ9R#*���`g�Oa\�P4qw	q���\��t�Lmms,�d3 T{�@���8;��9�q{,\'8\\ï\�\�\�[J[�(\�\�L裝%#a<�A�^u\�#.�p�\0\�f��40\�~�a�\0}\nT�\�.��8\�\�iu\�=r#M<n��2�\�#=G�y3¥F@\�\�\��qD\�ʇ\�3.\���Y5�h\�l*\�PT�\�,s\�s\�4���ђx����5T\��L@�a\�rq\�FIل�\�k�v,\�\�k���,\�\������\�\0c�#\������F&�ͷv>�j\��~\�(��i����g\�Ef4�Bq\���Q��\\�Oq��#\�l/��%%\�7Zs\�-\�[\ZE�IH\�쀤)\0\�\'�\�\0ڏ��\�/euo5\�K3L�\�\r���\��\��� c��\�{#��\��M$\�%�7H\�B�A\�\�9?�pz��c���~\�r\"�Kƕ\�\�Ό�b\\m�n|��:t\�wf�*J[k�\"�x\�L��\�\�in#�\�\�(�\�*�@����\�#�f�凷�i��\0�\' \�\0�\��\�\�6Ҵ��;E]�\�\�S�j�\�(˽��\�*p�^:s\�^�\��\�a%���M�\0�Y�\��\�\�+\�>Y	I33C\�%���]�!$��ql�\0�up\�01��\�o>�\�}�\�\�\�\�o��=A�\�����M�Ȕ�Е-���^\�\\0�C�\�\�	~��Q\���T}�\��^z�\0��\0OV�\�b;s\�ʲ4D\�<��Ge\0ノ\�\�\�H�<n8\�\�\�RP�A��\�!�<�25~�║!�T��P]�Hg�]�}\�\�\�|��z\�3Nv\�1�hNpNc^x=��jO���X\�&�0zp1\�s�����hcP�\�\'h\�$u�\�v\rXF�W�]�v#;w1;~��3����%�f\�\�pǨ\�\���\�B\"��\�Q@��\��\�\0Ducky\0\0\0\0\0d\0\0�\�nhttp://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\r\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 4.1-c036 46.276720, Mon Feb 19 2007 22:40:08        \">\r\n	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\r\n		<rdf:Description rdf:about=\"\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:xapRights=\"http://ns.adobe.com/xap/1.0/rights/\" xapRights:Marked=\"True\" xapRights:WebStatement=\"http://pro.corbis.com/search/searchresults.asp?txt=42-17066732&amp;openImage=42-17066732\">\r\n			<dc:rights>\r\n				<rdf:Alt>\r\n					<rdf:li xml:lang=\"x-default\">© Corbis.  All Rights Reserved.</rdf:li>\r\n				</rdf:Alt>\r\n			</dc:rights>\r\n			<dc:creator><rdf:Seq xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"><rdf:li>Corbis</rdf:li></rdf:Seq>\r\n			</dc:creator></rdf:Description>\r\n		<rdf:Description xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\"><xmp:Rating>4</xmp:Rating><xmp:CreateDate>2008-02-18T13:07:31.821Z</xmp:CreateDate></rdf:Description><rdf:Description xmlns:MicrosoftPhoto=\"http://ns.microsoft.com/photo/1.0/\"><MicrosoftPhoto:Rating>63</MicrosoftPhoto:Rating></rdf:Description></rdf:RDF>\r\n</x:xmpmeta>\r\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                             <?xpacket end=\'w\'?>�\�\0C\0		\n\n\r\n\n	\r�\�\0C��\0\0d\0d\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0�;Mb�I?7ӁZ�w�:\�\0X��P\�	-� d\�\�Zdv�\�\�W\�i�S\�Ϩ\��2�w銒@���\�\'\�\�X\�>%h\�	~\�^(\�n^\�@�픚��v��\�m�A�}�+;q�\0=~��Y���\0\�^��l�Cy\��\0x\�\�\�\�RB���\�\�]��\0��\�Wsvfy�d`�[A<���G�5\�c�|	?�UQ�w�}�;�߅\���jn\�\�\�\��.^p(\�Zf\�\�X�	\�߅\Zg���Eu_&��X:��\�!���K�\�<�Ex�Wt�\�\�Ew�\�g���\����]|H��]\�h�(\�w��a���C\Z\�%��d�۸o�ψmib�d����*�j4⥷2�\����,�%(��\��\�\�\��4o�=�\�\�\�c�R�Û\�w,H\�8���K\�\�Ķ\�+��\�\�Q_��$c<=�چ�yk�3ح��@J%\�a��fBA8\�\0v���\�������۱�<�5ϡ�����C�3Y�ƞ��4k\�\��w�\n���\�\�\�\0�S\�\r\�u?�L�!_��j��jNgHZV���k��`c\�\�┤s:2�n\�\�\�?\�MW\�ߴ���\�\Z%Ɲ�xY��+�\�F\�kۋ�ic�\�\�Xm\�2b�e\�3�+\�i�m	\�T�\�ѩ\�5&\�\�hÖ\�\�k����Rס�R\�j�<b�-i}e\�\�\�\�u\�ֻ��v&�\�����e\'^$�\�z]\�!N��7���$��\0k\�y�\��\�Tyl�C\'��\�Ez4\�b�\02|Ã�(�w\�\��)v�	t�:{�U�\�\�\��<�ۙY@\��\�:f�b��k�# H��M�\���UUV\�ב,g)�4�Ƚ\�?�\��_�?\�\�o\�^/\�<�\�\\��}�R\�x+��\��*�&�P0<\Z�s�	K�\0`�\�\��Nx\�\�wz\��\��\�&+M{��	t\�+Le�xY�,\�8\�H\�d\�o���NMt�[Y�\�V\�&,\�a�@��B\\��\�yx\0���\�K��Sn�\r��`ּuw,��[\�y�X\�v���\���\�y�?�\�z2\�Q���ez\��ssr(Si?u(�F��Z�����y��\�I(Z\�˚�O��ߡ\�C\��iv\�a��q\\_\�7�\"xG�\��)��:�]hZʇ�\�$Su�ݢ���ى\'��cW�\'\�rȍ����\�\�k���\�뚰\����ڠ1�k�\�\��5 \�\�]5��԰^ͩ\�F����\��\0>0�:?k�\'B]C[�\�ď�1A�\�y%\��\�Glđ#����C�\�x\�v�\�_\��@x{�\���|#�K\�0]3\�VFi��C$�U\�l\�\�\�3	�I9\ndM�\0����n����\�\�e��\�.��>)\�4ɡ�,���^W�[�)����u\�\�p�O\�z/�4�\0]�\0���A�.Imc\�g�&?p][\���\�~�\�<��Y���\�T��\��\���Ǳ����J�b����\�O;\�\�}��nj\���\�~,Z\�\\Z\�\�k\�\"\�Y1\�c�\�ml�՗��+K��\'�®0@\�\�7\�\��o뿵\���\��\�ZB4�{}~(\�e�\�7\�\�#7\0\�\�#�`rk���%\�+{O�\'\�}�I�\����\0$\0�\�n�}F��\��/|K�|3�\0��~\�~%wx�\0\�%׭�;<\�p���-�Iۺ]�\�_#�NT��niJS��ɶݹ�bҾ\�J*\�h��ݛ\�+\��J<��^kT�wg�	<�l1N9�}�Eb?\�6:3^�|)Vs3*(Q�9\�\�\\u��m�\�\�23\'\�=\��O�FW���\0S��<\�P�2�\��\\A\�\�j\Zf�%\�Ȉ�F2(��\�\�Q�rm3\��%�\�\"N0^k�Ӽ]4V\�$hD^��+�\�|�䜖\n	�\��mO\��G\�\�\r\�\�ӵ��|7m6��\�*\���F\�O&:|���$95\�S\�\�<\�\�j^ǈ�������\0�W_��%\�7i�ᦝ\�dtn\�5w{\�\�x���*�m\0�X�����\�K��\r/\�\�{\�-حŋL�\�DC\�X:�\�A�\��\0� ��\�]o\�\�\��\�\'\�u�\0\�%Ŭ\�C���g\�\�\��M�\�\�Ϛ܂�\�\�	�O\�~���x�T�\��?\�ͪ_\�7�RKxQ��g#$�Ec��0\'\�\�am�M�\�?K$�3\�SmF���Ϙ�a��/o��-�G�\��y�{\�3�ͬj\�E\��V\�˕a�a\�\�H$�;��\�T��\��\��\��H���x6M~\��y▕t�+&YʈK$��sKݖ+�t8\�\��\���\�O�.��u\�=[�\��>�5;�\"�Z\���tV\�$hdf�DR�RF\�m���]R?0���4x\��\�~ |L\�/g6��\��5cs�Ե+�\�F\�\�\�fl|�2�b\�k��.�i8շ3۹纔\�Ou7�z/�\�Q�\0�\��՚�ď\�cX\�-u	.��%\�\�\'\r�\�B$X�\�`V��m^no�M{?�\��C\�?> \�\�z\�%�,���94v��\�̘\�\�\����8?i��x��y$�\�n/]�R6\�@\�1�\�\�\�=\�nxW\�F��\�X�\�\���\Zc\�Y�{i6�,�����+)\�e��\�\rХNq�)��ޯfs⽫T\�\�Z�6�\0·_\�L���5\�7\�w��h\�w��\'�5\rˀg̚\�\�X\�\�9g\\�\�k���S�EG�\���6\�e��ZƏ\�(\r\�\�<R�@\'�:�_��\0�\�ՠ�ڿ�\������>�\"�^\��%�\�dɞL\�v��C)����_�\n�h~���*\�Z�:f�e\�}B\�h!�y\�%T\0aP>��8Q�\n��\nX5:�^\�r��ߙ\�bg=y}\�[�>ӡѮq\�\r��\��\�\��\��]z\�\�Q�\�\�\�\�~�\�_?�\0�;~*���\0�N�>\'�Q��\�\��zu�\�\��inm!s�\�f����\�9潻᷅�^��$�\���\0\�\�};��֡$�F��\�S�RqH\�\�~�\�\�H��CzH���?g\�З\�#9w$�\0:+\�:?\�\�]�\�C��Cm��M�|\�\\��5�\��\�\��;�M\�\�4(��\�j�7�t\��\�[�\��;kI\�,A�6�\\�H\�)\�_Si\Z�6�D��\�W��\�R\'�>6~͚*��\�y5ۿ�b;}?\���\�\�$d}��z4�pq��	\�qQ�Wm3х:My�j���ً���n��~�I\�f\�4_�*\�SZ�sFF?�1I�NK�Ԛ���\0��j�K\�>�­{��\�\�M�k[\�yom$_e�\�+\�]����\�oړ\�\�~%|f\�\�m�[H<��$��\0\�Zn�,jB�C\�\�Xd\�s�3\�߲烾2~\�\r�.x�\�\�\Z\�\�Nt\�s\"-�8�\��.\�\��\�\�Іx�peR�L\��/yX\�P�k\�\��B� _��\0f?��\�_�z.�\��\0�\Z�`>��\�C}a\�\��_\�Ф��\�Gm\�2��ڂY.|���ִ\�\�	�=H\��?��E̖vq۳ډ�;XN\��[�\Z��3p�q\�6Y�e�BY~\nh���5.�a\��>�@G�\�{_��vo�\�\�\���q\�im|k)ڤ\�g\�5=�8\'�29\�p\�9������C\��1\�֟4~#��f�\�e,\�|�rI\'\�\�\�\������\�\�\��\0\�\�\�<���\0\�鹐\�e�As��ʝ걽իEc� #g���\�곲\�.x\�d�^���~��\0��?���?h\�دƾ�u/\rx�×��\�\0���/\"�\�H܃�\�-&)\�|�T�һg)*u*E\�\��\�f�\�龿\�~H�\��\0�m�\0����\�^\�%�Sьb\�ɥN��\�$r���\r\�\r��\�*�Ȥy�\�\r\�8~)�О9�M�\�$\"\��J\�\�\n9Y���	�\�Xu\�~��\0�t\��\�O\��zw�\�u]B\�\�&��\�\��W\�$�\�4�\�-\�\�c\"o��y��\�\�f�H��I�٭Ġ\�[�\0�3��\�=O|\�\�\�\�Q��\0\�L)�M��\�O�\Z�\�7\��I\�.m��\�ᗊ5o�\�74r\�5Do�u�R;W\�&�\�9b��;d�#<�%s�W\��\0�W�\nm;\��\0�_���Y �\rZ�\\L�{͏\�8�s\�:�\�n	b7lW���hTt\�\�l�\�Q�ҒݜՇ�/��n`N;(��\�V�y�h�\"�{\"U*KNc�Ѡ�\�\�Q`����\�\�Ś$ן�?\���\�\�m|\r\�;\�v\\��\�d��=\�7K\�oZ�\�B��~%Y�αb\���A\�\�s\�֮?\�o\�ok�]\����\�X,�\�K�y���6���\�\�H\�Lk����N2w���dBo��↗\�O\�&]2k;[]k\�Z��\���	F�3\�wq,\�B\�\�$��ݏ\�5�O�&���\��?\�6�\�z\�{\r�����S\�*$p�\�[�\�-���\�_�5\�^�핝\�\�\�6�or�g��\�I1\�\��$)#��\0�ujZ��\�\�O\�\�M�\���)�\�7�X0q#/\\g-�^�X{:*\�v�u<���i��k\��\��k\�a�\�ᆃ�K?\�f\�, ��\�I?h�	$��oƿ�o�:sY�\�?�Q]N\�\�\�\�I�ޔ���䆄ɴ\�t\�q\�\�\�\��\����י>\�i$7_{u�xO�x\��ů�.��|G���,\�\�,�Si\�\�KY$M\�\�i\�\�1�\��݃\\�{]5\�\�\�\"\��?>4\�hάC\�\�z?�a��_\�\'�\��\�|*�\0�m�F\�[1��\�o\�(l�Xm�M��ĭpqع �\�\�ö>7���#�\�\�\�:ֵga\�6&\�N�J�b�\��3\�_ү�\�\�/\���c�[\��\����j0\�,�\��T\�]2\���;\0vϑ\�d����\�\�b��\�F+�[����?�\�-\�姄>&Ck$\�69\�ugD\�m\���ћ�\�f�ן2�����f����\��φ\r\�\'��.���\�X$f6��-l�\���\�ц\�̱+n\�?��\Z~\�>#�׀uo���\�\�Z\�2Agyi�\�\�\�\�\�B��8*\�Uт��`�����\0e�\'¾?\�f�F�:�&x�E�޼�\�\�.�\�K(خ�uo$.\�!d	�Ł��`�?�\�\'AJ��k_[?�\ZY\�Y��\0�Z�\"x\����k	\��\�j\�]B\��\�V�z��+�\�5�\\\�\�\�\�0a꧊�B�a�����_�,߃�q�^B��3��[�\�\��7S�\�\�a\�O\��5����\0�G�|\�!�t���\0݆\�\�\�<U(*�oE}�U\\�A�H�\r{󼝽N{\�_���\0$��k�Y0\�\�D\��}\r������n\�\rӯ�\�s��!#�9�\0\�����u5��Y5�w��[<�a��\�퀈�\�b\0\0�\�f��?W�P���L�F@:�?J\�ӯ\��X^\�E;��\�fʂ3\���PG_�\�p�\�\�Td|\�\�/^���\0k��W\�]gG\�e�o�|\�R��\�\�!�kx�UC\�3Ĥ�+\��L\��\0\��^$��/�d�u��\�>\"�d;#9U�6\�\�ye#����|s�⟄�\0\�������x�M\��s�-�\����W�Ʒ\�(\Z8]#�d>\�fW�(�6R�)\��N�\�\�K��>	\�xO\�Z�\��}Z\�[��\�A.T,�A�E�Ey0��c�C�ҒG&\�\�:u\\�[��\�r\��ѧ(\�\��\0������\�]�6��Ȑu�#x\�GUn���>\�:\�\�_��mJ����\�m�\�\�|kc�١fO&\�\�p�\0�\�4a�<�\�$\��\��wH���Kᅅ4\�v�՟Ķs\�\�\n\�Dt�\�\�d_-�y��FV���ǟ\�_���l�\��z+^1�W��\�L�����x4{e�\�س� Ә̬�	��X<L��y\�\��<T=�d�\��\�\�+\�6���\��\0��\�Q��׵�>�ɤ��Kne2$ɸx��ÌF\�6��\�\�zU��E\�\���\n\�\���g��7\'?\���\�/\�\��\�\� ��>\Zx�\�\\mW¾Ko>\�\��\�尵��\�KoG8�p�B\��E\�\�0��~��\0�T\�l7z��k7\�\'H\�E�\��^\�2Hd�1 ��\������V�iӋ���J����i�f�\�Ӿ-��i�]\�v��<-�M-\�\�[a�Rں��\'\�;�AA��F@*\n�\0>|�\0��|I�\�>\0\�\�:e�!�\�W���on\��˸�(oT�\�~\�\"ûtL\�K��m\"s*�\0��\�\�I\�\�\�\�;K3\�\�\����m�TF\�XF�\�\�%_O\�VD�\�گ�\nH�\0~j���E\�\�Z��\�CKf_\�u\�T�@\�Z`�,UX;���\�ӫ\�ɦ���\�~j^�α\�M6\�I�/x�N7�vpL\�\�7��;�\�\�cT�\�#b̧|\�l�\��\�|a�\�\�`��1N\�\�\�yo��PN?vF\�\�8#�`�_����ǭK\�g�<M�☭5-J\�U��\��b(�y|���u!6F\0a�\�ȑ~F\�\��\0k\r\'ĺG��4?Ic���>�fWd�-p7u\�\�\�Em�\� \�UXׯ.~[\�\�B�T�{u\��\\\�_�υ\�\�M>\�mb$\0=ł$�\�?1P\�\"d��\�\�r|��x+\�׎\�K\�c\���<Ks\�E�IB*.\�\0ܖ\�rN�\�\��Z��!G�\��3\�6�D��`d�\�\�\�\�S\�@?x\�\�\�U�K\�m1&t�\�\��f\�\�r2� t\�1��J+����6t�\0_\�m��\�ŬP�P\"��#f��\��\0����k�7�\�\�\�\�\�R�o�\�T6\�@`�a�0Q\\\�\�GD��:���}f\�\rCE\�5O0y���:�\�I�ĪÌQ�\�*{�2\�ñ�VV���\�\�(R5�	�ճ\�t\nED�+\�\\!-\ng\�?���̞�lд�n�f\n�.\�\�\�\�<�\�5<<=cD4\r\�U�\�ݧA�\\��c�а<1\�E:ufӻf~\�*\�E�\r}=n�U��4T�ĭ�p�p�;�\n\�|\�	��C\�m$��9/eieh\�\�+FK��_9�@_�\�U\�M�Y5b�Њ�\������uq{{p�kq5̒�?�-\�31x�31%X��+&\�\�7\�n��ip\\O�\��2�A�P\�a\�nڧ�\��@��\�䒊\�M\����\�.������rq\�~�\�\�\�E\�1\��\�');
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
INSERT INTO `user` VALUES (5,'FDF','sharad@incapp.in',9999999888,'1','�\��\�\0JFIF\0\0`\0`\0\0��\0<CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 90\n\0�\�\0C\0		\n\n\r\n\n	\r�\�\0C��\0\0d\0d\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0��\"���?\�/���\0	��\0��?\�/o\�#���\0��\0��\�\�(��\"���?\�/���\0	��\0��?\�/_\�#���\0��\0��\�\�(��\"���?\�/���\0	��\0��?\�/_\�#���\0��\0��\��\0ً�T���f�^��\�\�\��3�^�7Ec`��Q�Ui���\�*YCK+*.\��\�/؇����J�\��\0ho�7Kw*��ÞDU��P��\�6�\�\0A\�+p\��\��E\��d\�_\�\���\0�t\�^߶G���\0\�1�\0_��\0?\�\�\�\�\��wH\�K�\�M~\�c	%ǊL\�!3�`���\�I\��F�=\0�\�O�;��	����\0L�w�~�#\�\Zg\�\�\�8⸰���mlú�<�\�7\�Ø%G�#�%J2\��#\\\0|\��\0{~\���{�\0�\��]��\��\0A���LG�\0\�\�\�����\0{~\���{�\0�\��]��\��\0A���LG�\0\�\�\������w�\�G����\0\�1�\0E~_\'J(�QE\0kB\�\�<O�Y\�}�����\�mmK�\�\�*\"�\�\0}j�{W�gL�Z�\0�����f+����Ǫ��n\�h�\��\0�?�)��\0����\�\�VV7~6\�!�\�\�~$U\�q�_�9\�-a.\�XT�e�W����\n��h�~$\�\��\�B\�\��\0O���nbYa��ԫ\�\���VRA`�A�TP�\��\0@�\0�<3�\0\��^��\�M�\�|�>�}����ú�G$\�\�\�f�8�eB�\�8ݵ\�D���\��\n��\���3�+45\�^2��\�.G\�\�~5��\�EP��\'J(�QE\0\�\��K�\��\04��G�\��\0\r��\�W�\�\��\Z\���?�\0\�^��݂jRh�^ �\�-r�k6Mͼ�R�5�Y�1�A��sQE\0QE�k�\0��\0\�n�\0\�r\���)����\0�|��?\�\��7㍷���\��-\�{\�iR\�9�\��;+y&�l�*e\n��\�#�1�\0��(\�Ҋ�\0\�(��\n��\0�%w\�e\�7�\0�A�N\�\�KM+\�\�\"�\��\��\�L�6\�\�T}\��,\�\�w8�\0��?��fK�RH\�d�E��!�\�A\�)\����\�\�?n��%\�\�\rf\�P[�x?I��\�w\�qo�XĐ�$\���b�db|g*�}�@Q@��\0�v\�c�.�,��E\�\�\�o�Wi\�L�\ZD+q{s�:�h�\�#\rw\��w_�_�v�\0\�\�a�X�\0�Gm�\�\�E��5�>\�]b�\Z�\�.�D���]���2$�~��[@Q@N�P�(�\�E\0QE���\0=躬�\0~?\�0\�\�&�k�\�6\�v�!�\\Iqr\�H\�D�\�)# K&>�\��W_�\0��\����\0�^~\�:%���yi�/ǚ>��x��\�\�\�{�I>\�>\\q\�=\��&\�R\�\�r\�I���\0��(��\'���a\�+�[S���R\�.d�����<�\�\�\�\��%�\'\�T�\��\0�8��	���2�\0\����|gqa��\�\ZU���9k$�8\�╤�{Q+与\�J�%�)!X�\���\0QE\09:QBt��E}_�\0\��\0�,�}�\0��\�A��P\�xF�7�/\�\�;F\0��.\�y\�\0c�IK�p�wW�\'�\0\��\0�U?g?ض\�\�Y�Պ�r�\�_3^��\�F�l\�0�ƛ����pӐ\�Jg�\��\��H?\�#�\n/u��kZ��\�\�\'�/�i�;\\$�\�sm�FBr\�\�d��k�\��	��\0t�?\��<5㟎\�:>>��w���+#@[���I\�|\�Ȳ����\����Scc�e\r��1[\�[�\�Q D�`*��\0\0\0*Z\0(��\0(��\0�+�\n��\0k�S�\0z��\�&\��M{\�\rr���\�,w6>z��7�Eh��\�(Y��8��G�s����\�\�?\�G�`��\�>O��r�վ\�#G_\��r$T\�]\�&r\'\�T��i�\0\0�\�\�@�׏<�|,�\�\�蚿�<A�Lm\�\�R\�K;\�)GT�)�0�`\rdW�/�a�\0�=~~\�~M\�\�ïx\�#1Z\�\�Bb\�l�b-\�\�+q$Dr(ls�_�_�Q��3\�>��\��/�ϊ-\��U\�Vڈ\�\�[_��JK��a\n�̮\��N�(��\��\0��~\�_��\�úǄ�U�L!�ҵKV���b�\�r0���8ee`H ��?��\0x#F�i\��3\�\�\�t\�A\�-��\��\�>\�-�l`�B�QF�*\"�\0*�\0�x��\0(��\04QE\0QE\0QE\0QE\0y\�\�\�\�\�/\�\�H5�|.�u\�m^\�\�l��\��7g�\\\���ĲM0@\�;\0�d�(��?�\�');
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
