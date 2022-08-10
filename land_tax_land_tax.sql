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
-- Table structure for table `land_tax`
--

DROP TABLE IF EXISTS `land_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `land_tax` (
  `rate` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float NOT NULL,
  `tax` float NOT NULL,
  `status_no` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`rate`),
  KEY `t_status_no_idx` (`status_no`),
  CONSTRAINT `t_status_no` FOREIGN KEY (`status_no`) REFERENCES `land_status` (`status_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land_tax`
--

LOCK TABLES `land_tax` WRITE;
/*!40000 ALTER TABLE `land_tax` DISABLE KEYS */;
INSERT INTO `land_tax` VALUES ('01',1000000000,0.001,'001'),('02',500000000,0.0007,'001'),('03',100000000,0.0005,'001'),('04',75000000,0.0003,'001'),('05',0,0.0001,'001'),('06',100000000,0.001,'002'),('07',75000000,0.0005,'002'),('08',50000000,0.0003,'002'),('09',10000000,0.0002,'002'),('10',0,0,'002'),('11',5000000000,0.007,'003'),('12',1000000000,0.006,'003'),('13',200000000,0.005,'003'),('14',50000000,0.004,'003'),('15',0,0.003,'003'),('16',5000000000,0.007,'004'),('17',1000000000,0.006,'004'),('18',200000000,0.005,'004'),('19',50000000,0.004,'004'),('20',0,0.003,'004');
/*!40000 ALTER TABLE `land_tax` ENABLE KEYS */;
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
