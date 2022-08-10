-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: land_tax
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `title_deed`
--

DROP TABLE IF EXISTS `title_deed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `title_deed` (
  `title_deed_no` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `land_location` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `area_of_land` float NOT NULL,
  `price_of_square_wa` float NOT NULL,
  `identification` char(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status_no` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`title_deed_no`),
  KEY `identification_idx` (`identification`),
  KEY `status_no_idx` (`status_no`),
  CONSTRAINT `identification` FOREIGN KEY (`identification`) REFERENCES `people` (`identification`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `status_no` FOREIGN KEY (`status_no`) REFERENCES `land_status` (`status_no`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title_deed`
--

LOCK TABLES `title_deed` WRITE;
/*!40000 ALTER TABLE `title_deed` DISABLE KEYS */;
INSERT INTO `title_deed` VALUES ('00001','กรุงเทพ',897,89880,'0899765678224','002'),('00002','สมุทรปราการ',400,60000,'0899765678224','002'),('00003','เชียงใหม่',1500,1200,'4443238897766','001'),('00004','ภูเก็ต',245,89000,'0098337489002','002'),('00005','ยะลา',5000,6000,'0098337489002','003'),('00006','นครราชสีมา',44233,5637,'0003788894421','001'),('00007','พะเยา',39000,2883,'0098337489002','003'),('00008','พิษณุโลก',4900,2344,'3444678998121','002'),('00009','นครปฐม',566,7655,'0900128798331','002'),('0010','น่าน',6000,3990,'6580009801212','004');
/*!40000 ALTER TABLE `title_deed` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-10 15:50:33
