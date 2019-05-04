-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: wushu
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anagrafica_istruttori`
--

DROP TABLE IF EXISTS `anagrafica_istruttori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `anagrafica_istruttori` (
  `ISTR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISTR_NOME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ISTR_COGNOME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ISTR_TELEFONO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ISTR_EMAIL` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ISTR_ID`),
  UNIQUE KEY `ISTR_ID_UNIQUE` (`ISTR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anagrafica_istruttori`
--

LOCK TABLES `anagrafica_istruttori` WRITE;
/*!40000 ALTER TABLE `anagrafica_istruttori` DISABLE KEYS */;
INSERT INTO `anagrafica_istruttori` VALUES (1,'Lucia','Zanella','3282753601','zanella.lucia@gmail.com'),(2,'Giuseppe','Gualdani','',''),(3,'Luca','Provenzani','',''),(5,'Alessandro','De Donno','','');
/*!40000 ALTER TABLE `anagrafica_istruttori` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-04 14:43:08
