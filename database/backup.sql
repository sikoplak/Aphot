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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audits`
--

LOCK TABLES `audits` WRITE;
/*!40000 ALTER TABLE `audits` DISABLE KEYS */;
INSERT INTO `audits` VALUES (1,14,'DELETE',2,'categories_room','{\"categories_room_id\":\"2\",\"categories_room_name\":\"Sandy Andryanto\",\"categories_room_cost\":\"234234\",\"categories_room_description\":\"sdfsdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 14:59:09\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"2\",\"categories_room_name\":\"Sandy Andryanto\",\"categories_room_cost\":\"234234\",\"categories_room_description\":\"sdfsdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 14:59:09\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:52:40\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/api/category_room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:52:41','2019-05-01 13:52:41'),(2,14,'DELETE',3,'categories_room','{\"categories_room_id\":\"3\",\"categories_room_name\":\"admindevel\",\"categories_room_cost\":\"10000\",\"categories_room_description\":\"ssss\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 15:12:14\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"3\",\"categories_room_name\":\"admindevel\",\"categories_room_cost\":\"10000\",\"categories_room_description\":\"ssss\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 15:12:14\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:52:44\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/api/category_room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:52:44','2019-05-01 13:52:44'),(3,14,'CREATE',4,'categories_room','[null]','{\"categories_room_id\":\"4\",\"categories_room_name\":\"dfddfdfdf\",\"categories_room_cost\":\"333\",\"categories_room_description\":\"dfdfdfdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 20:53:07\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:53:08','2019-05-01 13:53:08'),(4,14,'UPDATE',4,'categories_room','{\"categories_room_id\":\"4\",\"categories_room_name\":\"dfddfdfdf\",\"categories_room_cost\":\"333\",\"categories_room_description\":\"dfdfdfdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 20:53:07\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"id\":\"4\",\"name\":\"dfddfdfdf\",\"cost\":\"111111\",\"description\":\"dfdfdfdf\",\"created_on\":\"2019-05-01 20:53:17\",\"created_by\":\"14\"}','http://localhost:5000/web/category_room/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:53:17','2019-05-01 13:53:17'),(5,14,'DELETE',4,'categories_room','{\"categories_room_id\":\"4\",\"categories_room_name\":\"dfddfdfdf\",\"categories_room_cost\":\"111111\",\"categories_room_description\":\"dfdfdfdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 20:53:17\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"4\",\"categories_room_name\":\"dfddfdfdf\",\"categories_room_cost\":\"111111\",\"categories_room_description\":\"dfdfdfdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 20:53:17\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:53:57\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/web/category_room/delete/4/0','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:53:57','2019-05-01 13:53:57'),(6,14,'DELETE',4,'categories_room','{\"categories_room_id\":\"4\",\"categories_room_name\":\"dfddfdfdf\",\"categories_room_cost\":\"111111\",\"categories_room_description\":\"dfdfdfdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 20:53:17\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"4\",\"categories_room_name\":\"dfddfdfdf\",\"categories_room_cost\":\"111111\",\"categories_room_description\":\"dfdfdfdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 20:53:17\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:55:09\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/web/category_room/delete/4/0','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:55:09','2019-05-01 13:55:09'),(7,14,'DELETE',3,'categories_room','{\"categories_room_id\":\"3\",\"categories_room_name\":\"admindevel\",\"categories_room_cost\":\"10000\",\"categories_room_description\":\"ssss\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 15:12:14\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"3\",\"categories_room_name\":\"admindevel\",\"categories_room_cost\":\"10000\",\"categories_room_description\":\"ssss\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 15:12:14\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:55:16\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/api/category_room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:55:16','2019-05-01 13:55:16'),(8,14,'DELETE',2,'categories_room','{\"categories_room_id\":\"2\",\"categories_room_name\":\"Sandy Andryanto\",\"categories_room_cost\":\"234234\",\"categories_room_description\":\"sdfsdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 14:59:09\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"2\",\"categories_room_name\":\"Sandy Andryanto\",\"categories_room_cost\":\"234234\",\"categories_room_description\":\"sdfsdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 14:59:09\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:55:19\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/api/category_room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:55:19','2019-05-01 13:55:19'),(9,14,'DELETE',1,'categories_room','{\"categories_room_id\":\"1\",\"categories_room_name\":\"Hello World\",\"categories_room_cost\":\"0\",\"categories_room_description\":\"sss\",\"categories_room_image\":null,\"categories_room_created_on\":null,\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"1\",\"categories_room_name\":\"Hello World\",\"categories_room_cost\":\"0\",\"categories_room_description\":\"sss\",\"categories_room_image\":null,\"categories_room_created_on\":null,\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:55:23\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/api/category_room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:55:23','2019-05-01 13:55:23'),(10,14,'CREATE',1,'categories_room','[null]','{\"categories_room_id\":\"1\",\"categories_room_name\":\"Delux\",\"categories_room_cost\":\"500\",\"categories_room_description\":\"-\",\"categories_room_image\":\"uploads\\/b759c0467b11443dcbfb3ee9e60e194c.png\",\"categories_room_created_on\":\"2019-05-03 15:16:11\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 08:16:11','2019-05-03 08:16:11'),(11,14,'DELETE',18,'users','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:29:31','2019-05-03 17:29:31'),(12,14,'DELETE',18,'users','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:29:34','2019-05-03 17:29:34'),(13,14,'DELETE',19,'users','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:29:38','2019-05-03 17:29:38'),(14,14,'DELETE',17,'users','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:40:53','2019-05-03 17:40:53'),(15,14,'DELETE',17,'users','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:40:57','2019-05-03 17:40:57'),(16,14,'DELETE',17,'users','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:41:02','2019-05-03 17:41:02'),(17,14,'DELETE',19,'users','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:41:32','2019-05-03 17:41:32'),(18,14,'DELETE',15,'users','{\"users_id\":\"15\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"fitriani00\",\"users_password\":\"$2y$10$ej7R\\/wCuN96.x4DlsCbRb.DZ5U9eQtF5WU2sK4MsicInSA8p9D1qu\",\"users_email\":\"langgeng.pradipta@example.org\",\"users_phone\":\"(+62) 219 0241 885\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"15\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"fitriani00\",\"users_password\":\"$2y$10$ej7R\\/wCuN96.x4DlsCbRb.DZ5U9eQtF5WU2sK4MsicInSA8p9D1qu\",\"users_email\":\"langgeng.pradipta@example.org\",\"users_phone\":\"(+62) 219 0241 885\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:42:23','2019-05-03 17:42:23'),(19,14,'DELETE',16,'users','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:42:26','2019-05-03 17:42:26'),(20,14,'DELETE',19,'users','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:42:30','2019-05-03 17:42:30'),(21,14,'DELETE',17,'users','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:43:59','2019-05-03 17:43:59'),(22,14,'DELETE',18,'users','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:03','2019-05-03 17:44:03'),(23,14,'DELETE',18,'users','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:06','2019-05-03 17:44:06'),(24,14,'DELETE',18,'users','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:10','2019-05-03 17:44:10'),(25,14,'DELETE',16,'users','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:13','2019-05-03 17:44:13'),(26,14,'DELETE',15,'users','{\"users_id\":\"15\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"fitriani00\",\"users_password\":\"$2y$10$ej7R\\/wCuN96.x4DlsCbRb.DZ5U9eQtF5WU2sK4MsicInSA8p9D1qu\",\"users_email\":\"langgeng.pradipta@example.org\",\"users_phone\":\"(+62) 219 0241 885\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"15\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"fitriani00\",\"users_password\":\"$2y$10$ej7R\\/wCuN96.x4DlsCbRb.DZ5U9eQtF5WU2sK4MsicInSA8p9D1qu\",\"users_email\":\"langgeng.pradipta@example.org\",\"users_phone\":\"(+62) 219 0241 885\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:16','2019-05-03 17:44:16'),(27,14,'DELETE',19,'users','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:19','2019-05-03 17:44:19'),(28,14,'DELETE',18,'users','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:22','2019-05-03 17:44:22'),(29,14,'DELETE',18,'users','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:36','2019-05-03 17:44:36'),(30,14,'DELETE',16,'users','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:39','2019-05-03 17:44:39'),(31,14,'DELETE',16,'users','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:43','2019-05-03 17:44:43'),(32,14,'DELETE',22,'users','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:12:57','2019-05-03 18:12:57'),(33,14,'DELETE',22,'users','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:15:39','2019-05-03 18:15:39'),(34,14,'DELETE',22,'users','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/web/user/delete/22','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:15:51','2019-05-03 18:15:51'),(35,14,'DELETE',22,'users','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:16:04','2019-05-03 18:16:04'),(36,14,'DELETE',23,'users','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/web/user/delete/23','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:19:08','2019-05-03 18:19:08'),(37,14,'DELETE',22,'users','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/web/user/delete/22','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:19:12','2019-05-03 18:19:12'),(38,14,'DELETE',22,'users','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/web/user/delete/22','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:21:58','2019-05-03 18:21:58'),(39,14,'DELETE',23,'users','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/web/user/delete/23','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:22:06','2019-05-03 18:22:06'),(40,14,'DELETE',22,'users','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:22:12','2019-05-03 18:22:12'),(41,14,'DELETE',23,'users','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/web/user/delete/23','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:26:45','2019-05-03 18:26:45'),(42,14,'DELETE',42,'groups','{\"groups_id\":\"42\",\"groups_name\":\"director\",\"groups_description\":\"DIRECTOR\",\"groups_created_on\":null,\"groups_created_by\":null,\"groups_deleted_on\":null,\"groups_deleted_by\":null}','{\"groups_id\":\"42\",\"groups_name\":\"director\",\"groups_description\":\"DIRECTOR\",\"groups_created_on\":null,\"groups_created_by\":null,\"groups_deleted_on\":\"2019-05-04 02:27:37\",\"groups_deleted_by\":\"14\"}','http://localhost:5000/api/role/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 19:27:37','2019-05-03 19:27:37'),(43,14,'CREATE',45,'groups','[null]','{\"name\":\"ddd\",\"description\":\"ddd\",\"created_on\":\"2019-05-05 13:54:22\",\"created_by\":\"14\"}','http://localhost:5000/web/role/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 06:54:22','2019-05-05 06:54:22'),(44,14,'CREATE',46,'groups','[null]','{\"name\":\"AAA\",\"description\":\"AAAA\",\"created_on\":\"2019-05-05 13:54:40\",\"created_by\":\"14\"}','http://localhost:5000/web/role/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 06:54:41','2019-05-05 06:54:41'),(45,14,'CREATE',47,'groups','[null]','{\"name\":\"QQQ\",\"description\":\"QQQ\",\"created_on\":\"2019-05-05 14:12:34\",\"created_by\":\"14\"}','http://localhost:5000/web/role/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:12:34','2019-05-05 07:12:34'),(46,14,'UPDATE',47,'groups','{\"groups_id\":\"47\",\"groups_name\":\"QQQ\",\"groups_description\":\"QQQ\",\"groups_created_on\":\"2019-05-05 14:12:34\",\"groups_created_by\":\"14\",\"groups_deleted_on\":null,\"groups_deleted_by\":null}','{\"name\":\"QQQ\",\"description\":\"QQQ\",\"created_on\":\"2019-05-05 14:29:24\",\"created_by\":\"14\"}','http://localhost:5000/web/role/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:29:24','2019-05-05 07:29:24'),(47,14,'CREATE',1,'taxes','[null]','{\"taxes_id\":\"1\",\"taxes_name\":\"PPH\",\"taxes_cost\":\"25\",\"taxes_description\":\"-\",\"taxes_created_on\":\"2019-05-05 14:35:51\",\"taxes_created_by\":\"14\",\"taxes_deleted_on\":null,\"taxes_deleted_by\":null,\"taxes_active\":\"1\"}','http://localhost:5000/web/tax/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:35:51','2019-05-05 07:35:51'),(48,14,'CREATE',2,'taxes','[null]','{\"taxes_id\":\"2\",\"taxes_name\":\"Service\",\"taxes_cost\":\"5\",\"taxes_description\":\"-\",\"taxes_created_on\":\"2019-05-05 14:37:04\",\"taxes_created_by\":\"14\",\"taxes_deleted_on\":null,\"taxes_deleted_by\":null,\"taxes_active\":\"1\"}','http://localhost:5000/web/tax/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:37:05','2019-05-05 07:37:05'),(49,14,'UPDATE',1,'taxes','{\"taxes_id\":\"1\",\"taxes_name\":\"PPH\",\"taxes_cost\":\"25\",\"taxes_description\":\"-\",\"taxes_created_on\":\"2019-05-05 14:35:51\",\"taxes_created_by\":\"14\",\"taxes_deleted_on\":null,\"taxes_deleted_by\":null,\"taxes_active\":\"1\"}','{\"id\":\"1\",\"name\":\"PPH\",\"cost\":\"25\",\"description\":\"-\",\"active\":0,\"created_on\":\"2019-05-05 14:37:20\",\"created_by\":\"14\"}','http://localhost:5000/web/tax/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:37:20','2019-05-05 07:37:20'),(50,14,'DELETE',23,'users','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:39:06','2019-05-05 07:39:06'),(51,14,'DELETE',23,'users','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:39:11','2019-05-05 07:39:11'),(52,14,'DELETE',19,'users','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:39:14','2019-05-05 07:39:14'),(53,14,'DELETE',19,'users','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:39:20','2019-05-05 07:39:20'),(54,14,'DELETE',23,'users','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:39:23','2019-05-05 07:39:23'),(55,14,'UPDATE',47,'groups','{\"groups_id\":\"47\",\"groups_name\":\"QQQ\",\"groups_description\":\"QQQ\",\"groups_created_on\":\"2019-05-05 14:29:24\",\"groups_created_by\":\"14\",\"groups_deleted_on\":null,\"groups_deleted_by\":null}','{\"name\":\"Super Admin\",\"description\":\"Devel only\",\"created_on\":\"2019-05-05 14:55:41\",\"created_by\":\"14\"}','http://localhost:5000/web/role/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:55:41','2019-05-05 07:55:41'),(56,14,'CREATE',1,'customers','[null]','{\"customers_id\":\"1\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"47867458678457\",\"customers_name\":\"Sandy Andryanto\",\"customers_phone\":\"959595959\",\"customers_email\":\"sandy.andryanto.dev@gmail.com\",\"customers_address\":\"Kebon Kopi\",\"customers_created_on\":\"2019-05-05 15:24:22\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','http://localhost:5000/web/customer/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 08:24:22','2019-05-05 08:24:22'),(57,14,'UPDATE',1,'customers','{\"customers_id\":\"1\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"47867458678457\",\"customers_name\":\"Sandy Andryanto\",\"customers_phone\":\"959595959\",\"customers_email\":\"sandy.andryanto.dev@gmail.com\",\"customers_address\":\"Kebon Kopi\",\"customers_created_on\":\"2019-05-05 15:24:22\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','{\"id\":\"1\",\"identity_type\":\"NPWP\",\"identity_number\":\"11212.234234.123123.111\",\"name\":\"PT PERTAMINA\",\"phone\":\"458694586989\",\"email\":\"pertamina@test.com\",\"address\":\"Jakarta Pusat\",\"created_on\":\"2019-05-05 15:26:15\",\"created_by\":\"14\"}','http://localhost:5000/web/customer/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 08:26:15','2019-05-05 08:26:15'),(58,14,'CREATE',2,'customers','[null]','{\"customers_id\":\"2\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"47867458678457\",\"customers_name\":\"admindevel\",\"customers_phone\":\"9456859468\",\"customers_email\":\"sandyandryanto@outlook.com\",\"customers_address\":\"-\",\"customers_created_on\":\"2019-05-05 15:26:36\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','http://localhost:5000/web/customer/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 08:26:36','2019-05-05 08:26:36'),(59,14,'DELETE',2,'customers','{\"customers_id\":\"2\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"47867458678457\",\"customers_name\":\"admindevel\",\"customers_phone\":\"9456859468\",\"customers_email\":\"sandyandryanto@outlook.com\",\"customers_address\":\"-\",\"customers_created_on\":\"2019-05-05 15:26:36\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','{\"customers_id\":\"2\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"47867458678457\",\"customers_name\":\"admindevel\",\"customers_phone\":\"9456859468\",\"customers_email\":\"sandyandryanto@outlook.com\",\"customers_address\":\"-\",\"customers_created_on\":\"2019-05-05 15:26:36\",\"customers_created_by\":\"14\",\"customers_deleted_on\":\"2019-05-05 15:26:43\",\"customers_deleted_by\":\"14\"}','http://localhost:5000/web/customer/delete/2','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 08:26:43','2019-05-05 08:26:43'),(60,14,'DELETE',1,'customers','{\"customers_id\":\"1\",\"customers_identity_type\":\"NPWP\",\"customers_identity_number\":\"11212.234234.123123.111\",\"customers_name\":\"PT PERTAMINA\",\"customers_phone\":\"458694586989\",\"customers_email\":\"pertamina@test.com\",\"customers_address\":\"Jakarta Pusat\",\"customers_created_on\":\"2019-05-05 15:26:15\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','{\"customers_id\":\"1\",\"customers_identity_type\":\"NPWP\",\"customers_identity_number\":\"11212.234234.123123.111\",\"customers_name\":\"PT PERTAMINA\",\"customers_phone\":\"458694586989\",\"customers_email\":\"pertamina@test.com\",\"customers_address\":\"Jakarta Pusat\",\"customers_created_on\":\"2019-05-05 15:26:15\",\"customers_created_by\":\"14\",\"customers_deleted_on\":\"2019-05-05 15:26:50\",\"customers_deleted_by\":\"14\"}','http://localhost:5000/api/customer/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 08:26:50','2019-05-05 08:26:50'),(61,14,'DELETE',5,'invoices','{\"invoices_id\":\"5\",\"invoices_invoice_number\":\"IN.20190505.00001\",\"invoices_invoice_date\":\"2019-05-05\",\"invoices_customer_id\":null,\"invoices_number_of_days\":\"0\",\"invoices_check_in_on\":null,\"invoices_check_out_on\":null,\"invoices_tendered\":null,\"invoices_due\":null,\"invoices_change\":null,\"invoices_payment_type\":null,\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"1\",\"invoices_created_on\":\"2019-05-05 16:27:45\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":null,\"invoices_deleted_by\":null,\"customers_id\":null,\"customers_identity_type\":null,\"customers_identity_number\":null,\"customers_name\":null,\"customers_phone\":null,\"customers_email\":null,\"customers_address\":null,\"customers_created_on\":null,\"customers_created_by\":null,\"customers_deleted_on\":null,\"customers_deleted_by\":null}','{\"invoices_id\":\"5\",\"invoices_invoice_number\":\"IN.20190505.00001\",\"invoices_invoice_date\":\"2019-05-05\",\"invoices_customer_id\":null,\"invoices_number_of_days\":\"0\",\"invoices_check_in_on\":null,\"invoices_check_out_on\":null,\"invoices_tendered\":null,\"invoices_due\":null,\"invoices_change\":null,\"invoices_payment_type\":null,\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"1\",\"invoices_created_on\":\"2019-05-05 16:27:45\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":\"2019-05-05 16:29:29\",\"invoices_deleted_by\":\"14\",\"customers_id\":null,\"customers_identity_type\":null,\"customers_identity_number\":null,\"customers_name\":null,\"customers_phone\":null,\"customers_email\":null,\"customers_address\":null,\"customers_created_on\":null,\"customers_created_by\":null,\"customers_deleted_on\":null,\"customers_deleted_by\":null}','http://localhost:5000/api/reservation/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 09:29:29','2019-05-05 09:29:29'),(62,14,'CREATE',1,'categories_food','[null]','{\"categories_food_id\":\"1\",\"categories_food_name\":\"Asian Food\",\"categories_food_description\":\"-\",\"categories_food_image\":\"uploads\\/47639ab1393cb02d0e06b17ad6adbac8.png\",\"categories_food_created_on\":\"2019-05-05 16:46:25\",\"categories_food_created_by\":\"14\",\"categories_food_deleted_on\":null,\"categories_food_deleted_by\":null}','http://localhost:5000/web/category_food/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 09:46:25','2019-05-05 09:46:25'),(63,14,'CREATE',1,'foods','[null]','{\"foods_id\":\"1\",\"foods_category_id\":\"1\",\"foods_name\":\"Nasi Goreng Mafia\",\"foods_description\":\"-\",\"foods_image\":\"uploads\\/533bcc501a38509f1310102d7c0aab82.jpg\",\"foods_cost\":\"5000\",\"foods_created_on\":\"2019-05-05 16:57:45\",\"foods_created_by\":\"14\",\"foods_deleted_on\":null,\"foods_deleted_by\":null,\"categories_food_id\":\"1\",\"categories_food_name\":\"Asian Food\",\"categories_food_description\":\"-\",\"categories_food_image\":\"uploads\\/47639ab1393cb02d0e06b17ad6adbac8.png\",\"categories_food_created_on\":\"2019-05-05 16:46:25\",\"categories_food_created_by\":\"14\",\"categories_food_deleted_on\":null,\"categories_food_deleted_by\":null}','http://localhost:5000/web/menu/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 09:57:45','2019-05-05 09:57:45'),(64,14,'CREATE',2,'categories_room','[null]','{\"categories_room_id\":\"2\",\"categories_room_name\":\"VIP\",\"categories_room_cost\":\"10000\",\"categories_room_description\":\"-\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-05 19:12:34\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 12:12:34','2019-05-05 12:12:34'),(65,14,'CREATE',3,'categories_room','[null]','{\"categories_room_id\":\"3\",\"categories_room_name\":\"VVIP\",\"categories_room_cost\":\"2000\",\"categories_room_description\":\"-\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-05 19:12:50\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 12:12:50','2019-05-05 12:12:50'),(66,14,'UPDATE',11,'invoices','{\"invoices_id\":\"11\",\"invoices_invoice_number\":\"INN.20190506.00001\",\"invoices_invoice_date\":\"2019-05-06\",\"invoices_customer_id\":null,\"invoices_number_of_days\":\"0\",\"invoices_check_in_on\":null,\"invoices_check_out_on\":null,\"invoices_tendered\":null,\"invoices_due\":null,\"invoices_change\":null,\"invoices_payment_type\":null,\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"1\",\"invoices_created_on\":\"2019-05-06 03:26:13\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":null,\"invoices_deleted_by\":null,\"customers_id\":null,\"customers_identity_type\":null,\"customers_identity_number\":null,\"customers_name\":null,\"customers_phone\":null,\"customers_email\":null,\"customers_address\":null,\"customers_created_on\":null,\"customers_created_by\":null,\"customers_deleted_on\":null,\"customers_deleted_by\":null}','true','http://localhost:5000/web/reservation/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 20:30:55','2019-05-05 20:30:55'),(67,14,'UPDATE',11,'invoices','{\"invoices_id\":\"11\",\"invoices_invoice_number\":\"INN.20190506.00001\",\"invoices_invoice_date\":\"2019-05-06\",\"invoices_customer_id\":\"3\",\"invoices_number_of_days\":\"1\",\"invoices_check_in_on\":\"2019-06-05 00:00:00\",\"invoices_check_out_on\":\"2019-06-05 00:00:00\",\"invoices_tendered\":null,\"invoices_due\":null,\"invoices_change\":null,\"invoices_payment_type\":null,\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"0\",\"invoices_created_on\":\"2019-05-06 03:26:13\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":null,\"invoices_deleted_by\":null,\"customers_id\":\"3\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"34857348578347\",\"customers_name\":\"Sandy Andryanto\",\"customers_phone\":\"934839849\",\"customers_email\":\"sandy.andryantoo@gmail.com\",\"customers_address\":\"Cimahi\",\"customers_created_on\":\"2019-05-14 22:43:05\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','true','http://localhost:5000/web/reservation/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 20:55:59','2019-05-05 20:55:59'),(68,14,'CREATE',1,'discounts','[null]','{\"discounts_id\":\"1\",\"discounts_name\":\"Diskon Akhir Tahun\",\"discounts_cost\":\"2\",\"discounts_description\":\"-\",\"discounts_type\":\"0\",\"discounts_created_on\":\"2019-05-06 04:23:16\",\"discounts_created_by\":\"14\",\"discounts_deleted_on\":null,\"discounts_deleted_by\":null,\"discounts_active\":\"1\"}','http://localhost:5000/web/discount/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 21:23:16','2019-05-05 21:23:16'),(69,14,'UPDATE',1,'discounts','{\"discounts_id\":\"1\",\"discounts_name\":\"Diskon Akhir Tahun\",\"discounts_cost\":\"2\",\"discounts_description\":\"-\",\"discounts_type\":\"0\",\"discounts_created_on\":\"2019-05-06 04:23:16\",\"discounts_created_by\":\"14\",\"discounts_deleted_on\":null,\"discounts_deleted_by\":null,\"discounts_active\":\"1\"}','{\"id\":\"1\",\"name\":\"Diskon Akhir Tahun\",\"cost\":\"2\",\"type\":\"1\",\"description\":\"-\",\"active\":1,\"created_on\":\"2019-05-06 04:26:24\",\"created_by\":\"14\"}','http://localhost:5000/web/discount/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 21:26:24','2019-05-05 21:26:24'),(70,14,'CREATE',2,'discounts','[null]','{\"discounts_id\":\"2\",\"discounts_name\":\"Diskon Akhir Tahun\",\"discounts_cost\":\"1\",\"discounts_description\":\"-\",\"discounts_type\":\"1\",\"discounts_created_on\":\"2019-05-06 04:28:45\",\"discounts_created_by\":\"14\",\"discounts_deleted_on\":null,\"discounts_deleted_by\":null,\"discounts_active\":\"1\"}','http://localhost:5000/web/discount/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 21:28:45','2019-05-05 21:28:45'),(71,14,'UPDATE',1,'discounts','{\"discounts_id\":\"1\",\"discounts_name\":\"Diskon Akhir Tahun\",\"discounts_cost\":\"2\",\"discounts_description\":\"-\",\"discounts_type\":\"1\",\"discounts_created_on\":\"2019-05-06 04:26:24\",\"discounts_created_by\":\"14\",\"discounts_deleted_on\":null,\"discounts_deleted_by\":null,\"discounts_active\":\"1\"}','{\"id\":\"1\",\"name\":\"Diskon Akhir Tahun\",\"cost\":\"2\",\"type\":\"0\",\"description\":\"-\",\"active\":1,\"created_on\":\"2019-05-06 04:29:02\",\"created_by\":\"14\"}','http://localhost:5000/web/discount/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 21:29:02','2019-05-05 21:29:02'),(72,14,'UPDATE',1,'taxes','{\"taxes_id\":\"1\",\"taxes_name\":\"PPH\",\"taxes_cost\":\"25\",\"taxes_description\":\"-\",\"taxes_type\":null,\"taxes_created_on\":\"2019-05-05 14:37:20\",\"taxes_created_by\":\"14\",\"taxes_deleted_on\":null,\"taxes_deleted_by\":null,\"taxes_active\":\"0\"}','{\"id\":\"1\",\"name\":\"PPH\",\"cost\":\"25\",\"type\":\"0\",\"description\":\"-\",\"active\":1,\"created_on\":\"2019-05-06 04:35:08\",\"created_by\":\"14\"}','http://localhost:5000/web/tax/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 21:35:08','2019-05-05 21:35:08'),(73,14,'UPDATE',2,'taxes','{\"taxes_id\":\"2\",\"taxes_name\":\"Service\",\"taxes_cost\":\"5\",\"taxes_description\":\"-\",\"taxes_type\":null,\"taxes_created_on\":\"2019-05-05 14:37:04\",\"taxes_created_by\":\"14\",\"taxes_deleted_on\":null,\"taxes_deleted_by\":null,\"taxes_active\":\"1\"}','{\"id\":\"2\",\"name\":\"Service\",\"cost\":\"5\",\"type\":\"1\",\"description\":\"-\",\"active\":1,\"created_on\":\"2019-05-06 04:35:13\",\"created_by\":\"14\"}','http://localhost:5000/web/tax/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 21:35:13','2019-05-05 21:35:13'),(74,14,'UPDATE',1,'discounts','{\"discounts_id\":\"1\",\"discounts_name\":\"Diskon Akhir Tahun\",\"discounts_cost\":\"2\",\"discounts_description\":\"-\",\"discounts_type\":\"0\",\"discounts_created_on\":\"2019-05-06 04:29:02\",\"discounts_created_by\":\"14\",\"discounts_deleted_on\":null,\"discounts_deleted_by\":null,\"discounts_active\":\"1\"}','{\"id\":\"1\",\"name\":\"Diskon Penjualan\",\"cost\":\"2\",\"type\":\"0\",\"description\":\"-\",\"active\":1,\"created_on\":\"2019-05-06 05:26:17\",\"created_by\":\"14\"}','http://localhost:5000/web/discount/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 22:26:17','2019-05-05 22:26:17'),(75,14,'UPDATE',1,'taxes','{\"taxes_id\":\"1\",\"taxes_name\":\"PPH\",\"taxes_cost\":\"25\",\"taxes_description\":\"-\",\"taxes_type\":\"0\",\"taxes_created_on\":\"2019-05-06 04:35:08\",\"taxes_created_by\":\"14\",\"taxes_deleted_on\":null,\"taxes_deleted_by\":null,\"taxes_active\":\"1\"}','{\"id\":\"1\",\"name\":\"PPH\",\"cost\":\"10\",\"type\":\"0\",\"description\":\"-\",\"active\":1,\"created_on\":\"2019-05-06 05:26:52\",\"created_by\":\"14\"}','http://localhost:5000/web/tax/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 22:26:52','2019-05-05 22:26:52'),(76,14,'CREATE',3,'discounts','[null]','{\"discounts_id\":\"3\",\"discounts_name\":\"Diskon Ramadhan\",\"discounts_cost\":\"10\",\"discounts_description\":\"-\",\"discounts_type\":\"0\",\"discounts_created_on\":\"2019-05-06 08:30:22\",\"discounts_created_by\":\"14\",\"discounts_deleted_on\":null,\"discounts_deleted_by\":null,\"discounts_active\":\"1\"}','http://localhost:5000/web/discount/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-06 01:30:22','2019-05-06 01:30:22'),(77,14,'UPDATE',11,'invoices','{\"invoices_id\":\"11\",\"invoices_invoice_number\":\"INN.20190506.00001\",\"invoices_invoice_date\":\"2019-05-06\",\"invoices_customer_id\":\"3\",\"invoices_number_of_days\":\"1\",\"invoices_check_in_on\":\"2019-06-05 00:00:00\",\"invoices_check_out_on\":\"2019-06-05 00:00:00\",\"invoices_tendered\":null,\"invoices_due\":null,\"invoices_change\":null,\"invoices_payment_type\":null,\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"0\",\"invoices_created_on\":\"2019-05-06 03:26:13\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":null,\"invoices_deleted_by\":null,\"customers_id\":\"3\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"34857348578347\",\"customers_name\":\"Sandy Andryanto\",\"customers_phone\":\"934839849\",\"customers_email\":\"sandy.andryantoo@gmail.com\",\"customers_address\":\"Cimahi\",\"customers_created_on\":\"2019-05-14 22:43:05\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','true','http://localhost:5000/web/reservation/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-06 02:28:44','2019-05-06 02:28:44'),(78,14,'UPDATE',11,'invoices','{\"invoices_id\":\"11\",\"invoices_invoice_number\":\"INN.20190506.00001\",\"invoices_invoice_date\":\"2019-05-06\",\"invoices_customer_id\":\"3\",\"invoices_number_of_days\":\"1\",\"invoices_check_in_on\":\"2019-06-05 00:00:00\",\"invoices_check_out_on\":\"2019-06-05 00:00:00\",\"invoices_tendered\":null,\"invoices_due\":null,\"invoices_change\":null,\"invoices_payment_type\":null,\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"0\",\"invoices_created_on\":\"2019-05-06 03:26:13\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":null,\"invoices_deleted_by\":null,\"customers_id\":\"3\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"34857348578347\",\"customers_name\":\"Sandy Andryanto\",\"customers_phone\":\"934839849\",\"customers_email\":\"sandy.andryantoo@gmail.com\",\"customers_address\":\"Cimahi\",\"customers_created_on\":\"2019-05-14 22:43:05\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','true','http://localhost:5000/web/reservation/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-06 02:34:16','2019-05-06 02:34:16');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_food`
--

