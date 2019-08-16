-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: localhost    Database: get_room
-- ------------------------------------------------------
-- Server version	5.5.48

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
INSERT INTO `hotel` VALUES (1,'hghjh','Andhra Pradesh Anantapur hgfj','3556667777','abc@gmail.com','ghghg','on on ','�\��\�\0JFIF\0\0`\0`\0\0��\0<CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 90\n\0�\�\0C\0		\n\n\r\n\n	\r�\�\0C��\0\0d\0d\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0��\"���?\�/���\0	��\0��?\�/o\�#���\0��\0��\�\�(��\"���?\�/���\0	��\0��?\�/_\�#���\0��\0��\�\�(��\"���?\�/���\0	��\0��?\�/_\�#���\0��\0��\��\0ً�T���f�^��\�\�\��3�^�7Ec`��Q�Ui���\�*YCK+*.\��\�/؇����J�\��\0ho�7Kw*��ÞDU��P��\�6�\�\0A\�+p\��\��E\��d\�_\�\���\0�t\�^߶G���\0\�1�\0_��\0?\�\�\�\�\��wH\�K�\�M~\�c	%ǊL\�!3�`���\�I\��F�=\0�\�O�;��	����\0L�w�~�#\�\Zg\�\�\�8⸰���mlú�<�\�7\�Ø%G�#�%J2\��#\\\0|\��\0{~\���{�\0�\��]��\��\0A���LG�\0\�\�\�����\0{~\���{�\0�\��]��\��\0A���LG�\0\�\�\������w�\�G����\0\�1�\0E~_\'J(�QE\0kB\�\�<O�Y\�}�����\�mmK�\�\�*\"�\�\0}j�{W�gL�Z�\0�����f+����Ǫ��n\�h�\��\0�?�)��\0����\�\�VV7~6\�!�\�\�~$U\�q�_�9\�-a.\�XT�e�W����\n��h�~$\�\��\�B\�\��\0O���nbYa��ԫ\�\���VRA`�A�TP�\��\0@�\0�<3�\0\��^��\�M�\�|�>�}����ú�G$\�\�\�f�8�eB�\�8ݵ\�D���\��\n��\���3�+45\�^2��\�.G\�\�~5��\�EP��\'J(�QE\0\�\��K�\��\04��G�\��\0\r��\�W�\�\��\Z\���?�\0\�^��݂jRh�^ �\�-r�k6Mͼ�R�5�Y�1�A��sQE\0QE�k�\0��\0\�n�\0\�r\���)����\0�|��?\�\��7㍷���\��-\�{\�iR\�9�\��;+y&�l�*e\n��\�#�1�\0��(\�Ҋ�\0\�(��\n��\0�%w\�e\�7�\0�A�N\�\�KM+\�\�\"�\��\��\�L�6\�\�T}\��,\�\�w8�\0��?��fK�RH\�d�E��!�\�A\�)\����\�\�?n��%\�\�\rf\�P[�x?I��\�w\�qo�XĐ�$\���b�db|g*�}�@Q@��\0�v\�c�.�,��E\�\�\�o�Wi\�L�\ZD+q{s�:�h�\�#\rw\��w_�_�v�\0\�\�a�X�\0�Gm�\�\�E��5�>\�]b�\Z�\�.�D���]���2$�~��[@Q@N�P�(�\�E\0QE���\0=躬�\0~?\�0\�\�&�k�\�6\�v�!�\\Iqr\�H\�D�\�)# K&>�\��W_�\0��\����\0�^~\�:%���yi�/ǚ>��x��\�\�\�{�I>\�>\\q\�=\��&\�R\�\�r\�I���\0��(��\'���a\�+�[S���R\�.d�����<�\�\�\�\��%�\'\�T�\��\0�8��	���2�\0\����|gqa��\�\ZU���9k$�8\�╤�{Q+与\�J�%�)!X�\���\0QE\09:QBt��E}_�\0\��\0�,�}�\0��\�A��P\�xF�7�/\�\�;F\0��.\�y\�\0c�IK�p�wW�\'�\0\��\0�U?g?ض\�\�Y�Պ�r�\�_3^��\�F�l\�0�ƛ����pӐ\�Jg�\��\��H?\�#�\n/u��kZ��\�\�\'�/�i�;\\$�\�sm�FBr\�\�d��k�\��	��\0t�?\��<5㟎\�:>>��w���+#@[���I\�|\�Ȳ����\����Scc�e\r��1[\�[�\�Q D�`*��\0\0\0*Z\0(��\0(��\0�+�\n��\0k�S�\0z��\�&\��M{\�\rr���\�,w6>z��7�Eh��\�(Y��8��G�s����\�\�?\�G�`��\�>O��r�վ\�#G_\��r$T\�]\�&r\'\�T��i�\0\0�\�\�@�׏<�|,�\�\�蚿�<A�Lm\�\�R\�K;\�)GT�)�0�`\rdW�/�a�\0�=~~\�~M\�\�ïx\�#1Z\�\�Bb\�l�b-\�\�+q$Dr(ls�_�_�Q��3\�>��\��/�ϊ-\��U\�Vڈ\�\�[_��JK��a\n�̮\��N�(��\��\0��~\�_��\�úǄ�U�L!�ҵKV���b�\�r0���8ee`H ��?��\0x#F�i\��3\�\�\�t\�A\�-��\��\�>\�-�l`�B�QF�*\"�\0*�\0�x��\0(��\04QE\0QE\0QE\0QE\0y\�\�\�\�\�/\�\�H5�|.�u\�m^\�\�l��\��7g�\\\���ĲM0@\�;\0�d�(��?�\�','1',2,'Dadri');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-16 11:53:59
