-- MySQL dump 10.13  Distrib 5.7.14, for Win64 (x86_64)
--
-- Host: localhost    Database: consulting
-- ------------------------------------------------------
-- Server version	5.7.14-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) DEFAULT NULL,
  `company_price` decimal(10,2) DEFAULT NULL,
  `company_type` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`),
  UNIQUE KEY `company_id_UNIQUE` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Details for company type available';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Private Limited',11999.00,NULL,NULL,NULL),(2,'Limited Liability Partnership',7999.00,NULL,NULL,NULL),(3,'One Person Company',10999.00,NULL,NULL,NULL),(4,'Public Limited Company',39999.00,NULL,NULL,NULL),(5,'Nidhi Limited Company',84999.00,NULL,NULL,NULL),(6,'Section 8 Company',25000.00,NULL,NULL,NULL);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_request`
--

DROP TABLE IF EXISTS `company_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_request` (
  `company_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `requestor_last_name` varchar(50) DEFAULT NULL,
  `requestor_first_name` varchar(50) DEFAULT NULL,
  `requostor_email` varchar(100) DEFAULT NULL,
  `requestor_phone_no` varchar(30) DEFAULT NULL,
  `requestor_pan_no` varchar(30) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`company_request_id`),
  KEY `company_id_foreign_key_idx` (`company_id`),
  CONSTRAINT `company_id_foreign_key` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Details of company creation ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_request`
--

LOCK TABLES `company_request` WRITE;
/*!40000 ALTER TABLE `company_request` DISABLE KEYS */;
INSERT INTO `company_request` VALUES (1,'Himanshu Vardhan',NULL,'himanshuvardhan@gmail.com','9411837388','aaaaaaaa',1,NULL,'2016-08-28 18:42:38','2016-08-28 18:42:37'),(2,'Himanshu Vardhan',NULL,'himanshuvardhan@gmail.com','9411837388','dsdsd',1,NULL,'2016-08-28 18:44:38','2016-08-28 18:44:38'),(3,'Himanshu Vardhan',NULL,'himanshuvardhan@gmail.com','9411837388','aaaaaaaa',1,NULL,'2016-08-28 19:09:11','2016-08-28 19:09:11'),(4,'Himanshu Vardhan',NULL,'himanshuvardhan@gmail.com','9411837388','dds',1,NULL,'2016-08-28 19:10:22','2016-08-28 19:10:22'),(5,'Himanshu Vardhan',NULL,'himanshuvardhan@gmail.com','9411837388','dsds',2,NULL,'2016-08-28 19:12:41','2016-08-28 19:12:41'),(6,'Vardhan','Himanshu','himanshuvardhan@gmail.com','9411837388','qwertyuiop',6,'create as soon as possible','2016-08-28 19:21:24','2016-08-28 19:21:24'),(7,'Vardhan','Himanshu','himanshuvardhan@gmail.com','9411837388','aaaaaaaa',3,'<title>BizCraft','2016-08-28 19:29:16','2016-08-28 19:29:16');
/*!40000 ALTER TABLE `company_request` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-28 19:35:21
