-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: hoteria
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `audits`
--

DROP TABLE IF EXISTS `audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) unsigned DEFAULT NULL,
  `auditable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audits`
--

LOCK TABLES `audits` WRITE;
/*!40000 ALTER TABLE `audits` DISABLE KEYS */;
INSERT INTO `audits` VALUES (1,14,'DELETE',2,'categories_room','{\"categories_room_id\":\"2\",\"categories_room_name\":\"Sandy Andryanto\",\"categories_room_cost\":\"234234\",\"categories_room_description\":\"sdfsdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 14:59:09\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"2\",\"categories_room_name\":\"Sandy Andryanto\",\"categories_room_cost\":\"234234\",\"categories_room_description\":\"sdfsdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 14:59:09\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:52:40\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/api/category_room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:52:41','2019-05-01 13:52:41'),(2,14,'DELETE',3,'categories_room','{\"categories_room_id\":\"3\",\"categories_room_name\":\"admindevel\",\"categories_room_cost\":\"10000\",\"categories_room_description\":\"ssss\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 15:12:14\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"3\",\"categories_room_name\":\"admindevel\",\"categories_room_cost\":\"10000\",\"categories_room_description\":\"ssss\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 15:12:14\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:52:44\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/api/category_room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:52:44','2019-05-01 13:52:44'),(3,14,'CREATE',4,'categories_room','[null]','{\"categories_room_id\":\"4\",\"categories_room_name\":\"dfddfdfdf\",\"categories_room_cost\":\"333\",\"categories_room_description\":\"dfdfdfdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 20:53:07\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:53:08','2019-05-01 13:53:08'),(4,14,'UPDATE',4,'categories_room','{\"categories_room_id\":\"4\",\"categories_room_name\":\"dfddfdfdf\",\"categories_room_cost\":\"333\",\"categories_room_description\":\"dfdfdfdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 20:53:07\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"id\":\"4\",\"name\":\"dfddfdfdf\",\"cost\":\"111111\",\"description\":\"dfdfdfdf\",\"created_on\":\"2019-05-01 20:53:17\",\"created_by\":\"14\"}','http://localhost:5000/web/category_room/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:53:17','2019-05-01 13:53:17');
/*!40000 ALTER TABLE `audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_food`
--

DROP TABLE IF EXISTS `categories_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_food` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_food`
--

