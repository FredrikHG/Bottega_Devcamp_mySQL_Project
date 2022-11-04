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
-- Table structure for table `students_has_courses`
--

DROP TABLE IF EXISTS `students_has_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_has_courses` (
  `students_students_name` varchar(100) NOT NULL,
  `courses_courses` varchar(60) NOT NULL,
  `students_courses_grades` int NOT NULL,
  PRIMARY KEY (`students_students_name`,`courses_courses`),
  KEY `fk_students_has_courses_courses1_idx` (`courses_courses`),
  KEY `fk_students_has_courses_students1_idx` (`students_students_name`),
  CONSTRAINT `fk_students_has_courses_courses1` FOREIGN KEY (`courses_courses`) REFERENCES `courses` (`courses`),
  CONSTRAINT `fk_students_has_courses_students1` FOREIGN KEY (`students_students_name`) REFERENCES `students` (`students_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_has_courses`
--

LOCK TABLES `students_has_courses` WRITE;
/*!40000 ALTER TABLE `students_has_courses` DISABLE KEYS */;
INSERT INTO `students_has_courses` VALUES ('Bob Goethe','Art History',70),('Bob Goethe','Chemistry',80),('Bob Goethe','Linear Algebra',96),('Bob Goethe','Medieval History',86),('ELizabeth Green','Introduction to History',70),('ELizabeth Green','Introduction to Theater',100),('ELizabeth Green','Software Engineering',70),('ELizabeth Green','Statistics',80),('Ivan Petrovski','Chemistry',80),('Ivan Petrovski','Introduction to History',63),('Ivan Petrovski','Linear Algebra',76),('Ivan Petrovski','Statistics',50),('Jake Goodman','Art History',72),('Jake Goodman','Introduction to Theater',69),('Jake Goodman','Medieval History',58),('Jake Goodman','Software Engineering',89),('John Blacksmith','Art History',78),('John Blacksmith','Chemistry',37),('John Blacksmith','Introduction to History',94),('John Blacksmith','Medieval History',82),('Jouish Jou','Introduction to Theater',96),('Jouish Jou','Linear Algebra',67),('Jouish Jou','Software Engineering',86),('Jouish Jou','Statistics',78),('Lexi Lex','Art History',92),('Lexi Lex','Chemistry',82),('Lexi Lex','Discrete Mathmatics',75),('Lexi Lex','Software Engineering',57),('Monica Woods','Discrete Mathmatics',46),('Monica Woods','Introduction to theater',74),('Monica Woods','Linear Algebra',79),('Monica Woods','Medieval History',64),('Oembian Oemb','Art History',72),('Oembian Oemb','Discrete Mathmatics',59),('Oembian Oemb','Introduction to History',79),('Oembian Oemb','Statistics',86);
/*!40000 ALTER TABLE `students_has_courses` ENABLE KEYS */;
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
