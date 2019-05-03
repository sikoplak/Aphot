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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audits`
--

LOCK TABLES `audits` WRITE;
/*!40000 ALTER TABLE `audits` DISABLE KEYS */;
INSERT INTO `audits` VALUES (1,20,'CREATE',1,'categories_room','[null]','{\"categories_room_id\":\"1\",\"categories_room_name\":\"sdsdsd\",\"categories_room_cost\":\"0\",\"categories_room_description\":\"ssdsd\",\"categories_room_image\":\"uploads\\/72e7f5eac104b6c8920a6805a36ccbcc.JPG\",\"categories_room_created_on\":\"2019-05-03 04:49:45\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 21:49:45','2019-05-02 21:49:45'),(2,20,'UPDATE',1,'categories_room','{\"categories_room_id\":\"1\",\"categories_room_name\":\"sdsdsd\",\"categories_room_cost\":\"0\",\"categories_room_description\":\"ssdsd\",\"categories_room_image\":\"uploads\\/72e7f5eac104b6c8920a6805a36ccbcc.JPG\",\"categories_room_created_on\":\"2019-05-03 04:49:45\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"id\":\"1\",\"name\":\"sdsdsd\",\"cost\":\"0\",\"description\":\"ssdsd\",\"image\":\"uploads\\/403c638c0374ac2159e2f04db281221d.jpg\",\"created_on\":\"2019-05-03 05:43:46\",\"created_by\":\"20\"}','http://localhost:5000/web/category_room/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 22:43:46','2019-05-02 22:43:46'),(3,20,'UPDATE',1,'extra','{\"extra_id\":\"1\",\"extra_name\":\"Hello World\",\"extra_cost\":\"1000\",\"extra_description\":\"-\",\"extra_image\":null,\"extra_created_on\":\"2019-05-16 00:00:00\",\"extra_created_by\":null,\"extra_deleted_on\":null,\"extra_deleted_by\":null}','{\"id\":\"1\",\"name\":\"Hello World\",\"cost\":\"3456\",\"description\":\"-\",\"image\":\"uploads\\/b4bc236473e2a5f7b2cd211547334b6b.jpg\",\"created_on\":\"2019-05-03 06:11:21\",\"created_by\":\"20\"}','http://localhost:5000/web/extra/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:11:21','2019-05-02 23:11:21'),(4,20,'CREATE',2,'extra','[null]','{\"extra_id\":\"2\",\"extra_name\":\"core.project\",\"extra_cost\":\"5000\",\"extra_description\":\"asdasd\",\"extra_image\":\"uploads\\/b0748ebfcdc184cd11130719c88da364.jpg\",\"extra_created_on\":\"2019-05-03 06:11:36\",\"extra_created_by\":\"20\",\"extra_deleted_on\":null,\"extra_deleted_by\":null}','http://localhost:5000/web/extra/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:11:37','2019-05-02 23:11:37'),(5,20,'DELETE',2,'extra','{\"extra_id\":\"2\",\"extra_name\":\"core.project\",\"extra_cost\":\"5000\",\"extra_description\":\"asdasd\",\"extra_image\":\"uploads\\/b0748ebfcdc184cd11130719c88da364.jpg\",\"extra_created_on\":\"2019-05-03 06:11:36\",\"extra_created_by\":\"20\",\"extra_deleted_on\":null,\"extra_deleted_by\":null}','{\"extra_id\":\"2\",\"extra_name\":\"core.project\",\"extra_cost\":\"5000\",\"extra_description\":\"asdasd\",\"extra_image\":\"uploads\\/b0748ebfcdc184cd11130719c88da364.jpg\",\"extra_created_on\":\"2019-05-03 06:11:36\",\"extra_created_by\":\"20\",\"extra_deleted_on\":\"2019-05-03 06:11:43\",\"extra_deleted_by\":\"20\"}','http://localhost:5000/web/extra/delete/2/0','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:11:43','2019-05-02 23:11:43'),(6,20,'DELETE',1,'extra','{\"extra_id\":\"1\",\"extra_name\":\"Hello World\",\"extra_cost\":\"3456\",\"extra_description\":\"-\",\"extra_image\":\"uploads\\/b4bc236473e2a5f7b2cd211547334b6b.jpg\",\"extra_created_on\":\"2019-05-03 06:11:21\",\"extra_created_by\":\"20\",\"extra_deleted_on\":null,\"extra_deleted_by\":null}','{\"extra_id\":\"1\",\"extra_name\":\"Hello World\",\"extra_cost\":\"3456\",\"extra_description\":\"-\",\"extra_image\":\"uploads\\/b4bc236473e2a5f7b2cd211547334b6b.jpg\",\"extra_created_on\":\"2019-05-03 06:11:21\",\"extra_created_by\":\"20\",\"extra_deleted_on\":\"2019-05-03 06:11:49\",\"extra_deleted_by\":\"20\"}','http://localhost:5000/api/extra/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:11:49','2019-05-02 23:11:49'),(7,20,'CREATE',2,'categories_room','[null]','{\"categories_room_id\":\"2\",\"categories_room_name\":\"core.project\",\"categories_room_cost\":\"343434\",\"categories_room_description\":\"dfwdfsdfs\",\"categories_room_image\":\"uploads\\/f2ab7b47ca70d6bf586920ecdafc8a38.jpg\",\"categories_room_created_on\":\"2019-05-03 06:16:50\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:16:50','2019-05-02 23:16:50'),(8,20,'UPDATE',2,'categories_room','{\"categories_room_id\":\"2\",\"categories_room_name\":\"core.project\",\"categories_room_cost\":\"343434\",\"categories_room_description\":\"dfwdfsdfs\",\"categories_room_image\":\"uploads\\/f2ab7b47ca70d6bf586920ecdafc8a38.jpg\",\"categories_room_created_on\":\"2019-05-03 06:16:50\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"id\":\"2\",\"name\":\"feferferf\",\"cost\":\"32222\",\"description\":\"fffff\",\"image\":\"uploads\\/652f9576ffe798de1d7c0bde899f1779.png\",\"created_on\":\"2019-05-03 06:17:08\",\"created_by\":\"20\"}','http://localhost:5000/web/category_room/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:17:08','2019-05-02 23:17:08'),(9,20,'DELETE',2,'categories_room','{\"categories_room_id\":\"2\",\"categories_room_name\":\"feferferf\",\"categories_room_cost\":\"32222\",\"categories_room_description\":\"fffff\",\"categories_room_image\":\"uploads\\/652f9576ffe798de1d7c0bde899f1779.png\",\"categories_room_created_on\":\"2019-05-03 06:17:08\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"2\",\"categories_room_name\":\"feferferf\",\"categories_room_cost\":\"32222\",\"categories_room_description\":\"fffff\",\"categories_room_image\":\"uploads\\/652f9576ffe798de1d7c0bde899f1779.png\",\"categories_room_created_on\":\"2019-05-03 06:17:08\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":\"2019-05-03 06:17:15\",\"categories_room_deleted_by\":\"20\"}','http://localhost:5000/web/category_room/delete/2/0','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:17:15','2019-05-02 23:17:15'),(10,20,'DELETE',1,'categories_room','{\"categories_room_id\":\"1\",\"categories_room_name\":\"sdsdsd\",\"categories_room_cost\":\"0\",\"categories_room_description\":\"ssdsd\",\"categories_room_image\":\"uploads\\/403c638c0374ac2159e2f04db281221d.jpg\",\"categories_room_created_on\":\"2019-05-03 05:43:46\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"1\",\"categories_room_name\":\"sdsdsd\",\"categories_room_cost\":\"0\",\"categories_room_description\":\"ssdsd\",\"categories_room_image\":\"uploads\\/403c638c0374ac2159e2f04db281221d.jpg\",\"categories_room_created_on\":\"2019-05-03 05:43:46\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":\"2019-05-03 06:18:44\",\"categories_room_deleted_by\":\"20\"}','http://localhost:5000/api/category_room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:18:44','2019-05-02 23:18:44'),(11,20,'CREATE',3,'categories_room','[null]','{\"categories_room_id\":\"3\",\"categories_room_name\":\"Kategori Kamar 001\",\"categories_room_cost\":\"500\",\"categories_room_description\":\"-\",\"categories_room_image\":\"uploads\\/a4589d00b29e8f2b4a6618445a6cc7b0.jpg\",\"categories_room_created_on\":\"2019-05-03 06:19:06\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:19:06','2019-05-02 23:19:06'),(12,20,'UPDATE',3,'categories_room','{\"categories_room_id\":\"3\",\"categories_room_name\":\"Kategori Kamar 001\",\"categories_room_cost\":\"500\",\"categories_room_description\":\"-\",\"categories_room_image\":\"uploads\\/a4589d00b29e8f2b4a6618445a6cc7b0.jpg\",\"categories_room_created_on\":\"2019-05-03 06:19:06\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"id\":\"3\",\"name\":\"Kategori Kamar 002\",\"cost\":\"1000\",\"description\":\"test\",\"image\":\"uploads\\/dd11928b4357c8eaa781063f5c0b929c.jpg\",\"created_on\":\"2019-05-03 06:19:27\",\"created_by\":\"20\"}','http://localhost:5000/web/category_room/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:19:27','2019-05-02 23:19:27'),(13,20,'CREATE',4,'categories_room','[null]','{\"categories_room_id\":\"4\",\"categories_room_name\":\"Kategori Kamar 005\",\"categories_room_cost\":\"43000\",\"categories_room_description\":\"-\",\"categories_room_image\":\"uploads\\/1c62238ee6ab778c14a36c28c453b69f.jpg\",\"categories_room_created_on\":\"2019-05-03 06:19:54\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:19:54','2019-05-02 23:19:54'),(14,20,'DELETE',4,'categories_room','{\"categories_room_id\":\"4\",\"categories_room_name\":\"Kategori Kamar 005\",\"categories_room_cost\":\"43000\",\"categories_room_description\":\"-\",\"categories_room_image\":\"uploads\\/1c62238ee6ab778c14a36c28c453b69f.jpg\",\"categories_room_created_on\":\"2019-05-03 06:19:54\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"4\",\"categories_room_name\":\"Kategori Kamar 005\",\"categories_room_cost\":\"43000\",\"categories_room_description\":\"-\",\"categories_room_image\":\"uploads\\/1c62238ee6ab778c14a36c28c453b69f.jpg\",\"categories_room_created_on\":\"2019-05-03 06:19:54\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":\"2019-05-03 06:20:00\",\"categories_room_deleted_by\":\"20\"}','http://localhost:5000/web/category_room/delete/4/0','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:20:00','2019-05-02 23:20:00'),(15,20,'DELETE',3,'categories_room','{\"categories_room_id\":\"3\",\"categories_room_name\":\"Kategori Kamar 002\",\"categories_room_cost\":\"1000\",\"categories_room_description\":\"test\",\"categories_room_image\":\"uploads\\/dd11928b4357c8eaa781063f5c0b929c.jpg\",\"categories_room_created_on\":\"2019-05-03 06:19:27\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"3\",\"categories_room_name\":\"Kategori Kamar 002\",\"categories_room_cost\":\"1000\",\"categories_room_description\":\"test\",\"categories_room_image\":\"uploads\\/dd11928b4357c8eaa781063f5c0b929c.jpg\",\"categories_room_created_on\":\"2019-05-03 06:19:27\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":\"2019-05-03 06:20:06\",\"categories_room_deleted_by\":\"20\"}','http://localhost:5000/api/category_room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:20:06','2019-05-02 23:20:06'),(16,20,'CREATE',1,'categories_food','[null]','{\"categories_food_id\":\"1\",\"categories_food_name\":\"Kategori Menu 001\",\"categories_food_description\":\"-\",\"categories_food_image\":\"uploads\\/769eb03ef2f2b9567cd0343740213852.jpg\",\"categories_food_created_on\":\"2019-05-03 06:22:21\",\"categories_food_created_by\":\"20\",\"categories_food_deleted_on\":null,\"categories_food_deleted_by\":null}','http://localhost:5000/web/category_food/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:22:21','2019-05-02 23:22:21'),(17,20,'UPDATE',1,'categories_food','{\"categories_food_id\":\"1\",\"categories_food_name\":\"Kategori Menu 001\",\"categories_food_description\":\"-\",\"categories_food_image\":\"uploads\\/769eb03ef2f2b9567cd0343740213852.jpg\",\"categories_food_created_on\":\"2019-05-03 06:22:21\",\"categories_food_created_by\":\"20\",\"categories_food_deleted_on\":null,\"categories_food_deleted_by\":null}','{\"id\":\"1\",\"name\":\"Kategori Menu 101\",\"description\":\"test\",\"image\":\"uploads\\/329f2ccbc430d95abca5b65472bfb22b.jpg\",\"created_on\":\"2019-05-03 06:22:45\",\"created_by\":\"20\"}','http://localhost:5000/web/category_food/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:22:45','2019-05-02 23:22:45'),(18,20,'CREATE',2,'categories_food','[null]','{\"categories_food_id\":\"2\",\"categories_food_name\":\"Kategori Menu 212\",\"categories_food_description\":\"-\",\"categories_food_image\":\"uploads\\/a9092461534b15fb44a5734bd5229b2d.png\",\"categories_food_created_on\":\"2019-05-03 06:23:07\",\"categories_food_created_by\":\"20\",\"categories_food_deleted_on\":null,\"categories_food_deleted_by\":null}','http://localhost:5000/web/category_food/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:23:07','2019-05-02 23:23:07'),(19,20,'DELETE',2,'categories_food','{\"categories_food_id\":\"2\",\"categories_food_name\":\"Kategori Menu 212\",\"categories_food_description\":\"-\",\"categories_food_image\":\"uploads\\/a9092461534b15fb44a5734bd5229b2d.png\",\"categories_food_created_on\":\"2019-05-03 06:23:07\",\"categories_food_created_by\":\"20\",\"categories_food_deleted_on\":null,\"categories_food_deleted_by\":null}','{\"categories_food_id\":\"2\",\"categories_food_name\":\"Kategori Menu 212\",\"categories_food_description\":\"-\",\"categories_food_image\":\"uploads\\/a9092461534b15fb44a5734bd5229b2d.png\",\"categories_food_created_on\":\"2019-05-03 06:23:07\",\"categories_food_created_by\":\"20\",\"categories_food_deleted_on\":\"2019-05-03 06:23:11\",\"categories_food_deleted_by\":\"20\"}','http://localhost:5000/web/category_food/delete/2/0','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:23:11','2019-05-02 23:23:11'),(20,20,'DELETE',1,'categories_food','{\"categories_food_id\":\"1\",\"categories_food_name\":\"Kategori Menu 101\",\"categories_food_description\":\"test\",\"categories_food_image\":\"uploads\\/329f2ccbc430d95abca5b65472bfb22b.jpg\",\"categories_food_created_on\":\"2019-05-03 06:22:45\",\"categories_food_created_by\":\"20\",\"categories_food_deleted_on\":null,\"categories_food_deleted_by\":null}','{\"categories_food_id\":\"1\",\"categories_food_name\":\"Kategori Menu 101\",\"categories_food_description\":\"test\",\"categories_food_image\":\"uploads\\/329f2ccbc430d95abca5b65472bfb22b.jpg\",\"categories_food_created_on\":\"2019-05-03 06:22:45\",\"categories_food_created_by\":\"20\",\"categories_food_deleted_on\":\"2019-05-03 06:23:18\",\"categories_food_deleted_by\":\"20\"}','http://localhost:5000/api/category_food/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:23:18','2019-05-02 23:23:18'),(21,20,'CREATE',3,'extra','[null]','{\"extra_id\":\"3\",\"extra_name\":\"Extra 001\",\"extra_cost\":\"5000\",\"extra_description\":\"-\",\"extra_image\":\"uploads\\/f05cc0d3ba4f50624aab7ac490b3e3f8.jpg\",\"extra_created_on\":\"2019-05-03 06:44:28\",\"extra_created_by\":\"20\",\"extra_deleted_on\":null,\"extra_deleted_by\":null}','http://localhost:5000/web/extra/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:44:28','2019-05-02 23:44:28'),(22,20,'CREATE',4,'extra','[null]','{\"extra_id\":\"4\",\"extra_name\":\"Extra 002\",\"extra_cost\":\"400\",\"extra_description\":\"-\",\"extra_image\":\"uploads\\/47d48b4cda940dc9107eb86c82dc6eb0.jpg\",\"extra_created_on\":\"2019-05-03 06:44:50\",\"extra_created_by\":\"20\",\"extra_deleted_on\":null,\"extra_deleted_by\":null}','http://localhost:5000/web/extra/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:44:50','2019-05-02 23:44:50'),(23,20,'DELETE',4,'extra','{\"extra_id\":\"4\",\"extra_name\":\"Extra 002\",\"extra_cost\":\"400\",\"extra_description\":\"-\",\"extra_image\":\"uploads\\/47d48b4cda940dc9107eb86c82dc6eb0.jpg\",\"extra_created_on\":\"2019-05-03 06:44:50\",\"extra_created_by\":\"20\",\"extra_deleted_on\":null,\"extra_deleted_by\":null}','{\"extra_id\":\"4\",\"extra_name\":\"Extra 002\",\"extra_cost\":\"400\",\"extra_description\":\"-\",\"extra_image\":\"uploads\\/47d48b4cda940dc9107eb86c82dc6eb0.jpg\",\"extra_created_on\":\"2019-05-03 06:44:50\",\"extra_created_by\":\"20\",\"extra_deleted_on\":\"2019-05-03 06:44:53\",\"extra_deleted_by\":\"20\"}','http://localhost:5000/web/extra/delete/4/0','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-02 23:44:53','2019-05-02 23:44:53'),(24,20,'DELETE',3,'extra','{\"extra_id\":\"3\",\"extra_name\":\"Extra 001\",\"extra_cost\":\"5000\",\"extra_description\":\"-\",\"extra_image\":\"uploads\\/f05cc0d3ba4f50624aab7ac490b3e3f8.jpg\",\"extra_created_on\":\"2019-05-03 06:44:28\",\"extra_created_by\":\"20\",\"extra_deleted_on\":null,\"extra_deleted_by\":null}','{\"extra_id\":\"3\",\"extra_name\":\"Extra 001\",\"extra_cost\":\"5000\",\"extra_description\":\"-\",\"extra_image\":\"uploads\\/f05cc0d3ba4f50624aab7ac490b3e3f8.jpg\",\"extra_created_on\":\"2019-05-03 06:44:28\",\"extra_created_by\":\"20\",\"extra_deleted_on\":\"2019-05-03 07:01:08\",\"extra_deleted_by\":\"20\"}','http://localhost:5000/api/extra/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 00:01:08','2019-05-03 00:01:08'),(25,20,'CREATE',1,'status_room','[null]','{\"status_room_id\":\"1\",\"status_room_name\":\"Status Ruangan 001\",\"status_room_description\":\"Status Ruangan 001\",\"status_room_created_on\":\"2019-05-03 07:21:26\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":null,\"status_room_deleted_by\":null}','http://localhost:5000/web/status_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 00:21:26','2019-05-03 00:21:26'),(26,20,'CREATE',2,'status_room','[null]','{\"status_room_id\":\"2\",\"status_room_name\":\"Status Ruangan 002\",\"status_room_description\":\"Status Ruangan 002\",\"status_room_created_on\":\"2019-05-03 07:22:15\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":null,\"status_room_deleted_by\":null}','http://localhost:5000/web/status_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 00:22:15','2019-05-03 00:22:15'),(27,20,'UPDATE',2,'status_room','{\"status_room_id\":\"2\",\"status_room_name\":\"Status Ruangan 002\",\"status_room_description\":\"Status Ruangan 002\",\"status_room_created_on\":\"2019-05-03 07:22:15\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":null,\"status_room_deleted_by\":null}','{\"id\":\"2\",\"name\":\"Status Ruangan 2\",\"description\":\"Status Ruangan 2\",\"created_on\":\"2019-05-03 07:22:29\",\"created_by\":\"20\"}','http://localhost:5000/web/status_room/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 00:22:29','2019-05-03 00:22:29'),(28,20,'DELETE',2,'status_room','{\"status_room_id\":\"2\",\"status_room_name\":\"Status Ruangan 2\",\"status_room_description\":\"Status Ruangan 2\",\"status_room_created_on\":\"2019-05-03 07:22:29\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":null,\"status_room_deleted_by\":null}','{\"status_room_id\":\"2\",\"status_room_name\":\"Status Ruangan 2\",\"status_room_description\":\"Status Ruangan 2\",\"status_room_created_on\":\"2019-05-03 07:22:29\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":\"2019-05-03 07:22:33\",\"status_room_deleted_by\":\"20\"}','http://localhost:5000/web/status_room/delete/2','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 00:22:34','2019-05-03 00:22:34'),(29,20,'DELETE',1,'status_room','{\"status_room_id\":\"1\",\"status_room_name\":\"Status Ruangan 001\",\"status_room_description\":\"Status Ruangan 001\",\"status_room_created_on\":\"2019-05-03 07:21:26\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":null,\"status_room_deleted_by\":null}','{\"status_room_id\":\"1\",\"status_room_name\":\"Status Ruangan 001\",\"status_room_description\":\"Status Ruangan 001\",\"status_room_created_on\":\"2019-05-03 07:21:26\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":\"2019-05-03 07:22:40\",\"status_room_deleted_by\":\"20\"}','http://localhost:5000/api/status_room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 00:22:40','2019-05-03 00:22:40'),(30,20,'CREATE',1,'services','[null]','{\"services_id\":\"1\",\"services_name\":\"Service 001\",\"services_cost\":\"100\",\"services_description\":\"-\",\"services_image\":\"uploads\\/405c772c5a38064c3ff8f51310566eae.jpg\",\"services_created_on\":\"2019-05-03 07:32:32\",\"services_created_by\":\"20\",\"services_deleted_on\":null,\"services_deleted_by\":null}','http://localhost:5000/web/service/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 00:32:32','2019-05-03 00:32:32'),(31,20,'CREATE',2,'services','[null]','{\"services_id\":\"2\",\"services_name\":\"Service 002\",\"services_cost\":\"500\",\"services_description\":\"-\",\"services_image\":\"uploads\\/5186d848e96afd6f9df862407548f670.jpg\",\"services_created_on\":\"2019-05-03 07:32:49\",\"services_created_by\":\"20\",\"services_deleted_on\":null,\"services_deleted_by\":null}','http://localhost:5000/web/service/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 00:32:49','2019-05-03 00:32:49'),(32,20,'UPDATE',2,'services','{\"services_id\":\"2\",\"services_name\":\"Service 002\",\"services_cost\":\"500\",\"services_description\":\"-\",\"services_image\":\"uploads\\/5186d848e96afd6f9df862407548f670.jpg\",\"services_created_on\":\"2019-05-03 07:32:49\",\"services_created_by\":\"20\",\"services_deleted_on\":null,\"services_deleted_by\":null}','{\"id\":\"2\",\"name\":\"Service 212\",\"cost\":\"1000\",\"description\":\"test\",\"image\":\"uploads\\/3f536b5b9ce2165d4767d55b6d7317b2.jpg\",\"created_on\":\"2019-05-03 07:33:14\",\"created_by\":\"20\"}','http://localhost:5000/web/service/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 00:33:14','2019-05-03 00:33:14'),(33,20,'DELETE',2,'services','{\"services_id\":\"2\",\"services_name\":\"Service 212\",\"services_cost\":\"1000\",\"services_description\":\"test\",\"services_image\":\"uploads\\/3f536b5b9ce2165d4767d55b6d7317b2.jpg\",\"services_created_on\":\"2019-05-03 07:33:14\",\"services_created_by\":\"20\",\"services_deleted_on\":null,\"services_deleted_by\":null}','{\"services_id\":\"2\",\"services_name\":\"Service 212\",\"services_cost\":\"1000\",\"services_description\":\"test\",\"services_image\":\"uploads\\/3f536b5b9ce2165d4767d55b6d7317b2.jpg\",\"services_created_on\":\"2019-05-03 07:33:14\",\"services_created_by\":\"20\",\"services_deleted_on\":\"2019-05-03 07:33:19\",\"services_deleted_by\":\"20\"}','http://localhost:5000/web/service/delete/2','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 00:33:19','2019-05-03 00:33:19'),(34,20,'DELETE',1,'services','{\"services_id\":\"1\",\"services_name\":\"Service 001\",\"services_cost\":\"100\",\"services_description\":\"-\",\"services_image\":\"uploads\\/405c772c5a38064c3ff8f51310566eae.jpg\",\"services_created_on\":\"2019-05-03 07:32:32\",\"services_created_by\":\"20\",\"services_deleted_on\":null,\"services_deleted_by\":null}','{\"services_id\":\"1\",\"services_name\":\"Service 001\",\"services_cost\":\"100\",\"services_description\":\"-\",\"services_image\":\"uploads\\/405c772c5a38064c3ff8f51310566eae.jpg\",\"services_created_on\":\"2019-05-03 07:32:32\",\"services_created_by\":\"20\",\"services_deleted_on\":\"2019-05-03 07:33:53\",\"services_deleted_by\":\"20\"}','http://localhost:5000/api/service/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 00:33:53','2019-05-03 00:33:53'),(35,20,'DELETE',0,'rooms','null','null','http://localhost:5000/api/room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 00:51:04','2019-05-03 00:51:04'),(36,20,'DELETE',1,'rooms','{\"rooms_id\":\"1\",\"rooms_category_id\":\"3\",\"rooms_status_id\":\"1\",\"rooms_number\":\"Kamar 001\",\"rooms_capacity\":\"20\",\"rooms_occupant\":\"10\",\"rooms_description\":\"-\",\"rooms_image\":null,\"rooms_created_on\":null,\"rooms_created_by\":null,\"rooms_deleted_on\":null,\"rooms_deleted_by\":null,\"categories_room_id\":\"3\",\"categories_room_name\":\"Kategori Kamar 002\",\"categories_room_cost\":\"1000\",\"categories_room_description\":\"test\",\"categories_room_image\":\"uploads\\/dd11928b4357c8eaa781063f5c0b929c.jpg\",\"categories_room_created_on\":\"2019-05-03 06:19:27\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":\"2019-05-03 06:20:06\",\"categories_room_deleted_by\":\"20\",\"status_room_id\":\"1\",\"status_room_name\":\"Status Ruangan 001\",\"status_room_description\":\"Status Ruangan 001\",\"status_room_created_on\":\"2019-05-03 07:21:26\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":\"2019-05-03 07:22:40\",\"status_room_deleted_by\":\"20\"}','{\"rooms_id\":\"1\",\"rooms_category_id\":\"3\",\"rooms_status_id\":\"1\",\"rooms_number\":\"Kamar 001\",\"rooms_capacity\":\"20\",\"rooms_occupant\":\"10\",\"rooms_description\":\"-\",\"rooms_image\":null,\"rooms_created_on\":null,\"rooms_created_by\":null,\"rooms_deleted_on\":\"2019-05-03 07:53:13\",\"rooms_deleted_by\":\"20\",\"categories_room_id\":\"3\",\"categories_room_name\":\"Kategori Kamar 002\",\"categories_room_cost\":\"1000\",\"categories_room_description\":\"test\",\"categories_room_image\":\"uploads\\/dd11928b4357c8eaa781063f5c0b929c.jpg\",\"categories_room_created_on\":\"2019-05-03 06:19:27\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":\"2019-05-03 06:20:06\",\"categories_room_deleted_by\":\"20\",\"status_room_id\":\"1\",\"status_room_name\":\"Status Ruangan 001\",\"status_room_description\":\"Status Ruangan 001\",\"status_room_created_on\":\"2019-05-03 07:21:26\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":\"2019-05-03 07:22:40\",\"status_room_deleted_by\":\"20\"}','http://localhost:5000/api/room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 00:53:13','2019-05-03 00:53:13'),(37,20,'DELETE',2,'rooms','{\"rooms_id\":\"2\",\"rooms_category_id\":\"4\",\"rooms_status_id\":\"2\",\"rooms_number\":\"Kamar 002\",\"rooms_capacity\":\"200\",\"rooms_occupant\":\"10\",\"rooms_description\":null,\"rooms_image\":null,\"rooms_created_on\":null,\"rooms_created_by\":null,\"rooms_deleted_on\":null,\"rooms_deleted_by\":null,\"categories_room_id\":\"4\",\"categories_room_name\":\"Kategori Kamar 005\",\"categories_room_cost\":\"43000\",\"categories_room_description\":\"-\",\"categories_room_image\":\"uploads\\/1c62238ee6ab778c14a36c28c453b69f.jpg\",\"categories_room_created_on\":\"2019-05-03 06:19:54\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":\"2019-05-03 06:20:00\",\"categories_room_deleted_by\":\"20\",\"status_room_id\":\"2\",\"status_room_name\":\"Status Ruangan 2\",\"status_room_description\":\"Status Ruangan 2\",\"status_room_created_on\":\"2019-05-03 07:22:29\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":\"2019-05-03 07:22:33\",\"status_room_deleted_by\":\"20\"}','{\"rooms_id\":\"2\",\"rooms_category_id\":\"4\",\"rooms_status_id\":\"2\",\"rooms_number\":\"Kamar 002\",\"rooms_capacity\":\"200\",\"rooms_occupant\":\"10\",\"rooms_description\":null,\"rooms_image\":null,\"rooms_created_on\":null,\"rooms_created_by\":null,\"rooms_deleted_on\":\"2019-05-03 07:53:16\",\"rooms_deleted_by\":\"20\",\"categories_room_id\":\"4\",\"categories_room_name\":\"Kategori Kamar 005\",\"categories_room_cost\":\"43000\",\"categories_room_description\":\"-\",\"categories_room_image\":\"uploads\\/1c62238ee6ab778c14a36c28c453b69f.jpg\",\"categories_room_created_on\":\"2019-05-03 06:19:54\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":\"2019-05-03 06:20:00\",\"categories_room_deleted_by\":\"20\",\"status_room_id\":\"2\",\"status_room_name\":\"Status Ruangan 2\",\"status_room_description\":\"Status Ruangan 2\",\"status_room_created_on\":\"2019-05-03 07:22:29\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":\"2019-05-03 07:22:33\",\"status_room_deleted_by\":\"20\"}','http://localhost:5000/api/room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 00:53:16','2019-05-03 00:53:16'),(38,20,'CREATE',5,'categories_room','[null]','{\"categories_room_id\":\"5\",\"categories_room_name\":\"Delux\",\"categories_room_cost\":\"150000\",\"categories_room_description\":\"-\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-03 08:23:07\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 01:23:07','2019-05-03 01:23:07'),(39,20,'CREATE',6,'categories_room','[null]','{\"categories_room_id\":\"6\",\"categories_room_name\":\"VIP\",\"categories_room_cost\":\"200000\",\"categories_room_description\":\"-\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-03 08:23:22\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 01:23:22','2019-05-03 01:23:22'),(40,20,'CREATE',7,'categories_room','[null]','{\"categories_room_id\":\"7\",\"categories_room_name\":\"VVIP\",\"categories_room_cost\":\"300000\",\"categories_room_description\":\"-\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-03 08:23:39\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 01:23:39','2019-05-03 01:23:39'),(41,20,'CREATE',3,'status_room','[null]','{\"status_room_id\":\"3\",\"status_room_name\":\"Ready\",\"status_room_description\":\"-\",\"status_room_created_on\":\"2019-05-03 08:24:02\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":null,\"status_room_deleted_by\":null}','http://localhost:5000/web/status_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 01:24:03','2019-05-03 01:24:03'),(42,20,'CREATE',4,'status_room','[null]','{\"status_room_id\":\"4\",\"status_room_name\":\"Perbaikan\",\"status_room_description\":\"-\",\"status_room_created_on\":\"2019-05-03 08:24:14\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":null,\"status_room_deleted_by\":null}','http://localhost:5000/web/status_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 01:24:14','2019-05-03 01:24:14'),(43,20,'CREATE',5,'status_room','[null]','{\"status_room_id\":\"5\",\"status_room_name\":\"Reserved\",\"status_room_description\":\"-\",\"status_room_created_on\":\"2019-05-03 08:24:30\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":null,\"status_room_deleted_by\":null}','http://localhost:5000/web/status_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 01:24:30','2019-05-03 01:24:30'),(44,20,'CREATE',3,'rooms','[null]','{\"rooms_id\":\"3\",\"rooms_category_id\":\"5\",\"rooms_status_id\":\"3\",\"rooms_number\":\"KM001\",\"rooms_capacity\":\"100\",\"rooms_occupant\":\"0\",\"rooms_description\":\"-\",\"rooms_image\":\"uploads\\/6154edfb6ef35465914d5b9b56213720.jpg\",\"rooms_created_on\":\"2019-05-03 08:25:01\",\"rooms_created_by\":\"20\",\"rooms_deleted_on\":null,\"rooms_deleted_by\":null,\"categories_room_id\":\"5\",\"categories_room_name\":\"Delux\",\"categories_room_cost\":\"150000\",\"categories_room_description\":\"-\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-03 08:23:07\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null,\"status_room_id\":\"3\",\"status_room_name\":\"Ready\",\"status_room_description\":\"-\",\"status_room_created_on\":\"2019-05-03 08:24:02\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":null,\"status_room_deleted_by\":null}','http://localhost:5000/web/room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 01:25:02','2019-05-03 01:25:02'),(45,20,'UPDATE',3,'rooms','{\"rooms_id\":\"3\",\"rooms_category_id\":\"5\",\"rooms_status_id\":\"3\",\"rooms_number\":\"KM001\",\"rooms_capacity\":\"100\",\"rooms_occupant\":\"0\",\"rooms_description\":\"-\",\"rooms_image\":\"uploads\\/6154edfb6ef35465914d5b9b56213720.jpg\",\"rooms_created_on\":\"2019-05-03 08:25:01\",\"rooms_created_by\":\"20\",\"rooms_deleted_on\":null,\"rooms_deleted_by\":null,\"categories_room_id\":\"5\",\"categories_room_name\":\"Delux\",\"categories_room_cost\":\"150000\",\"categories_room_description\":\"-\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-03 08:23:07\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null,\"status_room_id\":\"3\",\"status_room_name\":\"Ready\",\"status_room_description\":\"-\",\"status_room_created_on\":\"2019-05-03 08:24:02\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":null,\"status_room_deleted_by\":null}','{\"id\":\"3\",\"number\":\"RM212\",\"category_id\":\"7\",\"status_id\":\"4\",\"capacity\":\"50\",\"occupant\":\"400\",\"description\":\"-\",\"image\":\"uploads\\/5c68f4dc2ef0ecee137eb14322c787f1.jpg\",\"created_on\":\"2019-05-03 08:33:46\",\"created_by\":\"20\"}','http://localhost:5000/web/room/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 01:33:46','2019-05-03 01:33:46'),(46,20,'CREATE',4,'rooms','[null]','{\"rooms_id\":\"4\",\"rooms_category_id\":\"6\",\"rooms_status_id\":\"3\",\"rooms_number\":\"RM231\",\"rooms_capacity\":\"40\",\"rooms_occupant\":\"0\",\"rooms_description\":\"-\",\"rooms_image\":\"uploads\\/a0dfab762bb1616085f78eb5804b1546.jpg\",\"rooms_created_on\":\"2019-05-03 08:34:10\",\"rooms_created_by\":\"20\",\"rooms_deleted_on\":null,\"rooms_deleted_by\":null,\"categories_room_id\":\"6\",\"categories_room_name\":\"VIP\",\"categories_room_cost\":\"200000\",\"categories_room_description\":\"-\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-03 08:23:22\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null,\"status_room_id\":\"3\",\"status_room_name\":\"Ready\",\"status_room_description\":\"-\",\"status_room_created_on\":\"2019-05-03 08:24:02\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":null,\"status_room_deleted_by\":null}','http://localhost:5000/web/room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 01:34:10','2019-05-03 01:34:10'),(47,20,'DELETE',4,'rooms','{\"rooms_id\":\"4\",\"rooms_category_id\":\"6\",\"rooms_status_id\":\"3\",\"rooms_number\":\"RM231\",\"rooms_capacity\":\"40\",\"rooms_occupant\":\"0\",\"rooms_description\":\"-\",\"rooms_image\":\"uploads\\/a0dfab762bb1616085f78eb5804b1546.jpg\",\"rooms_created_on\":\"2019-05-03 08:34:10\",\"rooms_created_by\":\"20\",\"rooms_deleted_on\":null,\"rooms_deleted_by\":null,\"categories_room_id\":\"6\",\"categories_room_name\":\"VIP\",\"categories_room_cost\":\"200000\",\"categories_room_description\":\"-\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-03 08:23:22\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null,\"status_room_id\":\"3\",\"status_room_name\":\"Ready\",\"status_room_description\":\"-\",\"status_room_created_on\":\"2019-05-03 08:24:02\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":null,\"status_room_deleted_by\":null}','{\"rooms_id\":\"4\",\"rooms_category_id\":\"6\",\"rooms_status_id\":\"3\",\"rooms_number\":\"RM231\",\"rooms_capacity\":\"40\",\"rooms_occupant\":\"0\",\"rooms_description\":\"-\",\"rooms_image\":\"uploads\\/a0dfab762bb1616085f78eb5804b1546.jpg\",\"rooms_created_on\":\"2019-05-03 08:34:10\",\"rooms_created_by\":\"20\",\"rooms_deleted_on\":\"2019-05-03 08:34:17\",\"rooms_deleted_by\":\"20\",\"categories_room_id\":\"6\",\"categories_room_name\":\"VIP\",\"categories_room_cost\":\"200000\",\"categories_room_description\":\"-\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-03 08:23:22\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null,\"status_room_id\":\"3\",\"status_room_name\":\"Ready\",\"status_room_description\":\"-\",\"status_room_created_on\":\"2019-05-03 08:24:02\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":null,\"status_room_deleted_by\":null}','http://localhost:5000/web/room/delete/4','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 01:34:18','2019-05-03 01:34:18'),(48,20,'DELETE',3,'rooms','{\"rooms_id\":\"3\",\"rooms_category_id\":\"7\",\"rooms_status_id\":\"4\",\"rooms_number\":\"RM212\",\"rooms_capacity\":\"50\",\"rooms_occupant\":\"400\",\"rooms_description\":\"-\",\"rooms_image\":\"uploads\\/5c68f4dc2ef0ecee137eb14322c787f1.jpg\",\"rooms_created_on\":\"2019-05-03 08:33:46\",\"rooms_created_by\":\"20\",\"rooms_deleted_on\":null,\"rooms_deleted_by\":null,\"categories_room_id\":\"7\",\"categories_room_name\":\"VVIP\",\"categories_room_cost\":\"300000\",\"categories_room_description\":\"-\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-03 08:23:39\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null,\"status_room_id\":\"4\",\"status_room_name\":\"Perbaikan\",\"status_room_description\":\"-\",\"status_room_created_on\":\"2019-05-03 08:24:14\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":null,\"status_room_deleted_by\":null}','{\"rooms_id\":\"3\",\"rooms_category_id\":\"7\",\"rooms_status_id\":\"4\",\"rooms_number\":\"RM212\",\"rooms_capacity\":\"50\",\"rooms_occupant\":\"400\",\"rooms_description\":\"-\",\"rooms_image\":\"uploads\\/5c68f4dc2ef0ecee137eb14322c787f1.jpg\",\"rooms_created_on\":\"2019-05-03 08:33:46\",\"rooms_created_by\":\"20\",\"rooms_deleted_on\":\"2019-05-03 08:34:24\",\"rooms_deleted_by\":\"20\",\"categories_room_id\":\"7\",\"categories_room_name\":\"VVIP\",\"categories_room_cost\":\"300000\",\"categories_room_description\":\"-\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-03 08:23:39\",\"categories_room_created_by\":\"20\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null,\"status_room_id\":\"4\",\"status_room_name\":\"Perbaikan\",\"status_room_description\":\"-\",\"status_room_created_on\":\"2019-05-03 08:24:14\",\"status_room_created_by\":\"20\",\"status_room_deleted_on\":null,\"status_room_deleted_by\":null}','http://localhost:5000/api/room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 01:34:24','2019-05-03 01:34:24'),(49,20,'CREATE',3,'categories_food','[null]','{\"categories_food_id\":\"3\",\"categories_food_name\":\"Makanan Asia\",\"categories_food_description\":\"-\",\"categories_food_image\":\"uploads\\/4912311c9e2f60d6d1961bf088d557ca.jpg\",\"categories_food_created_on\":\"2019-05-03 08:51:10\",\"categories_food_created_by\":\"20\",\"categories_food_deleted_on\":null,\"categories_food_deleted_by\":null}','http://localhost:5000/web/category_food/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 01:51:10','2019-05-03 01:51:10'),(50,20,'CREATE',1,'foods','[null]','{\"foods_id\":\"1\",\"foods_category_id\":\"3\",\"foods_name\":\"Nasi Goreng\",\"foods_description\":\"-\",\"foods_image\":\"uploads\\/aea8224a5b59efd26252707ea6c9b486.jpg\",\"foods_cost\":\"5000\",\"foods_created_on\":\"2019-05-03 08:54:06\",\"foods_created_by\":\"20\",\"foods_deleted_on\":null,\"foods_deleted_by\":null,\"categories_food_id\":\"3\",\"categories_food_name\":\"Makanan Asia\",\"categories_food_description\":\"-\",\"categories_food_image\":\"uploads\\/4912311c9e2f60d6d1961bf088d557ca.jpg\",\"categories_food_created_on\":\"2019-05-03 08:51:10\",\"categories_food_created_by\":\"20\",\"categories_food_deleted_on\":null,\"categories_food_deleted_by\":null}','http://localhost:5000/web/menu/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 01:54:06','2019-05-03 01:54:06'),(51,20,'UPDATE',1,'foods','{\"foods_id\":\"1\",\"foods_category_id\":\"3\",\"foods_name\":\"Nasi Goreng\",\"foods_description\":\"-\",\"foods_image\":\"uploads\\/aea8224a5b59efd26252707ea6c9b486.jpg\",\"foods_cost\":\"5000\",\"foods_created_on\":\"2019-05-03 08:54:06\",\"foods_created_by\":\"20\",\"foods_deleted_on\":null,\"foods_deleted_by\":null,\"categories_food_id\":\"3\",\"categories_food_name\":\"Makanan Asia\",\"categories_food_description\":\"-\",\"categories_food_image\":\"uploads\\/4912311c9e2f60d6d1961bf088d557ca.jpg\",\"categories_food_created_on\":\"2019-05-03 08:51:10\",\"categories_food_created_by\":\"20\",\"categories_food_deleted_on\":null,\"categories_food_deleted_by\":null}','{\"id\":\"1\",\"name\":\"Kebab\",\"category_id\":\"3\",\"cost\":\"10000\",\"description\":\"test\",\"image\":\"uploads\\/d3d8a78ae12d81284b6a18eafc896743.jpg\",\"created_on\":\"2019-05-03 09:04:51\",\"created_by\":\"20\"}','http://localhost:5000/web/menu/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 02:04:51','2019-05-03 02:04:51'),(52,20,'DELETE',1,'foods','{\"foods_id\":\"1\",\"foods_category_id\":\"3\",\"foods_name\":\"Kebab\",\"foods_description\":\"test\",\"foods_image\":\"uploads\\/d3d8a78ae12d81284b6a18eafc896743.jpg\",\"foods_cost\":\"10000\",\"foods_created_on\":\"2019-05-03 09:04:51\",\"foods_created_by\":\"20\",\"foods_deleted_on\":null,\"foods_deleted_by\":null,\"categories_food_id\":\"3\",\"categories_food_name\":\"Makanan Asia\",\"categories_food_description\":\"-\",\"categories_food_image\":\"uploads\\/4912311c9e2f60d6d1961bf088d557ca.jpg\",\"categories_food_created_on\":\"2019-05-03 08:51:10\",\"categories_food_created_by\":\"20\",\"categories_food_deleted_on\":null,\"categories_food_deleted_by\":null}','{\"foods_id\":\"1\",\"foods_category_id\":\"3\",\"foods_name\":\"Kebab\",\"foods_description\":\"test\",\"foods_image\":\"uploads\\/d3d8a78ae12d81284b6a18eafc896743.jpg\",\"foods_cost\":\"10000\",\"foods_created_on\":\"2019-05-03 09:04:51\",\"foods_created_by\":\"20\",\"foods_deleted_on\":\"2019-05-03 09:04:57\",\"foods_deleted_by\":\"20\",\"categories_food_id\":\"3\",\"categories_food_name\":\"Makanan Asia\",\"categories_food_description\":\"-\",\"categories_food_image\":\"uploads\\/4912311c9e2f60d6d1961bf088d557ca.jpg\",\"categories_food_created_on\":\"2019-05-03 08:51:10\",\"categories_food_created_by\":\"20\",\"categories_food_deleted_on\":null,\"categories_food_deleted_by\":null}','http://localhost:5000/web/menu/delete/1','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 02:04:57','2019-05-03 02:04:57');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_food`
--

