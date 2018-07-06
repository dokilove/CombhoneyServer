-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: combhoney
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `account` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `accountid` char(40) NOT NULL,
  `accountname` char(40) DEFAULT NULL,
  `gold` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `password` char(40) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'TestUser01','테스트유저01',0,110000,'1234'),(2,'TestUser02','테스트유저02',100,2000,'1234'),(3,'TestUser03','테스트유저03',1200,500,'1234'),(4,'TestUser04','테스트유저04',3000,500,'1234'),(5,'TestUser05','테스트유저05',5000,0,'1234'),(6,'TestUser06','테스트유저06',6000,0,'1234');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avatar`
--

DROP TABLE IF EXISTS `avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avatar` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `accountidx` int(11) NOT NULL,
  `avatarname` char(40) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `exp` int(11) NOT NULL DEFAULT '0',
  `equipslot1` int(11) DEFAULT NULL,
  `equipslot2` int(11) DEFAULT NULL,
  `equipslot3` int(11) DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `accountidx` (`accountidx`),
  KEY `equipslot1` (`equipslot1`),
  KEY `equipslot2` (`equipslot2`),
  KEY `equipslot3` (`equipslot3`),
  CONSTRAINT `avatar_ibfk_1` FOREIGN KEY (`accountidx`) REFERENCES `account` (`idx`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatar`
--

