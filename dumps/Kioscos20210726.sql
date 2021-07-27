-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: kioscos_logs_db
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add refresh token',7,'add_refreshtoken'),(20,'Can change refresh token',7,'change_refreshtoken'),(21,'Can delete refresh token',7,'delete_refreshtoken'),(22,'Can add grant',8,'add_grant'),(23,'Can change grant',8,'change_grant'),(24,'Can delete grant',8,'delete_grant'),(25,'Can add application',9,'add_application'),(26,'Can change application',9,'change_application'),(27,'Can delete application',9,'delete_application'),(28,'Can add access token',10,'add_accesstoken'),(29,'Can change access token',10,'change_accesstoken'),(30,'Can delete access token',10,'delete_accesstoken'),(31,'Can add Log',11,'add_log'),(32,'Can change Log',11,'change_log'),(33,'Can delete Log',11,'delete_log'),(34,'Can add Categoría',12,'add_categoria'),(35,'Can change Categoría',12,'change_categoria'),(36,'Can delete Categoría',12,'delete_categoria'),(37,'Can add Opción',13,'add_opcion'),(38,'Can change Opción',13,'change_opcion'),(39,'Can delete Opción',13,'delete_opcion');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$LBzSCkRyRscg$WdXxp6cehoIxYBtqXIuIW+0CJvm/Hjleu75cA9QiUzw=','2021-07-26 20:04:55.609738',1,'kiosco','','','kiosco@gmail.com',1,1,'2021-07-26 20:04:15.852790');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

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
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-07-26 20:05:28.948646','1','sistemas',1,'[{\"added\": {}}]',12,1),(2,'2021-07-26 20:05:49.850431','2','espectaculares',1,'[{\"added\": {}}]',12,1),(3,'2021-07-26 20:05:54.437048','3','eventos',1,'[{\"added\": {}}]',12,1),(4,'2021-07-26 20:06:06.841439','4','noticias',1,'[{\"added\": {}}]',12,1),(5,'2021-07-26 20:55:17.642698','1','PAGO PREDIAL',1,'[{\"added\": {}}]',13,1),(6,'2021-07-26 21:01:01.754367','1','PAGO PREDIAL',2,'[{\"changed\": {\"fields\": [\"imagen\"]}}]',13,1),(7,'2021-07-26 21:27:10.284723','1','PAGO PREDIAL',2,'[{\"changed\": {\"fields\": [\"contenido\"]}}]',13,1),(8,'2021-07-26 21:34:31.345094','2','PAGO AGUA',1,'[{\"added\": {}}]',13,1),(9,'2021-07-26 21:44:44.255681','3','PAGO DE TRÁMITES MUNICIPALES',1,'[{\"added\": {}}]',13,1),(10,'2021-07-26 22:01:34.294996','4','SARE',1,'[{\"added\": {}}]',13,1),(11,'2021-07-26 22:02:23.514729','4','SARE',2,'[{\"changed\": {\"fields\": [\"imagen\"]}}]',13,1),(12,'2021-07-26 22:02:44.026476','3','PAGO DE TRÁMITES MUNICIPALES',2,'[{\"changed\": {\"fields\": [\"contenido\"]}}]',13,1),(13,'2021-07-26 22:02:56.995007','4','SARE',2,'[{\"changed\": {\"fields\": [\"contenido\"]}}]',13,1),(14,'2021-07-26 22:04:26.391028','5','ATENCIÓN CIUDADANA',1,'[{\"added\": {}}]',13,1),(15,'2021-07-26 22:08:34.783650','6','CITAS EN LÍNEA PARA TRÁMITES',1,'[{\"added\": {}}]',13,1),(16,'2021-07-26 22:10:56.515821','7','SOLICITUD DE EMPLEO',1,'[{\"added\": {}}]',13,1),(17,'2021-07-26 22:18:18.705542','8','CURP',1,'[{\"added\": {}}]',13,1),(18,'2021-07-26 22:20:05.207579','9','OBTENER ACTA DE NACIMIENTO',1,'[{\"added\": {}}]',13,1),(19,'2021-07-26 22:21:33.993239','10','AYUDA',1,'[{\"added\": {}}]',13,1),(20,'2021-07-26 22:38:17.532571','11','',1,'[{\"added\": {}}]',13,1),(21,'2021-07-26 22:39:49.523039','12','',1,'[{\"added\": {}}]',13,1),(22,'2021-07-26 22:41:24.256199','13','',1,'[{\"added\": {}}]',13,1),(23,'2021-07-26 22:42:40.466182','14','',1,'[{\"added\": {}}]',13,1),(24,'2021-07-26 22:43:21.779427','14','',2,'[{\"changed\": {\"fields\": [\"imagen\"]}}]',13,1),(25,'2021-07-26 22:47:46.527432','15','',1,'[{\"added\": {}}]',13,1),(26,'2021-07-26 22:54:35.621742','16','ESTRATEGIA DE VACUNACIÓN',1,'[{\"added\": {}}]',13,1),(27,'2021-07-26 22:56:32.925181','16','ESTRATEGIA DE VACUNACIÓN',2,'[{\"changed\": {\"fields\": [\"ruta\"]}}]',13,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'logs','log'),(10,'oauth2_provider','accesstoken'),(9,'oauth2_provider','application'),(8,'oauth2_provider','grant'),(7,'oauth2_provider','refreshtoken'),(12,'servicios','categoria'),(13,'servicios','opcion'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-07-26 20:00:02.752387'),(2,'auth','0001_initial','2021-07-26 20:00:04.015070'),(3,'admin','0001_initial','2021-07-26 20:00:04.790692'),(4,'admin','0002_logentry_remove_auto_add','2021-07-26 20:00:04.845519'),(5,'contenttypes','0002_remove_content_type_name','2021-07-26 20:00:04.944216'),(6,'auth','0002_alter_permission_name_max_length','2021-07-26 20:00:04.998339'),(7,'auth','0003_alter_user_email_max_length','2021-07-26 20:00:05.060303'),(8,'auth','0004_alter_user_username_opts','2021-07-26 20:00:05.078320'),(9,'auth','0005_alter_user_last_login_null','2021-07-26 20:00:05.130987'),(10,'auth','0006_require_contenttypes_0002','2021-07-26 20:00:05.135417'),(11,'auth','0007_alter_validators_add_error_messages','2021-07-26 20:00:05.157875'),(12,'auth','0008_alter_user_username_max_length','2021-07-26 20:00:05.247859'),(13,'logs','0001_initial','2021-07-26 20:00:05.293171'),(14,'oauth2_provider','0001_initial','2021-07-26 20:00:06.213390'),(15,'oauth2_provider','0002_08_updates','2021-07-26 20:00:06.770021'),(16,'oauth2_provider','0003_auto_20160316_1503','2021-07-26 20:00:07.010794'),(17,'oauth2_provider','0004_auto_20160525_1623','2021-07-26 20:00:07.283396'),(18,'oauth2_provider','0005_auto_20170514_1141','2021-07-26 20:00:09.355220'),(19,'sessions','0001_initial','2021-07-26 20:00:09.392758'),(20,'servicios','0001_initial','2021-07-26 20:03:33.118803'),(21,'servicios','0002_auto_20210726_2045','2021-07-26 20:45:47.457028'),(22,'servicios','0003_auto_20210726_2123','2021-07-26 21:23:32.773317'),(23,'servicios','0004_auto_20210726_2138','2021-07-26 21:38:40.659249');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('dpfr72dg36g0u00m6hjfr2n2uv57og26','MmZjMzA2ZjNjNTY0NTYzNzljOTI1ODM3ZDEzZmMwNjBlMmY1OTU3NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhOGUwNjc2ODFlZDk0ZDg4NDFkYjVjMmQxM2U4NjQ3OWNjZjU2N2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2021-08-09 20:04:55.614416');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs_log`
--

DROP TABLE IF EXISTS `logs_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `origen` varchar(20) NOT NULL,
  `accion` varchar(500) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_log`
--

LOCK TABLES `logs_log` WRITE;
/*!40000 ALTER TABLE `logs_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_provider_accesstoken_token_8af090f8_uniq` (`token`),
  KEY `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_auth_user_id` (`user_id`),
  KEY `oauth2_provider_accesstoken_application_id_b22886e1_fk` (`application_id`),
  CONSTRAINT `oauth2_provider_accesstoken_application_id_b22886e1_fk` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) NOT NULL,
  `redirect_uris` longtext NOT NULL,
  `client_type` varchar(32) NOT NULL,
  `authorization_grant_type` varchar(32) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  KEY `oauth2_provider_application_user_id_79829054_fk_auth_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_application_user_id_79829054_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` varchar(255) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_provider_grant_code_49ab4ddf_uniq` (`code`),
  KEY `oauth2_provider_grant_application_id_81923564_fk` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_auth_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_grant_application_id_81923564_fk` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `access_token_id` bigint NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_d090daa4_uniq` (`token`),
  KEY `oauth2_provider_refreshtoken_application_id_2d1c311b_fk` (`application_id`),
  KEY `oauth2_provider_refreshtoken_user_id_da837fce_fk_auth_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_refreshtoken_access_token_id_775e84e8_fk` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refreshtoken_application_id_2d1c311b_fk` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refreshtoken_user_id_da837fce_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios_categoria`
--

DROP TABLE IF EXISTS `servicios_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios_categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `servicios_categoria_nombre_0b22e490` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios_categoria`
--

LOCK TABLES `servicios_categoria` WRITE;
/*!40000 ALTER TABLE `servicios_categoria` DISABLE KEYS */;
INSERT INTO `servicios_categoria` VALUES (2,'espectaculares'),(3,'eventos'),(4,'noticias'),(1,'sistemas');
/*!40000 ALTER TABLE `servicios_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios_opcion`
--

DROP TABLE IF EXISTS `servicios_opcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios_opcion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(30) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `ruta` varchar(500) NOT NULL,
  `contenido` varchar(500) NOT NULL,
  `categoria_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `servicios_opcion_categoria_id_bc250493_fk_servicios_categoria_id` (`categoria_id`),
  CONSTRAINT `servicios_opcion_categoria_id_bc250493_fk_servicios_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `servicios_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios_opcion`
--

LOCK TABLES `servicios_opcion` WRITE;
/*!40000 ALTER TABLE `servicios_opcion` DISABLE KEYS */;
INSERT INTO `servicios_opcion` VALUES (1,'PAGO PREDIAL','imagenes_opciones/1/predial.svg','https://pagosmetepec.mx/pagar_servicios/','videos_opciones/1/1.mp4',1),(2,'PAGO AGUA','imagenes_opciones/1/agua.svg','http://asoservices.mx/metepec/pago_web/Control_Acceso','videos_opciones/1/2.mp4',1),(3,'PAGO DE TRÁMITES MUNICIPALES','imagenes_opciones/1/tramitesMunicipales.svg','https://pagosmetepec.mx/pagar_servicios/','videos_opciones/1/3.mp4',1),(4,'SARE','imagenes_opciones/1/sare.svg','http://189.203.208.70/licencias3/','videos_opciones/1/4_NUhlM5U.mp4',1),(5,'ATENCIÓN CIUDADANA','imagenes_opciones/1/atencionCiudadana.svg','http://audiencia.metepec.gob.mx/','videos_opciones/1/5.mp4',1),(6,'CITAS EN LÍNEA PARA TRÁMITES','imagenes_opciones/1/citasenLinea.svg','http://35.239.155.10:8081/citaslinea/','videos_opciones/1/6.mp4',1),(7,'SOLICITUD DE EMPLEO','imagenes_opciones/1/solicituddeEmpleo.svg','https://empleo.metepec.gob.mx/','videos_opciones/1/7.mp4',1),(8,'CURP','imagenes_opciones/1/curp.svg','https://www.gob.mx/curp/','videos_opciones/1/8.mp4',1),(9,'OBTENER ACTA DE NACIMIENTO','imagenes_opciones/1/acta.svg','https://www.gob.mx/ActaNacimiento/','videos_opciones/1/9.mp4',1),(10,'AYUDA','imagenes_opciones/1/ayuda.svg','https://pagosmetepec.mx/pagar_servicios/','',1),(11,'','imagenes_opciones/3/5A.jpeg','https://docs.google.com/forms/d/e/1FAIpQLSf9ULKAATizaj9rYoibqPKofcqvJzD8atkvYyoFQ7TOAgL1_A/closedform','',3),(12,'','imagenes_opciones/3/1A.jpeg','https://pagosmetepec.mx/pagar_servicios/','',3),(13,'','imagenes_opciones/3/1A_H4vIfm2.jpeg','https://www.udemex.edu.mx/','',3),(14,'','imagenes_opciones/3/3A.jpeg','https://www.udemex.edu.mx/posgrados.html','',3),(15,'','imagenes_opciones/3/4A.jpeg','https://www.gob.mx/tramites/ficha/concursos-de-arte-popular-en-el-fonart/FONART3646','',3),(16,'ESTRATEGIA DE VACUNACIÓN','imagenes_opciones/4/noticia2.jpeg','http://vacunacovid.gob.mx/wordpress/','',4);
/*!40000 ALTER TABLE `servicios_opcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'kioscos_logs_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-26 23:11:17