LOCK TABLES `categories_food` WRITE;
/*!40000 ALTER TABLE `categories_food` DISABLE KEYS */;
INSERT INTO `categories_food` VALUES (1,'Kategori Menu 101','test','uploads/329f2ccbc430d95abca5b65472bfb22b.jpg','2019-05-03 06:22:45',20,'2019-05-03 06:23:18',20),(2,'Kategori Menu 212','-','uploads/a9092461534b15fb44a5734bd5229b2d.png','2019-05-03 06:23:07',20,'2019-05-03 06:23:11',20),(3,'Makanan Asia','-','uploads/4912311c9e2f60d6d1961bf088d557ca.jpg','2019-05-03 08:51:10',20,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_room`
--

LOCK TABLES `categories_room` WRITE;
/*!40000 ALTER TABLE `categories_room` DISABLE KEYS */;
INSERT INTO `categories_room` VALUES (1,'sdsdsd',0,'ssdsd','uploads/403c638c0374ac2159e2f04db281221d.jpg','2019-05-03 05:43:46',20,'2019-05-03 06:18:44',20),(2,'feferferf',32222,'fffff','uploads/652f9576ffe798de1d7c0bde899f1779.png','2019-05-03 06:17:08',20,'2019-05-03 06:17:15',20),(3,'Kategori Kamar 002',1000,'test','uploads/dd11928b4357c8eaa781063f5c0b929c.jpg','2019-05-03 06:19:27',20,'2019-05-03 06:20:06',20),(4,'Kategori Kamar 005',43000,'-','uploads/1c62238ee6ab778c14a36c28c453b69f.jpg','2019-05-03 06:19:54',20,'2019-05-03 06:20:00',20),(5,'Delux',150000,'-',NULL,'2019-05-03 08:23:07',20,NULL,NULL),(6,'VIP',200000,'-',NULL,'2019-05-03 08:23:22',20,NULL,NULL),(7,'VVIP',300000,'-',NULL,'2019-05-03 08:23:39',20,NULL,NULL);
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
INSERT INTO `ci_sessions` VALUES ('vdme7qv1i12jvf9j56c2ic3f8sbber5p','127.0.0.1',1556868592,'__ci_last_regenerate|i:1556868592;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('qnh2tqb0jce5vgh43ljjqeae4ej24df1','127.0.0.1',1556868072,'__ci_last_regenerate|i:1556868072;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('0q6d0mlcs0rr3dnuqc2b5hkvorr183ar','127.0.0.1',1556858318,'__ci_last_regenerate|i:1556858318;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('f9jao5d68basl4rm6pu3ef1ng0k23lv2','127.0.0.1',1556858974,'__ci_last_regenerate|i:1556858974;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('d8jrrudcvdkp1aaks829d3d281m32jjd','127.0.0.1',1556861191,'__ci_last_regenerate|i:1556861191;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;success|s:20:\"Berhasil simpan data\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('2b6lb9umpbiaqc0gdmuejg91brkjng43','127.0.0.1',1556861498,'__ci_last_regenerate|i:1556861498;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('vroajj289re2di6pa5pkkmh52fl7u5o8','127.0.0.1',1556862080,'__ci_last_regenerate|i:1556862080;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('jm657c96rl14lv16leo5jlhc8mbblnkf','127.0.0.1',1556863307,'__ci_last_regenerate|i:1556863307;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('caauqul99rj78h8np51pcv8c3r8dj3ii','127.0.0.1',1556863654,'__ci_last_regenerate|i:1556863654;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('cr7iujdtadhr2f3419etgb4o05s6por1','127.0.0.1',1556864148,'__ci_last_regenerate|i:1556864148;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('0lgp4fpfe8gr7pe8fupgfecme19dvhu3','127.0.0.1',1556864475,'__ci_last_regenerate|i:1556864475;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('hnt0odtqg79f8rrjilklfumbkb4i8ubh','127.0.0.1',1556865813,'__ci_last_regenerate|i:1556865813;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('f24a20eqq45t4inh1ivfcpljmrv83u6i','127.0.0.1',1556866860,'__ci_last_regenerate|i:1556866860;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('m1ahbfd9vh5vbsjidhf658016qoh2cc3','127.0.0.1',1556867699,'__ci_last_regenerate|i:1556867699;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('ghsjv8hobvcfoescr0mgeoid67t4vqmv','127.0.0.1',1556869483,'__ci_last_regenerate|i:1556869483;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('876o3scav7p8mggt6btkfe3gadp34sdg','127.0.0.1',1556869793,'__ci_last_regenerate|i:1556869793;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('8vsehfu5g51quq2ndgiug89r600962s1','127.0.0.1',1556870180,'__ci_last_regenerate|i:1556870180;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('6969t115ak227unab7udcruq3kchum95','127.0.0.1',1556870575,'__ci_last_regenerate|i:1556870575;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('68pmqjod15jeo57le3qi8cr7him8pvbb','127.0.0.1',1556870876,'__ci_last_regenerate|i:1556870876;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('e1g1gp3kq3r70ctfojij435el5ce09cc','127.0.0.1',1556871184,'__ci_last_regenerate|i:1556871184;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('pnie4catg82cad0n69f57h04me3h7dca','127.0.0.1',1556871560,'__ci_last_regenerate|i:1556871560;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('cmmlagg6sdi1k0dnob355quco6lfevdd','127.0.0.1',1556871870,'__ci_last_regenerate|i:1556871870;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('ovtcgdt73n1vhu6lpqfki8cms3p5l52b','127.0.0.1',1556872183,'__ci_last_regenerate|i:1556872183;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('nvrcqnb57mqol7fp7qvumhevss230ed1','127.0.0.1',1556872950,'__ci_last_regenerate|i:1556872950;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('v7vadqo56egfm2qe5jhde57u0mienltp','127.0.0.1',1556873382,'__ci_last_regenerate|i:1556873382;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('ns995qplgca8f3l8e80ao9logb74ucan','127.0.0.1',1556873688,'__ci_last_regenerate|i:1556873688;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;success|s:20:\"Berhasil simpan data\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}'),('7tu16fc0041jjfio8firof1gsr3ufvib','127.0.0.1',1556874151,'__ci_last_regenerate|i:1556874151;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;'),('3d523udfsqn4poh9sasbpcpc5qr667jn','127.0.0.1',1556874331,'__ci_last_regenerate|i:1556874151;identity|s:21:\"super.admin@devel.com\";email|s:21:\"super.admin@devel.com\";user_id|s:2:\"20\";old_last_login|s:10:\"1556744616\";last_check|i:1556858318;');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra`
--

LOCK TABLES `extra` WRITE;
/*!40000 ALTER TABLE `extra` DISABLE KEYS */;
INSERT INTO `extra` VALUES (1,'Hello World',3456,'-','uploads/b4bc236473e2a5f7b2cd211547334b6b.jpg','2019-05-03 06:11:21',20,'2019-05-03 06:11:49',20),(2,'core.project',5000,'asdasd','uploads/b0748ebfcdc184cd11130719c88da364.jpg','2019-05-03 06:11:36',20,'2019-05-03 06:11:43',20),(3,'Extra 001',5000,'-','uploads/f05cc0d3ba4f50624aab7ac490b3e3f8.jpg','2019-05-03 06:44:28',20,'2019-05-03 07:01:08',20),(4,'Extra 002',400,'-','uploads/47d48b4cda940dc9107eb86c82dc6eb0.jpg','2019-05-03 06:44:50',20,'2019-05-03 06:44:53',20);
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
INSERT INTO `foods` VALUES (1,3,'Kebab','test','uploads/d3d8a78ae12d81284b6a18eafc896743.jpg',10000,'2019-05-03 09:04:51',20,'2019-05-03 09:04:57',20);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (45,'admin','ADMIN'),(46,'receptionst','RECEPTIONST'),(47,'manager','MANAGER'),(48,'director','DIRECTOR'),(49,'supervisor','SUPERVISOR'),(50,'engineer','ENGINEER');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
INSERT INTO `permissions` VALUES (211,45,1,1,1,1),(211,46,0,0,1,0),(211,47,0,0,1,0),(211,48,0,0,1,0),(211,49,0,0,1,0),(211,50,0,0,1,0),(212,45,1,1,1,1),(212,46,0,0,1,0),(212,47,0,0,1,0),(212,48,0,0,1,0),(212,49,0,0,1,0),(212,50,0,0,1,0),(213,45,1,1,1,1),(213,46,0,0,1,0),(213,47,0,0,1,0),(213,48,0,0,1,0),(213,49,0,0,1,0),(213,50,0,0,1,0),(214,45,1,1,1,1),(214,46,0,0,1,0),(214,47,0,0,1,0),(214,48,0,0,1,0),(214,49,0,0,1,0),(214,50,0,0,1,0),(215,45,1,1,1,1),(215,46,0,0,1,0),(215,47,0,0,1,0),(215,48,0,0,1,0),(215,49,0,0,1,0),(215,50,0,0,1,0),(216,45,1,1,1,1),(216,46,0,0,1,0),(216,47,0,0,1,0),(216,48,0,0,1,0),(216,49,0,0,1,0),(216,50,0,0,1,0),(217,45,1,1,1,1),(217,46,0,0,1,0),(217,47,0,0,1,0),(217,48,0,0,1,0),(217,49,0,0,1,0),(217,50,0,0,1,0),(218,45,1,1,1,1),(218,46,0,0,1,0),(218,47,0,0,1,0),(218,48,0,0,1,0),(218,49,0,0,1,0),(218,50,0,0,1,0),(219,45,1,1,1,1),(219,46,0,0,1,0),(219,47,0,0,1,0),(219,48,0,0,1,0),(219,49,0,0,1,0),(219,50,0,0,1,0),(220,45,1,1,1,1),(220,46,0,0,1,0),(220,47,0,0,1,0),(220,48,0,0,1,0),(220,49,0,0,1,0),(220,50,0,0,1,0),(221,45,1,1,1,1),(221,46,0,0,1,0),(221,47,0,0,1,0),(221,48,0,0,1,0),(221,49,0,0,1,0),(221,50,0,0,1,0),(222,45,1,1,1,1),(222,46,0,0,1,0),(222,47,0,0,1,0),(222,48,0,0,1,0),(222,49,0,0,1,0),(222,50,0,0,1,0),(223,45,1,1,1,1),(223,46,0,0,1,0),(223,47,0,0,1,0),(223,48,0,0,1,0),(223,49,0,0,1,0),(223,50,0,0,1,0),(224,45,1,1,1,1),(224,46,0,0,1,0),(224,47,0,0,1,0),(224,48,0,0,1,0),(224,49,0,0,1,0),(224,50,0,0,1,0),(225,45,1,1,1,1),(225,46,0,0,1,0),(225,47,0,0,1,0),(225,48,0,0,1,0),(225,49,0,0,1,0),(225,50,0,0,1,0),(226,45,1,1,1,1),(226,46,0,0,1,0),(226,47,0,0,1,0),(226,48,0,0,1,0),(226,49,0,0,1,0),(226,50,0,0,1,0),(227,45,1,1,1,1),(227,46,0,0,1,0),(227,47,0,0,1,0),(227,48,0,0,1,0),(227,49,0,0,1,0),(227,50,0,0,1,0),(228,45,1,1,1,1),(228,46,0,0,1,0),(228,47,0,0,1,0),(228,48,0,0,1,0),(228,49,0,0,1,0),(228,50,0,0,1,0),(229,45,1,1,1,1),(229,46,0,0,1,0),(229,47,0,0,1,0),(229,48,0,0,1,0),(229,49,0,0,1,0),(229,50,0,0,1,0),(230,45,1,1,1,1),(230,46,0,0,1,0),(230,47,0,0,1,0),(230,48,0,0,1,0),(230,49,0,0,1,0),(230,50,0,0,1,0),(231,45,1,1,1,1),(231,46,0,0,1,0),(231,47,0,0,1,0),(231,48,0,0,1,0),(231,49,0,0,1,0),(231,50,0,0,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (3,7,4,'RM212',50,400,'-','uploads/5c68f4dc2ef0ecee137eb14322c787f1.jpg','2019-05-03 08:33:46',20,'2019-05-03 08:34:24',20),(4,6,3,'RM231',40,0,'-','uploads/a0dfab762bb1616085f78eb5804b1546.jpg','2019-05-03 08:34:10',20,'2019-05-03 08:34:17',20);
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
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (211,'Dashboard','dashboard',NULL,NULL,NULL,NULL),(212,'Master Data',NULL,NULL,NULL,NULL,NULL),(213,'Transaksi',NULL,NULL,NULL,NULL,NULL),(214,'Laporan','laporan',NULL,NULL,NULL,NULL),(215,'Pengaturan',NULL,NULL,NULL,NULL,NULL),(216,'Kategori Menu','category_food',NULL,NULL,NULL,212),(217,'Kategori Kamar','category_room',NULL,NULL,NULL,212),(218,'Diskon','discount',NULL,NULL,NULL,215),(219,'Extra','extra',NULL,NULL,NULL,212),(220,'Menu','menu',NULL,NULL,NULL,212),(221,'Akses','role',NULL,NULL,NULL,215),(222,'Reservasi','reservation',NULL,NULL,NULL,213),(223,'Restoran','resto',NULL,NULL,NULL,213),(224,'Kamar','room',NULL,NULL,NULL,212),(225,'Servis','service',NULL,NULL,NULL,212),(226,'Status Kamar','status_room',NULL,NULL,NULL,212),(227,'Pajak','tax',NULL,NULL,NULL,215),(228,'Pengguna','users',NULL,NULL,NULL,215),(229,'Profil Saya','profil',NULL,1,NULL,215),(230,'Akun','account',NULL,1,NULL,215),(231,'Aplikasi','application',NULL,NULL,NULL,215);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Service 001',100,'-','uploads/405c772c5a38064c3ff8f51310566eae.jpg','2019-05-03 07:32:32',20,'2019-05-03 07:33:53',20),(2,'Service 212',1000,'test','uploads/3f536b5b9ce2165d4767d55b6d7317b2.jpg','2019-05-03 07:33:14',20,'2019-05-03 07:33:19',20);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_room`
--

LOCK TABLES `status_room` WRITE;
/*!40000 ALTER TABLE `status_room` DISABLE KEYS */;
INSERT INTO `status_room` VALUES (1,'Status Ruangan 001','Status Ruangan 001','2019-05-03 07:21:26',20,'2019-05-03 07:22:40',20),(2,'Status Ruangan 2','Status Ruangan 2','2019-05-03 07:22:29',20,'2019-05-03 07:22:33',20),(3,'Ready','-','2019-05-03 08:24:02',20,NULL,NULL),(4,'Perbaikan','-','2019-05-03 08:24:14',20,NULL,NULL),(5,'Reserved','-','2019-05-03 08:24:30',20,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (20,'0.0.0.0','super.admin','$2y$10$FGIyQE2K9am2CaucyfI7F.B7WGpdCwehDVEHTecnF17Sq8Ygc/sGO','super.admin@devel.com','(+62) 847 440 059',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556744529,1556858318,1),(21,'0.0.0.0','lintang93','$2y$10$sfEnctEfrs0HkAE.kcucpuRRHajMX7ZL7sc0dFSTt050tZrOzoR6i','putri85@example.net','0374 9929 8063',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556744529,NULL,1),(22,'0.0.0.0','ghalimah','$2y$10$fLAmA6ZyaufcGc7fjyEJhuF1xA6ngCRRCLBH3GEPNqX1ckiZtKvl.','jane89@example.com','0505 1250 9776',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556744530,NULL,1),(23,'0.0.0.0','kemba17','$2y$10$pTakRu6R6L0e1qbbyn3T4.CYBGmOVRdNO7QjF5gtUt13PmJ1UT5P.','situmorang.wakiman@example.com','(+62) 665 2346 4365',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556744530,NULL,1),(24,'0.0.0.0','pratiwi.amelia','$2y$10$gVmoIYU70/g3pv8EOx3S0u.JifYml10IxJ.CCw9376Ew70LCuhRXK','kawaya40@example.net','0668 8859 185',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556744530,NULL,1),(25,'0.0.0.0','waskita.gatot','$2y$10$pWjNs1GAHVtUaafvk4YWKuaSpGCnF9F.qS5TREOt/4nXKBOmjKLNa','zsuartini@example.net','027 2506 1599',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556744530,NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (21,20,45),(22,21,46),(23,22,47),(24,23,48),(25,24,49),(26,25,50);
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
INSERT INTO `users_profile` VALUES (20,'Vera','Pudjiastuti',1,1,2,'Nihil ex rerum amet maxime velit ipsum sunt. Sed minus occaecati quo molestiae in. Molestiae aut dolorum facere voluptatem quidem non. Consequatur impedit ipsa unde nostrum ut. Repellat dicta nihil nemo eaque et.','Autem accusamus commodi placeat nobis voluptatem molestiae sapiente. Quod molestiae iusto dolor eos eligendi velit. Repudiandae nisi quos sint odit sunt. Distinctio nulla numquam quod.','2019-05-01','Gorontalo',NULL),(21,'Rahayu','Sihombing',1,1,0,'Facere possimus dolor odio et at id temporibus. Pariatur consectetur perspiciatis quos ducimus. Iste illum laboriosam nisi itaque aut dolorem incidunt.','Suscipit commodi similique molestiae aut et fugiat blanditiis. Facilis quis nisi magnam aut. Vero qui distinctio magni dolor quis.','2019-05-01','Surakarta',NULL),(22,'Asirwanda','Prastuti',1,3,0,'Corrupti aut minima animi aut omnis qui. Enim unde odit adipisci perferendis eum. Suscipit quia ab sit vel delectus aut ut voluptatem.','Cupiditate eaque itaque et voluptatem. Optio enim fugit et. Et consequatur sit quia reiciendis earum occaecati numquam. Unde voluptatem molestiae soluta et sit rerum.','2019-05-01','Banda Aceh',NULL),(23,'Rahmi','Farida',0,0,0,'Asperiores ducimus minus facere aut aspernatur vitae aliquam. Aut eum odit sunt aspernatur neque possimus. Odio dolore est labore voluptas.','Quibusdam reprehenderit eos velit quidem. Dolores maiores cupiditate voluptatem beatae. Possimus aut sed reiciendis. Recusandae ut delectus enim et.','2019-05-01','Bandung',NULL),(24,'Lanang','Hardiansyah',0,2,1,'Odit quae sint neque dolor totam et. Quam non ducimus sunt consequatur est. Omnis sint qui quidem quis ea.','At ut explicabo at minima culpa quam ratione. Quia consequatur eaque necessitatibus fuga soluta est maiores aspernatur. Autem consequatur odio doloribus ab sit.','2019-05-01','Mojokerto',NULL),(25,'Nugraha','Irawan',0,3,1,'Eum ullam sint et quaerat aut. Molestias voluptatem ut maiores pariatur asperiores corporis et. Corrupti voluptatibus eum dolores reprehenderit dolor ullam ea. Illum voluptas possimus dolorem doloribus.','Nisi reiciendis est hic velit non. Ea id voluptas suscipit aperiam et non. Qui vel aut sed earum libero et. Consequatur eum id aliquid.','2019-05-01','Mataram',NULL);
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

-- Dump completed on 2019-05-03 16:06:10
