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
-- Table structure for table `premiere_detail`
--

DROP TABLE IF EXISTS `premiere_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premiere_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count_combo` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_combo` int DEFAULT NULL,
  `id_premiere` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premiere_detail`
--

LOCK TABLES `premiere_detail` WRITE;
/*!40000 ALTER TABLE `premiere_detail` DISABLE KEYS */;
INSERT INTO `premiere_detail` VALUES (1,'2',1,1),(2,'2',2,1),(3,'0',3,1),(4,'0',4,1),(5,'0',5,1),(6,'0',1,2),(7,'2',2,2),(8,'3',3,2),(9,'0',4,2),(10,'0',5,2),(11,'2',1,3),(12,'0',2,3),(13,'0',3,3),(14,'0',4,3),(15,'0',5,3),(16,'1',1,4),(17,'1',2,4),(18,'2',3,4),(19,'1',4,4),(20,'0',5,4),(21,'0',1,5),(22,'0',2,5),(23,'0',3,5),(24,'0',4,5),(25,'0',5,5),(26,'0',1,6),(27,'3',2,6),(28,'0',3,6),(29,'0',4,6),(30,'0',5,6),(31,'3',1,7),(32,'2',2,7),(33,'0',3,7),(34,'0',4,7),(35,'0',5,7),(36,'3',1,8),(37,'0',2,8),(38,'3',3,8),(39,'0',4,8),(40,'0',5,8),(41,'2',1,9),(42,'1',2,9),(43,'0',3,9),(44,'0',4,9),(45,'0',5,9),(46,'3',1,10),(47,'0',2,10),(48,'3',3,10),(49,'0',4,10),(50,'0',5,10),(51,'0',1,11),(52,'0',2,11),(53,'0',3,11),(54,'0',4,11),(55,'0',5,11),(56,'2',1,12),(57,'2',2,12),(58,'0',3,12),(59,'0',4,12),(60,'0',5,12),(61,'2',1,13),(62,'0',2,13),(63,'0',3,13),(64,'0',4,13),(65,'0',5,13),(66,'1',1,14),(67,'0',2,14),(68,'0',3,14),(69,'0',4,14),(70,'0',5,14),(71,'3',1,15),(72,'0',2,15),(73,'0',3,15),(74,'0',4,15),(75,'0',5,15),(76,'2',1,16),(77,'2',2,16),(78,'0',3,16),(79,'0',4,16),(80,'0',5,16),(81,'3',1,17),(82,'3',2,17),(83,'0',3,17),(84,'0',4,17),(85,'0',5,17);
/*!40000 ALTER TABLE `premiere_detail` ENABLE KEYS */;
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
