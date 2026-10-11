-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: expense_voucher_db
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `voucher_activity`
--

DROP TABLE IF EXISTS `voucher_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucher_activity` (
  `activity_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `voucher_id` bigint unsigned NOT NULL,
  `actor_user_id` bigint unsigned NOT NULL,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`activity_id`),
  KEY `fk_activity_actor` (`actor_user_id`),
  KEY `idx_activity_created_at` (`created_at`),
  KEY `idx_activity_voucher` (`voucher_id`),
  CONSTRAINT `fk_activity_actor` FOREIGN KEY (`actor_user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_activity_voucher` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`voucher_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_activity`
--

LOCK TABLES `voucher_activity` WRITE;
/*!40000 ALTER TABLE `voucher_activity` DISABLE KEYS */;
INSERT INTO `voucher_activity` VALUES (1,1,1,'CREATED','Draft voucher created','2026-10-10 15:22:58'),(2,1,1,'UPDATED','Draft voucher updated','2026-10-10 15:31:13'),(5,1,1,'SIGNATURE_UPLOADED','Employee signature uploaded.','2026-10-10 16:06:37'),(6,1,1,'SUBMITTED','Voucher submitted for Director approval.','2026-10-10 16:08:38'),(7,1,2,'DIRECTOR_SIGNATURE_UPLOADED','Director signature uploaded.','2026-10-10 18:10:44'),(8,1,2,'APPROVED','Voucher approved by Director.','2026-10-10 18:12:11'),(9,3,2,'Voucher Rejected','Please provide a valid expense receipt.','2026-10-10 18:21:46'),(10,4,1,'Draft Created','Employee created a voucher draft.','2026-10-11 06:00:10'),(11,4,1,'Employee Signature Uploaded','Employee signature uploaded.','2026-10-11 06:07:28'),(12,4,1,'Voucher Submitted','Voucher submitted for Director approval.','2026-10-11 06:11:31'),(13,4,2,'Director Signature Uploaded','Director signature uploaded.','2026-10-11 06:23:21'),(14,4,2,'Director Signature Uploaded','Director signature uploaded.','2026-10-11 06:23:24'),(15,4,2,'Voucher Approved','Director approved the voucher.','2026-10-11 06:23:39'),(16,5,1,'Draft Created','Employee created a voucher draft.','2026-10-11 06:36:41'),(17,5,1,'Employee Signature Uploaded','Employee signature uploaded.','2026-10-11 06:42:52'),(18,5,1,'Voucher Submitted','Voucher submitted for Director approval.','2026-10-11 06:43:00'),(19,5,2,'Voucher Rejected','too much expense','2026-10-11 06:44:50'),(20,6,1,'Draft Created','Employee created a voucher draft.','2026-10-11 07:04:49'),(21,7,4,'Draft Created','Employee created a voucher draft.','2026-10-11 07:07:38'),(22,7,4,'Employee Signature Uploaded','Employee signature uploaded.','2026-10-11 07:40:16'),(23,7,4,'Voucher Submitted','Voucher submitted for Director approval.','2026-10-11 07:41:34'),(24,7,2,'Director Signature Uploaded','Director signature uploaded.','2026-10-11 07:49:59'),(25,7,2,'Voucher Approved','Director approved the voucher.','2026-10-11 07:57:14'),(26,8,1,'Draft Created','Employee created a voucher draft.','2026-10-11 08:14:34'),(27,9,1,'Draft Created','Employee created a voucher draft.','2026-10-11 08:20:31'),(28,10,1,'Draft Created','Employee created a voucher draft.','2026-10-11 09:02:53'),(29,10,1,'Employee Signature Uploaded','Employee signature uploaded.','2026-10-11 09:03:21'),(30,10,1,'Voucher Submitted','Voucher submitted for Director approval.','2026-10-11 09:03:43'),(31,10,2,'Director Signature Uploaded','Director signature uploaded.','2026-10-11 09:05:13'),(32,10,2,'Voucher Approved','Director approved the voucher.','2026-10-11 09:05:28');
/*!40000 ALTER TABLE `voucher_activity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-11 21:16:06