LOCK TABLES `avatar` WRITE;
/*!40000 ALTER TABLE `avatar` DISABLE KEYS */;
INSERT INTO `avatar` VALUES (1,5,'Test05_01',1,99,NULL,5,NULL),(2,2,'02_01',2,199,18,21,NULL),(3,3,'세번째유저01',3,299,36,41,NULL),(4,6,'일하지않는사람01',4,399,47,54,NULL),(5,4,'#4#1',5,499,2,37,NULL),(6,2,'02_02',6,599,9,26,NULL),(7,1,'Avatar01_01',3,299,7,12,NULL),(8,1,'Avatar01_02',2,199,23,3,NULL),(9,5,'Test05_02',1,99,29,32,55),(10,6,'일하지않는사람02',4,399,39,43,40),(11,3,'세번째유저02',5,499,NULL,30,NULL),(12,4,'#4#2',2,199,49,NULL,NULL),(13,1,'Avatar01_03',1,99,NULL,24,NULL),(14,2,'02_03',32,3199,28,45,NULL),(15,3,'세번째유저03',5,499,NULL,15,NULL),(16,1,'Avatar01_04',14,1399,14,19,NULL),(17,6,'일하지않는사람03',2,199,35,NULL,NULL),(18,5,'Test05_03',6,599,NULL,51,NULL),(19,4,'#4#3',5,499,NULL,NULL,NULL),(20,5,'Test05_04',2,199,NULL,22,NULL);
/*!40000 ALTER TABLE `avatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp`
--

DROP TABLE IF EXISTS `exp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `exp` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `exp` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp`
--

LOCK TABLES `exp` WRITE;
/*!40000 ALTER TABLE `exp` DISABLE KEYS */;
INSERT INTO `exp` VALUES (1,0),(2,100),(3,200),(4,300),(5,400),(6,500),(7,600),(8,700),(9,800),(10,900),(11,1000),(12,1100),(13,1200),(14,1300),(15,1400),(16,1500),(17,1600),(18,1700),(19,1800),(20,1900),(21,2000),(22,2100),(23,2200),(24,2300),(25,2400),(26,2500),(27,2600),(28,2700),(29,2800),(30,2900),(31,3000),(32,3100),(33,3200),(34,3300),(35,3400),(36,3500),(37,3600),(38,3700),(39,3800),(40,3900),(41,4000),(42,4100),(43,4200),(44,4300),(45,4400),(46,4500),(47,4600),(48,4700),(49,4800),(50,4900),(51,5000),(52,5100),(53,5200),(54,5300),(55,5400),(56,5500),(57,5600),(58,5700),(59,5800),(60,5900),(61,6000),(62,6100),(63,6200),(64,6300),(65,6400),(66,6500),(67,6600),(68,6700),(69,6800),(70,6900),(71,7000),(72,7100),(73,7200),(74,7300),(75,7400),(76,7500),(77,7600),(78,7700),(79,7800),(80,7900),(81,8000),(82,8100),(83,8200),(84,8300),(85,8400),(86,8500),(87,8600),(88,8700),(89,8800),(90,8900),(91,9000),(92,9100),(93,9200),(94,9300),(95,9400),(96,9500),(97,9600),(98,9700),(99,9800),(100,9900);
/*!40000 ALTER TABLE `exp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inventory` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `accountidx` int(11) NOT NULL,
  `itemidx` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `exp` int(11) DEFAULT NULL,
  `equippedavataridx` int(11) DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `accountidx` (`accountidx`),
  KEY `equippedavataridx` (`equippedavataridx`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`accountidx`) REFERENCES `account` (`idx`) ON DELETE CASCADE,
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`equippedavataridx`) REFERENCES `avatar` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,101,20,NULL,NULL,NULL),(2,4,1103,NULL,20,1990,5),(3,1,2203,NULL,14,1390,8),(4,2,103,5,NULL,NULL,NULL),(5,5,1203,NULL,20,1990,1),(6,6,2101,NULL,30,2990,NULL),(7,1,1103,NULL,23,2290,7),(8,1,2203,NULL,15,1490,NULL),(9,2,1104,NULL,17,1690,6),(10,3,101,10,NULL,NULL,NULL),(11,5,102,8,NULL,NULL,NULL),(12,1,2205,NULL,3,290,7),(13,2,103,4,NULL,NULL,NULL),(14,1,2101,NULL,35,3490,16),(15,3,2205,NULL,2,190,15),(16,6,101,30,NULL,NULL,NULL),(17,1,2205,NULL,3,290,NULL),(18,2,1103,NULL,25,2490,2),(19,1,2205,NULL,5,490,16),(20,5,101,50,NULL,NULL,NULL),(21,2,2203,NULL,13,1290,2),(22,5,2205,NULL,4,390,20),(23,1,1104,NULL,16,1590,8),(24,1,1204,NULL,17,1690,13),(25,3,101,50,NULL,NULL,NULL),(26,2,1204,NULL,18,1790,6),(27,5,102,7,NULL,NULL,NULL),(28,2,1104,NULL,15,1490,14),(29,4,1103,NULL,24,2390,9),(30,3,1204,NULL,19,1890,11),(31,2,101,60,NULL,NULL,NULL),(32,5,2201,NULL,24,2390,9),(33,4,103,1,NULL,NULL,NULL),(34,3,2201,NULL,26,2590,NULL),(35,6,1104,NULL,14,1390,17),(36,3,1103,NULL,21,2090,3),(37,4,1204,NULL,19,1890,5),(38,2,101,10,NULL,NULL,NULL),(39,6,1104,NULL,13,1290,10),(40,6,2305,NULL,4,390,10),(41,3,2201,NULL,27,2690,3),(42,4,1204,NULL,19,1890,NULL),(43,6,2201,NULL,27,2690,10),(44,4,101,20,NULL,NULL,NULL),(45,2,2201,NULL,27,2690,14),(46,3,102,6,NULL,NULL,NULL),(47,6,1103,NULL,19,1890,4),(48,3,2201,NULL,27,2690,NULL),(49,4,1104,NULL,13,1290,12),(50,6,101,30,NULL,NULL,NULL),(51,5,2201,NULL,26,2590,18),(52,3,102,9,NULL,NULL,NULL),(53,4,2305,NULL,32,3190,5),(54,6,1203,NULL,25,2490,4),(55,5,2301,NULL,35,3490,9),(56,4,101,10,NULL,NULL,NULL),(57,5,1203,NULL,24,2390,NULL),(58,4,2305,NULL,1,90,NULL),(59,5,102,8,NULL,NULL,NULL);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item` (
  `idx` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `equiptype` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` char(40) DEFAULT NULL,
  `baseprice` int(11) DEFAULT NULL,
  `upgrade_value` int(11) DEFAULT NULL,
  `upgrade_baseprice` int(11) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (101,1,NULL,30,'HP 30% 회복',30,NULL,NULL),(102,1,NULL,60,'HP 60% 회복',60,NULL,NULL),(103,1,NULL,100,'HP 100% 회복',100,NULL,NULL),(1101,2,1,10,'왼손무기 10',100,1,10),(1102,2,1,20,'왼손무기 20',200,2,20),(1103,2,1,30,'왼손무기 30',300,3,30),(1104,2,1,40,'왼손무기 40',400,4,40),(1105,2,1,50,'왼손무기 50',500,5,50),(1201,2,2,10,'오른손 무기 10',100,1,10),(1202,2,2,20,'오른손 무기 20',200,2,20),(1203,2,2,30,'오른손 무기 30',300,3,30),(1204,2,2,40,'오른손 무기 40',400,4,40),(1205,2,2,50,'오른손 무기 50',500,5,50),(2101,3,1,10,'왼손 방어구 10',100,1,10),(2102,3,1,20,'왼손 방어구 20',200,2,20),(2103,3,1,30,'왼손 방어구 30',300,3,30),(2104,3,1,40,'왼손 방어구 40',400,4,40),(2105,3,1,50,'왼손 방어구 50',500,5,50),(2201,3,2,10,'오른손 방어구 10',100,1,10),(2202,3,2,20,'오른손 방어구 20',200,2,20),(2203,3,2,30,'오른손 방어구 30',300,3,30),(2204,3,2,40,'오른손 방어구 40',400,4,40),(2205,3,2,50,'오른손 방어구 50',500,5,50),(2301,3,3,10,'몸통 방어구 10',200,1,10),(2302,3,3,20,'몸통 방어구 20',400,2,20),(2303,3,3,30,'몸통 방어구 30',600,3,30),(2304,3,3,40,'몸통 방어구 40',800,4,40),(2305,3,3,50,'몸통 방어구 50',1000,5,50);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `property` (
  `id` char(40) NOT NULL,
  `value` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES ('cash2gold','1000'),('avatarMaxLevel','50'),('equipMaxLevel','40');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-06 15:01:48
