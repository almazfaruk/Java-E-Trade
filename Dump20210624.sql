-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: mycontext
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `__migrationhistory`
--

DROP TABLE IF EXISTS `__migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ContextKey` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__migrationhistory`
--

LOCK TABLES `__migrationhistory` WRITE;
/*!40000 ALTER TABLE `__migrationhistory` DISABLE KEYS */;
INSERT INTO `__migrationhistory` VALUES ('202103221327149_AutomaticMigration','MySqlCreateDb.Migrations.Configuration',_binary 'ã\0\0\0\0\0\0\›\\_o\„∏/\–\Ô \ËÒê≥ì›ók`\ﬂ!\Î$Ö\—\À¨sáæ¥\ƒ8\¬Q¢+Q\€á~≤>Ù#ı+îEâIâîe9W\ÏKLr~á\√\·hfˇ˚\Ôˇ,~zãë˜\r¶YÑì•1;˜=ò8åí\›\“\œ\…\À˜?¯?˝¯\Á?-n\¬¯\Õ˚ïè˚\\å£îI∂Ù_	\Ÿ_\Œ\ÁY\ncê\Õ\‚(HqÜ_\»,¿ÒÑx˛\È¸¸/Ûãã9§>\≈Úº\≈\◊<!Q\ÀÙ\Á\n\'‹ì†;BîU\Ì¥gS¢z˜ Ü\Ÿp\ÈﬂΩo˛ÅV)^o}\Ô\nEÄ2±Å\Ë\≈˜@í`eÒÚónHäì\›fO\0zz\ﬂC:\Ó†V¨_6\√mWq˛©X≈º!\‰PAû;^|Æ\ƒ2oìÆ_ãç\n\ÓÜ\nòº´.Ö∑ÙØ\¬8¢∏\Ìô.W(-Fµ;+áüyR\„Y≠\0TOäg\ﬁ*G$O\·2Å9I:ÛÛ-äÇø¡˜\'¸LñIéê\»\ÂåˆI\r¥\È1\≈{òí˜ØE\‰v˙\ﬁ\\&û∑©k\⁄6![\‘:!ü?˘\ﬁ=el¨@¿Ü\‡˛&0•ã!0•˚∑a)BÖ›Ñ≈ü|J™vÙ¯\ﬁx˚&;ÚJE\ﬁ|\Ô6zÉ!o©\ÿ¯%â\ËY£D$\Õa\ﬂLè \À˛â\”p\‰âÛFW:5\Ë\»~É\ƒ^Ö\ÿ¯\”\Èõà5îSi5Wiˇ|=˙ë\‚0Hv0Nx\ƒ:c\",ıì}¡AêÙC›Éo—ÆjÙ!\r©\Í¯\ﬁWà\ \Ó\Ï5\⁄3\À?c]\œ\\CoS≈®¶©:ûü@∫+˙ü∞ÆwÉÛ4p\‡á\À[\À\Ô¨¿3ë©vü¬ó2¿ïµBù¥l:ñ\ƒvÖ©S«äµ	\·[hkB\ÿ¯”ô6ˇ\“PNeBlçV7\n\„˚>è∑Ö˘Fcì]\”\Â}™\'*eÙòFçe\€–â<¿qk3\‹Ò≥§∑G¸:içq≤=kú\‚tß≠\‚`\»qHß:o’îì∏~+\ \·ß\Ô\‡jtÜZ\◊0\“h\œ^:G\›:;xãQ8Å=ª	£q]û˙¶>\‘\√h[\Z£b\À\◊H-kºÛπ±B\roJß\‚o®#r:\ZVmM!ß8ù)º´-¥7\„C>\Áq¨\·0\‹Q\€Gƒ¨ßÉ¥êπ\‰∂\ZXå>ùˆÒ◊®´\ÊŸΩb\«}5Orˇ\ﬁ\ƒ B\‘\0è.fï\¬,n™\„-\È\'p¢\◊;0\·S4©)Í∫™≠^\›m˚£}í€òû´,\√ATÚ Ω≥¯sD^\–Mzùo&¿\ÊUC•H\ÕN¥ßÜÜNæÙøSddÇ¨\Ô˘íøêd\»øm£íkà Å\ﬁU¿\¬\Î+ê T˜á\ $î[®YÉiaO\0Z\—]°Ü2Jàj£$àˆ\0u1\ﬁ\"r\n:¨’ì¥{Æ\·&Ö\Õ\Î⁄âCgØ\'i	¨O>ãπ†P\›z¶∏§&Ω0˚ßçj4∑∂¨\Á≥\ŸEá ôÉk}Z˜]˚xYØ[ı4L\‹u∏\r{ç\√z\ƒc\—≈ìFd¶\›POˇ†Ûfîãç÷õùeßSgî\√\·<Lpˆ§;∆¥\’˙ß\Ÿe\Ê§N¢u˙à≥\„™n:9\ÿ\Ï≤\ﬁ1v\“2›∫õzt\Âbn•!î¶\Âc\‰z[4\√7\›g@\ aıö\…*Á©Ω˜\ÏÒ\À)5(çSm}ı©Z1Ò2y\ÌO)Ù\\uz\0∏;£\–Ûé˙\∆$*MWFc\Íå¶´ÉZÖû5∑hÖo¢éVc¥\·\Ï∂ˆyê5øç\»%\Ósåz\ﬂ\€\∆F^õ≈∫\’ö∫Ùnó\∆Œ©ò7)Üùs)h\¬$™z<KG\‡ﬂ§›ñûâÖHàB~ß©R0ﬂ±˝∑¨¿±\Ódˆﬂçm>+\÷FΩ\Ó[\ÃYéU’∞òí±w`øßèh!9´jÒ6,3kı˝\∆=o)fÛ ”§/\’\‹\÷3úÇlı“©)ß∑Qöëk@¿\œ¯U+\√ZWò¡¨Ú…§[J\›,nn˘\‚o·¶î3©4W|EwK\ÓA6\Ÿ@\ÁIq\0Å‘î¯¥\¬(èì\Œ4™^TSêX≥=V\–°öVi1oâEÒv¡+.ßºçVõl>”∂ª¨ø-∂\ŸDhíiÛ\ƒej~¯õë∏G)‚òºÃé=≤é§]\⁄\–\ÿJ	à5\ŸcH\…G\"í\‘ÒatØÚâÜ´û¿BıLÑ&¡69-¢TM92]H\„)±úØ¢Ú\≈{\\YRää\«\⁄\Ì\—ƒºMlˇ0™\ÿ\·\‹\Ÿ*£	\¬BÕ§=∂\«`z\Ÿ1ı\Êì:\ÏÒƒÄê\◊(\Í\‡nª®\—B£ö0§\Ã\rI\Íp∞\’bvÜd´\≈{º:Cƒ™?\ÃA´_?\√ö	\¬‚†ôIßQf9Y@ág:l\'⁄ÆÚ¡6|´t\‰€§\';Æ7\◊|Qo\„∏⁄øÍìπtY\”1\ﬂ\ÊWM˝\≈[~\’\‘\Õ\\âﬂ¥%\∆\ƒ˜UJﬂ≠uñL8\‰\‡Ç\ﬁsh¢\'}B3\“\ÓETÑGOè˛H˛\0\Ô!{\Óp#\ /n\0£∆∏ˇ(\ﬁr\'w+ú\◊!NºuV§\Ê\‘yn2h«öTçQBN\Ì!µæ÷°ßVàiQÖ{˙ãï¯\‚{îˇoQX\«~fEˇå)$ä\ËiF‹Å$zÅaôS˛EÖ£T\\¯q\n˝\ÊY\"M∏L©ˆìwl\“¬ª®êmozócﬁ∞Rkáp≤c_£\Z§!ôVv8Æïr\ƒ?^\Õ\⁄Q6@N+ßP>Æìæ-˝\ﬂKíKo˝˜gFu\Êï/\ËK\Ô\‹˚\◊µm\Â‰á§ø\–‘µm1FÉó#\⁄W7ô™&˘†«∫\0\—‘ÖSG\—c\Ìa±ê:ß;Hóu%VC\rôZA5I-êzAÙ˜z§\ \‘\·Ñ8\◊Eù§\—a€†&\Ô\€\ÍfCyò•=\‘F:\Îê\n°©\Z*OM˘\œP®VuèÖ\·w/Qp:\∆-9\ ˘\–Uáå\Ïr©¡í)Ké\ÊlçaR§\‚Öi=fù\ﬂ*=ÃêZYp\Ë\⁄4Öái\È\–L|ûâ5m¢|;kP\Óˇ†tL\„\«s˚í\Áû_ˇôQ?F\nΩµ˙ç¥˝\ﬂúA\'\rp\–8ªx\‡∫\‡^ep ™\'Öπä` ™\'\Â˝\„T	ú™,`j\€c¯6g\Î(\À\Ëú<\€_Õ®l\Ôò&ôﬂú\À\œ\‚ÒK?\‹b∫∑Ãè\‚˘ˇVy˛i˛:lSÜ¨s\rÄ|\Ã˙\0æ1£yPıÄnÜ™7Ç˝stVË∞ãˆ∏Ö≤éà_˚K\r,\n>NmÅ{1Åµh>R\ÈÄ{©ÄìÄN[\Z\‡V0\∆˛9dˇ´ü\\\È\’\"¸o≠ÙRÀ¢]Q|ON` ]*ıòuÚÇ˘\›\÷\‚ài=\≈\Ô !ΩqÆRΩÄÄ\–\ÓÄ\«~(/\√[Æìáú\ÏsBó\„-ít£∏#ª\Ê/Kdûe∞1c	îÕà.>$_ÚÖ5ﬂ∑ö¯†¢∏|´@R±ó§(\Ì\ﬁk§{úXU\‚´}Ü\'\Ô\Àí\r¯áFˆg∏¡;ˇpn\È\ﬂY\Ïã\Î\ÏRgFCOR\„∑ˇ\nåP¶¥X\0\0','6.4.4');
/*!40000 ALTER TABLE `__migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `AdminId` int NOT NULL AUTO_INCREMENT,
  `AdminName` longtext,
  `Password` longtext,
  PRIMARY KEY (`AdminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'frklmz','b98sdqb6ed9qfdbo8ndufna0f79o8095');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baskets`
--

DROP TABLE IF EXISTS `baskets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baskets` (
  `BasketId` int NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `ProductsId` int NOT NULL,
  `Piece` int NOT NULL,
  `IsBasketing` tinyint(1) NOT NULL,
  `Products_ProductId` int DEFAULT NULL,
  PRIMARY KEY (`BasketId`),
  KEY `IX_UserId` (`UserId`),
  KEY `IX_Products_ProductId` (`Products_ProductId`),
  CONSTRAINT `FK_Baskets_Products_Products_ProductId` FOREIGN KEY (`Products_ProductId`) REFERENCES `products` (`ProductId`),
  CONSTRAINT `FK_Baskets_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baskets`
--

LOCK TABLES `baskets` WRITE;
/*!40000 ALTER TABLE `baskets` DISABLE KEYS */;
INSERT INTO `baskets` VALUES (25,9,0,11,0,14),(26,9,0,2,0,12),(27,9,0,1,0,12);
/*!40000 ALTER TABLE `baskets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CategoryId` int NOT NULL AUTO_INCREMENT,
  `CategoryName` longtext,
  PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (10,'Kiyafet'),(11,'Elektronik Esyalar'),(12,'Dekoratif √úr√ºnler');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrdersId` int NOT NULL AUTO_INCREMENT,
  `BasketId` int NOT NULL,
  `OrdersNumber` longtext,
  `OrdersDate` longtext,
  `TotalPrice` float NOT NULL,
  PRIMARY KEY (`OrdersId`),
  KEY `IX_BasketId` (`BasketId`),
  CONSTRAINT `FK_Orders_Baskets_BasketId` FOREIGN KEY (`BasketId`) REFERENCES `baskets` (`BasketId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (25,25,'10039206382','29/05/2021',6600),(26,26,'10039206382','29/05/2021',500),(27,27,'10009620424','29/05/2021',250);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductId` int NOT NULL AUTO_INCREMENT,
  `ProductName` longtext,
  `CategoryId` int NOT NULL,
  `Piece` int NOT NULL,
  `Price` float NOT NULL,
  `Description` longtext,
  `ImageFolder` longtext,
  `Editing` tinyint(1) NOT NULL,
  PRIMARY KEY (`ProductId`),
  KEY `IX_CategoryId` (`CategoryId`),
  CONSTRAINT `FK_Products_Categories_CategoryId` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`CategoryId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (12,'Mor Mont',10,117,250,'guzel mont','Mont.jpg',1),(13,'Siyah Deri Mont',10,20,300,'guzel mont','Mont3.jpg',0),(14,'Corsair kulakl√Ñ¬±k ',11,4,600,'guzel kulaklƒ±k','corsair.jpg',1),(16,'Dekoratif pamuk hal√Ñ¬±',12,20,160,'guzel halƒ±','hali.jpg',1),(21,'11',10,5,50,'11','key.png',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserId` int NOT NULL AUTO_INCREMENT,
  `UserName` longtext,
  `Email` longtext,
  `Password` longtext,
  `Adressing` longtext,
  `PhoneNumber` longtext,
  `PasswordCreatedTime` longtext,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (7,'Faruk','frklmz99@hotmail.com','909cdpb2dcap87arcmab878l9d93abbg','√É¬É√Ç¬Ñ√É¬Ç√Ç¬∞smailoglu mh 2342 sk','5(555)555-5','27/05/2021'),(9,'Fatih','frklmz89@gmail.com','b98sdqb6ed9qfdbo8ndufna0f79o8095','Girne bulvar√Ñ¬± 1520 sk no:1','5(555)555-5','02/06/2021'),(10,'','',NULL,NULL,NULL,NULL),(11,NULL,'threshfaker09@gmail.com','b98sdqb6ed9qfdbo8ndufna0f79o8095',NULL,NULL,'02/06/2021'),(12,NULL,'frklmz09@gmail.com','b98sdqb6ed9qfdbo8ndufna0f79o8095',NULL,NULL,'10/06/2021');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-24 20:12:21
