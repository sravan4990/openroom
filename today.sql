-- MySQL dump 10.16  Distrib 10.2.16-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: openroom
-- ------------------------------------------------------
-- Server version	10.1.31-MariaDB

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
-- Table structure for table `administrators`
--

DROP TABLE IF EXISTS `administrators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrators` (
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrators`
--

LOCK TABLES `administrators` WRITE;
/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
INSERT INTO `administrators` VALUES ('admin');
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bannedusers`
--

DROP TABLE IF EXISTS `bannedusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bannedusers` (
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bannedusers`
--

LOCK TABLES `bannedusers` WRITE;
/*!40000 ALTER TABLE `bannedusers` DISABLE KEYS */;
INSERT INTO `bannedusers` VALUES ('banned');
/*!40000 ALTER TABLE `bannedusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancelled`
--

DROP TABLE IF EXISTS `cancelled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancelled` (
  `reservationid` bigint(20) NOT NULL,
  `start` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `roomid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `timeofrequest` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeofcancel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reservationid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancelled`
--

LOCK TABLES `cancelled` WRITE;
/*!40000 ALTER TABLE `cancelled` DISABLE KEYS */;
INSERT INTO `cancelled` VALUES (90,'2017-08-20 19:00:00','2017-08-20 19:29:59',28,'khada100','2017-08-19 23:15:04','2017-08-19 23:16:40'),(94,'2017-08-23 16:00:00','2017-08-23 17:29:59',29,'ttam','2017-08-23 14:52:42','2017-08-23 14:53:11'),(95,'2017-08-23 20:30:00','2017-08-23 20:59:59',28,'khada100','2017-08-23 16:13:40','2017-08-23 16:14:00'),(96,'2017-08-23 20:30:00','2017-08-23 21:29:59',29,'khada100','2017-08-23 16:48:51','2017-08-23 19:38:04'),(97,'2017-08-23 21:00:00','2017-08-23 21:29:59',28,'khada100','2017-08-23 19:40:07','2017-08-23 19:40:26'),(98,'2017-09-20 21:30:00','2017-09-20 21:59:59',28,'jmellone','2017-09-07 17:07:03','2017-09-07 17:07:38'),(99,'2017-09-11 16:00:00','2017-09-11 17:29:59',28,'dwilliams1','2017-09-11 20:01:20','2017-09-11 20:01:52'),(100,'2017-09-11 15:30:00','2017-09-11 15:59:59',28,'khada100','2017-09-11 20:04:55','2017-09-11 20:05:56'),(106,'2017-11-22 21:30:00','2017-11-22 21:59:59',29,'joates','2017-09-22 19:02:57','2017-11-15 21:49:20'),(107,'2017-11-29 21:30:00','2017-11-29 21:59:59',29,'joates','2017-09-22 19:02:57','2017-11-15 21:50:42'),(111,'2017-10-10 17:30:00','2017-10-10 18:59:59',28,'MUS 373','2017-09-22 19:03:49','2017-10-10 15:00:48'),(112,'2017-10-17 17:30:00','2017-10-17 18:59:59',28,'MUS 373','2017-09-22 19:03:50','2017-10-10 15:01:33'),(113,'2017-10-24 17:30:00','2017-10-24 18:59:59',28,'MUS 373','2017-09-22 19:03:51','2017-10-10 15:01:39'),(114,'2017-10-31 17:30:00','2017-10-31 18:59:59',28,'MUS 373','2017-09-22 19:03:52','2017-10-10 15:01:43'),(115,'2017-11-07 18:30:00','2017-11-07 19:59:59',28,'MUS 373','2017-09-22 19:03:53','2017-10-10 15:01:49'),(116,'2017-11-14 18:30:00','2017-11-14 19:59:59',28,'MUS 373','2017-09-22 19:03:53','2017-10-10 15:01:54'),(117,'2017-11-21 18:30:00','2017-11-21 19:59:59',28,'MUS 373','2017-09-22 19:03:54','2017-10-10 15:01:59'),(118,'2017-11-28 18:30:00','2017-11-28 19:59:59',28,'MUS 373','2017-09-22 19:03:55','2017-10-10 15:02:02'),(119,'2017-12-05 18:30:00','2017-12-05 19:59:59',28,'MUS 373','2017-09-22 19:03:55','2017-10-10 15:02:08'),(120,'2017-12-12 18:30:00','2017-12-12 19:59:59',28,'MUS 373','2017-09-22 19:03:56','2017-10-10 15:02:13'),(121,'2017-10-02 17:00:00','2017-10-02 17:59:59',28,'ewall','2017-09-25 20:49:26','2017-09-25 20:50:21'),(124,'2017-10-10 17:30:00','2017-10-10 19:29:59',29,'joates','2017-10-10 14:59:15','2017-10-10 15:00:43'),(156,'2017-11-21 16:30:00','2017-11-21 17:59:59',29,'jnichols','2017-10-24 19:45:41','2017-11-15 15:04:20'),(157,'2017-11-28 16:30:00','2017-11-28 17:59:59',29,'jnichols','2017-10-24 19:45:42','2017-11-15 15:04:28'),(158,'2017-12-05 16:30:00','2017-12-05 17:59:59',29,'jnichols','2017-10-24 19:45:42','2017-11-15 15:04:35'),(159,'2017-12-12 16:30:00','2017-12-12 17:59:59',29,'jnichols','2017-10-24 19:45:43','2017-11-15 15:04:41'),(160,'2017-12-19 16:30:00','2017-12-19 17:59:59',29,'jnichols','2017-10-24 19:45:44','2017-11-15 15:04:46'),(172,'2017-11-08 17:30:00','2017-11-08 21:29:59',28,'rramirez107','2017-10-30 03:43:42','2017-11-08 03:25:59'),(173,'2017-10-30 20:30:00','2017-10-30 21:59:59',28,'OFRIEDMAN101','2017-10-30 20:16:02','2017-10-30 20:16:19'),(192,'2017-12-20 17:30:00','2017-12-20 21:29:59',28,'rramirez107','2017-11-08 03:29:37','2017-12-18 00:53:35'),(193,'2017-12-18 17:30:00','2017-12-18 21:29:59',28,'rramirez107','2017-11-08 03:29:44','2017-12-18 00:52:39'),(194,'2017-11-14 20:30:00','2017-11-14 21:29:59',28,'ttam','2017-11-09 17:38:17','2017-11-09 17:38:29'),(196,'2017-11-10 16:30:00','2017-11-10 17:59:59',28,'pchua100','2017-11-10 16:11:33','2017-11-10 16:11:52'),(200,'2017-11-21 15:00:00','2017-11-21 18:29:59',28,'OFRIEDMAN101','2017-11-13 00:37:17','2017-11-21 17:21:44'),(201,'2017-11-13 16:00:00','2017-11-13 19:59:59',29,'CDORTA100','2017-11-13 15:20:31','2017-11-13 15:21:05'),(203,'2017-11-15 21:30:00','2017-11-15 21:59:59',28,'usharma','2017-11-15 16:46:04','2017-11-15 16:46:14'),(204,'2017-11-22 17:00:00','2017-11-22 18:29:59',29,'Mikiko Iwasaki','2017-11-15 21:49:04','2017-11-16 20:38:28'),(213,'2017-11-27 19:30:00','2017-11-27 22:29:59',29,'mkhurana100','2017-11-27 19:07:22','2017-11-27 19:09:04'),(214,'2017-11-29 15:00:00','2017-11-29 18:59:59',29,'mkhurana100','2017-11-27 19:08:02','2017-11-29 15:33:05'),(221,'2017-12-12 19:00:00','2017-12-12 21:29:59',28,'kdaniliuk100','2017-12-12 18:50:13','2017-12-12 18:50:26'),(225,'2017-12-20 16:30:00','2017-12-20 20:29:59',28,'rramirez107','2017-12-20 03:37:03','2017-12-20 03:37:13'),(226,'2017-12-20 17:00:00','2017-12-20 20:59:59',28,'rramirez107','2017-12-20 03:37:18','2017-12-20 04:31:14'),(228,'2018-02-05 17:30:00','2018-02-05 18:59:59',28,'ttam','2018-02-05 16:38:42','2018-02-05 16:39:17'),(229,'2018-02-05 17:30:00','2018-02-05 18:59:59',29,'ttam','2018-02-05 16:39:09','2018-02-05 16:39:38'),(230,'2018-02-13 17:00:00','2018-02-13 17:29:59',28,'dheppard100','2018-02-13 15:18:06','2018-02-13 15:18:11'),(235,'2018-02-20 16:00:00','2018-02-20 19:59:59',29,'rramirez107','2018-02-20 13:06:23','2018-02-20 13:09:36'),(236,'2018-02-21 16:00:00','2018-02-21 19:59:59',28,'rramirez107','2018-02-20 13:06:59','2018-02-20 13:09:01'),(239,'2018-02-20 19:00:00','2018-02-20 21:59:59',28,'Ahuang113','2018-02-20 15:37:39','2018-02-20 15:38:35'),(246,'2018-03-01 15:00:00','2018-03-01 18:59:59',28,'rramirez107','2018-03-01 13:02:42','2018-03-01 13:02:55'),(247,'2018-03-01 16:00:00','2018-03-01 19:59:59',28,'rramirez107','2018-03-01 13:03:00','2018-03-01 14:46:55'),(248,'2018-03-01 15:30:00','2018-03-01 19:29:59',28,'rramirez107','2018-03-01 14:47:02','2018-03-01 14:48:09'),(250,'2018-03-06 15:30:00','2018-03-06 19:29:59',28,'rramirez107','2018-03-05 13:04:38','2018-03-05 13:04:56'),(251,'2018-03-06 15:00:00','2018-03-06 18:59:59',28,'rramirez107','2018-03-05 13:05:30','2018-03-06 13:52:05'),(253,'2018-03-13 14:00:00','2018-03-13 17:59:59',28,'rramirez107','2018-03-05 13:06:09','2018-03-13 14:54:23'),(255,'2018-03-15 14:00:00','2018-03-15 17:59:59',28,'rramirez107','2018-03-05 13:06:36','2018-03-15 03:28:16'),(263,'2018-03-12 14:00:00','2018-03-12 17:59:59',28,'rramirez107','2018-03-12 12:01:20','2018-03-12 13:48:36'),(267,'2018-03-14 14:00:00','2018-03-14 17:59:59',28,'rramirez107','2018-03-13 14:54:41','2018-03-14 11:46:20'),(268,'2018-03-16 14:00:00','2018-03-16 17:59:59',28,'rramirez107','2018-03-13 14:55:01','2018-03-16 13:51:51'),(273,'2018-03-15 14:00:00','2018-03-15 17:59:59',29,'MCHOWDHURY119','2018-03-15 03:38:57','2018-03-15 13:38:07'),(275,'2018-03-19 17:30:00','2018-03-19 21:29:59',29,'MCHOWDHURY119','2018-03-19 02:13:39','2018-03-19 02:14:01'),(280,'2018-03-26 14:00:00','2018-03-26 17:59:59',28,'rramirez107','2018-03-26 01:12:23','2018-03-26 14:17:44'),(285,'2018-04-09 14:00:00','2018-04-09 17:59:59',29,'mkhurana100','2018-04-08 18:45:41','2018-04-08 18:45:49'),(287,'2018-04-09 15:30:00','2018-04-09 16:59:59',28,'kdaniliuk100','2018-04-09 13:20:39','2018-04-09 13:20:47'),(288,'2018-04-09 15:30:00','2018-04-09 17:29:59',28,'kdaniliuk100','2018-04-09 13:21:10','2018-04-09 15:40:06'),(293,'2018-04-18 15:00:00','2018-04-18 16:29:59',28,'kdaniliuk100','2018-04-18 14:40:11','2018-04-18 14:40:33'),(296,'2018-05-01 19:30:00','2018-05-01 19:59:59',29,'Exam: Y. Park','2018-04-19 15:00:32','2018-04-19 15:00:40'),(299,'2018-05-07 19:30:00','2018-05-07 20:29:59',29,'Exam: A. Ali','2018-04-19 15:01:58','2018-04-20 18:29:08'),(305,'2018-04-26 17:00:00','2018-04-26 20:59:59',28,'VBatista103','2018-04-26 16:43:51','2018-04-26 17:27:14'),(306,'2018-04-26 17:00:00','2018-04-26 17:29:59',29,'vbatista103','2018-04-26 16:49:04','2018-04-26 16:49:55'),(323,'2019-06-05 15:00:00','2019-06-05 15:29:59',28,'dwilliams1','2018-06-05 18:13:58','2018-06-05 18:14:06');
/*!40000 ALTER TABLE `cancelled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deletedrooms`
--

DROP TABLE IF EXISTS `deletedrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deletedrooms` (
  `roomid` int(11) NOT NULL,
  `roomname` varchar(255) NOT NULL,
  `roomcapacity` int(11) NOT NULL,
  `roomgroupid` bigint(20) NOT NULL,
  `roomdescription` longtext NOT NULL,
  PRIMARY KEY (`roomid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deletedrooms`
--

LOCK TABLES `deletedrooms` WRITE;
/*!40000 ALTER TABLE `deletedrooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `deletedrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optionalfields`
--

DROP TABLE IF EXISTS `optionalfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `optionalfields` (
  `optionname` varchar(255) NOT NULL,
  `optionformname` varchar(255) NOT NULL COMMENT 'no spaces, a-z only',
  `optiontype` int(11) NOT NULL COMMENT '0 = text, 1 = select',
  `optionchoices` varchar(700) NOT NULL COMMENT '";" delimited',
  `optionorder` int(11) NOT NULL,
  `optionquestion` varchar(255) NOT NULL,
  `optionprivate` tinyint(1) NOT NULL DEFAULT '0',
  `optionrequired` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`optionname`),
  UNIQUE KEY `optionformname` (`optionformname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optionalfields`
--

LOCK TABLES `optionalfields` WRITE;
/*!40000 ALTER TABLE `optionalfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `optionalfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporters`
--

DROP TABLE IF EXISTS `reporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporters` (
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporters`
--

LOCK TABLES `reporters` WRITE;
/*!40000 ALTER TABLE `reporters` DISABLE KEYS */;
INSERT INTO `reporters` VALUES ('reporter');
/*!40000 ALTER TABLE `reporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservationoptions`
--

DROP TABLE IF EXISTS `reservationoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservationoptions` (
  `optionname` varchar(255) NOT NULL,
  `reservationid` bigint(20) NOT NULL,
  `optionvalue` varchar(700) NOT NULL,
  PRIMARY KEY (`optionname`,`reservationid`),
  KEY `reservationid` (`reservationid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservationoptions`
--

LOCK TABLES `reservationoptions` WRITE;
/*!40000 ALTER TABLE `reservationoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservationoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `reservationid` bigint(20) NOT NULL AUTO_INCREMENT,
  `start` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `roomid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `numberingroup` int(11) NOT NULL,
  `timeofrequest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reservationid`)
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (91,'2017-08-19 14:30:00','2017-08-19 14:59:59',29,'khada100',16,'2017-08-19 23:34:40'),(92,'2018-01-01 15:00:00','2018-01-01 15:29:59',28,'khada100',1,'2017-08-19 23:36:20'),(93,'2017-08-21 20:30:00','2017-08-21 20:59:59',28,'khada100',1,'2017-08-21 10:34:44'),(94,'2017-08-25 14:30:00','2017-08-25 14:59:59',28,'jloates',1,'2017-08-25 19:34:29'),(95,'2017-08-25 15:00:00','2017-08-25 15:29:59',28,'jennifer.oates@qc.cuny.edu',1,'2017-08-25 19:36:04'),(96,'2017-08-25 21:00:00','2017-08-25 21:29:59',28,'khada',4,'2017-08-25 20:32:17'),(97,'2017-08-25 21:30:00','2017-08-25 21:59:59',28,'khada100',4,'2017-08-25 20:33:12'),(98,'2017-09-27 20:30:00','2017-09-27 20:59:59',29,'MUS 701',1,'2017-09-22 19:01:08'),(99,'2017-10-04 20:30:00','2017-10-04 20:59:59',29,'joates',1,'2017-09-22 19:02:51'),(100,'2017-10-11 20:30:00','2017-10-11 20:59:59',29,'joates',1,'2017-09-22 19:02:52'),(101,'2017-10-18 20:30:00','2017-10-18 20:59:59',29,'joates',1,'2017-09-22 19:02:53'),(102,'2017-10-25 20:30:00','2017-10-25 20:59:59',29,'joates',1,'2017-09-22 19:02:54'),(103,'2017-11-01 20:30:00','2017-11-01 20:59:59',29,'joates',1,'2017-09-22 19:02:55'),(104,'2017-11-08 21:30:00','2017-11-08 21:59:59',29,'joates',1,'2017-09-22 19:02:55'),(105,'2017-11-15 21:30:00','2017-11-15 21:59:59',29,'joates',1,'2017-09-22 19:02:56'),(108,'2017-12-06 21:30:00','2017-12-06 21:59:59',29,'joates',1,'2017-09-22 19:02:58'),(109,'2017-09-26 17:30:00','2017-09-26 18:59:59',28,'MUS 373',1,'2017-09-22 19:03:48'),(110,'2017-10-03 17:30:00','2017-10-03 18:59:59',28,'MUS 373',1,'2017-09-22 19:03:48'),(122,'2017-09-27 15:30:00','2017-09-27 16:59:59',29,'nioannou100',2,'2017-09-27 15:15:07'),(123,'2017-10-11 19:00:00','2017-10-11 19:59:59',29,'joates',1,'2017-10-09 16:48:09'),(125,'2017-10-17 17:30:00','2017-10-17 19:29:59',29,'joates',1,'2017-10-10 14:59:16'),(126,'2017-10-24 17:30:00','2017-10-24 19:29:59',29,'joates',1,'2017-10-10 14:59:16'),(127,'2017-10-31 17:30:00','2017-10-31 19:29:59',29,'joates',1,'2017-10-10 14:59:17'),(128,'2017-11-07 18:30:00','2017-11-07 20:29:59',29,'joates',1,'2017-10-10 14:59:18'),(129,'2017-11-14 18:30:00','2017-11-14 20:29:59',29,'joates',1,'2017-10-10 14:59:18'),(130,'2017-11-21 18:30:00','2017-11-21 20:29:59',29,'joates',1,'2017-10-10 14:59:19'),(131,'2017-11-28 18:30:00','2017-11-28 20:29:59',29,'joates',1,'2017-10-10 14:59:20'),(132,'2017-12-05 18:30:00','2017-12-05 20:29:59',29,'joates',1,'2017-10-10 14:59:20'),(133,'2017-12-12 18:30:00','2017-12-12 20:29:59',29,'joates',1,'2017-10-10 14:59:21'),(134,'2017-10-10 17:30:00','2017-10-10 18:59:59',29,'joates',1,'2017-10-10 15:01:18'),(135,'2017-10-11 17:30:00','2017-10-11 21:29:59',28,'rramirez107',1,'2017-10-11 16:27:29'),(136,'2017-10-16 16:30:00','2017-10-16 20:29:59',28,'rramirez107',2,'2017-10-16 12:50:53'),(137,'2017-10-19 15:00:00','2017-10-19 15:59:59',28,'esmaldon',6,'2017-10-17 19:16:23'),(138,'2017-10-24 15:00:00','2017-10-24 15:59:59',28,'esmaldon',6,'2017-10-17 19:16:59'),(139,'2017-10-17 19:30:00','2017-10-17 20:29:59',28,'kdaniliuk100',2,'2017-10-17 19:21:24'),(140,'2017-10-18 16:30:00','2017-10-18 20:29:59',28,'rramirez107',2,'2017-10-18 05:51:12'),(141,'2017-10-20 16:30:00','2017-10-20 17:59:59',28,'pchua100',2,'2017-10-20 15:58:57'),(142,'2017-10-23 16:30:00','2017-10-23 20:29:59',28,'rramirez107',2,'2017-10-23 01:42:53'),(143,'2017-10-25 16:30:00','2017-10-25 20:29:59',28,'rramirez107',2,'2017-10-23 01:43:21'),(144,'2017-10-30 16:30:00','2017-10-30 20:29:59',28,'rramirez107',2,'2017-10-23 01:43:34'),(145,'2017-10-31 15:00:00','2017-10-31 15:04:59',29,'jnichols',1,'2017-10-24 19:40:16'),(146,'2017-11-07 16:00:00','2017-11-07 16:04:59',29,'jnichols',1,'2017-10-24 19:40:17'),(147,'2017-11-14 16:00:00','2017-11-14 16:04:59',29,'jnichols',1,'2017-10-24 19:40:18'),(148,'2017-11-21 16:00:00','2017-11-21 16:04:59',29,'jnichols',1,'2017-10-24 19:40:19'),(149,'2017-11-28 16:00:00','2017-11-28 16:04:59',29,'jnichols',1,'2017-10-24 19:40:19'),(150,'2017-12-05 16:00:00','2017-12-05 16:04:59',29,'jnichols',1,'2017-10-24 19:40:20'),(151,'2017-12-12 16:00:00','2017-12-12 16:04:59',29,'jnichols',1,'2017-10-24 19:40:21'),(152,'2017-12-19 16:00:00','2017-12-19 16:04:59',29,'jnichols',1,'2017-10-24 19:40:21'),(153,'2017-10-31 15:30:00','2017-10-31 16:59:59',29,'jnichols',1,'2017-10-24 19:45:39'),(154,'2017-11-07 16:30:00','2017-11-07 17:59:59',29,'jnichols',1,'2017-10-24 19:45:40'),(155,'2017-11-14 16:30:00','2017-11-14 17:59:59',29,'jnichols',1,'2017-10-24 19:45:41'),(161,'2017-10-25 14:30:00','2017-10-25 16:29:59',29,'nioannou100',2,'2017-10-25 14:17:59'),(162,'2017-10-26 15:30:00','2017-10-26 19:29:59',28,'OFRIEDMAN101',2,'2017-10-26 15:25:00'),(163,'2017-10-31 18:00:00','2017-10-31 18:29:59',28,'joates',3,'2017-10-26 17:24:36'),(164,'2017-11-02 15:00:00','2017-11-02 15:59:59',29,'esmaldone',1,'2017-10-26 17:25:53'),(165,'2017-11-03 15:00:00','2017-11-03 15:59:59',29,'esmaldone',1,'2017-10-26 17:26:16'),(166,'2017-11-10 16:00:00','2017-11-10 16:59:59',29,'esmaldone',1,'2017-10-26 17:26:48'),(167,'2017-11-16 16:00:00','2017-11-16 16:59:59',29,'esmaldone',1,'2017-10-26 17:27:04'),(168,'2017-11-17 16:00:00','2017-11-17 16:59:59',29,'esmaldone',1,'2017-10-26 17:27:18'),(169,'2017-10-27 16:30:00','2017-10-27 17:59:59',28,'pchua100',2,'2017-10-27 15:02:30'),(170,'2017-11-01 16:30:00','2017-11-01 20:29:59',28,'rramirez107',2,'2017-10-30 03:41:02'),(171,'2017-11-06 17:30:00','2017-11-06 21:29:59',28,'rramirez107',2,'2017-10-30 03:41:22'),(174,'2017-10-30 20:30:00','2017-10-30 21:59:59',28,'OFRIEDMAN101',1,'2017-10-30 20:16:36'),(175,'2017-10-31 14:00:00','2017-10-31 17:29:59',28,'OFRIEDMAN101',1,'2017-10-30 20:17:08'),(176,'2017-11-03 14:00:00','2017-11-03 17:29:59',28,'OFRIEDMAN101',1,'2017-10-30 20:17:42'),(177,'2017-11-02 15:00:00','2017-11-02 15:29:59',28,'JFERNANDeZ126',1,'2017-11-02 14:35:35'),(178,'2017-11-06 16:30:00','2017-11-06 20:29:59',29,'mkhurana100',1,'2017-11-06 16:15:29'),(179,'2017-11-07 15:00:00','2017-11-07 18:29:59',28,'OFRIEDMAN101',1,'2017-11-06 17:28:56'),(180,'2017-11-06 21:30:00','2017-11-06 22:59:59',28,'OFRIEDMAN101',1,'2017-11-06 20:42:00'),(181,'2017-11-08 17:30:00','2017-11-08 21:29:59',28,'rramirez107',1,'2017-11-08 03:26:05'),(182,'2017-11-13 17:30:00','2017-11-13 21:29:59',28,'rramirez107',1,'2017-11-08 03:26:31'),(183,'2017-11-15 17:30:00','2017-11-15 21:29:59',28,'rramirez107',1,'2017-11-08 03:26:42'),(184,'2017-11-20 17:30:00','2017-11-20 21:29:59',28,'rramirez107',1,'2017-11-08 03:27:43'),(185,'2017-11-22 17:30:00','2017-11-22 21:29:59',28,'rramirez107',1,'2017-11-08 03:27:52'),(186,'2017-11-27 17:30:00','2017-11-27 21:29:59',28,'rramirez107',1,'2017-11-08 03:28:09'),(187,'2017-11-29 17:30:00','2017-11-29 21:29:59',28,'rramirez107',1,'2017-11-08 03:28:20'),(188,'2017-12-04 17:30:00','2017-12-04 21:29:59',28,'rramirez107',1,'2017-11-08 03:28:31'),(189,'2017-12-06 17:30:00','2017-12-06 21:29:59',28,'rramirez107',1,'2017-11-08 03:28:43'),(190,'2017-12-11 17:30:00','2017-12-11 21:29:59',28,'rramirez107',1,'2017-11-08 03:28:51'),(191,'2017-12-13 17:30:00','2017-12-13 21:29:59',28,'rramirez107',1,'2017-11-08 03:29:21'),(195,'2017-11-14 20:30:00','2017-11-14 21:29:59',28,'ttam',3,'2017-11-09 17:38:50'),(197,'2017-11-10 16:30:00','2017-11-10 18:29:59',28,'pchua100',2,'2017-11-10 16:12:03'),(198,'2017-11-14 15:00:00','2017-11-14 18:29:59',28,'OFRIEDMAN101',1,'2017-11-13 00:35:38'),(199,'2017-11-17 15:00:00','2017-11-17 18:29:59',28,'OFRIEDMAN101',1,'2017-11-13 00:37:02'),(202,'2017-12-19 18:30:00','2017-12-19 19:59:59',29,'joates',1,'2017-11-15 15:03:57'),(205,'2017-11-22 21:30:00','2017-11-22 22:29:59',29,'Hanlu Dong',3,'2017-11-15 21:49:37'),(206,'2017-11-28 20:30:00','2017-11-28 21:29:59',29,'Eunice So',1,'2017-11-15 21:50:09'),(207,'2017-11-28 17:00:00','2017-11-28 18:29:59',29,'Daniel Passadino',3,'2017-11-15 21:50:30'),(208,'2017-11-29 21:30:00','2017-11-29 22:59:59',29,'Tito-Jose Gutierrez',3,'2017-11-15 21:51:01'),(209,'2017-11-30 19:30:00','2017-11-30 20:29:59',29,'Christopher Joyal',3,'2017-11-15 21:51:25'),(210,'2017-12-04 21:30:00','2017-12-04 22:29:59',29,'Megha Swamy',3,'2017-11-15 21:51:49'),(211,'2017-12-08 17:00:00','2017-12-08 18:29:59',29,'Linda Collazo',3,'2017-11-15 21:52:31'),(212,'2017-12-06 17:00:00','2017-12-06 18:29:59',29,'Mikiko Iwasaki ',3,'2017-11-16 20:38:53'),(215,'2017-11-27 19:30:00','2017-11-27 22:29:59',29,'mkhurana100',1,'2017-11-27 19:13:24'),(216,'2017-11-29 19:00:00','2017-11-29 20:29:59',29,'acoreas',3,'2017-11-28 23:51:04'),(217,'2017-12-04 16:30:00','2017-12-04 17:59:59',29,'nioannou100',2,'2017-12-04 16:12:33'),(218,'2017-12-12 21:30:00','2017-12-12 22:29:59',29,'Mikiko Iwasaki',1,'2017-12-07 18:09:44'),(219,'2017-12-08 18:30:00','2017-12-08 19:59:59',29,'pchua100',2,'2017-12-08 18:15:30'),(220,'2017-12-11 20:30:00','2017-12-11 22:29:59',29,'nioannou100',1,'2017-12-11 20:09:48'),(222,'2017-12-12 19:00:00','2017-12-12 21:59:59',28,'kdaniliuk100',5,'2017-12-12 18:50:40'),(223,'2017-12-18 18:30:00','2017-12-18 22:29:59',28,'rramirez107',1,'2017-12-18 00:52:54'),(224,'2017-12-18 16:00:00','2017-12-18 18:29:59',28,'lsolano100',2,'2017-12-18 15:55:37'),(227,'2017-12-20 16:30:00','2017-12-20 20:29:59',28,'rramirez107',1,'2017-12-20 04:31:19'),(231,'2018-02-13 21:00:00','2018-02-13 21:59:59',29,'ACHU111',12,'2018-02-13 20:48:39'),(232,'2018-02-15 20:30:00','2018-02-15 21:59:59',29,'ACHU111',14,'2018-02-13 22:34:22'),(233,'2018-02-14 17:30:00','2018-02-14 18:59:59',28,'rramirez107',1,'2018-02-14 17:16:42'),(234,'2018-02-20 17:30:00','2018-02-20 18:59:59',28,'hsiemienas',1,'2018-02-20 05:21:06'),(237,'2018-02-21 15:30:00','2018-02-21 18:59:59',28,'rramirez107',2,'2018-02-20 13:09:12'),(238,'2018-02-20 15:30:00','2018-02-20 18:59:59',29,'rramirez107',1,'2018-02-20 13:09:43'),(240,'2018-02-20 19:00:00','2018-02-20 22:59:59',28,'Ahuang113',6,'2018-02-20 15:38:56'),(241,'2018-02-26 20:30:00','2018-02-26 22:59:59',28,'Ahuang113',8,'2018-02-26 13:39:13'),(242,'2018-02-26 16:00:00','2018-02-26 17:59:59',28,'csakai100',1,'2018-02-26 14:12:35'),(243,'2018-02-27 21:00:00','2018-02-27 22:59:59',28,'ahuang113',1,'2018-02-27 18:07:55'),(244,'2018-02-28 20:30:00','2018-02-28 21:59:59',29,'ACHU111',13,'2018-02-27 23:50:20'),(245,'2018-03-01 20:30:00','2018-03-01 21:59:59',29,'ACHU111',10,'2018-03-01 00:58:35'),(249,'2018-03-01 16:00:00','2018-03-01 19:59:59',28,'rramirez107',2,'2018-03-01 14:48:16'),(252,'2018-03-08 15:00:00','2018-03-08 18:59:59',28,'rramirez107',1,'2018-03-05 13:05:49'),(254,'2018-03-20 14:00:00','2018-03-20 17:59:59',28,'rramirez107',1,'2018-03-05 13:06:21'),(256,'2018-03-05 17:30:00','2018-03-05 18:59:59',28,'nioannou100',2,'2018-03-05 17:11:17'),(257,'2018-03-05 21:00:00','2018-03-05 21:59:59',29,'ACHU111',10,'2018-03-05 18:36:12'),(258,'2018-03-06 15:00:00','2018-03-06 18:59:59',28,'rramirez107',8,'2018-03-06 13:52:10'),(259,'2018-03-06 21:00:00','2018-03-06 22:59:59',29,'Ahuang113',8,'2018-03-06 17:43:32'),(260,'2018-03-07 17:30:00','2018-03-07 21:29:59',28,'mchowdhury119',3,'2018-03-07 17:18:06'),(261,'2018-03-08 17:00:00','2018-03-08 20:59:59',29,'MCHOWDHURY119',3,'2018-03-07 19:25:41'),(262,'2018-03-13 16:30:00','2018-03-13 18:59:59',29,'tlee1',7,'2018-03-11 16:46:17'),(264,'2018-03-12 14:00:00','2018-03-12 17:59:59',28,'rramirez107',5,'2018-03-12 13:48:44'),(265,'2018-03-12 17:00:00','2018-03-12 20:59:59',29,'mchowdhury119',2,'2018-03-12 16:30:49'),(266,'2018-03-13 18:00:00','2018-03-13 20:59:59',28,'MCHOWDHURY119',3,'2018-03-13 03:33:49'),(269,'2018-03-19 14:00:00','2018-03-19 17:59:59',28,'rramirez107',5,'2018-03-13 14:55:15'),(270,'2018-03-21 14:00:00','2018-03-21 17:59:59',28,'rramirez107',5,'2018-03-13 14:55:34'),(271,'2018-03-14 16:30:00','2018-03-14 20:29:59',29,'MCHOWDHURY119',3,'2018-03-14 03:13:01'),(272,'2018-03-14 19:00:00','2018-03-14 20:59:59',28,'tlee1',1,'2018-03-14 14:33:51'),(274,'2018-03-15 16:00:00','2018-03-15 17:59:59',29,'tlee1',2,'2018-03-15 14:10:51'),(276,'2018-03-19 16:30:00','2018-03-19 20:29:59',29,'MCHOWDHURY119',1,'2018-03-19 02:14:08'),(277,'2018-03-20 17:30:00','2018-03-20 20:59:59',29,'MCHOWDHURY119',2,'2018-03-19 17:45:01'),(278,'2018-03-21 16:30:00','2018-03-21 20:29:59',29,'MCHOWDHURY119',3,'2018-03-19 17:45:42'),(279,'2018-03-22 17:30:00','2018-03-22 21:29:59',29,'MCHOWDHURY119',3,'2018-03-22 17:00:15'),(281,'2018-03-27 14:00:00','2018-03-27 17:59:59',28,'rramirez107',3,'2018-03-26 01:12:38'),(282,'2018-03-28 14:00:00','2018-03-28 17:59:59',28,'rramirez107',3,'2018-03-26 01:12:48'),(283,'2018-03-26 15:00:00','2018-03-26 16:59:59',28,'lsolano100',2,'2018-03-26 14:54:55'),(284,'2018-03-26 17:00:00','2018-03-26 20:59:59',28,'mchowdhury119',3,'2018-03-26 16:35:50'),(286,'2018-04-09 15:00:00','2018-04-09 18:59:59',29,'mkhurana100',10,'2018-04-08 18:46:02'),(289,'2018-04-09 16:30:00','2018-04-09 20:29:59',28,'MCHOWDHURY119',3,'2018-04-09 16:13:09'),(290,'2018-04-10 17:00:00','2018-04-10 19:59:59',29,'asiddique100',3,'2018-04-10 16:48:03'),(291,'2018-04-10 20:30:00','2018-04-10 21:59:59',28,'kdaniliuk100',2,'2018-04-10 20:08:46'),(292,'2018-04-12 17:30:00','2018-04-12 21:29:59',29,'ewalters100',1,'2018-04-12 17:26:20'),(294,'2018-04-18 15:00:00','2018-04-18 16:59:59',28,'kdaniliuk100',2,'2018-04-18 14:40:43'),(295,'2018-04-30 20:30:00','2018-04-30 21:29:59',29,'Exam: E. Walters',3,'2018-04-19 15:00:02'),(297,'2018-05-01 19:30:00','2018-05-01 20:29:59',29,'Exam; Y. Park',3,'2018-04-19 15:00:59'),(298,'2018-05-03 16:00:00','2018-05-03 17:29:59',29,'exam: K. Angielcyzk',3,'2018-04-19 15:01:35'),(300,'2018-05-07 20:30:00','2018-05-07 21:29:59',29,'Exam: S. Price',3,'2018-04-19 15:02:15'),(301,'2018-05-08 19:30:00','2018-05-08 20:29:59',29,'Exam: T. Waldvogel',3,'2018-04-19 15:02:48'),(302,'2018-05-09 16:00:00','2018-05-09 16:59:59',29,'exam: A. Guarino',3,'2018-04-19 15:03:12'),(303,'2018-05-10 16:00:00','2018-05-10 16:59:59',29,'Exam: D. Kim',3,'2018-04-19 15:03:37'),(304,'2018-05-04 19:30:00','2018-05-04 20:29:59',29,'A. Ali',3,'2018-04-20 18:30:38'),(307,'2018-04-26 17:00:00','2018-04-26 20:59:59',29,'vbatista103',12,'2018-04-26 16:50:04'),(308,'2018-04-30 16:00:00','2018-04-30 17:29:59',28,'nioannou100',2,'2018-04-30 15:51:05'),(309,'2018-05-01 15:00:00','2018-05-01 16:59:59',29,'nioannou100',2,'2018-05-01 14:51:20'),(310,'2018-05-01 20:30:00','2018-05-01 21:59:59',28,' vbatista103',5,'2018-05-01 20:26:26'),(311,'2018-05-09 18:30:00','2018-05-09 19:59:59',29,'mhart102',3,'2018-05-09 18:04:01'),(312,'2018-05-10 17:00:00','2018-05-10 17:59:59',28,'CHOSANNAH100',1,'2018-05-10 16:59:55'),(313,'2018-05-14 16:00:00','2018-05-14 17:59:59',29,'ewalters100',3,'2018-05-11 14:43:10'),(314,'2018-05-14 17:00:00','2018-05-14 17:59:59',28,'jalmonte104',2,'2018-05-14 16:40:01'),(315,'2018-05-15 17:00:00','2018-05-15 20:59:59',28,'lpangilinan100',8,'2018-05-15 16:38:02'),(316,'2018-05-17 17:00:00','2018-05-17 18:59:59',29,'Cchang2',16,'2018-05-16 11:37:28'),(317,'2018-05-16 14:30:00','2018-05-16 14:59:59',29,'jalmonte104',2,'2018-05-16 14:26:46'),(318,'2018-05-16 16:30:00','2018-05-16 17:59:59',29,'brafael100',2,'2018-05-16 14:57:16'),(319,'2018-05-18 17:00:00','2018-05-18 20:29:59',29,'asiddique100',3,'2018-05-17 19:57:31'),(320,'2018-05-21 14:00:00','2018-05-21 17:59:59',28,'RRAMIREZ107',4,'2018-05-21 11:45:50'),(321,'2018-05-21 15:00:00','2018-05-21 16:59:59',29,'aharrison104',1,'2018-05-21 14:49:49'),(322,'2018-05-23 14:00:00','2018-05-23 17:59:59',28,'RRAMIREZ107',4,'2018-05-22 20:17:24'),(323,'2018-06-25 17:00:00','2018-06-25 18:59:59',29,'ttam',4,'2018-06-18 17:12:53'),(324,'2018-08-27 19:00:00','2018-08-27 20:59:59',29,'ttam',15,'2018-07-12 15:21:19'),(325,'2018-07-18 14:00:00','2018-07-18 14:29:59',28,'admin',1,'2018-07-18 19:40:30'),(326,'2018-07-18 15:00:00','2018-07-18 15:29:59',28,'admin',1,'2018-07-18 19:41:39'),(327,'2018-07-18 15:30:00','2018-07-18 15:59:59',28,'admin',1,'2018-07-18 19:42:18'),(328,'2018-07-18 01:00:00','2018-07-18 01:29:59',28,'admin',1,'2018-07-18 20:35:53'),(329,'2018-07-19 01:00:00','2018-07-19 01:29:59',28,'admin',1,'2018-07-18 20:35:53'),(330,'2018-07-20 01:00:00','2018-07-20 01:29:59',28,'admin',1,'2018-07-18 20:35:53'),(331,'2018-07-21 01:00:00','2018-07-21 01:29:59',28,'admin',1,'2018-07-18 20:35:53'),(332,'2018-07-22 01:00:00','2018-07-22 01:29:59',28,'admin',1,'2018-07-18 20:35:53'),(333,'2018-07-23 01:00:00','2018-07-23 01:29:59',28,'admin',1,'2018-07-18 20:35:53'),(334,'2018-07-18 00:00:00','2018-07-18 00:29:59',28,'admin',1,'2018-07-18 20:41:15'),(335,'2018-07-19 00:00:00','2018-07-19 00:29:59',28,'admin',1,'2018-07-18 20:41:15'),(336,'2018-07-20 00:00:00','2018-07-20 00:29:59',28,'admin',1,'2018-07-18 20:41:15'),(337,'2018-07-21 00:00:00','2018-07-21 00:29:59',28,'admin',1,'2018-07-18 20:41:15'),(338,'2018-07-22 00:00:00','2018-07-22 00:29:59',28,'admin',1,'2018-07-18 20:41:15'),(339,'2018-07-23 00:00:00','2018-07-23 00:29:59',28,'admin',1,'2018-07-18 20:41:15');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomgroups`
--

DROP TABLE IF EXISTS `roomgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomgroups` (
  `roomgroupid` bigint(20) NOT NULL AUTO_INCREMENT,
  `roomgroupname` varchar(255) NOT NULL,
  PRIMARY KEY (`roomgroupid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomgroups`
--

LOCK TABLES `roomgroups` WRITE;
/*!40000 ALTER TABLE `roomgroups` DISABLE KEYS */;
INSERT INTO `roomgroups` VALUES (6,'Rooms');
/*!40000 ALTER TABLE `roomgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomhours`
--

DROP TABLE IF EXISTS `roomhours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomhours` (
  `roomhoursid` bigint(20) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `dayofweek` smallint(6) NOT NULL,
  `start` time NOT NULL,
  `end` time NOT NULL,
  PRIMARY KEY (`roomhoursid`)
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomhours`
--

LOCK TABLES `roomhours` WRITE;
/*!40000 ALTER TABLE `roomhours` DISABLE KEYS */;
INSERT INTO `roomhours` VALUES (311,28,0,'02:00:00','23:00:00'),(312,28,1,'02:00:00','23:00:00'),(313,28,2,'02:00:00','23:00:00'),(314,28,3,'02:00:00','23:00:00'),(315,28,4,'02:00:00','23:00:00'),(316,28,5,'02:00:00','23:00:00'),(317,28,6,'02:00:00','23:00:00'),(318,29,0,'02:00:00','23:00:00'),(319,29,1,'02:00:00','23:00:00'),(320,29,2,'02:00:00','23:00:00'),(321,29,3,'02:00:00','23:00:00'),(322,29,4,'02:00:00','23:00:00'),(323,29,5,'02:00:00','23:00:00'),(324,29,6,'02:00:00','23:00:00');
/*!40000 ALTER TABLE `roomhours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `roomid` int(11) NOT NULL AUTO_INCREMENT,
  `roomname` varchar(255) NOT NULL,
  `roomposition` int(11) NOT NULL,
  `roomcapacity` int(11) NOT NULL,
  `roomgroupid` bigint(20) NOT NULL,
  `roomdescription` longtext NOT NULL,
  PRIMARY KEY (`roomid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (28,'125a',0,8,6,'Room 125a'),(29,'125c',1,16,6,'Room 125c');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomspecialhours`
--

DROP TABLE IF EXISTS `roomspecialhours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomspecialhours` (
  `roomspecialhoursid` bigint(20) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `fromrange` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `torange` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start` time NOT NULL,
  `end` time NOT NULL,
  PRIMARY KEY (`roomspecialhoursid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomspecialhours`
--

LOCK TABLES `roomspecialhours` WRITE;
/*!40000 ALTER TABLE `roomspecialhours` DISABLE KEYS */;
/*!40000 ALTER TABLE `roomspecialhours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `settingname` varchar(255) NOT NULL,
  `settingvalue` longtext NOT NULL,
  PRIMARY KEY (`settingname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('allow_past_reservations','false'),('allow_simultaneous_reservations','false'),('email_can_gef','a:1:{i:0;s:22:\"kushalpublic@gmail.com\";}'),('email_can_terse','a:1:{i:0;s:22:\"kushalpublic@gmail.com\";}'),('email_can_verbose','a:1:{i:0;s:22:\"kushalpublic@gmail.com\";}'),('email_condition',''),('email_condition_value',''),('email_cond_gef','a:1:{i:0;s:22:\"kushalpublic@gmail.com\";}'),('email_cond_terse','a:1:{i:0;s:22:\"kushalpublic@gmail.com\";}'),('email_cond_verbose','a:1:{i:0;s:22:\"kushalpublic@gmail.com\";}'),('email_filter','a:2:{i:0;s:11:\"qc.cuny.edu\";i:1;s:14:\"qmail.cuny.edu\";}'),('email_res_gef','a:1:{i:0;s:22:\"kushalpublic@gmail.com\";}'),('email_res_terse','a:1:{i:0;s:22:\"kushalpublic@gmail.com\";}'),('email_res_verbose','a:1:{i:0;s:22:\"kushalpublic@gmail.com\";}'),('email_system','kushalpublic@gmail.com'),('endtime','23'),('https','true'),('instance_name','Kushal Reservation System'),('instance_url','openroom.loc'),('interval','30'),('ldap_baseDN','ldap://149.4.100.201:3268'),('ldap_host','DC=qc,DC=ads'),('limit_duration','240'),('limit_frequency','a:2:{i:0;s:1:\"0\";i:1;s:3:\"day\";}'),('limit_openingday',''),('limit_total','a:2:{i:0;s:3:\"240\";i:1;s:3:\"day\";}'),('limit_window','a:2:{i:0;s:2:\"10\";i:1;s:4:\"year\";}'),('login_method','normal'),('phone_number','7165015874'),('policies','The Music Library has two rooms (125a and 125c) available to students for group study on a â€œfirst-come, first-serveâ€ basis. Only patrons with a valid Queens College ID may use these rooms.\r\n\r\nPatrons may reserve rooms via the online reservation system with their Queens College user account. Walk-in room requests are also available at the circulation desk. Classes, senior concentration exams, and room reservations will take priority over walk-in requests.\r\n\r\nNOTE: To reserve a room, use your QC/CAMS account to log in.\r\n\r\nIf you have reserved one of the rooms, at the time of your reservation go to the circulation desk for access. A staff member will open the room for you.\r\n\r\nIf you would like to use a room but did not make a reservation ask the circulation desk if a room is available. If one is, you may request to use it and a staff member will open the room for you.\r\n\r\nRooms can be reserved for up to two hours at a time. You may â€œrenewâ€ the room by checking in with the circulation desk. If the room has not been reserved for classes or other use you may continue using it. If not, you will need to vacate the room prior to the next class or reservation.\r\n\r\nWhen using group study rooms please observe the following guidelines:\r\n\r\n    * Do not bring or eat food in the room.\r\n    * Drinks in sealable containers, such as screw-top bottles, are allowed (paper coffee cups with lids are not allowed).\r\n    * Please keep the noise to a minimum as a courtesy of those using the Media Center.\r\n    * Wireless headphones are available for use in room 125a. If you would like to listen to music or watch a video please check out these headphones from the circulation desk. The speakers in both rooms are not for student use without permission from the Music Library staff.\r\n    * The pianos may not be used. If you need a piano, please request a practice room from the Aaron Copland School of Music office.\r\n'),('remindermessage','This is a reminder message!'),('service_password','Nicaragua1942!'),('service_username','library2sa'),('starttime','0'),('systemid','80zhh73n5'),('theme','default'),('time_format','g:i a');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `lastlogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','f3bbbd66a63d4bf1747940578ec3d0103530e21d','spamkushal+admin@gmail.com','2018-07-18 20:11:55','0'),('banned','f3bbbd66a63d4bf1747940578ec3d0103530e21d','spamkushal+banned@gmail.com','2018-07-13 14:08:27','0'),('reporter','f3bbbd66a63d4bf1747940578ec3d0103530e21d','spamkushal+reporter@gmail.com','2018-07-13 14:09:09','0');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-18 16:46:01