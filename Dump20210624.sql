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
INSERT INTO `__migrationhistory` VALUES ('202103221327149_AutomaticMigration','MySqlCreateDb.Migrations.Configuration',_binary '�\0\0\0\0\0\0\�\\_o\�/\�\� \�񐳓ݗk`\�!\�$�\�\��s���\�8\�Q�+Q\��~�>�#�+�E�I��e9W\�KLr~�\�\�hf��\��,~z���\r�Y���1;�=�8��\�\�\�\�\��?�?��\�?-n\��\�����\\���I��_	\�_\�\�Y�\nc�\�\�(Hq�_\�,���x�\���/�9�>\��\�\�<!Q\��\�\n\'ܓ�;B�U\�gS�z� �\�p\�߽o��V)^o}\�\nE�2��\�\��@�`e��nH��\�fO\0zz\�C:\��V�_6\�mWq��Xż!\�PA�;^|�\�2o��_��\n\�\n���.����\�8��\�.W(-F�;+��yR\�Y�\0TO�g\�*G$O\�2�9I:��-�����\'�L�I��\�\��I\r�\�1\�{�����E\�v�\�\\&���k\�6![\�:!�?�\�=el�@��\��&0��!0���a)B�݄ş|J�v���\�x�&;�JE\�|\�6z�!o�\��%�\�Y�D$\�a\�L� \���\�p\��FW:5\�\�~�\�^�\��\�\���5�Si5Wi�|=��\�0Hv0Nx\�:c\",��}�A��C݃oѮj�!\r�\��\�W�\�\�\�5\�3\�?c]\�\\CoSŨ��:��@�+����w��4p\��\�[\�\��3��v�2���B��l:�\�v��SǊ�	\�[hkB\��ә6�\�PNeBl�V7\n\��>����Fc�]\�\�}�\'*e��F�e\�Љ<�qk3\�񳤷G�:i�q�=k�\�t��\�`\�qH�:oՔ��~+\�\��\�\�jt�Z\�0\�h\�^:G\�:;x�Q8�=�	�q]���>\�\�h[\Z�b\�\�H-k��B\roJ�\�o�#r:\ZVmM!�8�)��-�7\�C>\�q�\�0\�Q\�GĬ�����\�\ZX�>���ר�\�ٽb\�}5Or�\�\� B\�\0�.f�\�,n�\�-\�\'p�\�;0\�S4�)꺪�^\�m��}�ۘ��,\�AT� ���sD^\�Mz�o&�\�UC�H\�N����N���Sdd��\�����d\��m��k� �\�U�\�\�+� T��\�$�[�Y�iaO\0Z\�]��2J�j�$��\0u1\�\"r\n:�Փ�{�\�&�\�\�ډCg�\'i	�O>���P\�z���&�0���j4���\�\�E�ʙ�k}Z�]�xY�[�4L\�u�\r{�\�z\�c\�œFd�\�PO���f���֛�e�Sg�\�\�<Lp��;ƴ\���\�e\�N�u���\��n:9\�\�\�1v\�2ݺ�zt\�bn�!��\�c\�z[4\�7\�g@\�a��\�*穽�\��\�)5(�Sm}��Z1�2y\�O)�\\uz\0�;�\���\�$*MWFc\�����Z��5�h�o��Vc�\�\��y�5��\�%\�s�z\�\�\�F^�ź\����n�\�Ω�7)��s)h\�$�z<KG\�ߤݖ���H�B~��R0߱�����\�d�ߍm>+\�F�\�[\�Y�Uհ���w`���h!9�j�6,3k��\�=o)f� Ӥ/\�\�\�3��l�ҩ)��Q��k@�\��U+\�ZW����ɤ[J\�,nn��\�oᦔ3�4W|EwK\�A6\�@\�Iq\0�Ԕ��\�(��\�4�^TS�X�=V\���Vi1o�E�v�+.���V�l>Ӷ���-�\�Dh�i�\�ej~����G)☼̎=���]\�\�\�J	�5\�cH\�G\"�\��at�򉆫��B�L�&�69-�TM92]H\�)�����\�{\\YR��\�\�\�\�ļMl�0�\�\�\�\�*�	\�Bͤ=�\�`z\�1�\�:\��Ā�\�(\�\�n��\�B��0�\�\rI\�p�\�bv�d�\�{�:CĪ?\�A�_?\��	\�⠙I�Qf9Y@�g:l\'ڮ��6|�t\�ۤ\';�7\�|Qo\�ڿꓹtY\�1\�\�WM�\�[~\�\�\�\\�ߴ%\�\��UJ߭u�L8\�\��\�sh�\'}B3\�\�ET�GO��H�\0\�!{\�p#\�/n\0�Ƹ�(\�r\'w+�\�!N�uV�\�\�yn2hǚT�QBN\�!��֡�V�iQ�{����\�{��oQX\�~fE��)$�\�iF܁$z�a�S�E��T\\�q\n�\�Y\"M�L���wl\�»��moz�cްRk�p�c_�\Z�!�Vv8��r\�?^\�\�Q6@N�+�P>���-�\�K�Ko��gFu\�/\�K\�\��\��m\�䇤�\�Եm1F��#\�W7��&��Ǻ\0\�ԅSG\�c\�a��:�;H�u%VC\r�ZA5I-�zA��z�\�\�\�8\�E��\�a۠&\�\�\�fCy��=\�F:\�\n��\Z*OM�\�P�Vu��\�w/Qp:\�-9\��\�U��\�r���)K�\�l�aR�\�i=f�\�*=̐ZYp\�\�4��i\�\�L|��5m�|;kP\���tL\�\�s��\�_��Q?F\n������\��A\'\rp\�8�x\��\�^epʪ\'���`ʪ\'\��\�T	��,`j\�c�6g\�(\�\�<\�_ͨl\�&�ߜ\�\�\��K?\�b��̏\���Vy�i�:lS��s\r�|\��\0�1�yP��n��7��stV谋������_�K\r,\n>Nm�{1��h>R\�{����N[\Z\�V0\��9d���\\\�\�\"�o��Rˢ]Q|ON` ]*��u��\�\�\�i=\�\� !�q�R���\�\�\�~(/\�[����\�sB�\�-�t��#�\�/Kd�e�1c	�͈.>$_��5߷�����|�@R���(\�\�k�{�XU\�}�\'\�\��\r���F�g��;�pn\�\�Y\�\�\�RgFCOR\��\n�P��X\0\0','6.4.4');
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
INSERT INTO `categories` VALUES (10,'Kiyafet'),(11,'Elektronik Esyalar'),(12,'Dekoratif Ürünler');
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
INSERT INTO `products` VALUES (12,'Mor Mont',10,117,250,'guzel mont','Mont.jpg',1),(13,'Siyah Deri Mont',10,20,300,'guzel mont','Mont3.jpg',0),(14,'Corsair kulaklÄ±k ',11,4,600,'guzel kulaklık','corsair.jpg',1),(16,'Dekoratif pamuk halÄ±',12,20,160,'guzel halı','hali.jpg',1),(21,'11',10,5,50,'11','key.png',1);
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
INSERT INTO `users` VALUES (7,'Faruk','frklmz99@hotmail.com','909cdpb2dcap87arcmab878l9d93abbg','ÃÂÃÂ°smailoglu mh 2342 sk','5(555)555-5','27/05/2021'),(9,'Fatih','frklmz89@gmail.com','b98sdqb6ed9qfdbo8ndufna0f79o8095','Girne bulvarÄ± 1520 sk no:1','5(555)555-5','02/06/2021'),(10,'','',NULL,NULL,NULL,NULL),(11,NULL,'threshfaker09@gmail.com','b98sdqb6ed9qfdbo8ndufna0f79o8095',NULL,NULL,'02/06/2021'),(12,NULL,'frklmz09@gmail.com','b98sdqb6ed9qfdbo8ndufna0f79o8095',NULL,NULL,'10/06/2021');
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
