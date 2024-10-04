-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: encuestasdb
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `respuestas`
--

DROP TABLE IF EXISTS `respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respuestas` (
  `idrespuestas` int NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(255) DEFAULT NULL,
  `respuesta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idrespuestas`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuestas`
--

LOCK TABLES `respuestas` WRITE;
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
INSERT INTO `respuestas` VALUES (1,'¿Cuál es tu color favorito?','Azul'),(2,'¿Cuál es tu color favorito?','Azul'),(3,'¿Cuál es tu comida favorita?','PIZZA'),(4,'¿Qué deporte te gusta más?','Si'),(5,'¿Qué ciudad te gustaría visitar?','PARIS'),(6,'¿Cuál es tu color favorito?','Azul'),(7,'¿Cuál es tu comida favorita?','Pizza'),(8,'¿Qué deporte te gusta más?','SI'),(9,'¿Qué ciudad te gustaría visitar?','SI'),(10,'¿Cuál es tu color favorito?','AZUL'),(11,'¿Cuál es tu comida favorita?','PIZZA'),(12,'¿Qué deporte te gusta más?','SI'),(13,'¿Qué ciudad te gustaría visitar?','CIUDAD'),(14,'¿Cuál es tu color favorito?','AZUL'),(15,'¿Cuál es tu comida favorita?','PIZZA'),(16,'¿Qué deporte te gusta más?','SI'),(17,'¿Qué ciudad te gustaría visitar?','CIUDAD'),(18,'¿Cuál es tu color favorito?','ROJO'),(19,'¿Cuál es tu comida favorita?','HAMBURGUESA'),(20,'¿Qué deporte te gusta más?','ONEPIECE'),(21,'¿Qué ciudad te gustaría visitar?','LONDRES'),(22,'¿Cuál es tu color favorito?','ROJO'),(23,'¿Cuál es tu comida favorita?','LASAÑA'),(24,'¿Qué deporte te gusta más?','NADAR'),(25,'¿Qué ciudad te gustaría visitar?','QUICHE'),(26,'¿Cuál es tu color favorito?','MORADO'),(27,'¿Cuál es tu comida favorita?','FIDEOS'),(28,'¿Qué deporte te gusta más?','COMER'),(29,'¿Qué ciudad te gustaría visitar?','IRAk'),(30,'¿Cuál es tu color favorito?','Purpura'),(31,'¿Cuál es tu comida favorita?','Perritos'),(32,'¿Qué deporte te gusta más?','Football'),(33,'¿Qué ciudad te gustaría visitar?','Siria'),(34,'¿Cuál es tu videojuego favorito?','si'),(35,'¿Cuál es tu consola favorita?','si'),(36,'¿Qué deporte te gusta más?','si'),(37,'¿Qué ciudad te gustaría visitar?','si');
/*!40000 ALTER TABLE `respuestas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-03 19:40:42
