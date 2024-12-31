-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: claimprocessing
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `claimants`
--

DROP TABLE IF EXISTS `claimants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claimants` (
  `ClaimantID` int NOT NULL AUTO_INCREMENT,
  `Cname` varchar(50) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `contactNumber` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `AddressID` int DEFAULT NULL,
  PRIMARY KEY (`ClaimantID`),
  KEY `AddressID` (`AddressID`),
  CONSTRAINT `claimants_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claimants`
--

LOCK TABLES `claimants` WRITE;
/*!40000 ALTER TABLE `claimants` DISABLE KEYS */;
INSERT INTO `claimants` VALUES (1,'John Doe','1985-05-15','1234567890','john.doe@example.com',1),(2,'Jane Smith','1990-07-20','9876543210','jane.smith@example.com',2),(3,'Pragyan Shrestha','2004-06-25','981230456','pragyan@gmail.com',3),(4,'Gaurab Khanal','2003-06-20','9786542031','gaurabk@gmail.com',3),(5,'Prabal Shakya','2004-05-05','9812345670','prabals@gmail.com',4),(6,'Shreejan Karmacharaya','2003-10-27','9807065431','karmacharayas@gmail.com',5),(7,'Neo Shakya','2004-08-04','9869693169','shakyaneo@gmail.com',3);
/*!40000 ALTER TABLE `claimants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-31 19:58:11
