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
-- Table structure for table `application_config`
--

DROP TABLE IF EXISTS `application_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_config` (
  `config_id` int(11) NOT NULL,
  `config_name` varchar(45) DEFAULT NULL,
  `config_value` varchar(45) DEFAULT NULL,
  `config_categ` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_config`
--

LOCK TABLES `application_config` WRITE;
/*!40000 ALTER TABLE `application_config` DISABLE KEYS */;
INSERT INTO `application_config` VALUES (1,'application_style','preset5.css','UI'),(2,'ENTERPRENEUR_SERVED','200','UI_METRIC'),(3,'PROFESSIONAL_NETWORK','77','UI_METRIC'),(4,'GEOGRAPHIES','7','UI_METRIC'),(5,'TEAM_STRENGTH','27','UI_METRIC');
/*!40000 ALTER TABLE `application_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_keeping_request`
--

DROP TABLE IF EXISTS `book_keeping_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_keeping_request` (
  `book_keeping_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `requestor_full_name` varchar(50) DEFAULT NULL,
  `requestor_phone_number` varchar(15) DEFAULT NULL,
  `requestor_email_id` varchar(75) DEFAULT NULL,
  `requestor_pan_number` varchar(20) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`book_keeping_request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_keeping_request`
--

LOCK TABLES `book_keeping_request` WRITE;
/*!40000 ALTER TABLE `book_keeping_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_keeping_request` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `companies` VALUES (1,'Private Limited',12999.00,NULL,NULL,NULL),(2,'Limited Liability Partnership',9999.00,NULL,NULL,NULL),(3,'One Person Company',11999.00,NULL,NULL,NULL),(4,'Public Limited Company',42999.00,NULL,NULL,NULL),(5,'Nidhi Limited Company',74999.00,NULL,NULL,NULL),(6,'Section 8 Company',25000.00,NULL,NULL,NULL);
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
  `company_name` varchar(100) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Details of company creation ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_request`
--

LOCK TABLES `company_request` WRITE;
/*!40000 ALTER TABLE `company_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gst_request`
--

DROP TABLE IF EXISTS `gst_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gst_request` (
  `gst_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `requestor_full_name` varchar(50) DEFAULT NULL,
  `requestor_phone_number` varchar(15) DEFAULT NULL,
  `requestor_email_id` varchar(75) DEFAULT NULL,
  `requestor_pan_number` varchar(20) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`gst_request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gst_request`
--

LOCK TABLES `gst_request` WRITE;
/*!40000 ALTER TABLE `gst_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `gst_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_export_request`
--

DROP TABLE IF EXISTS `import_export_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_export_request` (
  `import_export_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `requestor_full_name` varchar(50) DEFAULT NULL,
  `requestor_phone_number` varchar(15) DEFAULT NULL,
  `requestor_email_id` varchar(50) DEFAULT NULL,
  `requestor_pan_number` varchar(15) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`import_export_request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_export_request`
--

LOCK TABLES `import_export_request` WRITE;
/*!40000 ALTER TABLE `import_export_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_export_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income_tax_request`
--

DROP TABLE IF EXISTS `income_tax_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `income_tax_request` (
  `income_tax_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `requestor_full_name` varchar(100) DEFAULT NULL,
  `requestor_email_id` varchar(100) DEFAULT NULL,
  `requestor_phone_number` varchar(30) DEFAULT NULL,
  `requestor_bank_name` varchar(45) DEFAULT NULL,
  `requestor_ifsc_code` varchar(45) DEFAULT NULL,
  `user_type` varchar(45) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`income_tax_request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income_tax_request`
--

LOCK TABLES `income_tax_request` WRITE;
/*!40000 ALTER TABLE `income_tax_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `income_tax_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_request`
--

DROP TABLE IF EXISTS `loan_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_request` (
  `loan_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `requestor_name` varchar(50) DEFAULT NULL,
  `requestor_phone_number` varchar(20) DEFAULT NULL,
  `requestor_email_id` varchar(75) DEFAULT NULL,
  `requestor_pan_number` varchar(15) DEFAULT NULL,
  `loan_id` int(11) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`loan_request_id`),
  KEY `loan_id_foreign_key_idx` (`loan_id`),
  CONSTRAINT `loan_id_foreign_key` FOREIGN KEY (`loan_id`) REFERENCES `loan_types` (`loan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Loan request from users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_request`
--

LOCK TABLES `loan_request` WRITE;
/*!40000 ALTER TABLE `loan_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_types`
--

DROP TABLE IF EXISTS `loan_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_types` (
  `loan_type` varchar(50) DEFAULT NULL,
  `loan_name` varchar(50) DEFAULT NULL,
  `loan_id` int(11) NOT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Types of loans offered by platform';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_types`
--

LOCK TABLES `loan_types` WRITE;
/*!40000 ALTER TABLE `loan_types` DISABLE KEYS */;
INSERT INTO `loan_types` VALUES ('Home Loan','Home Loan',1),('Loan Against Property','Loan Against Property',2),('Balance Transfer & Top ups','Balance Transfer & Top ups',3),('Educational Loan','Educational Loan',4),('Term Loan Synidation','Term Loan Synidation',5);
/*!40000 ALTER TABLE `loan_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_service_request`
--

DROP TABLE IF EXISTS `registration_service_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_service_request` (
  `registration_service_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `requestor_full_name` varchar(50) DEFAULT NULL,
  `requestor_phone_number` varchar(15) DEFAULT NULL,
  `requestor_email_id` varchar(75) DEFAULT NULL,
  `requestor_pan_number` varchar(20) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `registration_service_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`registration_service_request_id`),
  KEY `registration_service_fid_foreign_key_idx` (`registration_service_type_id`),
  CONSTRAINT `registration_service_fid_foreign_key` FOREIGN KEY (`registration_service_type_id`) REFERENCES `registration_service_type` (`service_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_service_request`
--

LOCK TABLES `registration_service_request` WRITE;
/*!40000 ALTER TABLE `registration_service_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_service_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_service_type`
--

DROP TABLE IF EXISTS `registration_service_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_service_type` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(45) NOT NULL,
  `service_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_service_type`
--

LOCK TABLES `registration_service_type` WRITE;
/*!40000 ALTER TABLE `registration_service_type` DISABLE KEYS */;
INSERT INTO `registration_service_type` VALUES (1,'FSSAI Food License','license'),(2,'IEC Registration','registration'),(3,'Trade License','license'),(4,'ISO Registration','license'),(5,'Digital Signature (DSC)','license'),(6,'Employee State Insurance (ESI) Registration','license'),(7,'Employees Provident Fund','license'),(8,'Service Tax Registration','registration'),(9,'Sales Tax Registration','registration'),(10,'Professional Tax Registration','registration'),(11,'Excise Tax Registration','registration');
/*!40000 ALTER TABLE `registration_service_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_query`
--

DROP TABLE IF EXISTS `user_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_query` (
  `query_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(55) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text,
  `email_id` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`query_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_query`
--

LOCK TABLES `user_query` WRITE;
/*!40000 ALTER TABLE `user_query` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_query` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-15 21:31:31