LOCK TABLES `categories_food` WRITE;
/*!40000 ALTER TABLE `categories_food` DISABLE KEYS */;
INSERT INTO `categories_food` VALUES (1,'Asian Food','-','uploads/47639ab1393cb02d0e06b17ad6adbac8.png','2019-05-05 16:46:25',14,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_room`
--

LOCK TABLES `categories_room` WRITE;
/*!40000 ALTER TABLE `categories_room` DISABLE KEYS */;
INSERT INTO `categories_room` VALUES (1,'Delux',500,'-','uploads/b759c0467b11443dcbfb3ee9e60e194c.png','2019-05-03 15:16:11',14,NULL,NULL),(2,'VIP',10000,'-',NULL,'2019-05-05 19:12:34',14,NULL,NULL),(3,'VVIP',2000,'-',NULL,'2019-05-05 19:12:50',14,NULL,NULL);
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
INSERT INTO `ci_sessions` VALUES ('q2ee78nv3o9vapa1rij709bn7l79nq2f','127.0.0.1',1556929443,'__ci_last_regenerate|i:1556929443;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('eujqhiqfeu1ujoeddj8o2is4gktua9rh','127.0.0.1',1556929113,'__ci_last_regenerate|i:1556929113;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;message|s:22:\"<p>Log In Berhasil</p>\";__ci_vars|a:1:{s:7:\"message\";s:3:\"old\";}'),('ob4p9tq37ru5elanrlrmg894up97n46l','127.0.0.1',1556928608,'__ci_last_regenerate|i:1556928608;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('q00509co67lp5sbtk30lv2dshnqpug67','127.0.0.1',1556896594,'__ci_last_regenerate|i:1556896405;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556852062\";last_check|i:1556896405;'),('83ejtg3hka7f69pdguirhfmmc05uujdp','127.0.0.1',1556896405,'__ci_last_regenerate|i:1556896405;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556852062\";last_check|i:1556896405;'),('k8h1a8eq83ld5e994sftu2ek69qck2gg','127.0.0.1',1556896397,'__ci_last_regenerate|i:1556896397;'),('4ss93f9mdo9cn28rphr093qed751kqja','127.0.0.1',1556852312,'__ci_last_regenerate|i:1556852062;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556740460\";last_check|i:1556852062;'),('5emechciog47b5v7mrlrdcmu4evrf3gv','127.0.0.1',1556852038,'__ci_last_regenerate|i:1556852038;'),('4754c2kt3sufg6ma9f3ahupik7qi2e5p','127.0.0.1',1556852062,'__ci_last_regenerate|i:1556852062;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556740460\";last_check|i:1556852062;'),('1341mq96apprfalbc384hgplvgrfhpce','127.0.0.1',1556744124,'__ci_last_regenerate|i:1556744104;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('g8pvdr60hrg5luqt7ve4iqcq3kc0cmac','127.0.0.1',1556743774,'__ci_last_regenerate|i:1556743774;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('3khbpsqqqacp07c80fbbpl7dent75u33','127.0.0.1',1556744104,'__ci_last_regenerate|i:1556744104;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('vafa8thmbcsrf8phghb7h3pcrkn01cu2','127.0.0.1',1556743465,'__ci_last_regenerate|i:1556743465;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('hjfdoj3vqmr6p1gjeqh6fiua74hi6vkq','127.0.0.1',1556743147,'__ci_last_regenerate|i:1556743147;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('2ci989vo0i4t333jf6j2o9e20fjiq3ii','127.0.0.1',1556742823,'__ci_last_regenerate|i:1556742823;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('urd6vm749ofn80blf32s59je37qntpo8','127.0.0.1',1556742432,'__ci_last_regenerate|i:1556742432;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('u4n4tb2g7gkuo2dgv46uq3qjradrsg1f','127.0.0.1',1556741977,'__ci_last_regenerate|i:1556741977;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('82hpdpeff22kqrjr3276ljcsfc0631al','127.0.0.1',1556741669,'__ci_last_regenerate|i:1556741669;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('isbpo8jj0bbqublogcu86nra0acso2v1','127.0.0.1',1556741365,'__ci_last_regenerate|i:1556741365;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('8t1jgb73c3g63p84m2gumfjf4jrvusrj','127.0.0.1',1556740821,'__ci_last_regenerate|i:1556740821;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('c07hon2avculc1h2uqvga4t93e2p1h6g','127.0.0.1',1556740460,'__ci_last_regenerate|i:1556740460;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556716441\";last_check|i:1556740460;'),('oh8pt6ufhd46ukgs2bg9rn8rq5h57m91','127.0.0.1',1556734827,'__ci_last_regenerate|i:1556734827;'),('11kr725slqm9uao5glnn6idnp9idjgh5','127.0.0.1',1556740409,'__ci_last_regenerate|i:1556740409;'),('ji5hqqush6ttas99o8cehfmaoqj79fkn','127.0.0.1',1556734412,'__ci_last_regenerate|i:1556734412;'),('v3a8pprhid70cng8aao4dnepgm3jftjn','127.0.0.1',1556734827,'__ci_last_regenerate|i:1556734827;message|s:39:\"<p>Tidak Dapat Mengganti Kata Sandi</p>\";__ci_vars|a:1:{s:7:\"message\";s:3:\"old\";}'),('7h9n2u90dur3vaui4ncl1otskqt4vj14','127.0.0.1',1556723732,'__ci_last_regenerate|i:1556723707;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;success|s:19:\"Berhasil hapus data\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('23ku6r4ujam7j4i41ciqfu7qc5br0jm3','127.0.0.1',1556723707,'__ci_last_regenerate|i:1556723707;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;'),('lmnbb7l85j70b18fududbr2q6rnr93kn','127.0.0.1',1556715891,'__ci_last_regenerate|i:1556715891;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556708801\";last_check|i:1556709363;'),('ha5356dlj8tpnsorutg2oj62vampgcsf','127.0.0.1',1556716224,'__ci_last_regenerate|i:1556716224;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556708801\";last_check|i:1556709363;'),('049q429bjgu2mlujg0i144sp5vvdleb5','127.0.0.1',1556716441,'__ci_last_regenerate|i:1556716441;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;'),('0oj5qnp8tpqjrfnfnjkeo1t779je095c','127.0.0.1',1556721242,'__ci_last_regenerate|i:1556721242;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;'),('nf7mettgiqqf52hbur6ll0om5nj7ndv2','127.0.0.1',1556721543,'__ci_last_regenerate|i:1556721543;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;'),('u1ccguveq4rrsjh4h75404j4u74n7h93','127.0.0.1',1556721853,'__ci_last_regenerate|i:1556721853;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;'),('73fqp6uoa0hula01ul0c311tvs09l5nj','127.0.0.1',1556722239,'__ci_last_regenerate|i:1556722239;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;'),('ljo72v5ii3casgpi1815sc4l561nlcr0','127.0.0.1',1556722741,'__ci_last_regenerate|i:1556722741;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;message-success|s:20:\"Berhasil simpan data\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"new\";}'),('pprfn81ima77qd530gd15imp9hh8urpj','127.0.0.1',1556723047,'__ci_last_regenerate|i:1556723047;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;'),('up603adpbabm10cihus3pjc1gt3t5fjg','127.0.0.1',1556723402,'__ci_last_regenerate|i:1556723402;identity|s:29:\"sandy.andryanto.dev@gmail.com\";email|s:29:\"sandy.andryanto.dev@gmail.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556709363\";last_check|i:1556716441;message-success|s:18:\"Berhasil edit data\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('4skvdeud38hnc3fr52a7ttdvug6s03v7','127.0.0.1',1556929765,'__ci_last_regenerate|i:1556929765;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('nh3bd099vdm1qpphtctk1fl5a8e0v5n1','127.0.0.1',1556930079,'__ci_last_regenerate|i:1556930079;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('niocd8quejqd848klob6cplflu6onkdt','127.0.0.1',1556930424,'__ci_last_regenerate|i:1556930424;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('h05fb8ssj9pqf1umc0ncsu540ngdpdm8','127.0.0.1',1556930792,'__ci_last_regenerate|i:1556930792;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('8ken127dlrvorefg2ao2c6ft68ktc0qb','127.0.0.1',1556931099,'__ci_last_regenerate|i:1556931099;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('4d7guo7fd1brh9ldtrh2htt05l1l60so','127.0.0.1',1556931413,'__ci_last_regenerate|i:1556931413;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('l871n5fs45p5m8chrilsh38999q6vkmv','127.0.0.1',1556931735,'__ci_last_regenerate|i:1556931735;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('kijffsgsl3tt24fn5ne80svrlfe6m64u','127.0.0.1',1556932109,'__ci_last_regenerate|i:1556932109;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('b81ucmc68b529o773ituj78sdfhg7559','127.0.0.1',1556932528,'__ci_last_regenerate|i:1556932528;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('ia9koi65lqaibr9eqspj2jq5t27ig4s8','127.0.0.1',1556932908,'__ci_last_regenerate|i:1556932908;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('mls527b4vl4cgfrbvfa0r5snngceb44h','127.0.0.1',1556933214,'__ci_last_regenerate|i:1556933214;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('crageudgkpvc7c0ohc4jkv4vfeg9jkjk','127.0.0.1',1556933588,'__ci_last_regenerate|i:1556933588;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('2o97h4ghogb17q0c14m5l7pu6vrpde7v','127.0.0.1',1556933935,'__ci_last_regenerate|i:1556933935;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('ndf88b1s1q67e4jh3t5qugqo4p2o4c79','127.0.0.1',1556934437,'__ci_last_regenerate|i:1556934437;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('qthju8lbbblebr229sv8p7o0soe600tc','127.0.0.1',1556934801,'__ci_last_regenerate|i:1556934801;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('nusbtnk8egm661vuq2tvju93b92fco8b','127.0.0.1',1556935181,'__ci_last_regenerate|i:1556935181;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('sgfnc90b6shjck7a9o65gvpk0j7hmvg3','127.0.0.1',1556935591,'__ci_last_regenerate|i:1556935591;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;success|s:36:\"Profil perusahaan berhasil diupdate.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"new\";}'),('6iu0tp13f2fgjr0t6ggv4r4bmftjdlr5','127.0.0.1',1556936139,'__ci_last_regenerate|i:1556936139;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('s07qkl92d51284cqpem6us498pcv6mj1','127.0.0.1',1556936456,'__ci_last_regenerate|i:1556936456;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('8al511kib52cdu1jn3b1pg9s7cmqkp1o','127.0.0.1',1556936757,'__ci_last_regenerate|i:1556936757;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('1g58k7stco0m68ifliivhkb00u6isbgu','127.0.0.1',1556937187,'__ci_last_regenerate|i:1556937187;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('4cjkv74ebucagq83ka5o85oqg1n3cvaq','127.0.0.1',1556937668,'__ci_last_regenerate|i:1556937668;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('k5a4epqrknrcaksnakpetdi5vutpu5vp','127.0.0.1',1556938010,'__ci_last_regenerate|i:1556938010;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('him8j8serskhb5mn65cooh0m7b5f0go5','127.0.0.1',1556938344,'__ci_last_regenerate|i:1556938344;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('crul8q2ddg6rqnl4mjb25o7rgqkjjk4b','127.0.0.1',1556938663,'__ci_last_regenerate|i:1556938663;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('nh3eer63s4p0efj4v868kofrej962vin','127.0.0.1',1556938975,'__ci_last_regenerate|i:1556938975;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('vm4lg1bes6s2f7hr46bouknjrq6vge37','127.0.0.1',1556939297,'__ci_last_regenerate|i:1556939297;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('i1j5odudinlqvljiqrvtpk9q0mac275n','127.0.0.1',1556939557,'__ci_last_regenerate|i:1556939297;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556896405\";last_check|i:1556928608;'),('qmkh224ngleuq0ovtlo2e0nt1imo57ei','127.0.0.1',1557064015,'__ci_last_regenerate|i:1557064015;'),('2d68hjtp6omed6enlmgc4vfpcnodttf2','127.0.0.1',1557064023,'__ci_last_regenerate|i:1557064023;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556928608\";last_check|i:1557064022;'),('dtp6rldd8md9bi284avkmdp3e85iaqce','127.0.0.1',1557064368,'__ci_last_regenerate|i:1557064368;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556928608\";last_check|i:1557064022;'),('urrmvq9pgg9petfi6vqkumvqevf47p5j','127.0.0.1',1557064700,'__ci_last_regenerate|i:1557064700;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556928608\";last_check|i:1557064022;'),('agumfh803t48vb28fvqgrammsru862kn','127.0.0.1',1557065016,'__ci_last_regenerate|i:1557065016;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556928608\";last_check|i:1557064022;'),('2t9sd1j6amrdvvtro46gs9qfnu1eh7jm','127.0.0.1',1557065543,'__ci_last_regenerate|i:1557065543;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556928608\";last_check|i:1557064022;'),('bpodke0gcm9nb4h4tkf13ki7fl1pkf3h','127.0.0.1',1557066448,'__ci_last_regenerate|i:1557066448;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1556928608\";last_check|i:1557064022;'),('5m01kiug39i3r30ko68rop9btep0htpo','127.0.0.1',1557066969,'__ci_last_regenerate|i:1557066969;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('a2hqes8luck1kl7766mh64bkpvbbbmvi','127.0.0.1',1557066666,'__ci_last_regenerate|i:1557066666;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('f3dt2nutu7hid90n01ddp7epgl42otub','127.0.0.1',1557067327,'__ci_last_regenerate|i:1557067327;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('vqr4d9okqmv6b0qugglc48c1v0papovl','127.0.0.1',1557067696,'__ci_last_regenerate|i:1557067696;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('7divg05log38l7mq1f1vet1000a3d61u','127.0.0.1',1557068116,'__ci_last_regenerate|i:1557068116;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('i2mu6fe3je7sjpn1qf2kipinbaeochdc','127.0.0.1',1557069194,'__ci_last_regenerate|i:1557069194;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;success|s:18:\"Berhasil edit data\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('mkh5mnv22jm2g0ip382dge4g9iac5psb','127.0.0.1',1557069843,'__ci_last_regenerate|i:1557069843;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('o8ra8kudtge2p6v3gu81aphsg8il2poq','127.0.0.1',1557070875,'__ci_last_regenerate|i:1557070875;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('qthd375p72d2h8lj32juasor2bn83j70','127.0.0.1',1557071266,'__ci_last_regenerate|i:1557071266;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('iv1almb90l28blkpduvfalit2upf6du1','127.0.0.1',1557071595,'__ci_last_regenerate|i:1557071595;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('v3vmijrlu3fv9cp14uh4i32763ccvk3j','127.0.0.1',1557071914,'__ci_last_regenerate|i:1557071914;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('e5ssk2jqvrm14t92d5oikbsc9bl51a6l','127.0.0.1',1557072627,'__ci_last_regenerate|i:1557072627;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('f0r4iahk6cs82423jucqlue80antrnke','127.0.0.1',1557072939,'__ci_last_regenerate|i:1557072939;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('j44vve955jb61iqudlsagvgg7sc61dov','127.0.0.1',1557073241,'__ci_last_regenerate|i:1557073241;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('9hibav7t2vjbr614n5rvuvkv76on17br','127.0.0.1',1557073637,'__ci_last_regenerate|i:1557073637;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('7brkoua27u7bmmsl95u113nvq7dfcf0j','127.0.0.1',1557073988,'__ci_last_regenerate|i:1557073988;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('vdkprvaa19kemcvdok2vijseuldvn41f','127.0.0.1',1557074310,'__ci_last_regenerate|i:1557074310;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('o16qls8virtjf0ocrq1r4jrejm1atdg7','127.0.0.1',1557074654,'__ci_last_regenerate|i:1557074654;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('m68d4vu8o5vhh05k87t832tlik5kligd','127.0.0.1',1557075420,'__ci_last_regenerate|i:1557075420;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('56j2j89skl1a21jo52h1vppotnuumep6','127.0.0.1',1557076304,'__ci_last_regenerate|i:1557076304;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('88elrslm15pm66cc6phnt0nv5ogma3sa','127.0.0.1',1557076632,'__ci_last_regenerate|i:1557076632;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('0rvo2t2471fta34cb82tnarfkd7nnetf','127.0.0.1',1557076999,'__ci_last_regenerate|i:1557076999;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('3g2vlpm3svubrlq31ocjrs5l98bjuo8j','127.0.0.1',1557077328,'__ci_last_regenerate|i:1557077328;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('sh0768kojio5kr20jah7jlspn3pdc0k2','127.0.0.1',1557077638,'__ci_last_regenerate|i:1557077638;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('1955forjg5cefpr0tgvf8b4qkjt15ngf','127.0.0.1',1557078001,'__ci_last_regenerate|i:1557078001;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('us7155bghg0a22n0saekjafgusi3qkdp','127.0.0.1',1557078438,'__ci_last_regenerate|i:1557078438;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('cfc6h60vj7578m562f3skc02pk4imi8s','127.0.0.1',1557078756,'__ci_last_regenerate|i:1557078756;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('2mpusg4uom40i0n6d9qptgj351chs2rv','127.0.0.1',1557079127,'__ci_last_regenerate|i:1557079127;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('f2hpe260gk1sko1jsuior4q30qb5bevm','127.0.0.1',1557079452,'__ci_last_regenerate|i:1557079452;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('i5lovs594hihgvp9fktmre383a1n5m35','127.0.0.1',1557079980,'__ci_last_regenerate|i:1557079980;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('78ad1j86f6b58ggpsvpuj9mr45hsdbm3','127.0.0.1',1557080346,'__ci_last_regenerate|i:1557080346;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('ggbgkm7a1b45me9rprcr5lu36ubpl1ue','127.0.0.1',1557080653,'__ci_last_regenerate|i:1557080653;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('ejslnecurco3ts4jhdoo5dr6nmot07fi','127.0.0.1',1557081049,'__ci_last_regenerate|i:1557081049;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('elu1r0lqt5lkcd08jpgca2pl3voak1uu','127.0.0.1',1557081379,'__ci_last_regenerate|i:1557081379;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('79k4q0kbgtqcelv2t5achhgid5fv7ut5','127.0.0.1',1557081790,'__ci_last_regenerate|i:1557081790;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('vaavj768402rb9b2g1mlk7q8f534sg15','127.0.0.1',1557082105,'__ci_last_regenerate|i:1557082105;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('mb5jqvfgd10r6c8qsefkg68g62qokdg6','127.0.0.1',1557082449,'__ci_last_regenerate|i:1557082449;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('lb8bmsmpi9ofu3vg0p2b1riact2f00cp','127.0.0.1',1557082796,'__ci_last_regenerate|i:1557082796;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('dau08n3jrdlpf7nhgopl4gpjdgra2h2f','127.0.0.1',1557083106,'__ci_last_regenerate|i:1557083106;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('85n257vu4ne628iu3k6ll0q5uonqofeb','127.0.0.1',1557083433,'__ci_last_regenerate|i:1557083433;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('ohvamgi8lv5t37dgpcjlg00t0b51s8v9','127.0.0.1',1557083750,'__ci_last_regenerate|i:1557083750;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('h2lal8ve50mlff6mi00q3sul1olmb53v','127.0.0.1',1557084070,'__ci_last_regenerate|i:1557084070;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('im3gmog39lbq9vopn67j475lpvroqnuo','127.0.0.1',1557084900,'__ci_last_regenerate|i:1557084900;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('l9q7q7c6rv0t80bfm8uavd8fcmretqi2','127.0.0.1',1557085205,'__ci_last_regenerate|i:1557085205;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('vocl2r4u0ov3rfgf65hbsf7lc13tmdho','127.0.0.1',1557085572,'__ci_last_regenerate|i:1557085572;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('4fo1ksin71kdtaqbn5qsv426t3p8f14k','127.0.0.1',1557085895,'__ci_last_regenerate|i:1557085895;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('51qm7nivmo11ktr5k1upil1qtnrgamlc','127.0.0.1',1557086248,'__ci_last_regenerate|i:1557086248;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('ev8d9gibpt0591hua162sudio20bb2ut','127.0.0.1',1557086566,'__ci_last_regenerate|i:1557086566;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('99eg173fovaihdv6otoarsum5qgdhpuc','127.0.0.1',1557086896,'__ci_last_regenerate|i:1557086896;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('d13pk6u6qrilj5eip10s5hq73394dp2b','127.0.0.1',1557087355,'__ci_last_regenerate|i:1557087355;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('4t8sv56rtlckb1k2dfthmqfrvkc5ng0c','127.0.0.1',1557087733,'__ci_last_regenerate|i:1557087733;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('o3nbnt2khe9r6rklnpuir1op26nes9nk','127.0.0.1',1557088037,'__ci_last_regenerate|i:1557088037;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('b6lcbf2p8p73v3ui73a13n9d6b8hmao9','127.0.0.1',1557088348,'__ci_last_regenerate|i:1557088348;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('rt76fkcan2vagkbum7gkoscnctkv7tpu','127.0.0.1',1557090713,'__ci_last_regenerate|i:1557090713;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('i1mod33i819buugd4lu6d1l6atkeju0f','127.0.0.1',1557091049,'__ci_last_regenerate|i:1557091049;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('1ffq5s64j4vj3n6vluu20gufcimg5mhl','127.0.0.1',1557091587,'__ci_last_regenerate|i:1557091587;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('3fi4p5q8nd246hdifp6cu4760vi0udqa','127.0.0.1',1557091851,'__ci_last_regenerate|i:1557091587;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557064022\";last_check|i:1557066666;'),('bgv95vg7n77blmr9lqns3mo6d7dldk2l','127.0.0.1',1557113010,'__ci_last_regenerate|i:1557113010;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('1h23nutnj1p6cbb3lc0dq9p9qqnti2a9','127.0.0.1',1557113412,'__ci_last_regenerate|i:1557113412;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('4ei35mdk85i5c6j3coa1ubgu2v4rvub3','127.0.0.1',1557113894,'__ci_last_regenerate|i:1557113894;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('mi3bu07264v515vrudavto1f1agrek3m','127.0.0.1',1557114242,'__ci_last_regenerate|i:1557114242;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('ms2l4nipmilgfs63r3p8gdepl3e6tsmj','127.0.0.1',1557114641,'__ci_last_regenerate|i:1557114641;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('p6titpplibru6i95neoogaoqjfli2crk','127.0.0.1',1557114959,'__ci_last_regenerate|i:1557114959;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('4lu2129otq4lotbuh8ekrdevcakj6lpd','127.0.0.1',1557115310,'__ci_last_regenerate|i:1557115310;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('86moqou9j1bovnk55roh9tuopbqg2ar4','127.0.0.1',1557115672,'__ci_last_regenerate|i:1557115672;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('u05u7a8vb339i3g8rmchfjsjvcl8sto5','127.0.0.1',1557115986,'__ci_last_regenerate|i:1557115986;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('ucjgf2fe79ce0preeidbt8864kf30sia','127.0.0.1',1557116577,'__ci_last_regenerate|i:1557116577;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('86juf9ibcms5ebugu5tl5klsi5a4qrbt','127.0.0.1',1557116883,'__ci_last_regenerate|i:1557116883;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('js781birvksh4lvr972e9o1fq4mipq5q','127.0.0.1',1557117219,'__ci_last_regenerate|i:1557117219;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('mnvcpckgaitt7cgpe7e6nijoclqvq6sa','127.0.0.1',1557120344,'__ci_last_regenerate|i:1557120344;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('mk4m0d4mj9pob2n6rgudg7d5t1peprp2','127.0.0.1',1557124053,'__ci_last_regenerate|i:1557124053;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;success|s:18:\"Berhasil edit data\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('c9sipbl9fqi3marncqk8gpt63uu692rh','127.0.0.1',1557125282,'__ci_last_regenerate|i:1557125282;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('scrcqjdc665vq2o56sjjch5m4pcvhtjt','127.0.0.1',1557125604,'__ci_last_regenerate|i:1557125604;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('voihgfeksgf389g1r3aho0pd2066gang','127.0.0.1',1557125952,'__ci_last_regenerate|i:1557125952;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('ultmfsq1v63gcsv9dset0e4lnd72ll0k','127.0.0.1',1557128497,'__ci_last_regenerate|i:1557128497;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('0kr4emqe1vhtmehsoutpe91alqtftvs9','127.0.0.1',1557129214,'__ci_last_regenerate|i:1557129214;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('o6pfveckmp0v784bpua3g4icnded1qvb','127.0.0.1',1557129589,'__ci_last_regenerate|i:1557129589;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('m5djkib4drdh56lgrmiptqa8s65ne3e9','127.0.0.1',1557129920,'__ci_last_regenerate|i:1557129920;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('l9ri945v7673udppp4cq3p5k61o7k52a','127.0.0.1',1557130225,'__ci_last_regenerate|i:1557130225;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('jlkmlcip0luk4726f7tpfb3f180e1sqk','127.0.0.1',1557130534,'__ci_last_regenerate|i:1557130534;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('sbsngb0ttrs6u3ma0ueldnntffsjt7ui','127.0.0.1',1557130906,'__ci_last_regenerate|i:1557130906;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('u936qqdj3qmdei1c2537iovj0bm1iejl','127.0.0.1',1557131269,'__ci_last_regenerate|i:1557131269;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('1foukeij6meoutnf4ucilhfvsq47n75o','127.0.0.1',1557131768,'__ci_last_regenerate|i:1557131768;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('1b4j344u53iml96oe1fufatnb985vaao','127.0.0.1',1557132246,'__ci_last_regenerate|i:1557132246;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('4tvs8hv5epo4crtdvaqbn6rr47flvbso','127.0.0.1',1557133063,'__ci_last_regenerate|i:1557133063;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('m6ef4mb9jbrg2kfg731euvkae7l7v7vj','127.0.0.1',1557133371,'__ci_last_regenerate|i:1557133371;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('20crd7bo2pce249hok08dj90pvj4puc6','127.0.0.1',1557133764,'__ci_last_regenerate|i:1557133764;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('43op3fd5lvc454v23aj254i8ulu7dtp6','127.0.0.1',1557134068,'__ci_last_regenerate|i:1557134068;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('6uggr5olrgr0t810cnk1mj4cbg4gmdja','127.0.0.1',1557134417,'__ci_last_regenerate|i:1557134417;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('045nagmvabuo9lmoi5guesuoisb9obrk','127.0.0.1',1557134896,'__ci_last_regenerate|i:1557134896;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('m714lnsl28gggco3j6ju6cai57t2s9br','127.0.0.1',1557135255,'__ci_last_regenerate|i:1557135255;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;'),('ifgnec4n45dga61cov4a185dj3lbfejk','127.0.0.1',1557135477,'__ci_last_regenerate|i:1557135255;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557066666\";last_check|i:1557113010;');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'company-name','PT Hello World'),(2,'company-npwp','12345'),(3,'company-postal-code','57567'),(4,'company-email','hello.world@test.com'),(5,'company-phone','458648567584678'),(6,'company-address','Jalan Asia Afrika bandung'),(7,'company-province','Jawa Barat'),(8,'company-regency','Bandung'),(9,'company-district','Asia Afrika'),(10,'company-village','Alun alun'),(11,'company-logo','uploads/00d60f6423114c41066702a1105cbd88.jpg');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
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
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'NPWP','11212.234234.123123.111','PT PERTAMINA','458694586989','pertamina@test.com','Jakarta Pusat','2019-05-05 15:26:15',14,'2019-05-05 15:26:50',14),(2,'KTP','47867458678457','admindevel','9456859468','sandyandryanto@outlook.com','-','2019-05-05 15:26:36',14,'2019-05-05 15:26:43',14),(3,'KTP','34857348578347','Sandy Andryanto','934839849','sandy.andryantoo@gmail.com','Cimahi','2019-05-14 22:43:05',14,NULL,NULL);
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
  `type` tinyint(4) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,'Diskon Penjualan',2,'-',0,'2019-05-06 05:26:17',14,NULL,NULL,1),(2,'Diskon Akhir Tahun',1,'-',1,'2019-05-06 04:28:45',14,NULL,NULL,1),(3,'Diskon Ramadhan',10,'-',0,'2019-05-06 08:30:22',14,NULL,NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foods`
--

LOCK TABLES `foods` WRITE;
/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
INSERT INTO `foods` VALUES (1,1,'Nasi Goreng Mafia','-','uploads/533bcc501a38509f1310102d7c0aab82.jpg',5000,'2019-05-05 16:57:45',14,NULL,NULL);
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
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (39,'admin','ADMIN',NULL,NULL,NULL,NULL),(40,'receptionst','RECEPTIONST',NULL,NULL,NULL,NULL),(41,'manager','MANAGER',NULL,NULL,NULL,NULL),(42,'director','DIRECTOR',NULL,NULL,'2019-05-04 02:27:37',14),(43,'supervisor','SUPERVISOR',NULL,NULL,NULL,NULL),(44,'engineer','ENGINEER',NULL,NULL,NULL,NULL),(45,'ddd','ddd','2019-05-05 13:54:22',14,NULL,NULL),(46,'AAA','AAAA','2019-05-05 13:54:40',14,NULL,NULL),(47,'Super Admin','Devel only','2019-05-05 14:55:41',14,NULL,NULL);
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
INSERT INTO `invoice_discount` VALUES (11,1,100),(11,3,500);
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
  `capacity` int(11) DEFAULT NULL,
  `occupant` int(11) DEFAULT NULL,
  `price` double(20,0) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `total` double(20,0) DEFAULT NULL,
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
INSERT INTO `invoice_room` VALUES (11,1,2,1,500,5,2500),(11,2,2,1,500,5,2500);
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
INSERT INTO `invoice_tax` VALUES (11,1,500);
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
  `invoice_number` varchar(255) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `number_of_days` int(11) DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (11,'INN.20190506.00001','2019-05-06',3,5,'2019-06-05 00:00:00','2019-06-05 00:00:00',NULL,NULL,NULL,NULL,0,NULL,0,'2019-05-06 03:26:13',14,NULL,NULL);
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
INSERT INTO `permissions` VALUES (190,39,1,1,1,1),(190,40,1,1,1,1),(190,41,1,1,1,1),(190,42,1,1,1,1),(190,43,1,1,1,1),(190,44,1,1,1,1),(190,45,1,1,1,1),(190,46,1,1,1,1),(190,47,1,1,1,1),(191,39,1,1,1,1),(191,40,1,1,1,1),(191,41,1,1,1,1),(191,42,1,1,1,1),(191,43,1,1,1,1),(191,44,1,1,1,1),(191,45,0,0,0,0),(191,46,0,0,0,0),(191,47,0,0,0,0),(192,39,1,1,1,1),(192,40,1,1,1,1),(192,41,1,1,1,1),(192,42,1,1,1,1),(192,43,1,1,1,1),(192,44,1,1,1,1),(192,45,0,0,0,0),(192,46,0,0,0,0),(192,47,0,0,0,0),(193,39,1,1,1,1),(193,40,1,1,1,1),(193,41,1,1,1,1),(193,42,1,1,1,1),(193,43,1,1,1,1),(193,44,1,1,1,1),(193,45,1,1,1,1),(193,46,1,1,1,1),(193,47,1,1,1,1),(194,39,1,1,1,1),(194,40,1,1,1,1),(194,41,1,1,1,1),(194,42,1,1,1,1),(194,43,1,1,1,1),(194,44,1,1,1,1),(194,45,0,0,0,0),(194,46,0,0,0,0),(194,47,0,0,0,0),(195,39,1,1,1,1),(195,40,1,1,1,1),(195,41,1,1,1,1),(195,42,1,1,1,1),(195,43,1,1,1,1),(195,44,1,1,1,1),(195,45,1,1,1,1),(195,46,1,1,1,1),(195,47,1,1,1,1),(196,39,1,1,1,1),(196,40,1,1,1,1),(196,41,1,1,1,1),(196,42,1,1,1,1),(196,43,1,1,1,1),(196,44,1,1,1,1),(196,45,1,1,1,1),(196,46,1,1,1,1),(196,47,1,1,1,1),(197,39,1,1,1,1),(197,40,1,1,1,1),(197,41,1,1,1,1),(197,42,1,1,1,1),(197,43,1,1,1,1),(197,44,1,1,1,1),(197,45,1,1,1,1),(197,46,1,1,1,1),(197,47,1,1,1,1),(198,39,1,1,1,1),(198,40,1,1,1,1),(198,41,1,1,1,1),(198,42,1,1,1,1),(198,43,1,1,1,1),(198,44,1,1,1,1),(198,45,1,1,1,1),(198,46,1,1,1,1),(198,47,1,1,1,1),(199,39,1,1,1,1),(199,40,1,1,1,1),(199,41,1,1,1,1),(199,42,1,1,1,1),(199,43,1,1,1,1),(199,44,1,1,1,1),(199,45,1,1,1,1),(199,46,1,1,1,1),(199,47,1,1,1,1),(200,39,1,1,1,1),(200,40,1,1,1,1),(200,41,1,1,1,1),(200,42,1,1,1,1),(200,43,1,1,1,1),(200,44,1,1,1,1),(200,45,1,1,1,1),(200,46,1,1,1,1),(200,47,1,1,1,1),(201,39,1,1,1,1),(201,40,1,1,1,1),(201,41,1,1,1,1),(201,42,1,1,1,1),(201,43,1,1,1,1),(201,44,1,1,1,1),(201,45,1,1,1,1),(201,46,1,1,1,1),(201,47,1,1,1,1),(202,39,1,1,1,1),(202,40,1,1,1,1),(202,41,1,1,1,1),(202,42,1,1,1,1),(202,43,1,1,1,1),(202,44,1,1,1,1),(202,45,1,1,1,1),(202,46,1,1,1,1),(202,47,1,1,1,1),(203,39,1,1,1,1),(203,40,1,1,1,1),(203,41,1,1,1,1),(203,42,1,1,1,1),(203,43,1,1,1,1),(203,44,1,1,1,1),(203,45,1,1,1,1),(203,46,1,1,1,1),(203,47,1,1,1,1),(204,39,1,1,1,1),(204,40,1,1,1,1),(204,41,1,1,1,1),(204,42,1,1,1,1),(204,43,1,1,1,1),(204,44,1,1,1,1),(204,45,1,1,1,1),(204,46,1,1,1,1),(204,47,1,1,1,1),(205,39,1,1,1,1),(205,40,1,1,1,1),(205,41,1,1,1,1),(205,42,1,1,1,1),(205,43,1,1,1,1),(205,44,1,1,1,1),(205,45,1,1,1,1),(205,46,1,1,1,1),(205,47,1,1,1,1),(206,39,1,1,1,1),(206,40,1,1,1,1),(206,41,1,1,1,1),(206,42,1,1,1,1),(206,43,1,1,1,1),(206,44,1,1,1,1),(206,45,1,1,1,1),(206,46,1,1,1,1),(206,47,1,1,1,1),(207,39,1,1,1,1),(207,40,1,1,1,1),(207,41,1,1,1,1),(207,42,1,1,1,1),(207,43,1,1,1,1),(207,44,1,1,1,1),(207,45,1,1,1,1),(207,46,1,1,1,1),(207,47,1,1,1,1),(208,39,1,1,1,1),(208,40,1,1,1,1),(208,41,1,1,1,1),(208,42,1,1,1,1),(208,43,1,1,1,1),(208,44,1,1,1,1),(208,45,1,1,1,1),(208,46,1,1,1,1),(208,47,1,1,1,1),(209,39,1,1,1,1),(209,40,1,1,1,1),(209,41,1,1,1,1),(209,42,1,1,1,1),(209,43,1,1,1,1),(209,44,1,1,1,1),(209,45,1,1,1,1),(209,46,1,1,1,1),(209,47,1,1,1,1),(210,39,1,1,1,1),(210,40,1,1,1,1),(210,41,1,1,1,1),(210,42,1,1,1,1),(210,43,1,1,1,1),(210,44,1,1,1,1),(210,45,1,1,1,1),(210,46,1,1,1,1),(210,47,1,1,1,1),(211,39,1,1,1,1),(211,45,1,1,1,1),(211,46,1,1,1,1),(211,47,1,1,1,1),(212,39,1,1,1,1),(212,47,1,1,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,1,1,'D001',2,1,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(2,1,2,'D002',2,1,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(3,1,3,'D003',2,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(4,2,1,'V001',3,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(5,2,2,'V002',3,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(6,2,3,'V003',3,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(7,3,1,'VV001',4,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(8,3,2,'VV002',4,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(9,3,3,'VV003',4,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (190,'Dashboard','dashboard',NULL,NULL,1,NULL),(191,'Master Data',NULL,NULL,NULL,2,NULL),(192,'Transaksi',NULL,NULL,NULL,3,NULL),(193,'Laporan','laporan',NULL,NULL,4,NULL),(194,'Pengaturan',NULL,NULL,NULL,5,NULL),(195,'Kategori Menu','category_food',NULL,NULL,1,191),(196,'Kategori Kamar','category_room',NULL,NULL,2,191),(197,'Diskon','discount',NULL,NULL,NULL,194),(198,'Extra','extra',NULL,NULL,3,191),(199,'Menu','menu',NULL,NULL,4,191),(200,'Akses Pengguna','role',NULL,NULL,NULL,194),(201,'Reservasi','reservation',NULL,NULL,NULL,192),(202,'Restoran','resto',NULL,NULL,NULL,192),(203,'Kamar','room',NULL,NULL,5,191),(204,'Servis','service',NULL,NULL,6,191),(205,'Status Ruangan','status_room',NULL,NULL,7,191),(206,'Pajak','tax',NULL,NULL,NULL,194),(207,'Pengguna','user',NULL,NULL,NULL,194),(208,'Profil Saya','profile',NULL,1,NULL,194),(209,'Akun Saya','account',NULL,1,NULL,194),(210,'Profil Perusahaan','company',NULL,NULL,NULL,194),(211,'Audit','audit',NULL,NULL,NULL,194),(212,'Pelanggan','customer',NULL,NULL,NULL,191);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_room`
--

LOCK TABLES `status_room` WRITE;
/*!40000 ALTER TABLE `status_room` DISABLE KEYS */;
INSERT INTO `status_room` VALUES (1,'Tersedia','-','2019-05-06 02:22:03',14,NULL,NULL),(2,'Di Bersihkan','-','2019-05-06 02:22:03',14,NULL,NULL),(3,'Tidak Dipakai','-','2019-05-06 02:22:03',14,NULL,NULL);
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
  `type` tinyint(4) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` VALUES (1,'PPH',10,'-',0,'2019-05-06 05:26:52',14,NULL,NULL,1),(2,'Service',5,'-',1,'2019-05-06 04:35:13',14,NULL,NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (14,'0.0.0.0','admin','$2y$10$ljWogeUXrA4fEHmVG6V/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK','admin.admin@devel.com','0792 6022 340',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698631,1557113010,1),(15,'0.0.0.0','fitriani00','$2y$10$ej7R/wCuN96.x4DlsCbRb.DZ5U9eQtF5WU2sK4MsicInSA8p9D1qu','langgeng.pradipta@example.org','(+62) 219 0241 885',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698631,NULL,1),(16,'0.0.0.0','gawati82','$2y$10$ljWogeUXrA4fEHmVG6V/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK','kalim.andriani@example.com','0395 0372 342',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698631,NULL,1),(17,'0.0.0.0','halima34','$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke','ryolanda@example.net','0704 4832 1580',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698632,NULL,1),(18,'0.0.0.0','situmorang.eli','$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu','dirja.hutapea@example.net','0544 5180 2405',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698632,NULL,1),(19,'0.0.0.0','xmayasari','$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq','yuni27@example.com','(+62) 287 3607 9709',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698632,NULL,1),(20,'127.0.0.1','sandy_andryanto','$2y$10$3bc1an/MbkNBNcT7hq.gKuc.tZx9cfPlgGekZVDYs1Vsv0TwGmJ4a','sandy_andryanto32@testing.com','85759062617',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556931794,NULL,1),(21,'127.0.0.1','kaguya','$2y$10$z1O1JdqoY5tVR2yX9KDjbut0G9HcVHrBDdFWl3lZ1wZqoMisuQMCq','kaguya@test.com','303030303030',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556932135,NULL,1),(22,'127.0.0.1','sasuke','$2y$10$oVsAXhHGIyyR/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS','sasuke@test.com','858585588','f10d617dffe1d9fabfb7','$2y$10$I2Lf.mfONOlT1a7SM64nnu0e/9SZ8aDJ6Xc4JrW87yzu.mL/evCEW',NULL,NULL,NULL,NULL,NULL,1556932332,NULL,1),(23,'127.0.0.1','kakashi','$2y$10$BU439RpOOiBPyZaX2XPEiu9C1/29Ms37/K4InbY9HwWcSNxqBjWIC','kakashi@test.com','959595959',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556932363,NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (15,14,39),(16,15,40),(17,16,41),(18,17,42),(19,18,43),(20,19,44),(21,20,41),(22,20,42),(23,20,43),(34,21,40),(35,21,41),(36,21,42),(37,21,43),(38,21,44),(27,22,41),(28,23,44);
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
INSERT INTO `users_profile` VALUES (14,'Sandy','Andryanto',0,0,0,'Kebon Kopi','Kumaha Maneh Weh Lah','1991-08-31','Cimahi','uploads/b12bcfcdbcd83b38467761a35ce22153.png'),(15,'Puput','Hutapea',1,1,1,'Ut est eum voluptates quod suscipit enim suscipit. Eos est aut minus eos commodi non. Ratione omnis dolore occaecati et.','Eveniet voluptate veritatis minus sunt itaque odio. Ut ipsum corporis ut omnis et. Ut laudantium dicta dolor sunt aut.','2019-05-01','Tasikmalaya',NULL),(16,'Intan','Melani',0,0,1,'Mollitia rerum praesentium consequatur corrupti tempore accusantium error. Rem laboriosam consequatur sit aspernatur sit.','Molestiae ab eos aut consequatur. Iure ipsa iste eum quia laborum. Dolor est ut qui soluta ea.','2019-05-01','Gorontalo',NULL),(17,'Irwan','Wulandari',0,2,0,'Nemo fuga velit qui autem beatae similique nostrum. Quo dignissimos saepe iure cumque. Est aut quia facilis veritatis nemo pariatur et quibusdam. Ut tenetur ut eveniet ullam omnis.','Consequatur ullam beatae sunt quidem consectetur illum quos. Omnis quod et inventore dolorem architecto nihil. Sed mollitia et alias voluptates. Dolor reiciendis fuga ratione.','2019-05-01','Solok',NULL),(18,'Raditya','Prayoga',1,1,0,'Ducimus delectus corporis voluptatem ea totam impedit deleniti. Ut sunt quaerat distinctio ut rerum deserunt. Culpa quia molestiae dolores necessitatibus ut. Rerum deleniti consequatur quasi aut.','Architecto numquam quisquam tenetur sequi et. Quia perspiciatis at omnis et occaecati ipsa.','2019-05-01','Kotamobagu',NULL),(19,'Silvia','Mardhiyah',0,3,2,'Iusto dolore dolorem explicabo. Earum inventore repellat ab facere cumque iure temporibus. Omnis molestiae rerum adipisci et aspernatur ut adipisci. Non delectus ut debitis ut.','Veniam delectus et fugiat soluta voluptatem a unde. Dolore ab sed minima doloremque voluptate ea at. Pariatur mollitia perspiciatis vel.','2019-05-01','Madiun',NULL),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2019-05-06 16:56:05
