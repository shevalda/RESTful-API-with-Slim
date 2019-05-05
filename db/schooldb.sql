-- MySQL dump 10.13  Distrib 8.0.16
--
-- Host: localhost    Database: schooldb
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grade` (
  `lessonId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `mark` float(10,2) DEFAULT NULL,
  `added` datetime DEFAULT NULL,
  KEY `fk_student` (`studentId`),
  KEY `fk_lesson` (`lessonId`),
  CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`),
  CONSTRAINT `grade_ibfk_2` FOREIGN KEY (`lessonId`) REFERENCES `lesson` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (6,10,69.15,'2019-05-05 15:27:47'),(5,6,58.52,'2019-05-05 15:27:47'),(6,10,69.04,'2019-05-05 15:27:47'),(8,6,74.31,'2019-05-05 15:27:47'),(7,8,46.44,'2019-05-05 15:27:47'),(4,9,74.65,'2019-05-05 15:27:47'),(6,1,68.53,'2019-05-05 15:27:47'),(6,1,64.57,'2019-05-05 15:27:47'),(7,3,57.82,'2019-05-05 15:27:47'),(8,2,48.59,'2019-05-05 15:27:47'),(4,8,56.82,'2019-05-05 15:27:47'),(2,6,59.16,'2019-05-05 15:27:47'),(8,2,33.37,'2019-05-05 15:27:47'),(3,10,79.47,'2019-05-05 15:27:47'),(4,4,58.35,'2019-05-05 15:27:47'),(8,8,75.08,'2019-05-05 15:27:47'),(3,5,58.50,'2019-05-05 15:27:47'),(8,7,89.68,'2019-05-05 15:27:47'),(4,5,62.96,'2019-05-05 15:27:47'),(2,2,57.12,'2019-05-05 15:27:47'),(1,3,98.62,'2019-05-05 15:27:47'),(5,9,40.23,'2019-05-05 15:27:47'),(6,8,81.54,'2019-05-05 15:27:47'),(1,4,88.09,'2019-05-05 15:27:47'),(6,8,60.89,'2019-05-05 15:27:47'),(7,5,46.00,'2019-05-05 15:27:47'),(8,1,37.84,'2019-05-05 15:27:47'),(2,7,31.69,'2019-05-05 15:27:47'),(4,3,48.67,'2019-05-05 15:27:47'),(5,1,52.76,'2019-05-05 15:27:47'),(6,9,81.95,'2019-05-05 15:27:47'),(8,8,51.43,'2019-05-05 15:27:47'),(7,3,64.28,'2019-05-05 15:27:47'),(8,7,86.61,'2019-05-05 15:27:47'),(8,1,70.35,'2019-05-05 15:27:47'),(5,4,79.74,'2019-05-05 15:27:47'),(3,8,86.84,'2019-05-05 15:27:47'),(3,2,83.68,'2019-05-05 15:27:47'),(7,4,71.51,'2019-05-05 15:27:47'),(8,9,52.28,'2019-05-05 15:27:47'),(1,1,93.29,'2019-05-05 15:27:47'),(5,8,39.16,'2019-05-05 15:27:47'),(3,9,67.02,'2019-05-05 15:27:47'),(4,3,60.14,'2019-05-05 15:27:47'),(8,8,79.82,'2019-05-05 15:27:47'),(8,6,46.54,'2019-05-05 15:27:47'),(2,2,61.73,'2019-05-05 15:27:47'),(7,6,30.24,'2019-05-05 15:27:47'),(1,1,83.29,'2019-05-05 15:27:47'),(5,9,34.40,'2019-05-05 15:27:47'),(7,9,65.39,'2019-05-05 15:27:47'),(6,1,62.58,'2019-05-05 15:27:47'),(4,6,63.46,'2019-05-05 15:27:47'),(8,4,41.78,'2019-05-05 15:27:47'),(6,6,96.28,'2019-05-05 15:27:47'),(3,8,46.26,'2019-05-05 15:27:47'),(7,5,92.99,'2019-05-05 15:27:47'),(8,6,93.49,'2019-05-05 15:27:47'),(4,4,52.01,'2019-05-05 15:27:47'),(6,1,49.13,'2019-05-05 15:27:47'),(6,1,37.58,'2019-05-05 15:27:47'),(7,7,93.29,'2019-05-05 15:27:47'),(3,1,45.25,'2019-05-05 15:27:47'),(5,4,60.57,'2019-05-05 15:27:47'),(8,4,96.39,'2019-05-05 15:27:47'),(4,1,55.61,'2019-05-05 15:27:47'),(7,7,56.55,'2019-05-05 15:27:47'),(6,7,39.84,'2019-05-05 15:27:47'),(5,3,51.77,'2019-05-05 15:27:47'),(8,9,54.16,'2019-05-05 15:27:47'),(1,1,82.37,'2019-05-05 15:27:47'),(8,7,94.58,'2019-05-05 15:27:47'),(6,10,79.33,'2019-05-05 15:27:47'),(6,2,32.36,'2019-05-05 15:27:47'),(6,6,58.41,'2019-05-05 15:27:47'),(8,10,60.99,'2019-05-05 15:27:47'),(2,6,60.51,'2019-05-05 15:27:47'),(8,4,85.66,'2019-05-05 15:27:47'),(8,4,45.11,'2019-05-05 15:27:47'),(4,9,36.74,'2019-05-05 15:27:47');
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lessonName` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `teacher` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` VALUES (1,'Mathematics','Declan Sadie'),(2,'Pyhsics','Everett Leilani'),(3,'Biology','Jade Sawyer'),(4,'Chemistry','Bentley Piper'),(5,'History','Miles Nur'),(6,'Languages','Raelynn Theo'),(7,'Computers','Kingston Lydia'),(8,'Religion','Arianna Kaiden');
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `class` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Aspen Lydia',2),(2,'Skyler Kendrick',3),(3,'David Harold',3),(4,'Sonia Carla',3),(5,'Nehemiah Joseph',1),(6,'Stanley Curtis',2),(7,'Keira Lillian',1),(8,'Alden Axel',2),(9,'Cody Dale',1),(10,'Kyle Jasper',3);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-05 15:28:35
