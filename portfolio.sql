-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: portfolio
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `other_projects`
--

DROP TABLE IF EXISTS `other_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `other_projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(128) NOT NULL,
  `url` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_projects`
--

LOCK TABLES `other_projects` WRITE;
/*!40000 ALTER TABLE `other_projects` DISABLE KEYS */;
INSERT INTO `other_projects` VALUES (1,'Wild Green School','A project about making Our school more green.','https://github.com/NacymeG/Projet-1---Wild-Green-School-'),(2,'Basic Authenfication','Register users in a secure way.','https://gist.github.com/NacymeG/b27536fdd52c3572ef4fd0665ea705a5'),(3,'CSS Preprocessor','Bla bla bla bla bla bla bla bla bla bla bla bla. ','https://github.com/NacymeG/csspreprocessor'),(4,'Fetch Simpsons quotes','Bla bla bla bla bla bla bla bla bla bla bla bla. ','https://github.com/NacymeG/fetch-simpsons-quotes'),(5,'Node CowSay','Bla bla bla bla bla bla bla bla bla bla bla bla. ','https://github.com/NacymeG/Exercice-Node---Cow-Say-'),(6,'Github Description','Bla bla bla bla bla bla bla bla bla bla bla bla. ','https://github.com/NacymeG/NacymeG');
/*!40000 ALTER TABLE `other_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(256) NOT NULL,
  `image` varchar(512) NOT NULL,
  `url` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'EVeRetrofit','A website about Retrofiting vehicules','https://i.imgur.com/bjVrOF1.png','https://github.com/WildCodeSchool/p3-g3-sept21-lille-reactJs-retrofit-frontend'),(2,'Planeswalker','Planeswalker, a Magic the Gathering Database.','https://i.imgur.com/SfxKQZR.png','https://github.com/NacymeG/Planeswalker');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_has_tech_stack`
--

DROP TABLE IF EXISTS `project_has_tech_stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_has_tech_stack` (
  `id` varchar(45) NOT NULL,
  `project_id` int NOT NULL,
  `tech_stack_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_project_has_tech_stack_tech_stack1_idx` (`tech_stack_id`),
  KEY `fk_project_has_tech_stack_project_idx` (`project_id`),
  CONSTRAINT `fk_project_has_tech_stack_project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `fk_project_has_tech_stack_tech_stack1` FOREIGN KEY (`tech_stack_id`) REFERENCES `tech_stack` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_has_tech_stack`
--

LOCK TABLES `project_has_tech_stack` WRITE;
/*!40000 ALTER TABLE `project_has_tech_stack` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_has_tech_stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tech_stack`
--

DROP TABLE IF EXISTS `tech_stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tech_stack` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tech_stack`
--

LOCK TABLES `tech_stack` WRITE;
/*!40000 ALTER TABLE `tech_stack` DISABLE KEYS */;
INSERT INTO `tech_stack` VALUES (7,'React'),(8,'JavaScript '),(9,'ExpressJs'),(10,'Styled Component'),(11,'HTML 5'),(12,'CSS 3'),(13,'Node.js');
/*!40000 ALTER TABLE `tech_stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `mail` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('nacyme.gallel@gmail.com','Tototo59!',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-03 17:11:35
