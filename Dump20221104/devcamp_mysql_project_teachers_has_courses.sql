-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: devcamp_mysql_project
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `teachers_has_courses`
--

DROP TABLE IF EXISTS `teachers_has_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers_has_courses` (
  `teachers_teachers_name` varchar(100) NOT NULL,
  `courses_courses` varchar(60) NOT NULL,
  `teachers_courses_grades_avg` int NOT NULL,
  PRIMARY KEY (`teachers_teachers_name`,`courses_courses`),
  KEY `fk_teachers_has_courses_courses1_idx` (`courses_courses`),
  KEY `fk_teachers_has_courses_teachers1_idx` (`teachers_teachers_name`),
  CONSTRAINT `fk_teachers_has_courses_courses1` FOREIGN KEY (`courses_courses`) REFERENCES `courses` (`courses`),
  CONSTRAINT `fk_teachers_has_courses_teachers1` FOREIGN KEY (`teachers_teachers_name`) REFERENCES `teachers` (`teachers_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_has_courses`
--

LOCK TABLES `teachers_has_courses` WRITE;
/*!40000 ALTER TABLE `teachers_has_courses` DISABLE KEYS */;
INSERT INTO `teachers_has_courses` VALUES (' Jim Woodsman','Discrete Mathmatics',60),(' Jim Woodsman','Linear Algebra',80),(' Jim Woodsman','Statistics',74),('John Hunt','Art History',77),('John Hunt','Introduction to History',77),('John Hunt','Medieval History',73),('Kate Schmidt','Chemistry',70),('Kate Schmidt','Introduction to Theater',85),('Kate Schmidt','Software Engineering',76);
/*!40000 ALTER TABLE `teachers_has_courses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-04 16:04:57
