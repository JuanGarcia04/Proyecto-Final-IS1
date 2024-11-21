-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gestionlaboratorios
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administradores` (
  `idAdministrador` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  PRIMARY KEY (`idAdministrador`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores`
--

LOCK TABLES `administradores` WRITE;
/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
INSERT INTO `administradores` VALUES (1,'valentina.zuloaga@ucp.edu.co','1089380049'),(2,'juan9.garcia@ucp.edu.co','1085717032');
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facultades`
--

DROP TABLE IF EXISTS `facultades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facultades` (
  `idFacultad` int(11) NOT NULL AUTO_INCREMENT,
  `nombreFacultad` varchar(100) NOT NULL,
  `color` varchar(20) NOT NULL,
  PRIMARY KEY (`idFacultad`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultades`
--

LOCK TABLES `facultades` WRITE;
/*!40000 ALTER TABLE `facultades` DISABLE KEYS */;
INSERT INTO `facultades` VALUES (1,'Facultad de Arquitectura y Diseño','lightblue'),(2,'Facultad de Ciencias Humanas, Sociales y de la Educación','yellow'),(3,'Facultad de Ciencias Básicas e Ingeniería','red'),(4,'Facultad de Ciencias Económicas y Administrativas','green');
/*!40000 ALTER TABLE `facultades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorios`
--

DROP TABLE IF EXISTS `laboratorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratorios` (
  `idLaboratorio` int(11) NOT NULL AUTO_INCREMENT,
  `nombreLaboratorio` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `idFacultad` int(11) DEFAULT NULL,
  `encargado` varchar(100) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `linkReserva` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idLaboratorio`),
  KEY `idFacultad` (`idFacultad`),
  CONSTRAINT `laboratorios_ibfk_1` FOREIGN KEY (`idFacultad`) REFERENCES `facultades` (`idFacultad`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorios`
--

LOCK TABLES `laboratorios` WRITE;
/*!40000 ALTER TABLE `laboratorios` DISABLE KEYS */;
INSERT INTO `laboratorios` VALUES (1,'Laboratorio de Física','Laboratorio especializado en mecánica y óptica. Valor por hora: 50.000',3,'Fernan Camilo Osorio Guzman','img/laboratorio1.jpg','https://forms.gle/VfinguTs9JQWa34w5'),(2,'Laboratorio de Software y Big Data','Centro de desarrollo de software y análisis de datos. Valor por hora: 50.000',3,'Alonso Toro Lazo','img/laboratorio2.jpg','https://forms.gle/cNwijRpECSZg9ykP7'),(3,'Laboratorio de Telecomunicaciones','Espacio para investigación en redes y comunicaciones. Valor por hora: 50.000',3,'Rafael Ricardo Rubiano Pavia','img/laboratorio3.jpg','https://forms.gle/JLMmmdokghomdQ3N9'),(4,'Laboratorio de Ingeniería Industrial','Laboratorio para procesos industriales y manufactura. Valor por hora: 50.000',3,'Fernan Camilo Osorio Guzman','img/laboratorio4.jpg','https://forms.gle/YJy5WuD9aEEtybQQ8'),(5,'Laboratorio de econometría y finanzas','Para análisis y modelado de datos económicos y financieros.\r\nValor por hora: 50.000',4,'Mónica Restrepo Monsalve','img/laboratorio5.jpg','https://forms.gle/wjg2DZgV3TTwBGZa9'),(6,'Laboratorio de Neurociencias','Para estudios del sistema nervioso y comportamiento cerebral. Valor por hora: 50.000',2,'Rafael Rodríguez','img/laboratorio6.jpg','https://forms.gle/4PxVLPxBFGindo3U9'),(7,'Laboratorio de Psicología','Para estudios del comportamiento y procesos mentales. Valor por hora: 50.000',2,'Juana Marín','img/laboratorio33.jpg','https://forms.gle/7osLrW6hp27MKM4a6'),(8,'Cámara de Gesell','Para observación y análisis de interacciones en entornos controlados. Valor por hora: 50.000',2,'Laura Toro','img/laboratorio7.jpg','https://forms.gle/kDAzPF1P4eEzMULF7'),(9,'Laboratorio de Banco de Pruebas','Para evaluación psicológica y análisis de instrumentos psicométricos. Valor por hora: 50.000',2,'Felipe Arias','img/laboratorio8.jpg','https://forms.gle/HQ6ryiYjhDDftssj7'),(10,'Laboratorio de construcción ','Para ensayos de materiales y análisis de estructuras. Valor por hora: 50.000',1,'Juan Felipe Osorio','img/laboratorio9.jpg','https://forms.gle/8CkVrfUCbZQVd8Su7'),(11,'Prodilab','Para diseño, desarrollo y evaluación de proyectos innovadores. Valor por hora: 50.000',1,'Fernando Álvarez','img/laboratorio10.jpg','https://forms.gle/3FoTWqYHqLYnkYfz6'),(12,'Taller de Maderas','Para fabricación y diseño en madera con herramientas especializadas. Valor por hora: 50.000',1,'Alejandro Meza','img/laboratorio11.jpg','https://forms.gle/aZcHpLMENdoXq5rc8'),(13,'Taller de Plásticos','Para moldeado y manufactura de productos plásticos. Valor por hora: 50.000',1,'Juan Esteban Pérez','img/laboratorio12.jpg','https://forms.gle/pi4XhqV4pmGYkE4fA'),(14,'Laboratorio de Bioclimática','Para análisis de diseño sostenible y confort ambiental. Valor por hora: 50.000',1,'Sofía Morales','img/laboratorio13.jpg','https://forms.gle/5s61ZXF8h4KFVutR9');
/*!40000 ALTER TABLE `laboratorios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19 16:44:15
