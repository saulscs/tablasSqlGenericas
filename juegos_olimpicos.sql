-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: juegos_olimpicos
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `Comisario`
--

DROP TABLE IF EXISTS `Comisario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comisario` (
  `id_comisario` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `tipo_comisario` varchar(45) DEFAULT NULL,
  `id_evento` int NOT NULL,
  PRIMARY KEY (`id_comisario`),
  UNIQUE KEY `id_comisario_UNIQUE` (`id_comisario`),
  KEY `id_eventos_idx` (`id_evento`),
  CONSTRAINT `id_eventos` FOREIGN KEY (`id_evento`) REFERENCES `Evento` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comisario`
--

LOCK TABLES `Comisario` WRITE;
/*!40000 ALTER TABLE `Comisario` DISABLE KEYS */;
INSERT INTO `Comisario` VALUES (401,'crispiin','A',301),(402,'cipriano','B',302),(403,'camelia','A',303),(404,'bartolio','B',304),(405,'marina','A',305),(406,'anacieto','B',306);
/*!40000 ALTER TABLE `Comisario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Complejo_deportivo`
--

DROP TABLE IF EXISTS `Complejo_deportivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Complejo_deportivo` (
  `id_complejo_dep` int NOT NULL,
  `localizacion` varchar(45) DEFAULT NULL,
  `jefe_organizacion` varchar(45) DEFAULT NULL,
  `area_total` double DEFAULT NULL,
  `id_sede` int NOT NULL,
  PRIMARY KEY (`id_complejo_dep`),
  UNIQUE KEY `id_complejo_UNIQUE` (`id_complejo_dep`),
  KEY `IdSedes_idx` (`id_sede`),
  CONSTRAINT `id_sede_olimpica` FOREIGN KEY (`id_sede`) REFERENCES `Sede_olimpica` (`id_sede`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Complejo_deportivo`
--

LOCK TABLES `Complejo_deportivo` WRITE;
/*!40000 ALTER TABLE `Complejo_deportivo` DISABLE KEYS */;
INSERT INTO `Complejo_deportivo` VALUES (100,'Miguel hidalgo','Carlos Alvarado',900,1),(200,'Mitras del sol','Daniel Chavez',700,2),(300,'Juarez','Ana Rodriguez',500,3),(400,'Garza Sada','Rosario Luna',300,4),(500,'Fuentes del pedregal','Laura Garza',400,5),(600,'Juarez','Juan Zepeda',400,6);
/*!40000 ALTER TABLE `Complejo_deportivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Complejo_polideportivo`
--

DROP TABLE IF EXISTS `Complejo_polideportivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Complejo_polideportivo` (
  `id_polideportivo` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `localizacion` varchar(45) DEFAULT NULL,
  `id_complejo_dep` int NOT NULL,
  `dep_area` double DEFAULT NULL,
  PRIMARY KEY (`id_polideportivo`),
  UNIQUE KEY `id_polideportivo_UNIQUE` (`id_polideportivo`),
  KEY `complejo_polideportivo_idx` (`id_complejo_dep`),
  CONSTRAINT `complejo_polideportivo` FOREIGN KEY (`id_complejo_dep`) REFERENCES `Complejo_deportivo` (`id_complejo_dep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Complejo_polideportivo`
--

LOCK TABLES `Complejo_polideportivo` WRITE;
/*!40000 ALTER TABLE `Complejo_polideportivo` DISABLE KEYS */;
INSERT INTO `Complejo_polideportivo` VALUES (201,'Perez','Av insurgentes',100,500),(202,'Garcia','Av revolucion',200,400),(203,'Tejeda','Av independencia',300,200),(204,'Guadaupe','Rio norte',400,100),(205,'Bravo','Rio sur',500,200),(206,'Camelia','Chapultepec',600,150);
/*!40000 ALTER TABLE `Complejo_polideportivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Complejo_unideportivo`
--

DROP TABLE IF EXISTS `Complejo_unideportivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Complejo_unideportivo` (
  `id_unideportivo` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `localizacion` varchar(45) DEFAULT NULL,
  `id_complejo_dep` int NOT NULL,
  `area` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_unideportivo`),
  UNIQUE KEY `id_unideportivo_UNIQUE` (`id_unideportivo`),
  KEY `complejo_unideportivo_idx` (`id_complejo_dep`),
  CONSTRAINT `complejo_unideportivo` FOREIGN KEY (`id_complejo_dep`) REFERENCES `Complejo_deportivo` (`id_complejo_dep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Complejo_unideportivo`
--

LOCK TABLES `Complejo_unideportivo` WRITE;
/*!40000 ALTER TABLE `Complejo_unideportivo` DISABLE KEYS */;
INSERT INTO `Complejo_unideportivo` VALUES (101,'Estadio Fray nano','Av insurgentes',100,'400'),(102,'Francisco Marquez','Av revolucion',200,'300'),(103,'Mario medina','Av independencia',300,'300'),(104,'Guadaupe','Rio norte',400,'200'),(105,'Jose','Rio sur',500,'200'),(106,'Gallegos','Chapultepec',600,'250');
/*!40000 ALTER TABLE `Complejo_unideportivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Equipamiento`
--

DROP TABLE IF EXISTS `Equipamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Equipamiento` (
  `id_equipamiento` int NOT NULL,
  `tipo_equipamiento` varchar(45) DEFAULT NULL,
  `id_evento` int NOT NULL,
  PRIMARY KEY (`id_equipamiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipamiento`
--

LOCK TABLES `Equipamiento` WRITE;
/*!40000 ALTER TABLE `Equipamiento` DISABLE KEYS */;
INSERT INTO `Equipamiento` VALUES (501,'A',301),(502,'B',302),(503,'A',303),(504,'B',304),(505,'A',305),(506,'B',306);
/*!40000 ALTER TABLE `Equipamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Equipamiento_evento`
--

DROP TABLE IF EXISTS `Equipamiento_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Equipamiento_evento` (
  `id_equipamiento_evento` int NOT NULL,
  `id_evento` int NOT NULL,
  `id_equipamiento` int NOT NULL,
  PRIMARY KEY (`id_equipamiento_evento`),
  UNIQUE KEY `id_equipamiento_UNIQUE` (`id_equipamiento_evento`),
  KEY `id_eventos_idx` (`id_evento`),
  KEY `id_equipamientos_idx` (`id_equipamiento`),
  CONSTRAINT `equipos_eventos` FOREIGN KEY (`id_evento`) REFERENCES `Evento` (`id_evento`),
  CONSTRAINT `id_equipamientos` FOREIGN KEY (`id_equipamiento`) REFERENCES `Equipamiento` (`id_equipamiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipamiento_evento`
--

LOCK TABLES `Equipamiento_evento` WRITE;
/*!40000 ALTER TABLE `Equipamiento_evento` DISABLE KEYS */;
INSERT INTO `Equipamiento_evento` VALUES (601,301,501),(602,302,502),(603,303,503),(604,304,504),(605,305,505),(606,306,506);
/*!40000 ALTER TABLE `Equipamiento_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Evento`
--

DROP TABLE IF EXISTS `Evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Evento` (
  `id_evento` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `duracion` time DEFAULT NULL,
  `num_participantes` int DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `id_polideportivo` int NOT NULL,
  `id_unideportivo` int NOT NULL,
  PRIMARY KEY (`id_evento`),
  UNIQUE KEY `id_evento_UNIQUE` (`id_evento`),
  KEY `complejos_polideportivos_idx` (`id_polideportivo`),
  KEY `complejos_unideportivos_idx` (`id_unideportivo`),
  CONSTRAINT `complejos_polideportivos` FOREIGN KEY (`id_polideportivo`) REFERENCES `Complejo_polideportivo` (`id_polideportivo`),
  CONSTRAINT `complejos_unideportivos` FOREIGN KEY (`id_unideportivo`) REFERENCES `Complejo_unideportivo` (`id_unideportivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Evento`
--

LOCK TABLES `Evento` WRITE;
/*!40000 ALTER TABLE `Evento` DISABLE KEYS */;
INSERT INTO `Evento` VALUES (301,'Natacion','2011-05-07','00:00:03',20,'masculino',201,101),(302,'Tennis','2012-05-07','00:00:04',10,'femenino',202,102),(303,'Tennis','2011-05-07','00:00:02',20,'femenino',203,103),(304,'Natacion','2012-05-07','00:00:02',9,'masculino',204,104),(305,'Karate','2011-05-07','00:00:04',10,'masculino',205,105),(306,'Natacion','2012-05-07','00:00:02',10,'femenino',206,106);
/*!40000 ALTER TABLE `Evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sede_olimpica`
--

DROP TABLE IF EXISTS `Sede_olimpica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sede_olimpica` (
  `id_sede` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `ubicacion_pais` varchar(45) DEFAULT NULL,
  `num_complejos` varchar(45) DEFAULT NULL,
  `presupuesto` bigint DEFAULT NULL,
  PRIMARY KEY (`id_sede`),
  UNIQUE KEY `id_sede_UNIQUE` (`id_sede`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sede_olimpica`
--

LOCK TABLES `Sede_olimpica` WRITE;
/*!40000 ALTER TABLE `Sede_olimpica` DISABLE KEYS */;
INSERT INTO `Sede_olimpica` VALUES (1,'Maria lopez','Cd.Mexico','4',50000),(2,'Juan Perez','Monterrey','4',32000),(3,'Antonio Martinez','Guadalajara','3',20000),(4,'Guadalupe Garcia','Monterrey','4',43000),(5,'Sonia Hernandez','Cd.Mexico','4',24000),(6,'Emilio Estrada','Guadalajara','3',40000);
/*!40000 ALTER TABLE `Sede_olimpica` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-11 22:49:28
