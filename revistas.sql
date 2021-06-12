-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: Revistas
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
-- Table structure for table `Articulo`
--

DROP TABLE IF EXISTS `Articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Articulo` (
  `idArticulo` bigint NOT NULL,
  `tituloArticulo` varchar(40) NOT NULL,
  `tipoArticulo` varchar(40) NOT NULL,
  `idAutor1` bigint NOT NULL,
  `idRevista1` bigint NOT NULL,
  `añoPublicacion` text,
  PRIMARY KEY (`idArticulo`),
  UNIQUE KEY `idArticulo_UNIQUE` (`idArticulo`),
  KEY `idAutores_idx` (`idAutor1`),
  KEY `id_revistas_idx` (`idRevista1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Articulo`
--

LOCK TABLES `Articulo` WRITE;
/*!40000 ALTER TABLE `Articulo` DISABLE KEYS */;
INSERT INTO `Articulo` VALUES (1,'Casas inteligentes','Divulgación',100,20,'2010'),(2,'Medición del agua','Informe técnico',101,21,'2021'),(3,'Invernadero automatizado','Divulgación',102,22,'2015'),(4,'Energias renovables','Divulgación',103,23,'2018'),(5,'Autos inteligentes','Informe técnico',130,20,'2017');
/*!40000 ALTER TABLE `Articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Autores`
--

DROP TABLE IF EXISTS `Autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Autores` (
  `idAutor` bigint NOT NULL,
  `nombreAutor` varchar(40) NOT NULL,
  `apellidoP_A` varchar(40) NOT NULL,
  `apellidoM_A` varchar(40) NOT NULL,
  `idDepto1` bigint NOT NULL,
  PRIMARY KEY (`idAutor`),
  UNIQUE KEY `idAutor_UNIQUE` (`idAutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Autores`
--

LOCK TABLES `Autores` WRITE;
/*!40000 ALTER TABLE `Autores` DISABLE KEYS */;
INSERT INTO `Autores` VALUES (101,'José','Sanchez','Gonzalez',1),(102,'Evelin','Flores','Delgado',2),(103,'María','Jacinto','Villanueva',1),(104,'Eduardo','Mendez','Novoa',1),(105,'Luis','Escobar','Perez',2);
/*!40000 ALTER TABLE `Autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Departamento`
--

DROP TABLE IF EXISTS `Departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Departamento` (
  `idDepto` bigint NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idDepto`),
  UNIQUE KEY `idDepto_UNIQUE` (`idDepto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departamento`
--

LOCK TABLES `Departamento` WRITE;
/*!40000 ALTER TABLE `Departamento` DISABLE KEYS */;
INSERT INTO `Departamento` VALUES (1,'Sistemas computacionales'),(2,'Electronica'),(3,'Mecatronica'),(4,'Industrial'),(5,'Energias renovables');
/*!40000 ALTER TABLE `Departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Revista`
--

DROP TABLE IF EXISTS `Revista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Revista` (
  `idRevista` bigint NOT NULL,
  `nombreRev` varchar(40) NOT NULL,
  `editor` varchar(40) NOT NULL,
  `frecuenciaPub` varchar(40) NOT NULL,
  PRIMARY KEY (`idRevista`),
  UNIQUE KEY `idRevista_UNIQUE` (`idRevista`),
  CONSTRAINT `revista_autores` FOREIGN KEY (`idRevista`) REFERENCES `Articulo` (`idRevista1`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Revista`
--

LOCK TABLES `Revista` WRITE;
/*!40000 ALTER TABLE `Revista` DISABLE KEYS */;
INSERT INTO `Revista` VALUES (20,'H2O','Editorial_1','Semestral'),(21,'Agua','Editorial_2','Bimestral'),(22,'automatización','Editorial_3','Anual'),(23,'mecatrónica','editorial_2 ','semestral');
/*!40000 ALTER TABLE `Revista` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-11 22:50:25
