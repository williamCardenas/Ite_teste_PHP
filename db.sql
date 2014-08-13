-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: symfony
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.12.04.1-log

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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `blog` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tags` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'A day with Symfony2','a-day-with-symfony2','dsyph3r','Lorem ipsum dolor sit amet, consectetur adipiscing eletra electrify denim vel ports.\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut velocity magna. Etiam vehicula nunc non leo hendrerit commodo. Vestibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque. Nulla consectetur tempus nisl vitae viverra. Cras el mauris eget erat congue dapibus imperdiet justo scelerisque. Nulla consectetur tempus nisl vitae viverra. Cras elementum molestie vestibulum. Morbi id quam nisl. Praesent hendrerit, orci sed elementum lobortis, justo mauris lacinia libero, non facilisis purus ipsum non mi. Aliquam sollicitudin, augue id vestibulum iaculis, sem lectus convallis nunc, vel scelerisque lorem tortor ac nunc. Donec pharetra eleifend enim vel porta.','beach.jpg','symfony2, php, paradise, symblog','2014-08-13 01:48:17','2014-08-13 01:48:17'),(2,'The pool on the roof must have a leak','the-pool-on-the-roof-must-have-a-leak','Zero Cool','Vestibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque. Na. Cras elementum molestie vestibulum. Morbi id quam nisl. Praesent hendrerit, orci sed elementum lobortis.','pool_leak.jpg','pool, leaky, hacked, movie, hacking, symblog','2014-08-13 01:48:17','2014-08-13 01:48:17'),(3,'Misdirection. What the eyes see and the ears hear, the mind believes','misdirection-what-the-eyes-see-and-the-ears-hear-the-mind-believes','Gabriel','Lorem ipsumvehicula nunc non leo hendrerit commodo. Vestibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque.','misdirection.jpg','misdirection, magic, movie, hacking, symblog','2014-08-13 01:48:17','2014-08-13 01:48:17'),(4,'The grid - A digital frontier','the-grid-a-digital-frontier','Kevin Flynn','Lorem commodo. Vestibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque. Nulla consectetur tempus nisl vitae viverra.','the_grid.jpg','grid, daftpunk, movie, symblog','2014-08-13 01:48:17','2014-08-13 01:48:17'),(5,'You\'re either a one or a zero. Alive or dead','you-re-either-a-one-or-a-zero-alive-or-dead','Gary Winston','Lorem ipsum dolor sit amet, consectetur adipiscing elittibulum vulputate mauris eget erat congue dapibus imperdiet justo scelerisque.','one_or_zero.jpg','binary, one, zero, alive, dead, !trusting, movie, symblog','2014-08-13 01:48:17','2014-08-13 01:48:17');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526CDAE07E97` (`blog_id`),
  CONSTRAINT `FK_9474526CDAE07E97` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,'symfony','To make a long story short. You can\'t go wrong by choosing Symfony! And no one has ever been fired for using Symfony.',1,'2014-08-13 01:48:17','2014-08-13 01:48:17'),(2,1,'David','To make a long story short. Choosing a framework must not be taken lightly; it is a long-term commitment. Make sure that you make the right selection!',1,'2014-08-13 01:48:17','2014-08-13 01:48:17'),(3,2,'Dade','Anything else, mom? You want me to mow the lawn? Oops! I forgot, New York, No grass.',1,'2014-08-13 01:48:17','2014-08-13 01:48:17'),(4,2,'Kate','Are you challenging me? ',1,'2011-07-23 06:15:20','2014-08-13 01:48:17'),(5,2,'Dade','Name your stakes.',1,'2011-07-23 06:18:35','2014-08-13 01:48:17'),(6,2,'Kate','If I win, you become my slave.',1,'2011-07-23 06:22:53','2014-08-13 01:48:17'),(7,2,'Dade','Your SLAVE?',1,'2011-07-23 06:25:15','2014-08-13 01:48:17'),(8,2,'Kate','You wish! You\'ll do shitwork, scan, crack copyrights...',1,'2011-07-23 06:46:08','2014-08-13 01:48:17'),(9,2,'Dade','And if I win?',1,'2011-07-23 10:22:46','2014-08-13 01:48:17'),(10,2,'Kate','Make it my first-born!',1,'2011-07-23 11:08:08','2014-08-13 01:48:17'),(11,2,'Dade','Make it our first-date!',1,'2011-07-24 18:56:01','2014-08-13 01:48:17'),(12,2,'Kate','I don\'t DO dates. But I don\'t lose either, so you\'re on!',1,'2011-07-25 22:28:42','2014-08-13 01:48:17'),(13,3,'Stanley','It\'s not gonna end like this.',1,'2014-08-13 01:48:17','2014-08-13 01:48:17'),(14,3,'Gabriel','Oh, come on, Stan. Not everything ends the way you think it should. Besides, audiences love happy endings.',1,'2014-08-13 01:48:17','2014-08-13 01:48:17'),(15,5,'Mile','Doesn\'t Bill Gates have something like that?',1,'2014-08-13 01:48:17','2014-08-13 01:48:17'),(16,5,'Gary','Bill Who?',1,'2014-08-13 01:48:17','2014-08-13 01:48:17');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-13  3:36:56
