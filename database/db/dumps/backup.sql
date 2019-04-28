-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: evasao
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RA` char(9) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `foto` longblob,
  `cursos_id` int(11) NOT NULL,
  `anos_id` int(11) NOT NULL,
  `semestres_id` int(11) NOT NULL,
  `cidades_id` int(11) NOT NULL,
  `matricula_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `RA_UNIQUE` (`RA`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  KEY `fk_alunos_cursos_idx` (`cursos_id`),
  KEY `fk_alunos_anos1_idx` (`anos_id`),
  KEY `fk_alunos_semestres1_idx` (`semestres_id`),
  KEY `fk_alunos_cidades1_idx` (`cidades_id`),
  KEY `fk_alunos_matricula1_idx` (`matricula_id`),
  CONSTRAINT `fk_alunos_anos1` FOREIGN KEY (`anos_id`) REFERENCES `anos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_alunos_cidades1` FOREIGN KEY (`cidades_id`) REFERENCES `cidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_alunos_cursos` FOREIGN KEY (`cursos_id`) REFERENCES `cursos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_alunos_matricula1` FOREIGN KEY (`matricula_id`) REFERENCES `matricula` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_alunos_semestres1` FOREIGN KEY (`semestres_id`) REFERENCES `semestres` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (18,'100000001','Thiago Amaral','43581572891','thiago@gmail.com','11996818799','ti.jpg',2,2,2,3,1),(19,'100000002','Bruno Miranda','43581572892','blostyes@gmail.com','11996818798','bruno.png',1,1,1,1,1),(20,'100000003','Vinicius Queiroz','43581572897','viniciusqueirosz@outlook.com','11949544855','vi.jpg',5,3,2,3,3),(21,'100000004','Daniel Pinto','43581572896','daniel.alves.lp@gmail.com','11949544852','dani.jpg',4,4,2,5,4),(22,'100000005','Jefferson Ramos Lopes','435815791','jerbs@gmail.com','11940028922','je.jpg',1,4,1,5,1),(23,'100000006','Ivo iolanda','43581572890','ivo@gmail.com','11996374521','ivo.png',4,4,2,2,1),(26,'100000009','Isabela Medeiros','43581572244','isa@gmail.com','11996374257','isa.jpg',1,4,2,1,1),(27,'100000010','Jadir MendonÃ§a','43581555555','jadir@gmail.com','11996374525','jadir.jpg',5,4,2,1,1),(28,'100000011','Aurino Junior','43528742225','aurino@gmail.com','11996325475','aurino.png',5,4,2,4,5),(31,'100000012','Marcus Moratori','43581572996','marcos.moratori@fatec.sp.gov.br','11996374651','marcus.jpg',3,4,2,1,1),(32,'100000013','Gustavo amorim','43581572158','gustadod@gmail.com','11996375452','gu.jpg',1,4,2,1,1),(33,'100000016','Rafael Felix','43582236599','rafael@felix.com','11949544852','rafael.jpg',1,4,2,3,1),(35,'100000555','Eduardo Jacob','43581222200','jacob@gmail.com','11996374155','edu.jpg',1,4,2,4,1);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anos`
--

DROP TABLE IF EXISTS `anos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ano` char(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ano_UNIQUE` (`ano`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anos`
--

LOCK TABLES `anos` WRITE;
/*!40000 ALTER TABLE `anos` DISABLE KEYS */;
INSERT INTO `anos` VALUES (1,'2015'),(2,'2016'),(3,'2017'),(4,'2018'),(5,'2019');
/*!40000 ALTER TABLE `anos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areas` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'Tecnologia'),(2,'Varejo'),(3,'Telecomunicação');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cidade` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cidade_UNIQUE` (`cidade`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` VALUES (1,'Barueri'),(2,'Carapicuiba'),(3,'Itapevi'),(4,'Jandira'),(5,'Osasco');
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curso` varchar(45) NOT NULL DEFAULT 'NOT NULL',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome_UNIQUE` (`curso`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (3,'Comercio Exterior'),(5,'Design de Midias'),(2,'Eventos'),(1,'Gestao da Informacao'),(6,'Gestao de Recursos Humanos'),(4,'Transporte Terrestre');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frequencia`
--

DROP TABLE IF EXISTS `frequencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frequencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RA` int(11) NOT NULL,
  `data_entrada` datetime DEFAULT CURRENT_TIMESTAMP,
  `alunos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_frequencia_alunos1_idx` (`alunos_id`),
  CONSTRAINT `fk_frequencia_alunos1` FOREIGN KEY (`alunos_id`) REFERENCES `alunos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frequencia`
--

LOCK TABLES `frequencia` WRITE;
/*!40000 ALTER TABLE `frequencia` DISABLE KEYS */;
INSERT INTO `frequencia` VALUES (1,100000002,'2018-11-08 00:04:09',19),(2,100000002,'2018-11-08 00:07:00',19),(3,100000002,'2018-11-08 00:07:05',19),(4,100000002,'2018-11-08 00:07:09',19),(5,100000005,'2018-11-08 00:08:48',22),(6,100000005,'2018-11-08 00:08:52',22),(7,100000005,'2018-11-08 00:08:58',22),(8,100000005,'2018-11-08 00:09:03',22),(9,100000002,'2018-11-09 08:54:38',19),(10,100000002,'2018-11-09 08:56:01',19),(11,100000002,'2018-11-09 08:57:25',19),(12,100000002,'2018-11-09 08:59:24',19),(13,100000002,'2018-11-09 09:01:02',19),(14,100000002,'2018-11-09 09:01:30',19),(15,100000002,'2018-11-09 09:02:47',19),(16,100000002,'2018-11-09 09:04:03',19),(17,100000002,'2018-11-09 09:05:43',19),(18,100000002,'2018-11-09 09:14:10',19),(19,100000002,'2018-11-09 09:15:06',19),(20,100000002,'2018-11-09 09:21:46',19),(21,100000002,'2018-11-09 09:21:53',19),(22,100000002,'2018-11-09 09:22:20',19),(23,100000002,'2018-11-09 09:28:19',19),(24,100000002,'2018-11-09 09:28:27',19),(25,100000002,'2018-11-09 09:36:10',19),(26,100000002,'2018-11-09 09:36:56',19),(27,100000002,'2018-11-09 09:37:19',19),(28,100000002,'2018-11-09 09:38:01',19),(29,100000002,'2018-11-09 09:40:50',19),(30,100000005,'2018-11-09 17:30:07',22),(31,100000005,'2018-11-09 17:31:36',22),(32,100000005,'2018-11-09 17:34:14',22),(33,100000005,'2018-11-09 17:34:29',22),(34,100000005,'2018-11-09 17:34:39',22),(35,100000005,'2018-11-09 17:34:49',22),(36,100000005,'2018-11-09 17:40:12',22),(37,100000005,'2018-11-09 17:40:26',22),(38,100000005,'2018-11-09 17:42:49',22),(39,100000005,'2018-11-09 17:50:34',22),(40,100000005,'2018-11-09 17:51:35',22),(41,100000005,'2018-11-09 17:59:57',22),(42,100000005,'2018-11-09 18:00:01',22),(43,100000005,'2018-11-09 18:00:07',22),(44,100000005,'2018-11-09 18:01:34',22),(45,100000005,'2018-11-09 18:10:58',22),(46,100000002,'2018-11-09 18:11:17',19),(47,100000002,'2018-11-09 18:11:42',19),(48,100000002,'2018-11-09 18:23:36',19),(49,100000002,'2018-11-09 18:24:32',19),(50,100000002,'2018-11-09 18:26:06',19),(51,100000002,'2018-11-09 18:28:28',19),(52,100000002,'2018-11-09 18:29:00',19),(53,100000002,'2018-11-09 18:30:19',19),(54,100000005,'2018-11-09 18:30:34',22),(55,100000005,'2018-11-09 18:32:55',22),(56,100000005,'2018-11-09 18:34:11',22),(57,100000005,'2018-11-09 18:34:51',22),(58,100000005,'2018-11-09 18:52:02',22),(59,100000002,'2018-11-09 18:59:32',19),(60,100000002,'2018-11-09 19:49:03',19),(61,100000002,'2018-11-09 19:54:05',19),(62,100000002,'2018-11-10 13:13:04',19),(63,100000002,'2018-11-10 13:15:19',19),(64,100000002,'2018-11-10 13:16:12',19),(65,100000002,'2018-11-10 13:23:31',19),(66,100000002,'2018-11-10 13:24:13',19),(67,100000005,'2018-11-10 13:43:34',22),(68,100000001,'2018-11-10 14:02:38',18),(69,100000001,'2018-11-10 14:03:16',18),(70,100000001,'2018-11-10 14:34:31',18),(71,100000001,'2018-11-10 14:35:44',18),(72,100000001,'2018-11-10 14:38:13',18),(73,100000001,'2018-11-10 14:40:34',18),(74,100000005,'2018-11-10 14:41:03',22),(75,100000005,'2018-11-10 14:43:29',22),(76,100000002,'2018-11-10 15:43:56',19),(77,100000002,'2018-11-10 15:49:34',19),(78,100000002,'2018-11-10 15:50:22',19),(79,100000002,'2018-11-10 15:56:37',19),(80,100000002,'2018-11-10 15:59:23',19),(81,100000002,'2018-11-10 16:07:38',19),(82,100000003,'2018-11-10 16:19:18',20),(83,100000003,'2018-11-10 16:19:41',20),(84,100000005,'2018-11-10 16:23:07',22),(85,100000005,'2018-11-10 16:23:07',22),(86,100000005,'2018-11-10 16:23:07',22),(87,100000005,'2018-11-10 16:23:07',22),(88,100000005,'2018-11-10 16:23:07',22),(89,100000005,'2018-11-10 16:23:07',22),(90,100000005,'2018-11-10 16:23:07',22),(91,100000005,'2018-11-10 16:23:07',22),(92,100000005,'2018-11-10 16:23:07',22),(93,100000005,'2018-11-10 16:23:07',22),(94,100000005,'2018-11-10 16:23:07',22),(95,100000005,'2018-11-10 16:23:07',22),(96,100000005,'2018-11-10 16:23:07',22),(97,100000005,'2018-11-10 16:23:07',22),(98,100000005,'2018-11-10 16:23:07',22),(99,100000005,'2018-11-10 16:23:07',22),(100,100000005,'2018-11-10 16:23:07',22),(101,100000005,'2018-11-10 16:23:08',22),(102,100000005,'2018-11-10 16:23:08',22),(103,100000005,'2018-11-10 16:23:08',22),(104,100000005,'2018-11-10 16:23:08',22),(105,100000005,'2018-11-10 16:23:08',22),(106,100000005,'2018-11-10 16:23:08',22),(107,100000005,'2018-11-10 16:23:08',22),(108,100000005,'2018-11-10 16:23:08',22),(109,100000005,'2018-11-10 16:23:08',22),(110,100000005,'2018-11-10 16:23:08',22),(111,100000005,'2018-11-10 16:23:08',22),(112,100000002,'2018-11-10 16:24:34',19),(113,100000002,'2018-11-10 16:25:00',19),(114,100000002,'2018-11-10 16:25:17',19),(115,100000002,'2018-11-10 16:26:47',19),(116,100000002,'2018-11-10 16:29:24',19),(117,100000002,'2018-11-10 16:30:08',19),(118,100000002,'2018-11-10 16:31:13',19),(119,100000002,'2018-11-10 16:34:20',19),(120,100000003,'2018-11-10 16:35:25',20),(121,100000002,'2018-11-11 01:49:23',19),(122,100000002,'2018-11-11 01:54:30',19),(123,100000002,'2018-11-11 02:23:12',19),(124,100000002,'2018-11-11 02:25:04',19),(125,100000002,'2018-11-11 02:30:46',19),(126,100000005,'2018-11-11 02:41:59',22),(127,100000002,'2018-11-11 17:35:55',19),(128,100000002,'2018-11-11 17:37:16',19),(129,100000002,'2018-11-11 17:40:24',19),(130,100000002,'2018-11-11 17:40:57',19),(131,100000002,'2018-11-11 17:41:28',19),(132,100000002,'2018-11-12 08:17:36',19),(133,100000002,'2018-11-12 08:53:55',19),(134,100000002,'2018-11-12 08:55:09',19),(135,100000002,'2018-11-12 09:38:59',19),(136,100000002,'2018-11-12 09:39:56',19),(137,100000002,'2018-11-12 09:48:55',19),(138,100000002,'2018-11-12 09:49:21',19),(139,100000009,'2018-11-12 10:02:14',26),(140,100000009,'2018-11-12 10:52:40',26),(141,100000002,'2018-11-12 10:59:19',19),(142,100000002,'2018-11-12 11:39:56',19),(143,100000002,'2018-11-12 11:42:06',19),(144,100000010,'2018-11-12 11:51:19',27),(145,100000002,'2018-11-12 11:53:30',19),(146,100000002,'2018-11-12 11:56:20',19),(147,100000002,'2018-11-12 11:56:24',19),(148,100000002,'2018-11-13 20:26:17',19),(149,100000002,'2018-11-13 20:26:47',19),(150,100000002,'2018-11-13 20:27:36',19),(151,100000002,'2018-11-13 20:27:51',19),(152,100000002,'2018-11-13 20:29:00',19),(153,100000002,'2018-11-13 20:29:28',19),(154,100000002,'2018-11-13 20:32:07',19),(155,100000002,'2018-11-13 20:51:40',19),(156,100000005,'2018-11-13 20:52:08',22),(157,100000010,'2018-11-13 20:53:07',27),(158,100000012,'2018-11-13 21:05:36',29),(159,100000012,'2018-11-13 21:08:02',29),(160,100000010,'2018-11-13 21:43:21',27),(161,100000012,'2018-11-13 21:46:45',30),(162,100000012,'2018-11-13 21:50:19',31),(163,100000003,'2018-11-13 22:15:05',20),(164,100000003,'2018-11-13 22:20:11',20),(165,100000003,'2018-11-13 22:24:10',20),(166,100000009,'2018-11-13 22:24:28',26),(167,100000005,'2018-11-13 22:24:59',22),(168,100000004,'2018-11-13 22:25:18',21),(169,100000013,'2018-11-13 22:39:27',32),(170,100000013,'2018-11-14 09:31:20',32),(171,100000004,'2018-11-14 09:32:29',21),(172,100000012,'2018-11-14 10:20:02',31),(173,100000013,'2018-11-14 10:43:39',32),(174,100000004,'2018-11-14 10:43:50',21),(175,100000012,'2018-11-14 10:44:00',31),(176,100000003,'2018-11-14 10:44:09',20),(177,100000005,'2018-11-14 10:44:41',22),(178,100000002,'2018-11-15 22:35:00',19),(179,100000012,'2018-11-15 22:35:16',31),(180,100000013,'2018-11-19 19:48:13',32),(181,100000013,'2018-11-19 19:52:05',32),(182,100000013,'2018-11-19 19:52:11',32),(183,100000013,'2018-11-19 19:52:22',32),(184,100000013,'2018-11-19 19:53:55',19),(185,100000002,'2018-11-19 19:54:10',19),(186,100000002,'2018-11-19 19:54:19',19),(187,100000005,'2018-11-19 19:54:32',22),(188,100000005,'2018-11-19 19:54:41',22),(189,100000005,'2018-11-19 19:56:32',19),(190,100000002,'2018-11-19 19:56:37',19),(191,100000002,'2018-11-19 19:56:45',19),(192,100000002,'2018-11-19 19:56:49',19),(193,100000002,'2018-11-19 19:56:52',19),(194,100000002,'2018-11-19 19:56:55',19),(195,100000002,'2018-11-19 19:56:58',19),(196,100000012,'2018-11-21 09:49:02',31),(197,100000012,'2018-11-21 09:50:30',21),(198,100000004,'2018-11-21 09:50:34',21),(199,100000004,'2018-11-21 09:50:51',21),(200,100000004,'2018-11-21 09:50:53',21),(201,100000004,'2018-11-21 09:50:56',21),(202,100000004,'2018-11-21 09:51:51',21),(203,100000004,'2018-11-21 09:54:47',21),(204,100000004,'2018-11-21 09:55:31',21),(205,100000004,'2018-11-21 09:56:07',21),(206,100000002,'2018-11-21 15:20:36',19),(207,100000002,'2018-11-21 15:24:20',19),(208,100000002,'2018-11-21 15:26:08',19),(209,100000002,'2018-11-21 15:27:37',19),(210,100000002,'2018-11-21 15:37:36',19),(211,100000012,'2018-11-25 21:33:39',31),(212,100000012,'2018-11-25 21:35:36',31),(213,100000012,'2018-11-25 21:36:42',31),(214,100000012,'2018-11-25 21:37:06',31),(215,100000002,'2018-11-25 21:45:41',19),(216,100000002,'2018-11-25 21:46:29',19),(217,100000002,'2018-11-25 21:49:36',19),(218,100000002,'2018-11-25 21:49:49',19),(219,100000002,'2018-11-25 21:49:52',19),(220,100000002,'2018-11-25 21:49:55',19),(221,100000002,'2018-11-25 21:49:58',19),(222,100000004,'2018-11-28 22:22:13',21),(223,100000004,'2018-11-28 22:22:20',21),(224,100000012,'2018-11-28 22:22:33',31),(225,100000012,'2018-11-28 22:22:37',31),(226,100000012,'2018-11-28 22:22:40',31),(227,100000003,'2018-11-28 22:22:50',20),(228,100000003,'2018-11-28 22:22:56',20),(229,100000002,'2018-11-28 22:23:20',19),(230,100000002,'2018-11-28 22:23:23',19),(231,100000002,'2018-11-28 22:23:25',19),(232,100000002,'2018-11-28 22:23:29',19),(233,100000013,'2018-11-28 22:23:37',32),(234,100000013,'2018-11-28 22:23:43',32),(235,100000013,'2018-11-28 22:23:46',32),(236,100000013,'2018-11-28 22:23:49',32),(237,100000013,'2018-11-28 22:25:15',32),(238,100000003,'2018-11-29 00:11:00',20),(239,100000003,'2018-11-29 00:12:21',20),(240,100000003,'2018-11-29 00:13:10',20),(241,100000003,'2018-11-29 00:14:32',20),(242,100000003,'2018-11-29 00:18:43',20),(243,100000003,'2018-11-29 00:19:38',20),(244,100000003,'2018-11-29 00:20:55',20),(245,100000013,'2018-11-29 00:21:25',32),(246,100000013,'2018-11-29 00:23:03',32),(247,100000002,'2018-11-29 21:54:00',19),(248,100000002,'2018-11-30 23:36:26',19),(249,100000013,'2018-12-01 00:05:49',32),(250,100000013,'2018-12-01 00:12:04',32),(251,100000013,'2018-12-01 00:13:01',32),(252,100000013,'2018-12-01 02:16:59',32),(253,100000013,'2018-12-01 02:17:06',32),(254,100000002,'2018-12-01 19:48:10',19),(255,100000002,'2018-12-01 19:49:19',19),(256,100000003,'2018-12-01 21:24:53',20),(257,100000003,'2018-12-01 21:25:00',20),(258,100000005,'2018-12-01 21:25:09',22),(259,100000012,'2018-12-01 21:25:18',31),(260,100000004,'2018-12-01 21:25:37',21),(261,100000004,'2018-12-01 21:25:55',21),(262,100000013,'2018-12-02 00:04:43',32),(263,100000013,'2018-12-02 17:44:22',32),(264,100000013,'2018-12-02 17:45:58',32),(265,100000016,'2018-12-02 17:51:09',33),(266,100000016,'2018-12-02 17:52:12',33),(267,100000003,'2018-12-02 21:50:17',20),(268,100000003,'2018-12-02 21:51:15',20),(269,100000003,'2018-12-02 21:56:24',20),(270,100000013,'2018-12-02 22:18:00',32),(271,100000013,'2018-12-02 22:56:24',32),(272,100000013,'2018-12-02 23:03:39',32),(273,100000013,'2018-12-02 23:27:19',32),(274,100000003,'2018-12-03 07:17:27',20),(275,100000003,'2018-12-03 07:35:01',20),(276,100000003,'2018-12-03 08:15:12',20),(277,100000013,'2018-12-03 09:29:42',32),(278,100000555,'2018-12-03 09:33:01',35),(279,100000016,'2019-02-21 22:36:03',33),(280,100000016,'2019-02-21 22:36:11',33),(281,100000016,'2019-02-22 11:28:22',33),(282,100000016,'2019-02-22 11:28:52',33),(283,100000016,'2019-02-22 11:29:18',33),(284,100000016,'2019-02-22 12:09:53',33);
/*!40000 ALTER TABLE `frequencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matricula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (1,'Ativo'),(2,'Cancelado'),(3,'Desistente'),(4,'Evadido'),(5,'Concluido');
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionario`
--

DROP TABLE IF EXISTS `questionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trabalha` tinyint(1) DEFAULT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `formacao` tinyint(1) NOT NULL,
  `cronograma` enum('1','2','3','4','5') NOT NULL,
  `professores` enum('1','2','3','4','5') NOT NULL,
  `infraestrutura` enum('1','2','3','4','5') NOT NULL,
  `recomendaria` enum('1','2','3','4','5') NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `estagio` tinyint(1) NOT NULL,
  `ausencia` tinyint(1) NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `alunos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_questionario_alunos1_idx` (`alunos_id`),
  CONSTRAINT `fk_questionario_alunos1` FOREIGN KEY (`alunos_id`) REFERENCES `alunos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionario`
--

LOCK TABLES `questionario` WRITE;
/*!40000 ALTER TABLE `questionario` DISABLE KEYS */;
INSERT INTO `questionario` VALUES (3,0,'NULL','NULL',2,'1','1','2','2','M',0,1,'2018-12-02 16:07:21',31),(4,1,'Fatec','Professor',1,'5','5','5','3','M',1,0,'2018-12-02 16:15:03',28),(5,0,'NULL','NULL',2,'2','2','1','1','M',0,1,'2018-12-02 21:55:45',21);
/*!40000 ALTER TABLE `questionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semestres`
--

DROP TABLE IF EXISTS `semestres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semestres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semestre` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `semestre_UNIQUE` (`semestre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semestres`
--

LOCK TABLES `semestres` WRITE;
/*!40000 ALTER TABLE `semestres` DISABLE KEYS */;
INSERT INTO `semestres` VALUES (1,'1'),(2,'2');
/*!40000 ALTER TABLE `semestres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bruno','brunomirandas@outlook.com',NULL,'$2y$10$n1Q.ZCaYazxCFuZYEqFVReGM2Djku887vX9nOtAtydUkJ3iS9CWJ2','aglFjiZ1Qul48K1RTAjq6sdoAT5M4uWC7gfBzlxeo5lvM1VNM7W2a1igcLvW','2019-02-26 16:33:29','2019-02-26 16:33:29'),(2,'Daniel','daniel@gmail.com',NULL,'$2y$10$VRNyOoehtNJEaF7CJmqcMOwTkb5uGvit36DWOrMgbslul3rEJlqHy','FKn8IVtkesjoJMjCJ9SGqKkshj2bMw8ULNzFvfU055xwjHW4dYEncliDdDU6','2019-02-26 16:38:25','2019-02-26 16:38:25'),(3,'Gustavo','gustavodad@gmail.com',NULL,'$2y$10$Nma9Xhh1sluag4ELOXE0Be9n5Gk6ZbDw1w1vmyr52BPF.QNDXNcDq','hQTYdbKAx8W65n3BToB5UK4649Ch1fh6GAfJ4RyjEfKcUyZsvpDOgNpqHLPs','2019-02-26 16:40:10','2019-02-26 16:40:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'adm@fatec.com','e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-19 22:13:15