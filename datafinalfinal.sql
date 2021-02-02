-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: Favart
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Client` (
  `idClient` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `email` varchar(85) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `password` varchar(65) NOT NULL,
  `job` varchar(100) NOT NULL,
  `structure_name` varchar(85) NOT NULL,
  `structure_type` varchar(85) NOT NULL,
  `structure_field` varchar(200) NOT NULL,
  `job_field` varchar(200) DEFAULT NULL,
  `territory` varchar(45) NOT NULL,
  `wishes` varchar(300) DEFAULT NULL,
  `website` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (9,'TestEncore','TestToujours','test@gmail.com','','','','','','','','','',''),(10,'Nonjemappellepastest','Test','test@gmail.com','602030405','Jetestemabdd','Test','Test','Test','Test','Test','Test','Test','Test.com'),(11,'Test','Test','test@gmail.com','602030405','Jetestemabdd','Test','Test','Test','Test','Test','Test','Test','Test.com'),(12,'Testidentifcation','Test','savoyard@gmail.com','602030405','identifietoi','Test','Test','Test','Test','Test','Test','Test','Test.com'),(13,'Test','Test','loic@gmail.com','602030405','$2b$05$QP.Q0xWJAqkTV5vX1I5x.u4H5rXANOObiKIylYJobKxpfgDdc.MBq','Test','Test','Test','Test','Test','Test','Test','Test.com'),(14,'Test','Test','weshthomas@gmail.com','602030405','mygalequiafaitunbacES','Test','Test','Test','Test','Test','Test','Test','Test.com'),(15,'Test','Test','weshthomas@gmail.com','602030405','$2b$05$w4BRMUtmcza5EPRllsAQNue5dftqGFq9R6EJgbHgJPnx6e1wBLfL.','Test','Test','Test','Test','Test','Test','Test','Test.com'),(16,'Test','Test','weshlalalathomas@gmail.com','602030405','$2b$05$C.QwAkLzePXC22p3AvDnOOltrjegig2GHJRiOZbK1xzm2KVtuzuIq','Test','Test','Test','Test','Test','Test','Test','Test.com'),(17,'TestALaCon','Test','testalacon@gmail.com','602030405','$2b$05$7jQN7OccityyGjP/.ofKJuAQXU/50G2F/UZGim8.Dnnb6xk07YnxK','Test','Test','Test','Test','Test','Test','Test','Test.com'),(18,'TestALaConbis','Test','testalaconbis@gmail.com','602030405','$2b$05$yNHiaTFamtXd02o2Yvfw8e1LMOs6/lBQELoRtnpHroS.ip3mkUncq','Test','Test','Test','Test','Test','Test','Test','Test.com'),(19,'ggg','ffff','ff@gmail.com','5555555','$2b$05$VInSMbnrr34SKR0ZkUL5t.o8MYBzKZnj5NLJnx.Fr7Tfj281eTUA.','f','f','f','f','','','',''),(20,'TestALaConbis','Test','testconnexion@gmail.com','602030405','$2b$05$otjkvyqS2D3TYOPuZN.kVuHBylu7/LYwPw7wze5izxbKqE1gREsZm','Test','Test','Test','Test','Test','Test','Test','Test.com'),(21,'Marie','Garde','marie_garde@ymail.com','555555(','$2b$05$GAdAPcIymZ7C0AfVYWib2OC8tvG4kB4gxcXR9N3i2n5wAyIWC4gvK','f','j','f','j','','','',''),(22,'g','l','k@gamil.com','9999','$2b$05$.ds4z39JiNlWzLxfZl42V.WwEkvoOVhyVEaX7ljOKrNQwf78XIduG','f','f','f','f','','','',''),(23,'g','g','g@gmail.com','88','$2b$05$o5kahrzn9CPM8Vj95cdH7ec3S1g53Kn0Au9J1qKvDYY3mQQzGkPoq','j','j','j','j','','','',''),(24,'f','j','h@gmail.com','77','$2b$05$kSCp7SIoj8oO8n/veui5Te99iwdL9TQKF7NU9bw8FcXQgyPGCv0my','h','h','h','h','h','','',''),(25,'f','g','g@gmail.com','222','$2b$05$v/5Zmbrii4tAGS3VUO7j7.NszRSo/s9BYqAmkYjxORmZHskF5UG3S','g','g','g','g','g','','',''),(26,'f','g','g@ymail.com','333','$2b$05$3xY5hxy1wUenU5iWic32deG3CLVoUFL1KPxzHYqSXOOy8TYvtoI82','h','h','h','h','','','',''),(27,'g','h','h@gmail.com','33','$2b$05$UUMiyOPdwjNsOVkE3iTi6.0SDmttFeVKtI2pbqGpW9cFLmgIkyA9K','h','h','h','h','','','','');
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ressources_Externes`
--

DROP TABLE IF EXISTS `Ressources_Externes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ressources_Externes` (
  `idRessources_Externes` int NOT NULL AUTO_INCREMENT,
  `link` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idRessources_Externes`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ressources_Externes`
--

LOCK TABLES `Ressources_Externes` WRITE;
/*!40000 ALTER TABLE `Ressources_Externes` DISABLE KEYS */;
INSERT INTO `Ressources_Externes` VALUES (1,'https://drive.google.com/file/d/1iMXClNK4HYPeD6NvHOzoh5ItrAJh1_Hc/view?usp=sharing','Appel à manifestation','Lorem ipsum');
/*!40000 ALTER TABLE `Ressources_Externes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ressources_Favart`
--

DROP TABLE IF EXISTS `Ressources_Favart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ressources_Favart` (
  `idRessources_Favart` int NOT NULL AUTO_INCREMENT,
  `link` varchar(500) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idRessources_Favart`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ressources_Favart`
--

LOCK TABLES `Ressources_Favart` WRITE;
/*!40000 ALTER TABLE `Ressources_Favart` DISABLE KEYS */;
INSERT INTO `Ressources_Favart` VALUES (4,'https://drive.google.com/file/d/1nmpTs_EeaKiSSCLXO7oEUQeRdzZt3IhN/view?usp=sharing','Interventions 2021','Lorem ipsum'),(5,'https://drive.google.com/file/d/1nmpTs_EeaKiSSCLXO7oEUQeRdzZt3IhN/view?usp=sharing','TEST post front','Test post front description');
/*!40000 ALTER TABLE `Ressources_Favart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-02 14:08:51
