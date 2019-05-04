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
-- Table structure for table `anagrafica_associazioni`
--

DROP TABLE IF EXISTS `anagrafica_associazioni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `anagrafica_associazioni` (
  `ASS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ASS_DESCRIZIONE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ASS_INDIRIZZO` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ASS_CITTA` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ASS_CAP` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ASS_PROVINCIA` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ASS_PARTITA_IVA` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ASS_CODICE_ISO` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ASS_CODICE_FISCALE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ASS_TELEFONO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ASS_MAIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ASS_ID`),
  UNIQUE KEY `ASS_ID_UNIQUE` (`ASS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anagrafica_associazioni`
--

LOCK TABLES `anagrafica_associazioni` WRITE;
/*!40000 ALTER TABLE `anagrafica_associazioni` DISABLE KEYS */;
/*!40000 ALTER TABLE `anagrafica_associazioni` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-04 14:43:09
