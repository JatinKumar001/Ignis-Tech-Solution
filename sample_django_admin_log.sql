-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: sample
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-10-19 08:19:29.358595','1','hack01',3,'',7,1),(2,'2022-10-19 08:21:20.295553','2','hack01',3,'',7,1),(3,'2022-10-19 08:22:26.633043','3','hack01',3,'',7,1),(4,'2022-10-19 08:26:20.594397','4','hack01',3,'',7,1),(5,'2022-10-19 08:26:48.639742','5','hack01',1,'[{\"added\": {}}]',7,1),(6,'2022-10-19 08:35:45.478586','6','hack02',3,'',7,1),(7,'2022-10-19 08:36:30.326132','7','hack02',3,'',7,1),(8,'2022-10-19 08:37:06.035713','9','hack02',3,'',7,1),(9,'2022-10-19 08:37:09.429296','8','hack02',3,'',7,1),(10,'2022-10-19 08:38:04.322529','10','hack02',3,'',7,1),(11,'2022-10-19 08:41:08.623882','11','hack02',3,'',7,1),(12,'2022-10-19 08:43:55.575773','12','hack02',3,'',7,1),(13,'2022-10-19 08:59:50.311187','14','hack02',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(14,'2022-10-19 09:03:33.802960','13','hack02',3,'',7,1),(15,'2022-10-19 09:44:18.007214','14','hack02',2,'[{\"changed\": {\"fields\": [\"Location\"]}}]',7,1),(16,'2022-10-19 09:47:03.874882','15','hack0',1,'[{\"added\": {}}]',7,1),(17,'2022-10-19 09:47:10.484567','15','hack03',2,'[{\"changed\": {\"fields\": [\"Event name\"]}}]',7,1),(18,'2022-10-19 09:47:15.715473','14','hack02',2,'[{\"changed\": {\"fields\": [\"Location\"]}}]',7,1),(19,'2022-10-19 15:24:48.058992','17','hack04',3,'',7,1),(20,'2022-10-19 15:24:52.240903','16','hack04',3,'',7,1),(21,'2022-10-19 15:29:31.655635','18','hack04',3,'',7,1),(22,'2022-10-19 16:29:16.402279','15','hack03',3,'',7,1),(23,'2022-10-19 16:29:16.410320','14','hack02',3,'',7,1),(24,'2022-10-19 16:29:16.410320','5','hack01',3,'',7,1),(25,'2022-10-19 16:35:14.387534','19','hack01',3,'',7,1),(26,'2022-10-19 16:37:12.870160','20','hack01',3,'',7,1),(27,'2022-10-19 16:39:20.462396','21','hack01',3,'',7,1),(28,'2022-10-19 16:39:33.963101','22','hack01',1,'[{\"added\": {}}]',7,1),(29,'2022-10-19 16:41:09.246257','22','hack01',3,'',7,1),(30,'2022-10-19 16:42:18.709208','23','Free to Like',1,'[{\"added\": {}}]',7,1),(31,'2022-10-19 16:44:32.799442','24','Event Full of Fun',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-19 22:35:26
