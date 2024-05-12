-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: springbootdb
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `account_id` int NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_password` varchar(50) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_user`
--

DROP TABLE IF EXISTS `end_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `end_user` (
  `user_id` int NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_age` int NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `account_id` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_user`
--

LOCK TABLES `end_user` WRITE;
/*!40000 ALTER TABLE `end_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `end_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `id` int NOT NULL,
  `song_id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `singer`
--

DROP TABLE IF EXISTS `singer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `singer` (
  `singer_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singer`
--

LOCK TABLES `singer` WRITE;
/*!40000 ALTER TABLE `singer` DISABLE KEYS */;
INSERT INTO `singer` VALUES (1,'Son Tung MTP','https://www.google.com/url?sa=i&url=https%3A%2F%2Fopen.spotify.com%2Fartist%2F5dfZ5uSmzR7VQK0udbAVpf&psig=AOvVaw0qaJFP2llxmir0mMk1wIND&ust=1715505602756000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMit-MOihYYDFQAAAAAdAAAAABAE');
/*!40000 ALTER TABLE `singer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song` (
  `song_id` bigint NOT NULL AUTO_INCREMENT,
  `song_title` varchar(100) NOT NULL,
  `lyric` mediumtext NOT NULL,
  `image` text NOT NULL,
  `time` varchar(10) NOT NULL,
  `singer_id` int NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'Chung ta khong thuoc ve nhau','Thuộc về, về, về nơi này\nChúng ta không thuộc về nhau (chúng ta không thuộc về nhau)\nChúng ta không thuộc về (chúng ta không thuộc)\nThuộc về, về, về nơi này\nNiềm tin đã mất, giọt nước mắt cuốn kí ức anh chìm sâu\nTình về nơi đâu? Cô đơn đôi chân lạc trôi giữa bầu trời\nMàn đêm che dấu, từng góc tối khuất lấp phía sau bờ môi\nTại vì anh thôi, yêu say mê nên đôi khi quá dại khờ\nNhắm mắt ơ thờ, anh không muốn lạc vào trong nỗi đau này\nPhía trước bây giờ ai đang nắm chặt bàn tay của em vậy? (Em vậy)\nMông lung như một trò đùa (trò đùa), anh xin giơ tay rút lui thôi (do ai?)\nTrách ai bây giờ đây? Ooh-ooh-ooh-ooh-ooh\nChúng ta không thuộc về nhau\nChúng ta không thuộc về nhau\nChúng ta không thuộc về nhau\nEm hãy cứ đi bên người mà em cần\nTrái tim không thuộc về nhau\nGiấc mơ không là của nhau\nXóa câu ca buồn chiều mưa\nAnh lỡ xóa luôn yêu thương ngày xưa rồi\nChúng ta không thuộc về nhau\nChúng ta không thuộc về (về, về, về nơi này)\nChúng ta không thuộc về nhau\nChúng ta không thuộc về (về, về, về nơi này)\nHey (hey), từng đêm qua (từng đêm qua)\nCơn mưa bao vây chia rời đôi ta (rời đôi ta)\nEm (em), ngày hôm qua (ngày hôm qua)\nCuốn gió theo mây đi về nơi xa (về nơi xa)\nTrời xanh rộng bao la (yeah), anh lê đôi chân mình\nBơ vơ lang thang, có lẽ em đang yên vui bên nhân tình\nQuên đi, để anh nhớ, hơi men để anh mơ\nNơi đâu để anh giấu một nỗi buồn vào trong thơ\nNhắm mắt ơ thờ, anh không muốn lạc vào trong nỗi đau này\nPhía trước bây giờ ai đang nắm chặt bàn tay của em vậy?\nMông lung như một trò đùa, anh xin giơ tay rút lui thôi (do ai?)\nTrách ai bây giờ đây? Ooh-ooh-ooh-ooh-ooh\nChúng ta không thuộc về nhau\nChúng ta không thuộc về nhau\nChúng ta không thuộc về nhau\nEm hãy cứ đi bên người mà em cần\nTrái tim không thuộc về nhau\nGiấc mơ không là của nhau\nXóa câu ca buồn chiều mưa\nAnh lỡ xóa luôn yêu thương ngày xưa rồi\nChúng ta không thuộc về nhau (ah, ah)\nChúng ta không thuộc về (về, về, về nơi này)\nChúng ta không thuộc về nhau (ah, ah, ah)\nChúng ta không thuộc về (về, về, về nơi này)\nChúng ta không thuộc về nhau, về nhau, về nhau\nKhông thuộc về nhau, về nhau, về nhau\nKhông thuộc về nhau, oh-oh-oh-oh\nChúng ta không thuộc về nhau (chúng ta không thuộc về nhau, về nhau, về nhau)\nKhông thuộc về nhau, về nhau, về nhau\nKhông thuộc về nhau, ah-ah-ah-ah-ah-ah-ah-ah-ah-ah-ah\nChúng ta không thuộc về nhau\nChúng ta không thuộc về nhau\nChúng ta không thuộc về nhau\nEm hãy cứ đi bên người mà em cần\nTrái tim không thuộc về nhau\nGiấc mơ không là của nhau\nXoá câu ca buồn chiều mưa\nAnh lỡ xoá luôn yêu thương ngày xưa rồi\nChúng ta không thuộc về nhau (goodbye forever, oh-oh)\nChúng ta không thuộc về nhau (oh-oh)\nChúng ta không thuộc về nhau (goodbye forever, oh-oh-oh), ah-ah-ah (oh-oh)\nChúng ta không thuộc về nhau (goodbye forever, oh-oh)\nChúng ta không thuộc về nhau (oh-oh)\nChúng ta không thuộc về nhau (goodbye forever, oh-oh-oh), ah-ah-ah (oh-oh-oh)','https://www.google.com/url?sa=i&url=https%3A%2F%2Fvi.wikipedia.org%2Fwiki%2FCh%25C3%25BAng_ta_kh%25C3%25B4ng_thu%25E1%25BB%2599c_v%25E1%25BB%2581_nhau&psig=AOvVaw3C9ojWQmUYdBPe-Ed0_jeG&ust=1715505785848000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNDO7JujhYYDFQAAAAAdAAAAABAE','03:53',1);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-12 21:56:24
