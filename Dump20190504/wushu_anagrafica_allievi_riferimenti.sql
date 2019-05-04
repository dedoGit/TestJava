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
-- Table structure for table `anagrafica_allievi_riferimenti`
--

DROP TABLE IF EXISTS `anagrafica_allievi_riferimenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `anagrafica_allievi_riferimenti` (
  `ARA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ARA_ID_ALLIEVO` int(11) NOT NULL,
  `ARA_NOME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ARA_COGNOME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ARA_DESCRIZIONE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ARA_TELEFONO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ARA_ID`),
  UNIQUE KEY `ARA_ID_UNIQUE` (`ARA_ID`),
  KEY `ARA_ID_ALLIEVO` (`ARA_ID_ALLIEVO`),
  CONSTRAINT `FK_ID_ALLIEVO_RIFERIMENTI` FOREIGN KEY (`ARA_ID_ALLIEVO`) REFERENCES `anagrafica_allievi` (`all_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anagrafica_allievi_riferimenti`
--

LOCK TABLES `anagrafica_allievi_riferimenti` WRITE;
/*!40000 ALTER TABLE `anagrafica_allievi_riferimenti` DISABLE KEYS */;
/*!40000 ALTER TABLE `anagrafica_allievi_riferimenti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-04 14:43:15
