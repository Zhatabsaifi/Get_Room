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
INSERT INTO `hotel` VALUES (1,'hghjh','Andhra Pradesh Anantapur hgfj','3556667777','abc@gmail.com','ghghg','on on ','ˇ\ÿˇ\‡\0JFIF\0\0`\0`\0\0ˇ˛\0<CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 90\n\0ˇ\€\0C\0		\n\n\r\n\n	\rˇ\€\0Cˇ¿\0\0d\0d\"\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0	\nˇ\ƒ\0µ\0\0\0}\0!1AQa\"q2Åë°#B±¡R\—$3brÇ	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫\¬\√\ƒ\≈\∆\«\»\…\ \“\”\‘\’\÷\◊\ÿ\Ÿ\⁄\·\‚\„\‰\Â\Ê\Á\Ë\È\ÍÒÚÛÙıˆ˜¯˘˙ˇ\ƒ\0\0\0\0\0\0\0\0	\nˇ\ƒ\0µ\0\0w\0!1AQaq\"2ÅBë°±¡	#3Rbr\—\n$4\·%Ò\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÇÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫\¬\√\ƒ\≈\∆\«\»\…\ \“\”\‘\’\÷\◊\ÿ\Ÿ\⁄\‚\„\‰\Â\Ê\Á\Ë\È\ÍÚÛÙıˆ˜¯˘˙ˇ\⁄\0\0\0?\0˘˛\"ˆ˝≤?\Ë/˜ˇ\0	àˇ\0¯∫?\‚/o\€#˛Çˇ\0òèˇ\0ãØ\À\Í(ı˛\"ı˝≤?\Ë/˜ˇ\0	àˇ\0¯∫?\‚/_\€#˛Çˇ\0òèˇ\0ãØ\À\Í(ı˛\"ı˝≤?\Ë/˜ˇ\0	àˇ\0¯∫?\‚/_\€#˛Çˇ\0òèˇ\0ãØ\œˇ\0ŸãˆT¯â˚f¸^∞\¬\Ô\Í˛3Ò^§7Ec`É˜QÜUi¶ëä\«*YCK+*.\·ñØ\‹/ÿá˛¢∑ìJ≤\’ˇ\0hoä7Kw*óó√ûDUÉ°P˙Ö\ 6Ûé\‹\0A\€+p\‘Ò\Ô¸E\Ì˚d\–_\·\Ô˛ˇ\0Òt\ƒ^ﬂ∂G˝˛ˇ\0\·1ˇ\0_ºˇ\0?\‡\›\Ô\ÿ\◊ˆwH\ﬂK¯\·M~\Ìc	%«äL\ﬁ!3ú`πäÒ\‰ÖI\ÎÚF£=\0Ø\ÀO¯;èˆ	¯ôˇ\0Lwä~¯#\¬\Zg\Ï\—\·õ8‚∏∞èáml√∫´<ä\◊7\¬√ò%Gç#î%J2\∆Ú#\\\0|\«ˇ\0{~\ŸÙ¯{ˇ\0Ñ\ƒ¸]Ò∑\Ìëˇ\0Aáø¯LGˇ\0\≈\◊\Âı˙Éˇ\0{~\ŸÙ¯{ˇ\0Ñ\ƒ¸]ÒØ\Ìëˇ\0Aáø¯LGˇ\0\≈\◊\Âı˙Üøwß\ÌêG¸Ö˛ˇ\0\·1ˇ\0E~_\'J(¥QE\0kB\–\Ô<OÆY\È∫}º∑ó˙Ñ\ÈmmKπ\Áï\ÿ*\"é\‰±\0}j≠{W¸gLèZˇ\0Çä¸≥îf+øà˛Ö«™∂ßn\Ëh˙\‰ˇ\0Ç?¡)ºˇ\0û˝îÙ\ﬂ\ËVV7~6\÷!Ü\Ô\∆~$U\›qØ_Ö9\»-a.\ÈXT≥eñW´®¢Ä\n´≠h∂~$\—\ÓÙ\ÌB\÷\⁄ˇ\0OøÖÌÆ≠nbYaπâ‘´\∆\Ë¿ÜVRA`ÇA´TPÚ\Áˇ\0@ˇ\0¡<3ˇ\0\ÁÒ^ÖÒ\·Mª\Èø|™>ó}°≥Üè√∫´G$\Ëñ\‰ù\ﬂfö8¶eBî\–8›µ\„D¸èØ\Íª˛\nµé\„˛˚3∫+45\“^2Å∂\‹.G\‡\ƒ~5¸®\–EPì•\'J(¥QE\0\Ó\ﬂKÖ\ﬂˇ\04˝ùGØ\ƒˇ\0\r¸™\€WÑ\◊\Ë∑¸\Z\«¿?ˇ\0\‡∞^≤Ò›ÇjRh∂^ \‘-r™k6MÕº∏RÜ5éYó1ÇAÇ˝sQE\0QE˘kˇ\0Åˇ\0\ nˇ\0\Ïr\“ˆΩ)µ˝úˇ\0¡|˛¯?\„\Á¸7„ç∑å°ù\Ì¸-\·{\ÔiR\√9â\Ìı;+y&¥lÙ*e\nå§\À#˛1®\0¢ä(\…“ä•\0\⁄(¢Ä\n˜ˇ\0¯%w\Ìe\Ï7ˇ\0¯AÒN\Í\‚KM+\¬\ﬁ\"Ä\ÍÚ\«ï\”Lü6\◊\€T}\Ê˚,\”\‡w8Ø\0¢Ä?ø®fKòRH\›déE¨ß!Å\ËA\Ó)\’Òè¸ˆ\‡\“?nØ¯%\œ\√\rf\◊P[Øx?I∑óâ\‡w\›qo®Xƒêô$\‡Øâb∏db|g*¿}ù@Q@òˇ\0v\Ì±c˚.¡,ıèE\Â\œ\‚oçWi\·´Lª\ZD+q{s∑:¨hê\„#\rw\‰Úw_™_vˇ\0\Ì\Áa˚Xˇ\0¡Gm¸\·\›EØ¸5>\¬]b¨\Z¨\À.˝Dß˚û]µªÇ2$¥~£˘[@Q@NîPù(†\—E\0QE˚£ˇ\0=Ë∫¨ˇ\0~?\Í0\›\ﬁ&âk†\È6\◊v´!Û\\Iqr\–H\ÎúDä\‡)# K&>Ò\œÙW_ˇ\0¡ø\‡îæˇ\0Ç^~\«:%ΩûìyiÒ/«ö>õ®xˆˆ\Ó\Â\‰ñ{ÙäI>\Ã>\\q\€=\ÃÒ&\≈R\√\Êr\ÃIØµ®\0¢ä(¯Ò\'àØºa\‚+˝[Sπñ˜R\’.dªª∏ï∑<Ú\»\≈\›\ÿ˜%â\'\ÎT´\Óˇ\0¯8´˛	±°¡2ˇ\0\‡¢˙óÜ|gqaÛ\∆\ZUøâº9k$è8\”‚ï§Ü{Q+‰∏é\‚JÜ%ñ)!X¸\ÕÖ\0QE\09:QBt¢ÄE}_ˇ\0\›ˇ\0Ç,¸}ˇ\0Ç£\ÎA˛¯P\ŸxFå7û/\◊\Ï¥;F\0íã.\÷y\‰\0c∑IK°p™wWÙ\'ˇ\0\Áˇ\0ÉU?g?ÿ∂\ﬁ\”YÒ’ä¸rÒ\Ã_3^¯í\ÕFçl\ﬂ0˝∆õóàåìp”ê\»Jg¸\È˛\√H?\⁄#˛\n/uøækZüá\Âî\≈\'â/îi˙;\\$ü\ÈsméFBr\—\¬dîàkˆ\„˛	≠ˇ\0t¯?\‡ç<5„üé\ﬁ:>>ÒÉw•Ü¥+#@[àú∞I\Êô|\Î»≤∂Ñ∑Æ\÷§É˚Sccôe\rµ¥1[\€[¢\≈Q Dâ`*Å¿\0\0\0*Z\0(¢ä\0(¢ä\0˘+˛\n¡ˇ\0k¯Sˇ\0z¯†\Èü&\◊ÙM{\¬\rr˙Ω¢\‹,w6>z†ñ7éEh¶Ö\⁄(Yïî8Ú˛Gès¸˝∫ø\‡\—?\⁄Gˆ`∂∫\÷>O£¸r’æ\Á#G_\Ï˝r$T\‹]\Ï&r\'\ÂT∑öiˇ\0\0Ø\Íè\—@¿◊è<Ø|,Òé£\·\ﬂËöøá<A§Lm\Ô¥\ÕR\ŒK;\À)GTñ)∫0Ù`\rdW˜/˚aˇ\0¡=~~\ﬂ~M\‚\Ô√Øx\“#1Z\›\›Bb\‘l∞b-\Ó\‚+q$Dr(lsë_à_Qø¯3\ƒ>é˚\ƒ≥/ãœä-\·ÒU\ƒV⁄à\„\Ó[_ÄêJKÑùa\n´ÃÆ\‘¯Nù(Æõ\‚ˇ\0¡Ø~\œ_µ¯\Á√∫«Ñ¸U°L!ø“µKV∂∫µb°\◊r0åÆ¨8ee`H íÄ?ªˇ\0x#F¯i\‡˝3\√\ﬁ\“t\ÌA\—-£≤\”Ù\Ì>\Ÿ-≠l`çB§QFÄ*\"®\0*Ä\0™x¢ä\0(¢ä\04QE\0QE\0QE\0QE\0y\◊\≈\œ\Ÿ\·/\Ì\‚H5ü|.¯u\„m^\⁄\Ÿl°æ\◊¸7g©\\\≈ª∫ƒ≤M0@\“;\0ªdö(¢Ä?ˇ\Ÿ','1',2,'Dadri');
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