LOCK TABLES `categories_food` WRITE;
/*!40000 ALTER TABLE `categories_food` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_room`
--

DROP TABLE IF EXISTS `categories_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_room` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cost` double(20,0) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_room`
--

LOCK TABLES `categories_room` WRITE;
/*!40000 ALTER TABLE `categories_room` DISABLE KEYS */;
INSERT INTO `categories_room` VALUES (1,'Hello World',0,'sss',NULL,NULL,14,'2019-05-01 20:52:08',14),(2,'Sandy Andryanto',234234,'sdfsdf',NULL,'2019-05-01 14:59:09',14,'2019-05-01 20:52:40',14),(3,'admindevel',10000,'ssss',NULL,'2019-05-01 15:12:14',14,'2019-05-01 20:52:44',14),(4,'dfddfdfdf',111111,'dfdfdfdf',NULL,'2019-05-01 20:53:17',14,NULL,NULL);
/*!40000 ALTER TABLE `categories_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('g8pvdr60hrg5luqt7ve4iqcq3kc0cmac','127.0.0.1',1556743774,'__ci_last_regenerate|i:1556743774;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('3khbpsqqqacp07c80fbbpl7dent75u33','127.0.0.1',1556743997,'__ci_last_regenerate|i:1556743774;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;success|s:18:\"Berhasil edit data\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('vafa8thmbcsrf8phghb7h3pcrkn01cu2','127.0.0.1',1556743465,'__ci_last_regenerate|i:1556743465;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('hjfdoj3vqmr6p1gjeqh6fiua74hi6vkq','127.0.0.1',1556743147,'__ci_last_regenerate|i:1556743147;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('2ci989vo0i4t333jf6j2o9e20fjiq3ii','127.0.0.1',1556742823,'__ci_last_regenerate|i:1556742823;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('urd6vm749ofn80blf32s59je37qntpo8','127.0.0.1',1556742432,'__ci_last_regenerate|i:1556742432;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('u4n4tb2g7gkuo2dgv46uq3qjradrsg1f','127.0.0.1',1556741977,'__ci_last_regenerate|i:1556741977;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('82hpdpeff22kqrjr3276ljcsfc0631al','127.0.0.1',1556741669,'__ci_last_regenerate|i:1556741669;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('isbpo8jj0bbqublogcu86nra0acso2v1','127.0.0.1',1556741365,'__ci_last_regenerate|i:1556741365;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('8t1jgb73c3g63p84m2gumfjf4jrvusrj','127.0.0.1',1556740821,'__ci_last_regenerate|i:1556740821;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('c07hon2avculc1h2uqvga4t93e2p1h6g','127.0.0.1',1556740460,'__ci_last_regenerate|i:1556740460;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('oh8pt6ufhd46ukgs2bg9rn8rq5h57m91','127.0.0.1',1556734827,'__ci_last_regenerate|i:1556734827;'),('11kr725slqm9uao5glnn6idnp9idjgh5','127.0.0.1',1556740409,'__ci_last_regenerate|i:1556740409;'),('ji5hqqush6ttas99o8cehfmaoqj79fkn','127.0.0.1',1556734412,'__ci_last_regenerate|i:1556734412;'),('v3a8pprhid70cng8aao4dnepgm3jftjn','127.0.0.1',1556734827,'__ci_last_regenerate|i:1556734827;message|s:39:\"<p>Tidak Dapat Mengganti Kata Sandi</p>\";__ci_vars|a:1:{s:7:\"message\";s:3:\"old\";}'),('7h9n2u90dur3vaui4ncl1otskqt4vj14','127.0.0.1',1556723732,'__ci_last_regenerate|i:1556723707;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;success|s:19:\"Berhasil hapus data\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('23ku6r4ujam7j4i41ciqfu7qc5br0jm3','127.0.0.1',1556723707,'__ci_last_regenerate|i:1556723707;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;'),('lmnbb7l85j70b18fududbr2q6rnr93kn','127.0.0.1',1556715891,'__ci_last_regenerate|i:1556715891;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556708801\";last_check|i:1556709363;'),('ha5356dlj8tpnsorutg2oj62vampgcsf','127.0.0.1',1556716224,'__ci_last_regenerate|i:1556716224;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556708801\";last_check|i:1556709363;'),('049q429bjgu2mlujg0i144sp5vvdleb5','127.0.0.1',1556716441,'__ci_last_regenerate|i:1556716441;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;'),('0oj5qnp8tpqjrfnfnjkeo1t779je095c','127.0.0.1',1556721242,'__ci_last_regenerate|i:1556721242;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;'),('nf7mettgiqqf52hbur6ll0om5nj7ndv2','127.0.0.1',1556721543,'__ci_last_regenerate|i:1556721543;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;'),('u1ccguveq4rrsjh4h75404j4u74n7h93','127.0.0.1',1556721853,'__ci_last_regenerate|i:1556721853;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;'),('73fqp6uoa0hula01ul0c311tvs09l5nj','127.0.0.1',1556722239,'__ci_last_regenerate|i:1556722239;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;'),('ljo72v5ii3casgpi1815sc4l561nlcr0','127.0.0.1',1556722741,'__ci_last_regenerate|i:1556722741;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;message-success|s:20:\"Berhasil simpan data\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"new\";}'),('pprfn81ima77qd530gd15imp9hh8urpj','127.0.0.1',1556723047,'__ci_last_regenerate|i:1556723047;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;'),('up603adpbabm10cihus3pjc1gt3t5fjg','127.0.0.1',1556723402,'__ci_last_regenerate|i:1556723402;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;message-success|s:18:\"Berhasil edit data\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identity_type` varchar(255) DEFAULT NULL,
  `identity_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cost` double(20,0) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extra`
--

DROP TABLE IF EXISTS `extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extra` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cost` double(20,0) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra`
--

LOCK TABLES `extra` WRITE;
/*!40000 ALTER TABLE `extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foods`
--

DROP TABLE IF EXISTS `foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `foods_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories_food` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foods`
--

LOCK TABLES `foods` WRITE;
/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
/*!40000 ALTER TABLE `foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (39,'admin','ADMIN'),(40,'receptionst','RECEPTIONST'),(41,'manager','MANAGER'),(42,'director','DIRECTOR'),(43,'supervisor','SUPERVISOR'),(44,'engineer','ENGINEER');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_discount`
--

DROP TABLE IF EXISTS `invoice_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_discount` (
  `invoice_id` int(10) unsigned NOT NULL,
  `discount_id` int(10) unsigned NOT NULL,
  `cost` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`,`discount_id`),
  KEY `discount_id` (`discount_id`),
  CONSTRAINT `invoice_discount_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_discount_ibfk_2` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_discount`
--

LOCK TABLES `invoice_discount` WRITE;
/*!40000 ALTER TABLE `invoice_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_extra`
--

DROP TABLE IF EXISTS `invoice_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_extra` (
  `invoice_id` int(10) unsigned NOT NULL,
  `extra_id` int(10) unsigned NOT NULL,
  `cost` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`,`extra_id`),
  KEY `extra_id` (`extra_id`),
  CONSTRAINT `invoice_extra_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_extra_ibfk_2` FOREIGN KEY (`extra_id`) REFERENCES `extra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_extra`
--

LOCK TABLES `invoice_extra` WRITE;
/*!40000 ALTER TABLE `invoice_extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_food`
--

DROP TABLE IF EXISTS `invoice_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_food` (
  `invoice_id` int(10) unsigned NOT NULL,
  `food_id` int(10) unsigned NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` double(20,0) DEFAULT NULL,
  `total` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`,`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_food`
--

LOCK TABLES `invoice_food` WRITE;
/*!40000 ALTER TABLE `invoice_food` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_room`
--

DROP TABLE IF EXISTS `invoice_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_room` (
  `invoice_id` int(11) unsigned NOT NULL,
  `room_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`invoice_id`,`room_id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `invoice_room_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_room_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_room`
--

LOCK TABLES `invoice_room` WRITE;
/*!40000 ALTER TABLE `invoice_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_service`
--

DROP TABLE IF EXISTS `invoice_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_service` (
  `invoice_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `cost` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`,`service_id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `invoice_service_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_service_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_service`
--

LOCK TABLES `invoice_service` WRITE;
/*!40000 ALTER TABLE `invoice_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_tax`
--

DROP TABLE IF EXISTS `invoice_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_tax` (
  `invoice_id` int(10) unsigned NOT NULL,
  `tax_id` int(10) unsigned NOT NULL,
  `cost` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`,`tax_id`),
  KEY `tax_id` (`tax_id`),
  CONSTRAINT `invoice_tax_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_tax_ibfk_2` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_tax`
--

LOCK TABLES `invoice_tax` WRITE;
/*!40000 ALTER TABLE `invoice_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(0) DEFAULT NULL,
  `imvoice_date` date DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `check_in_on` datetime DEFAULT NULL,
  `check_out_on` datetime DEFAULT NULL,
  `tendered` double(20,0) DEFAULT NULL,
  `due` double(20,0) DEFAULT NULL,
  `change` double(20,0) DEFAULT NULL,
  `payment_type` tinyint(4) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `is_draft` tinyint(4) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`parent_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
INSERT INTO `login_attempts` VALUES (6,'127.0.0.1','admin@admin.com',1556698952),(7,'127.0.0.1','super.admin',1556740416);
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `route_id` int(10) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  `can_create` tinyint(4) DEFAULT NULL,
  `can_update` tinyint(4) DEFAULT NULL,
  `can_view` tinyint(4) DEFAULT NULL,
  `can_delete` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`route_id`,`group_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `permissions_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permissions_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (190,39,1,1,1,1),(190,40,1,1,1,1),(190,41,1,1,1,1),(190,42,1,1,1,1),(190,43,1,1,1,1),(190,44,1,1,1,1),(191,39,1,1,1,1),(191,40,1,1,1,1),(191,41,1,1,1,1),(191,42,1,1,1,1),(191,43,1,1,1,1),(191,44,1,1,1,1),(192,39,1,1,1,1),(192,40,1,1,1,1),(192,41,1,1,1,1),(192,42,1,1,1,1),(192,43,1,1,1,1),(192,44,1,1,1,1),(193,39,1,1,1,1),(193,40,1,1,1,1),(193,41,1,1,1,1),(193,42,1,1,1,1),(193,43,1,1,1,1),(193,44,1,1,1,1),(194,39,1,1,1,1),(194,40,1,1,1,1),(194,41,1,1,1,1),(194,42,1,1,1,1),(194,43,1,1,1,1),(194,44,1,1,1,1),(195,39,1,1,1,1),(195,40,1,1,1,1),(195,41,1,1,1,1),(195,42,1,1,1,1),(195,43,1,1,1,1),(195,44,1,1,1,1),(196,39,1,1,1,1),(196,40,1,1,1,1),(196,41,1,1,1,1),(196,42,1,1,1,1),(196,43,1,1,1,1),(196,44,1,1,1,1),(197,39,1,1,1,1),(197,40,1,1,1,1),(197,41,1,1,1,1),(197,42,1,1,1,1),(197,43,1,1,1,1),(197,44,1,1,1,1),(198,39,1,1,1,1),(198,40,1,1,1,1),(198,41,1,1,1,1),(198,42,1,1,1,1),(198,43,1,1,1,1),(198,44,1,1,1,1),(199,39,1,1,1,1),(199,40,1,1,1,1),(199,41,1,1,1,1),(199,42,1,1,1,1),(199,43,1,1,1,1),(199,44,1,1,1,1),(200,39,1,1,1,1),(200,40,1,1,1,1),(200,41,1,1,1,1),(200,42,1,1,1,1),(200,43,1,1,1,1),(200,44,1,1,1,1),(201,39,1,1,1,1),(201,40,1,1,1,1),(201,41,1,1,1,1),(201,42,1,1,1,1),(201,43,1,1,1,1),(201,44,1,1,1,1),(202,39,1,1,1,1),(202,40,1,1,1,1),(202,41,1,1,1,1),(202,42,1,1,1,1),(202,43,1,1,1,1),(202,44,1,1,1,1),(203,39,1,1,1,1),(203,40,1,1,1,1),(203,41,1,1,1,1),(203,42,1,1,1,1),(203,43,1,1,1,1),(203,44,1,1,1,1),(204,39,1,1,1,1),(204,40,1,1,1,1),(204,41,1,1,1,1),(204,42,1,1,1,1),(204,43,1,1,1,1),(204,44,1,1,1,1),(205,39,1,1,1,1),(205,40,1,1,1,1),(205,41,1,1,1,1),(205,42,1,1,1,1),(205,43,1,1,1,1),(205,44,1,1,1,1),(206,39,1,1,1,1),(206,40,1,1,1,1),(206,41,1,1,1,1),(206,42,1,1,1,1),(206,43,1,1,1,1),(206,44,1,1,1,1),(207,39,1,1,1,1),(207,40,1,1,1,1),(207,41,1,1,1,1),(207,42,1,1,1,1),(207,43,1,1,1,1),(207,44,1,1,1,1),(208,39,1,1,1,1),(208,40,1,1,1,1),(208,41,1,1,1,1),(208,42,1,1,1,1),(208,43,1,1,1,1),(208,44,1,1,1,1),(209,39,1,1,1,1),(209,40,1,1,1,1),(209,41,1,1,1,1),(209,42,1,1,1,1),(209,43,1,1,1,1),(209,44,1,1,1,1),(210,39,1,1,1,1),(210,40,1,1,1,1),(210,41,1,1,1,1),(210,42,1,1,1,1),(210,43,1,1,1,1),(210,44,1,1,1,1);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_service`
--

DROP TABLE IF EXISTS `room_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_service` (
  `room_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`room_id`,`service_id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `room_service_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `room_service_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_service`
--

LOCK TABLES `room_service` WRITE;
/*!40000 ALTER TABLE `room_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned DEFAULT NULL,
  `status_id` int(10) unsigned DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `occupant` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `protected` tinyint(4) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `routes_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (190,'Dashboard','dashboard',NULL,NULL,1,NULL),(191,'Master Data',NULL,NULL,NULL,2,NULL),(192,'Transaksi',NULL,NULL,NULL,3,NULL),(193,'Laporan','laporan',NULL,NULL,4,NULL),(194,'Pengaturan',NULL,NULL,NULL,5,NULL),(195,'Kategori Menu','category_menu',NULL,NULL,1,191),(196,'Kategori Kamar','category_room',NULL,NULL,2,191),(197,'Diskon','discount',NULL,NULL,NULL,194),(198,'Extra','extra',NULL,NULL,3,191),(199,'Menu','menu',NULL,NULL,4,191),(200,'Akses','role',NULL,NULL,NULL,194),(201,'Reservasi','reservation',NULL,NULL,NULL,192),(202,'Restoran','resto',NULL,NULL,NULL,192),(203,'Kamar','room',NULL,NULL,5,191),(204,'Servis','service',NULL,NULL,6,191),(205,'Status Ruangan','status_room',NULL,NULL,7,191),(206,'Pajak','tax',NULL,NULL,NULL,194),(207,'Pengguna','users',NULL,NULL,NULL,194),(208,'Profil Saya','profile',NULL,1,NULL,194),(209,'Akun','account',NULL,1,NULL,194),(210,'Aplikasi','application',NULL,NULL,NULL,194);
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cost` double(20,0) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `config_value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_room`
--

DROP TABLE IF EXISTS `status_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_room` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_room`
--

LOCK TABLES `status_room` WRITE;
/*!40000 ALTER TABLE `status_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cost` double(20,0) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_email` (`email`),
  UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  UNIQUE KEY `uc_remember_selector` (`remember_selector`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (14,'0.0.0.0','admin','$2y$10$ljWogeUXrA4fEHmVG6V/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK','admin.admin@devel.com','0792 6022 340',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698631,1556740460,1),(15,'0.0.0.0','fitriani00','$2y$10$ej7R/wCuN96.x4DlsCbRb.DZ5U9eQtF5WU2sK4MsicInSA8p9D1qu','langgeng.pradipta@example.org','(+62) 219 0241 885',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698631,NULL,1),(16,'0.0.0.0','gawati82','$2y$10$ljWogeUXrA4fEHmVG6V/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK','kalim.andriani@example.com','0395 0372 342',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698631,NULL,1),(17,'0.0.0.0','halima34','$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke','ryolanda@example.net','0704 4832 1580',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698632,NULL,1),(18,'0.0.0.0','situmorang.eli','$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu','dirja.hutapea@example.net','0544 5180 2405',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698632,NULL,1),(19,'0.0.0.0','xmayasari','$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq','yuni27@example.com','(+62) 287 3607 9709',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698632,NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (15,14,39),(16,15,40),(17,16,41),(18,17,42),(19,18,43),(20,19,44);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_profile`
--

DROP TABLE IF EXISTS `users_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_profile` (
  `user_id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `blood` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `address` longtext,
  `description` longtext,
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `users_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_profile`
--

LOCK TABLES `users_profile` WRITE;
/*!40000 ALTER TABLE `users_profile` DISABLE KEYS */;
INSERT INTO `users_profile` VALUES (14,'Sandy','Andryanto',0,0,0,'Kebon Kopi','Kumaha Maneh Weh Lah','0000-00-00','Cimahi',NULL),(15,'Puput','Hutapea',1,1,1,'Ut est eum voluptates quod suscipit enim suscipit. Eos est aut minus eos commodi non. Ratione omnis dolore occaecati et.','Eveniet voluptate veritatis minus sunt itaque odio. Ut ipsum corporis ut omnis et. Ut laudantium dicta dolor sunt aut.','2019-05-01','Tasikmalaya',NULL),(16,'Intan','Melani',0,0,1,'Mollitia rerum praesentium consequatur corrupti tempore accusantium error. Rem laboriosam consequatur sit aspernatur sit.','Molestiae ab eos aut consequatur. Iure ipsa iste eum quia laborum. Dolor est ut qui soluta ea.','2019-05-01','Gorontalo',NULL),(17,'Irwan','Wulandari',0,2,0,'Nemo fuga velit qui autem beatae similique nostrum. Quo dignissimos saepe iure cumque. Est aut quia facilis veritatis nemo pariatur et quibusdam. Ut tenetur ut eveniet ullam omnis.','Consequatur ullam beatae sunt quidem consectetur illum quos. Omnis quod et inventore dolorem architecto nihil. Sed mollitia et alias voluptates. Dolor reiciendis fuga ratione.','2019-05-01','Solok',NULL),(18,'Raditya','Prayoga',1,1,0,'Ducimus delectus corporis voluptatem ea totam impedit deleniti. Ut sunt quaerat distinctio ut rerum deserunt. Culpa quia molestiae dolores necessitatibus ut. Rerum deleniti consequatur quasi aut.','Architecto numquam quisquam tenetur sequi et. Quia perspiciatis at omnis et occaecati ipsa.','2019-05-01','Kotamobagu',NULL),(19,'Silvia','Mardhiyah',0,3,2,'Iusto dolore dolorem explicabo. Earum inventore repellat ab facere cumque iure temporibus. Omnis molestiae rerum adipisci et aspernatur ut adipisci. Non delectus ut debitis ut.','Veniam delectus et fugiat soluta voluptatem a unde. Dolore ab sed minima doloremque voluptate ea at. Pariatur mollitia perspiciatis vel.','2019-05-01','Madiun',NULL);
/*!40000 ALTER TABLE `users_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-02  3:53:46
