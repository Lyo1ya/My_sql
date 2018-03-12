-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Twitter
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  `tweet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `posting_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `tweet_id_idx` (`tweet_id`),
  CONSTRAINT `com_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `tweet_id` FOREIGN KEY (`tweet_id`) REFERENCES `tweet` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'This is what our country has been waiting for. Our young folks to step into the spotlight and say what direction they feel we should travel. I\'m ready.',2,10,'2018-03-10 17:05:18'),(2,'If you didn\'t like something about America why didn\'t you do something about it? Tell me about one accomplishment of Obama? Did he lower taxes? Did he get people off welfare? Did he do anything for black unemplyeed men or teens? Did he open the door to Mexico?',6,8,'2018-01-25 18:05:00'),(3,'Just a few things to refresh your memory.',4,4,'2018-03-03 15:08:00'),(4,'HE was a REAL president!  A man of morals, honor, and class!',2,6,'2018-03-07 03:03:00'),(5,'What did he do for you that you couldn\'t do for yourself? Did he pay your rent? Did he go to work for you?',5,7,'2018-02-20 17:00:05'),(6,'He gave hope, intelligent leadership, compassion and many other things the current President does not...',2,5,'2018-03-10 13:18:00'),(7,'Of course, same as with youth anywhere else, yet we’re the only country that has this problem. The problem is not our youth. It’s our lack of gun control.',7,9,'2018-01-16 23:09:00'),(8,'Guys. You had 10yrs to sort this out, America is a blood thirsty society that doesn’t value human life. How is it possible that your kids are slaughtered this way and yet ppl still defend owning and accessing guns??',6,3,'2018-02-02 19:36:00'),(9,'Looking forward to reading it! You inspire me.',5,1,'2018-02-28 13:28:00'),(10,'I’ve tried fixing my smile but people are still so mean to me ... do you think i look good? ',2,6,'2018-03-10 10:11:00');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follower`
--

DROP TABLE IF EXISTS `follower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follower` (
  `followed_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  PRIMARY KEY (`followed_id`,`follower_id`),
  KEY `fk_user_has_user_user2_idx` (`follower_id`),
  CONSTRAINT `followed_id` FOREIGN KEY (`followed_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `follower_id` FOREIGN KEY (`follower_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follower`
--

LOCK TABLES `follower` WRITE;
/*!40000 ALTER TABLE `follower` DISABLE KEYS */;
INSERT INTO `follower` VALUES (10,1),(5,3),(9,4),(1,5),(2,6),(8,7),(1,8),(5,9),(8,9),(8,10);
/*!40000 ALTER TABLE `follower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tweet`
--

DROP TABLE IF EXISTS `tweet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tweet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posting_date` datetime NOT NULL,
  `body` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweet`
--

LOCK TABLES `tweet` WRITE;
/*!40000 ALTER TABLE `tweet` DISABLE KEYS */;
INSERT INTO `tweet` VALUES (1,'2018-03-10 14:15:19','I teamed up with Refinery29 to mark #InternationalWomensDay and to talk about my passionate commitment to empowering girls around the world through education. This will continue to be a core part of my work at the ObamaFoundation.',8),(2,'2018-03-06 09:25:16','Parker, I\'m so glad I had the chance to meet you today (and for the dance party)! Keep on dreaming big for yourself...and maybe one day I\'ll proudly look up at a portrait of you!',5),(3,'2018-02-25 18:09:57','Writing BECOMING has been a deeply personal experience. I talk about my roots and how a girl from the South Side found her voice. I hope my journey inspires readers to find the courage to become whoever they aspire to be. I can\'t wait to share my story.',3),(4,'2018-03-02 19:54:00','Young people have helped lead all our great movements. How inspiring to see it again in so many smart, fearless students standing up for their right to be safe; marching and organizing to remake the world as it should be. We\'ve been waiting for you',9),(5,'2018-02-19 22:15:00','I’m in total awe of the extraordinary students in Florida. Like every movement for progress in our history, gun reform will take unyielding courage and endurance. But @barackobama and I believe in you, we’re proud of you, and we’re behind you every step of the way.',5),(6,'2018-01-22 12:06:00','Congrats to the entire #blackpanther team! Because of you, young people will finally see superheroes that look like them on the big screen. I loved this movie and I know it will inspire people of all backgrounds to dig deep and find the courage to be heroes of their own stories.',8),(7,'2018-01-15 16:00:00','We are grieving with Parkland. But we are not powerless. Caring for our kids is our first job. And until we can honestly say that we\'re doing enough to keep them safe from harm, including long overdue, common-sense gun safety laws that most Americans want, then we have to change.',5);
/*!40000 ALTER TABLE `tweet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(20) NOT NULL,
  `birthdate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nick_name_UNIQUE` (`nick_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'maxim','1980-08-13 00:00:00'),(2,'kitten','1996-11-12 00:00:00'),(3,'bounty','1985-07-01 00:00:00'),(4,'creature','2000-03-06 00:00:00'),(5,'arseniy','1977-06-15 00:00:00'),(6,'vasya','1992-12-11 00:00:00'),(7,'ivanna','2002-09-24 00:00:00'),(8,'bomb','1964-02-18 00:00:00'),(9,'iren','1987-07-21 00:00:00'),(10,'frank','1992-04-21 00:00:00');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-10 20:01:17
