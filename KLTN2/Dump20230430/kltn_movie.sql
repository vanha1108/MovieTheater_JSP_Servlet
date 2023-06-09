-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: kltn
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trailer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `release_date` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `age_restricted` int DEFAULT NULL,
  `actors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theater` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (3,'Argonuts','images17.jpg','https://www.youtube.com/embed/UQi44Yoef98?hd=1','An adventurous mouse sets off to battle dangerous creatures in Ancient Greece, including Poseidon.','2023-04-17',123,12,'Kaycie Chase, Christophe Lemoine, Emmanuel Curtil, Michel Tureau, Pierre Richard','David Alaux','2'),(4,'13 exorcismos','lien-minh-sieu-thu-DC-DC-league-.jpg','https://www.youtube.com/embed/LjuiXQ8Pqz0?hd=1','After participating in a sÃ©ance, young Laura begins to behave strangely. Alarmed, her parents ask Father Olmedo, one of the few exorcists authorized by the Vatican to intervene in cases of demonic possession, for help.','2023-04-18',123,12,'MarÃ­a Romanillos, Ruth DÃ­az, Urko OlazÃ¡bal, Pablo Revuelta, JosÃ© SacristÃ¡n','Jacobo MartÃ­nez','3'),(6,'Shazam! Fury of the Gods','Titanic-Wallpaper.png','https://www.youtube.com/embed/o6KkjM9kIKA?hd=1','Billy Batson and his foster siblings, who transform into superheroes by saying \"Shazam!\", are forced to get back into action and fight the Daughters of Atlas, who they must stop from using a weapon that could destroy the world.','2023-05-08',100,12,'Zachary Levi, Asher Angel, Jack Dylan Grazer, Adam Brody, Grace Fulton','David F. Sandberg','3'),(7,'Renfield','021f45efd0e14637bd692b410183c8df.png','https://www.googletagmanager.com/ns.html?id=GTM-WPB2J8M','Having grown sick and tired of his centuries as Dracula\'s lackey, Renfield finds a new lease on life â and maybe even redemption â when he falls for feisty, perennially angry traffic cop Rebecca Quincy.','2023-05-08',90,12,'Nicholas Hoult, Nicolas Cage, Awkwafina, Ben Schwartz, Adrian Martinez','Chris McKay','1'),(8,'The Pope\'s Exorcist','images10.png','https://www.googletagmanager.com/ns.html?id=GTM-WPB2J8M','Father Gabriele Amorth, Chief Exorcist of the Vatican, investigates a young boy\'s terrifying possession and ends up uncovering a centuries-old conspiracy the Vatican has desperately tried to keep hidden.','2023-05-08',120,18,'Russell Crowe, Daniel Zovatto, Alex Essoe, Franco Nero, Laurel Marsden','Julius Avery','1'),(9,' The First Slam Dunk','avatar-tro-lai-voi-phien-ban-nang-cap-tuyet-dep-1530.png','https://www.googletagmanager.com/ns.html?id=GTM-WPB2J8M','Hanamichi Sakuragi is a delinquent with a long history of getting dumped by girls. After enrolling in Shohoku High School, Hanamichi becomes interested in a girl named Haruko who loves the game of basketball, so he joins the school\'s team. Months later, him and the team challenge the inter-high basketball champions, the Sannoh school.','2023-05-09',120,10,'ShÅ«go Nakamura, Jun Kasama, Shinichiro Kamio, Subaru Kimura, Kenta Miyake','Takehiko Inoue','1'),(10,'Father And Sons','316f1108b588b14bc1a6fd3626cf4f10.png','https://www.googletagmanager.com/ns.html?id=GTM-WPB2J8M','oseph and his two sons, Joachim and Ivan, form a close-knit family but fail to see that each one is losing control of his life. Joachim is supposed to be studying psychiatry but spends most of his time daydreaming about his ex-girlfriend, Ivan cannot fit in at school despite being very smart, and Joseph has secretly quit his job as a doctor and is trying to become a writer. ','2023-05-23',120,12,'Vincent Lacoste, BenoÃ®t Poelvoorde, Mathieu Capella, AnaÃ¯s Demoustier, NoÃ©mie Lvovsky','FÃ©lix Moati','3'),(11,'Missing','maxresdefault.png','https://www.googletagmanager.com/ns.html?id=GTM-WPB2J8M','When her mother disappears while on vacation in Colombia with her new boyfriend, Juneâs search for answers is hindered by international red tape. Stuck thousands of miles away in Los Angeles, June creatively uses all the latest technology at her fingertips to try and find her before','2023-05-16',123,20,'Storm Reid, Joaquim de Almeida, Ken Leung, Amy Landecker, Daniel Henney','Nicholas D. Johnson, Will Merrick','1'),(12,'Assassin Club','images20.jpg','https://www.googletagmanager.com/ns.html?id=GTM-WPB2J8M','When her mother disappears while on vacation in Colombia with her new boyfriend, Juneâs search for answers is hindered by international red tape. Stuck thousands of miles away in Los Angeles, June creatively uses all the latest technology at her fingertips to try and find her before','2023-05-16',123,20,'Storm Reid, Joaquim de Almeida, Ken Leung, Amy Landecker, Daniel Henney','Nicholas D. Johnson, Will Merrick','1'),(13,'Puss in Boots: The Last Wish','images21.jpg','https://www.googletagmanager.com/ns.html?id=GTM-WPB2J8M','Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.','2023-05-16',123,20,'Antonio Banderas, Florence Pugh, Salma Hayek, Olivia Colman, Wagner Moura','Nicholas D. Johnson, Will Merrick','3'),(14,'The Perfect Couple','images22.jpg','https://www.googletagmanager.com/ns.html?id=GTM-WPB2J8M','A love story between Kheow, a rowdy Southern boy and Wan, a sweet Northern girl. Their parents scheme a matchmaking by asking them to sell a deserted house in Chiangmai together, but the horrid condition of the house makes this mission nearly impossible. The boy and girl also face the language barrier as they speak different dialects. They also need to find a new job when their meager pocket money is running out. Wan gets a job at Tak Food Center while Kheow earns a position at Mom Thanaddeak Restaurant. They also meet Rew, a real estate businessman, and Prae a chic girl who make Kheow and Wanâs lives even more complicated.','2023-05-16',123,20,'Nachat Juntapun, Tungsupakul Pattrakorn, Sukavin Kaewpikul, Maya Chanitcha Pimthong','Nicholas D. Johnson, Will Merrick','1'),(15,'Creed III','img23.jpg','https://www.googletagmanager.com/ns.html?id=GTM-WPB2J8M','After dominating the boxing world, Adonis Creed has been thriving in both his career and family life. When a childhood friend and former boxing prodigy, Damien Anderson, resurfaces after serving a long sentence in prison, he is eager to prove that he deserves his shot in the ring. The face-off between former friends is more than just a fight. To settle the score, Adonis must put his future on the line to battle Damien - a fighter who has nothing to lose.','2023-03-16',123,20,'Michael B. Jordan, Tessa Thompson, Jonathan Majors, Phylicia Rashad, Florian Munteanu  ','Nicholas D. Johnson, Will Merrick','1'),(16,'Argonuts','img24.jpg','https://www.googletagmanager.com/ns.html?id=GTM-WPB2J8M','An adventurous mouse sets off to battle dangerous creatures in Ancient Greece, including Poseidon.','2023-03-16',123,20,'Michael B. Jordan, Tessa Thompson, Jonathan Majors, Phylicia Rashad, Florian Munteanu  ','David Alaux','1'),(17,'The One','imh25.jpg','https://www.googletagmanager.com/ns.html?id=GTM-WPB2J8M','On August 24, 1981, the newlyweds Larisa and Vladimir Savitsky stepped on board the plane following the flight Komsomolsk-on-Amur - Blagoveshchensk. 30 minutes before landing, the civilian aircraft AN-24 collided with another aircraft and broke into pieces at an altitude of more than 5 kilometers above the ground. No one was supposed to survive ... but a miracle happened. Larisa Savitskaya woke up in the middle of the wreckage of the plane in the impenetrable taiga. Now she herself had to create a real miracle, which only a strong-minded person is capable of.','2023-03-16',123,20,'Nadezhda Kaleganova, Maksim Ivanov-Marenin, Victor Dobronravov, Anna Dubrovskaya, Vladimir Vinogradov','Dmitriy Suvorov','2'),(18,'How to Save the Immortal','img30.jpg','https://www.googletagmanager.com/ns.html?id=GTM-WPB2J8M','For some reason, forever young and always immaculately dressed, Koschey has been unable to find a bride for three hundred years. He intimidated, and kidnapped, and turned various princesses into frogs, but these courtship did not help the prince of darkness. Meanwhile, the beautiful hero Varvara only does what she fights off in the arena from suitors who covet her dowry. However, having taken possession of the Koshcheev needle, Tsar Peas figure out how to get to Varvara. But he didnât take into account one thing - although Koshcheiâs death is enclosed in a needle, love can still come to life in his heart','2023-03-16',120,20,'Victor Dobronravov, Elizaveta Boyarskaya, Roman Artemyev, Irina Savina, Ekaterina Tarasova','Roman Artemyev','1'),(21,'Bearman','64365a1a3345d781362819.jpeg','https://www.youtube.com/embed/aITUaPgmMQI?hd=1','Based on the Danggun myth that bears become humans after eating garlic and mugwort, it depicts the story of twin Asiatic Bear brothers, who were managed by the Pro-North Korean Institute of Technology','2023-04-29',123,123,'Park Sung-woong, Lee Yi-kyung, Yeom Hye-ran, Oh Dal-Su, Choi Min-soo','Park Sung-kwang','1'),(22,'Dungeons & Dragons: Honor Among Thieves','643659893261e517212956.jpeg','https://www.youtube.com/embed/SYkZHSDdkz0?hd=1','https://www.youtube.com/embed/SYkZHSDdkz0?hd=1','2023-04-30',120,12,'John Francis Daley, Jonathan M. Goldstein','Brian Goldner, Roy Lee, Courtney Solomon','1');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-30 11:06:23
