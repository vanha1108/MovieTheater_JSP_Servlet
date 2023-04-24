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
-- Table structure for table `role_movie_theater`
--

DROP TABLE IF EXISTS `role_movie_theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_movie_theater` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie_id` int DEFAULT NULL,
  `theater_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_movie_theater`
--

LOCK TABLES `role_movie_theater` WRITE;
/*!40000 ALTER TABLE `role_movie_theater` DISABLE KEYS */;
INSERT INTO `role_movie_theater` VALUES (1,1,3),(2,1,4),(3,1,5),(4,2,4),(5,2,5),(6,2,6),(7,3,2),(8,3,3),(9,4,3),(10,4,4),(11,4,5),(12,5,1),(13,5,2),(14,5,3),(15,5,4),(16,5,5),(17,5,6),(18,6,3),(19,6,4),(20,7,1),(21,7,2),(22,7,3),(23,7,4),(24,8,1),(25,8,2),(26,9,1),(27,9,2),(28,9,3),(29,9,4),(30,10,3),(31,11,1),(32,11,2),(33,11,3),(34,11,4),(35,11,5),(36,11,6),(37,12,1),(38,12,2),(39,12,3),(40,12,4),(41,12,5),(42,12,6),(43,13,3),(44,13,4),(45,14,1),(46,14,2),(47,14,3),(48,15,1),(49,15,2),(50,15,3),(51,15,4),(52,15,5),(53,15,6),(54,16,1),(55,16,2),(56,16,3),(57,16,4),(58,16,5),(59,16,6),(60,17,2),(61,17,3),(62,18,1),(63,18,2),(64,18,3),(65,18,4),(66,18,5),(67,18,6),(68,19,1),(69,19,2),(70,19,3);
/*!40000 ALTER TABLE `role_movie_theater` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-12 17:49:49
