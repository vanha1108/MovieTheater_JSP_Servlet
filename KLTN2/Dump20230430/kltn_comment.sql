-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: kltn
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `star` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,2,1,'lllllll                                    ','1, 1, 1, 1, 0','2023-04-23 '),(2,2,1,'Phim hay lam nha                                   ','1, 1, 1, 1, 0','2023-04-23 '),(3,2,1,'sssss                                   ','1, 1, 1, 1, 0','2023-04-23 '),(4,2,1,'ffffffff                                    ','1, 1, 1, 1, 1','2023-04-23 '),(5,6,1,'wwwwww','1, 1, 1, 0, 0','2023-04-25 '),(6,2,1,'dddd','1, 1, 1, 1, 1','2023-04-25 '),(7,6,1,'jfhdsjkfh','1, 1, 1, 0, 0','2023-04-25 '),(8,6,1,'jfhdsjkfh','1, 1, 1, 0, 0','2023-04-25 '),(9,6,1,'jfhdsjkfh','1, 1, 1, 0, 0','2023-04-25 '),(10,6,1,'eee','1, 1, 0, 0, 0','2023-04-25 '),(11,6,1,'eee','1, 1, 0, 0, 0','2023-04-25 '),(12,6,1,'   nga                                 ','0, 0, 0, 0, 0','2023-04-25 '),(13,6,1,'   nga                                 ','0, 0, 0, 0, 0','2023-04-25 '),(14,2,1,'nga@gmail.com                                  ','1, 1, 1, 1, 1','2023-04-25 '),(15,2,1,'ffff                                    ','1, 1, 1, 1, 1','2023-04-25 '),(16,2,1,'ffff                                    ','1, 1, 1, 1, 1','2023-04-25 '),(17,2,1,'ffff                                    ','1, 1, 1, 1, 1','2023-04-25 '),(18,2,1,'ffff                                    ','1, 1, 1, 1, 1','2023-04-25 '),(19,2,1,'ffff                                    ','1, 1, 1, 1, 1','2023-04-25 '),(20,2,1,'ffff                                    ','1, 1, 1, 1, 1','2023-04-25 '),(21,2,1,'dddd','0, 0, 0, 0, 0','2023-04-25 '),(22,2,1,'dddd','0, 0, 0, 0, 0','2023-04-25 '),(23,2,1,'dddd','0, 0, 0, 0, 0','2023-04-25 '),(24,2,1,'dddd','0, 0, 0, 0, 0','2023-04-25 '),(25,2,1,'dddd','0, 0, 0, 0, 0','2023-04-25 '),(26,2,1,'dddd','0, 0, 0, 0, 0','2023-04-25 '),(27,2,1,'dkjsahdkjsa                                 ','1, 1, 1, 1, 1','2023-04-25 '),(28,2,1,'jhfsd                                   ','1, 1, 1, 0, 0','2023-04-25 '),(29,2,1,'tttt                                ','1, 1, 1, 1, 1','2023-04-25 '),(30,2,1,NULL,'1, 1, 1, 1, 1','2023-04-25 '),(31,2,1,'nga                               ','1, 1, 1, 1, 1','2023-04-25 '),(32,2,1,NULL,'1, 1, 1, 1, 1','2023-04-25 '),(33,2,1,'                                    ','1, 1, 1, 0, 0','2023-04-25 '),(34,2,1,NULL,'1, 1, 1, 0, 0','2023-04-25 '),(35,2,1,'      ddddd                              ','1, 1, 1, 1, 1','2023-04-25 '),(36,2,1,NULL,'1, 1, 1, 1, 1','2023-04-25 '),(37,2,1,'    dddddd                                ','1, 1, 1, 1, 0','2023-04-25 '),(38,2,1,NULL,'1, 1, 1, 1, 0','2023-04-25 '),(39,2,1,'hhhhhhhh                                  ','1, 1, 1, 1, 0','2023-04-25 '),(40,2,1,NULL,'1, 1, 1, 1, 0','2023-04-25 '),(41,2,1,NULL,'1, 1, 1, 1, 0','2023-04-25 '),(42,2,1,'nnnnn                                ','1, 1, 1, 1, 0','2023-04-25 '),(43,2,1,'hhhhh                                ','1, 1, 1, 0, 0','2023-04-25 '),(44,2,1,NULL,'1, 1, 1, 0, 0','2023-04-25 '),(45,2,1,'jjjj                            ','1, 1, 1, 1, 0','2023-04-25 '),(46,2,1,NULL,'1, 1, 1, 1, 0','2023-04-25 '),(47,2,1,NULL,'1, 1, 1, 0, 0','2023-04-25 '),(48,2,1,'  xxxx                                  ','1, 1, 1, 0, 0','2023-04-25 '),(49,2,1,'       dddd                             ','1, 1, 1, 0, 0','2023-04-25 '),(50,2,1,NULL,'1, 1, 1, 0, 0','2023-04-25 '),(51,2,1,'      \\\\dnsajkdas                              ','1, 1, 1, 1, 1','2023-04-25 '),(52,2,1,NULL,'1, 1, 1, 1, 1','2023-04-25 '),(53,2,1,'Phim hay                                ','1, 1, 1, 1, 1','2023-04-25 '),(54,2,1,NULL,'1, 1, 1, 1, 1','2023-04-25 '),(55,2,1,'Phim hay                                ','1, 1, 1, 1, 1','2023-04-25 '),(56,2,1,NULL,'1, 1, 1, 1, 1','2023-04-25 '),(57,2,1,'                                    ','1, 1, 1, 1, 0','2023-04-25 '),(58,2,1,NULL,'1, 1, 1, 1, 0','2023-04-25 '),(59,2,1,' ssss                                   ','1, 1, 1, 1, 0','2023-04-25 '),(60,2,1,NULL,'1, 1, 1, 1, 0','2023-04-25 '),(61,2,1,'fgfgfggf','1, 1, 1, 1, 0','2023-04-25 '),(62,2,1,NULL,'1, 1, 1, 1, 0','2023-04-25 '),(63,2,1,'dhdhdh                                  ','1, 1, 1, 1, 1','2023-04-25 '),(64,2,1,NULL,'1, 1, 1, 1, 1','2023-04-25 '),(65,2,1,'      ssss                              ','1, 1, 1, 1, 0','2023-04-25 '),(66,2,1,NULL,'1, 1, 1, 1, 0','2023-04-25 '),(67,2,1,'    ddddd                                ','1, 1, 1, 1, 0','2023-04-25 '),(68,2,1,NULL,'1, 1, 1, 1, 0','2023-04-25 '),(69,2,1,'jjjjjj                             ','1, 1, 1, 0, 0','2023-04-25 '),(70,2,1,NULL,'1, 1, 1, 0, 0','2023-04-25 '),(71,2,1,'djsnjd                                 ','1, 1, 1, 1, 0','2023-04-25 '),(72,2,1,NULL,'1, 1, 1, 1, 0','2023-04-25 '),(73,2,1,'774748','1, 1, 1, 1, 1','2023-04-25 '),(74,2,1,NULL,'1, 1, 1, 1, 1','2023-04-25 '),(75,3,1,'jdfhdf                               ','1, 1, 1, 1, 1','2023-04-25 '),(76,3,1,NULL,'1, 1, 1, 1, 1','2023-04-25 '),(77,3,1,'fjkhfjkaf                                  ','1, 1, 1, 1, 0','2023-04-25 '),(78,3,1,NULL,'1, 1, 1, 1, 0','2023-04-25 '),(79,2,1,'hfkjsdhfkjdsh                              ','1, 1, 1, 1, 1','2023-04-25 '),(80,2,1,NULL,'1, 1, 1, 1, 1','2023-04-25 '),(81,2,1,'fueyuiewryeuiwr                               ','1, 1, 1, 1, 1','2023-04-25 '),(82,2,1,NULL,'1, 1, 1, 1, 1','2023-04-25 '),(83,2,1,'123jhfkjdsfsd','1, 1, 1, 1, 0','2023-04-25 '),(84,2,1,NULL,'1, 1, 1, 1, 0','2023-04-25 '),(85,2,1,'jfsdhfjsdfh                             ','1, 1, 1, 0, 0','2023-04-25 '),(86,2,1,NULL,'1, 1, 1, 0, 0','2023-04-25 '),(87,2,1,NULL,'1, 1, 1, 1, 1','2023-04-25 '),(88,2,1,'        jjj                            ','1, 1, 1, 1, 1','2023-04-25 '),(89,2,1,'nga','1, 1, 1, 1, 1','2023-04-25 '),(90,2,1,NULL,'1, 1, 1, 1, 1','2023-04-25 '),(91,2,1,'ngaba','1, 1, 1, 1, 1','2023-04-25 '),(92,2,1,NULL,'1, 1, 1, 1, 1','2023-04-25 ');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-30 11:06:23
