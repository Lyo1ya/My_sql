-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Blog
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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Kathy','James'),(2,'Elizabeth','Fribush'),(3,'Jane','Austen'),(4,'Gregory','Fines'),(5,'Mary','Shelly'),(6,'Dane','Miller'),(7,'Chris','Jun'),(8,'Dom','Fineas'),(9,'Sam','Randy'),(10,'Mario','Puzo'),(11,'John','Graham');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `posting_date` datetime DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id_idx` (`author_id`),
  CONSTRAINT `author_id` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'No friends, no significant hobbies, no life','The summer is painful to live through. At least when I had school, I was surrounded by people. My daily activities include using the computer for about 3/4s of the day, eating, and going to the gym or grocery store with one of my parents (my only escape from home). The few friends I have only talk to me out of sympathy. I used to be part of a larger group, but I realized they were completely unlike me after 3 years of them being my only friends, with few exceptions.\n\nThey have good grades, somewhat introverted lives (with video games and constant homework) and with totally different personalities than me. Because of my horrendous social capabilities, I was never able to move up the ladder to people I could relate with more. They were my friends by default. The only ones that accepted me.\n\nNow that it is the summer and I am stuck home /all the /time /with nothing /to /do. No friends means no experience with anything remotely extroverted. I am extremely depressed half the time and I cannot stand sitting here checking my Facebook messages in the hopes of some odd acquaintance would be willing to have a conversation with me so we can become better friends. It never happens and I have lost almost all hope in life.','2017-08-31 00:00:00',2),(2,'Why Can’t We Agree on What It Means to Be Friends?','If you’ve been following the #SquadGoals–style veneration of female friendship lately, you’ve probably missed some pretty sobering research on the nature of platonic love. One recent study dashed all of my Golden Girls dreams with the conclusion that, in old age, family still matters most. The Times dealt another crushing blow, reporting on research that shows “only about half of perceived friendships are mutual.” Other studies have consistently found similar results.\n\nAfter I clicked on the Times scaremongering headline — ”Do Your Friends Actually Like You?” — I had to suppress the urge to ask all of my friends to rate our closeness on a scale of 0 to 5. Instead, I read the actual study. And I came to a different conclusion: The data doesn’t prove that our friendships are un-reciprocated, or that our friends don’t like us. Instead, it shows that we can’t agree on what it means to be friends.\n\nMost of us apply the label “friend” to a shockingly wide range of people. Sure, everyone knows that a Facebook contact is not the same as your oldest confidante is not the same as your office-lunch buddy. But these categories are nebulous and often shifting. It’s strange to suddenly realize that a work friendship has become something more, just as it can be awkward to realize our bestie tier has emptied out and it’s time to invest in some new friendships. And we almost never have these conversations explicitly.','2017-11-30 00:00:00',7),(3,'Some ideas on relationships','If you’ve been following the #SquadGoals–style veneration of female friendship lately, you’ve probably missed some pretty sobering research on the nature of platonic love. One recent study dashed all of my Golden Girls dreams with the conclusion that, in old age, family still matters most. The Times dealt another crushing blow, reporting on research that shows “only about half of perceived friendships are mutual.” Other studies have consistently found similar results.\n\nAfter I clicked on the Times scaremongering headline — ”Do Your Friends Actually Like You?” — I had to suppress the urge to ask all of my friends to rate our closeness on a scale of 0 to 5. Instead, I read the actual study. And I came to a different conclusion: The data doesn’t prove that our friendships are un-reciprocated, or that our friends don’t like us. Instead, it shows that we can’t agree on what it means to be friends.\n\nMost of us apply the label “friend” to a shockingly wide range of people. Sure, everyone knows that a Facebook contact is not the same as your oldest confidante is not the same as your office-lunch buddy. But these categories are nebulous and often shifting. It’s strange to suddenly realize that a work friendship has become something more, just as it can be awkward to realize our bestie tier has emptied out and it’s time to invest in some new friendships. And we almost never have these conversations explicitly.','2018-03-06 00:00:00',5),(4,'Travel for dates','If you’ve been following the #SquadGoals–style veneration of female friendship lately, you’ve probably missed some pretty sobering research on the nature of platonic love. One recent study dashed all of my Golden Girls dreams with the conclusion that, in old age, family still matters most. The Times dealt another crushing blow, reporting on research that shows “only about half of perceived friendships are mutual.” Other studies have consistently found similar results.\n\nAfter I clicked on the Times scaremongering headline — ”Do Your Friends Actually Like You?” — I had to suppress the urge to ask all of my friends to rate our closeness on a scale of 0 to 5. Instead, I read the actual study. And I came to a different conclusion: The data doesn’t prove that our friendships are un-reciprocated, or that our friends don’t like us. Instead, it shows that we can’t agree on what it means to be friends.\n\nMost of us apply the label “friend” to a shockingly wide range of people. Sure, everyone knows that a Facebook contact is not the same as your oldest confidante is not the same as your office-lunch buddy. But these categories are nebulous and often shifting. It’s strange to suddenly realize that a work friendship has become something more, just as it can be awkward to realize our bestie tier has emptied out and it’s time to invest in some new friendships. And we almost never have these conversations explicitly.','2018-03-06 00:00:00',3),(5,'Sunny hobbies','But when it came time to “thumbs up” other women — Hey! VINA’s equivalent of the swipe-right — I was reluctant. It was apparent that most women on the app were new in town and looking for core besties, and I worried that I didn’t have room in my life for the kind of bonding they were after. Or they chose to put their career information front and center — and I wasn’t looking for networking. I had to pause and ask myself: What was I doing on this app, anyway?\n\n“We all go through ebbs and flows in our relationships,” Olivia Poole, one of Hey! VINA’s founders, told me. “Sometimes you’re maxed out and couldn’t possibly think of adding another relationship to your plate. Sometimes you are high-capacity but have an interest in taking up CrossFit, and would love to have a friend who’s doing the same thing. It depends on where your priorities are.” The app doesn’t ask you to state your intentions, though. The act of joining Hey! VINA is a signal that you want to form some kind of friendships. But the nuances of what that means aren’t addressed in the profile survey.','2018-01-15 00:00:00',8),(6,'Kids and Friends','This problem plagues friendships outside the app, too. Most of us spend a lifetime learning how to articulate our needs and expectations in romantic relationships. With friends, we rarely attempt it. If you’re using a dating app, chances are you have some idea of whether you’re looking for deep commitment or just someone to sleep with. And when romances get more serious or come to an end, typically there’s a conversation about the change. But explicit intentions and “discuss the relationship” talks are rare among friends. Even if we can feel that something has shifted between us, we almost never directly acknowledge it.\n\nI’ve wondered whether it was too soon to approach a new friend for advice on a big life dilemma. I’ve had “work wives” fade to near-strangers after I got a new job, without ever talking about it. I’ve had acquaintances become close friends after we’ve bumped into each other so many times that we started to hang out intentionally and, later, to rely on each other. I’ve had friendships tested to their limits when one of us moves or starts a relationship or has a kid. But there have only been a few times in my life when a friend has said to me, “I need more from you than you’re giving right now,” or “Let’s take this friendship to the next level.”\n\nAs an adult, I’ve learned the power of the forthright phrase “Can we be friends?” But I’m not so good at asking “Are we still friends? Are we friends in the same way? And are we both okay with that?” The best-friend breakup is notable for being one of the rare occasions when we openly discuss a shift in friendship status. Most of the time, though, it’s not dramatic. One of us just ghosts.','2018-02-22 17:05:00',6),(7,'Educational Hobby','I thought about all of this as I hesitated to swipe right on the many awesome women on Hey! VINA. True friendship, like romance, is alchemy. Bonds are sparked not just by common hobbies or compatible personalities or even geographical proximity, but by timing and emotional state. The question, then, is not whether I like Nancy Meyers movies, or whether I’d rather meet in a coffee shop or a wine bar. The question is how much space I have in my life for new friends (not much), and what sort of friendship I need right now (probably someone who is already connected to my existing friends, due to the aforementioned time constraint).\n\nPsychologists say that the “natural” social-group size for humans is about 150 people. Most of those people fall somewhere on the friend spectrum, and it only makes sense that they can’t all be top-priority. Most friendships take root when there is similar capacity on both sides. One of the most successful blind-friend-dates I’ve ever set up was between a friend who had just moved to town and another who had just gone through a breakup. They were both remaking their friend groups in big ways, and found easy space for each other. “Women and men, from a social psychology perspective, tend to make and build friendships in really different ways,” Poole says. “Men will more often than not be building relationships based on shared activities and interests. With women it’s more about emotional disclosure: ‘Hey, I’m also going through a breakup.’”\n\nEven though friendship is slowly being recognized for being as important as romantic relationships, it can feel awkward to apply the same standards. That leaves a lot of room for mismatched expectations. I wonder how many more friendships would last well into old age if we explicitly discussed our Golden Girls dreams. Or how many more friendships would be healthy and mutual if we talked about what that means to each of us. We need a little less conversation about the joys of friendship, and a little more conversation about the expectations that come with it.','2018-03-06 09:15:00',6);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `fk_post_has_tag_tag1_idx` (`tag_id`),
  CONSTRAINT `fk_post_has_tag_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_post_has_tag_tag1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tag`
--

LOCK TABLES `post_tag` WRITE;
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` VALUES (4,1),(4,2),(1,3),(2,4),(4,4),(7,4),(7,5),(1,6),(7,6),(2,7),(4,7),(2,8),(7,8);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (7,'education'),(3,'food'),(6,'hobby'),(5,'kids'),(4,'pets'),(8,'relationships'),(2,'sport'),(1,'travelling');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-10 19:51:16
