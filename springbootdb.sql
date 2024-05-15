CREATE DATABASE  IF NOT EXISTS `springbootdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `springbootdb`;
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
  `email` varchar(100) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (0,'abc123','1234567','abc@gmail.com',0,NULL,NULL);
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
  `account_id` int NOT NULL,
  `age` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_user`
--

LOCK TABLES `end_user` WRITE;
/*!40000 ALTER TABLE `end_user` DISABLE KEYS */;
INSERT INTO `end_user` VALUES (0,'Ben',23,0,0,NULL,NULL);
/*!40000 ALTER TABLE `end_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_user_accounts`
--

DROP TABLE IF EXISTS `end_user_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `end_user_accounts` (
  `user_id` bigint NOT NULL,
  `accounts_id` bigint NOT NULL,
  UNIQUE KEY `UK_17j5l4pkwjogh46bxb2m3fvfh` (`accounts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_user_accounts`
--

LOCK TABLES `end_user_accounts` WRITE;
/*!40000 ALTER TABLE `end_user_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `end_user_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `account_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (0,'playlist#1',0);
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
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
INSERT INTO `singer` VALUES (0,'Son Tung MTP','https://suckhoedoisong.qltns.mediacdn.vn/zoom/480_300/324455921873985536/2022/7/7/sontung-mv-1657186438986-1657206110049-16572061103791334356254-36-0-461-680-crop-16572061905571570357222.jpg'),(1,'Taylor Swift','https://imageio.forbes.com/specials-images/imageserve/653fcd49893eb27774ba7ecc/65th-GRAMMY-Awards---Arrivals/960x0.jpg?format=jpg&width=960'),(2,'Jennie','https://media.vov.vn/sites/default/files/styles/large/public/2023-12/moi-ra-mat-ca-khuc-you-me-cua-jennie-blackpink-thong-tri-cac-bxh-am-nhac-20231008222608.jpg'),(3,'Jungkook','https://www.koimoi.com/wp-content/new-galleries/2023/07/bts-jungkook-to-make-his-acting-debut-soon-k-pop-star-shares-his-plans-for-near-future-after-discovering-he-can-act-001.jpg'),(4,'NewJeans','https://media-cdn-v2.laodong.vn/storage/newsportal/2024/3/27/1319908/Newjeans-Ditto-3.jpg'),(5,'Shawn Mendes','https://www.shawnmendesofficial.com/files/2018/04/release_201804_ShawnMendes_SM_Cover_layeredSimple.jpg'),(6,'Charlie Puth','https://cdn.tuoitre.vn/zoom/700_700/471584752817336320/2023/6/23/charlie-puth-3-1687502439739626099864-42-0-668-1196-crop-16875046837981657703966.jpeg');
/*!40000 ALTER TABLE `singer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `singer_songs`
--

DROP TABLE IF EXISTS `singer_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `singer_songs` (
  `singer_singer_id` bigint NOT NULL,
  `songs_song_id` bigint NOT NULL,
  UNIQUE KEY `UK_6l1jhapmhqjhaupxjoxb3llhh` (`songs_song_id`),
  CONSTRAINT `FK6iursg7fcxbqnx8diyjkd8a3g` FOREIGN KEY (`songs_song_id`) REFERENCES `song` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singer_songs`
--

LOCK TABLES `singer_songs` WRITE;
/*!40000 ALTER TABLE `singer_songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `singer_songs` ENABLE KEYS */;
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
  `singer_id` bigint DEFAULT NULL,
  `playlist_id` int NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (0,'Chung ta khong thuoc ve nhau','Thuộc về, về, về nơi này/\nChúng ta không thuộc về nhau (chúng ta không thuộc về nhau)/\nChúng ta không thuộc về (chúng ta không thuộc)/\nThuộc về, về, về nơi này/\nNiềm tin đã mất, giọt nước mắt cuốn kí ức anh chìm sâu/\nTình về nơi đâu? Cô đơn đôi chân lạc trôi giữa bầu trời/\nMàn đêm che dấu, từng góc tối khuất lấp phía sau bờ môi/\nTại vì anh thôi, yêu say mê nên đôi khi quá dại khờ/\nNhắm mắt ơ thờ, anh không muốn lạc vào trong nỗi đau này/\nPhía trước bây giờ ai đang nắm chặt bàn tay của em vậy? (Em vậy)/\nMông lung như một trò đùa (trò đùa), anh xin giơ tay rút lui thôi (do ai?)/\nTrách ai bây giờ đây? Ooh-ooh-ooh-ooh-ooh/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về nhau/\nEm hãy cứ đi bên người mà em cần/\nTrái tim không thuộc về nhau/\nGiấc mơ không là của nhau/\nXóa câu ca buồn chiều mưa/\nAnh lỡ xóa luôn yêu thương ngày xưa rồi/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về (về, về, về nơi này)/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về (về, về, về nơi này)/\nHey (hey), từng đêm qua (từng đêm qua)/\nCơn mưa bao vây chia rời đôi ta (rời đôi ta)/\nEm (em), ngày hôm qua (ngày hôm qua)/\nCuốn gió theo mây đi về nơi xa (về nơi xa)/\nTrời xanh rộng bao la (yeah), anh lê đôi chân mình/\nBơ vơ lang thang, có lẽ em đang yên vui bên nhân tình/\nQuên đi, để anh nhớ, hơi men để anh mơ/\nNơi đâu để anh giấu một nỗi buồn vào trong thơ/\nNhắm mắt ơ thờ, anh không muốn lạc vào trong nỗi đau này/\nPhía trước bây giờ ai đang nắm chặt bàn tay của em vậy?/\nMông lung như một trò đùa, anh xin giơ tay rút lui thôi (do ai?)/\nTrách ai bây giờ đây? Ooh-ooh-ooh-ooh-ooh/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về nhau/\nEm hãy cứ đi bên người mà em cần/\nTrái tim không thuộc về nhau/\nGiấc mơ không là của nhau/\nXóa câu ca buồn chiều mưa/\nAnh lỡ xóa luôn yêu thương ngày xưa rồi/\nChúng ta không thuộc về nhau (ah, ah)/\nChúng ta không thuộc về (về, về, về nơi này)/\nChúng ta không thuộc về nhau (ah, ah, ah)/\nChúng ta không thuộc về (về, về, về nơi này)/\nChúng ta không thuộc về nhau, về nhau, về nhau/\nKhông thuộc về nhau, về nhau, về nhau/\nKhông thuộc về nhau, oh-oh-oh-oh/\nChúng ta không thuộc về nhau (chúng ta không thuộc về nhau, về nhau, về nhau)/\nKhông thuộc về nhau, về nhau, về nhau/\nKhông thuộc về nhau, ah-ah-ah-ah-ah-ah-ah-ah-ah-ah-ah/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về nhau/\nEm hãy cứ đi bên người mà em cần/\nTrái tim không thuộc về nhau/\nGiấc mơ không là của nhau/\nXoá câu ca buồn chiều mưa/\nAnh lỡ xoá luôn yêu thương ngày xưa rồi/\nChúng ta không thuộc về nhau (goodbye forever, oh-oh)/\nChúng ta không thuộc về nhau (oh-oh)/\nChúng ta không thuộc về nhau (goodbye forever, oh-oh-oh), ah-ah-ah (oh-oh)/\nChúng ta không thuộc về nhau (goodbye forever, oh-oh)/\nChúng ta không thuộc về nhau (oh-oh)/\nChúng ta không thuộc về nhau (goodbye forever, oh-oh-oh), ah-ah-ah (oh-oh-oh)/','https://upload.wikimedia.org/wikipedia/vi/0/01/Ch%C3%BAng_ta_kh%C3%B4ng_thu%E1%BB%99c_v%E1%BB%81_nhau.jpeg','03:53',0,0),(1,'Love Story','We were both young when I first saw you/\nI close my eyes/\nAnd the flashback starts/\nI\'m standing there/\nOn a balcony in summer air/\n\nSee the lights,/\nSee the party,/\nthe ball gowns\nI see you make your way through the crowd/\nYou say hello/\nLittle did I know/\n\nThat you were Romeo, you were throwing pebbles/\nAnd my daddy said stay away from Juliet/\nAnd I was crying on the staircase/\nBegging you please don\'t go, and I said/\n\nRomeo take me somewhere we can be alone/\nI\'ll be waiting all there\'s left to do is run/\nYou\'ll be the prince and I\'ll be the princess/\nIt\'s a love story baby just say yes/\n\nSo I sneak out to the garden to see you/\nWe keep quiet cause we\'re dead if they knew/\nSo close your eyes/\nEscape this town for a little while/\n\nCause you were Romeo I was a scarlet letter/\nAnd my daddy said stay away from Juliet/\nBut you were everything to me/\nI was begging you please don\'t go and I said/\n\nRomeo take me somewhere we can be alone/\nI\'ll be waiting all there\'s left to do is run/\nYou\'ll be the prince I\'ll be the princess/\nIt\'s a love story baby just say yes/\n\nRomeo save me, they try to tell me how to feel/\nThis love is difficult, but it\'s real,/\nDon\'t be afraid/\nWe\'ll make it out of this mess/\nIt\'s a love story baby just say yes/\n\nOh oh,/\n\nI got tired of waiting/\nWondering if you were ever coming around/\nMy faith in you was fading/\nWhen I met you on the outskirts of town. and I said/\n\nRomeo save me I\'ve been feeling so alone/\nI keep waiting for you but you never come/\nIs this in my head, I don\'t know what to think/\nHe kneels to the ground and pulled out a ring/\n\nAnd said/\n\nMarry me Juliet you\'ll never have to be alone/\nI love you and that\'s all I really know/\nI talked to your dad, go pick out a white dress/\nIt\'s a love story baby just say yes/\n\nOh, oh, oh/\n\nOh, oh, oh, oh/','https://i.ytimg.com/vi/pj3Wepr4WS4/mqdefault.jpg','03:57',1,0),(2,'You and Me','You know I gotcha/\nYou know that I got you like that/\nAin\'t nobody gonna have your back like the way I do/\nYou love it, just say you do/\nYou know you got me/\nEverything you do, everything you did/\nEverything I wish I was with, makes me feel alright/\nI\'m just saying, so/\n\nI really like it/\nNothin\' in the world can make me feel the way you do, the things you do/\nI really like it/\nNothin\' in the world can make me feel the way you do, the things you do/\n\nI love you and me/\nDancing in the moonlight/\nNobody can see/\nIt\'s just you and me tonight/\nI love you and me/\nDancing in the moonlight/\nNobody can see/\nIt\'s just you and me tonight/\n\nLook at you, now look at me/\nHow you ever, ever gonna find someone like this?/\nLook at you, now look at me/\nHow you ever, ever gonna find someone like this?/\n\nYou\'re the reason my heart skips, drops/\nJust a little touch, my world stops/\nFinally, I know that you\'re mine/\nI don\'t wanna fall/\nDon\'t wanna play this game of love, oh-eh-oh/\nThere\'s nowhere to hide/\n\nI really like it/\nNothing in the world can make me feel the way you do, the things you do/\nI really like it/\nNothing in the world can make me feel the way you do, the things you do/\n\nI love you and me/\nDancing in the moonlight/\nNobody can see/\nIt\'s just you and me tonight/\nI love you and me/\nDancing in the moonlight\nNobody can see/\nIt\'s just you and me tonight/\n\nLook at you, now look at me/\nHow you ever, ever gonna find someone like this?/\nLook at you, now look at me/\nHow you ever, ever gonna find someone like this?/\n\n(Ever, ever gonna find someone like this)/\n(Someone like this)/\n\nUnder the moonlight, all in the mood, like/\nYou should put a ring on it, “I do, I do” vibes/\nDon’t get the blue light, we gettin’ nasty/\nI found my new ride, here in the backseat/\nLove so good, I bet he be cashing out/\nGot him feeling that rush like he passin’ out/\nCouldn’t handle these curves, so we crashin’ now/\nBeep, beep, with the way I can back it out/\n\n \n\nI love you and me (Moonlight)/\n(Moonlight)/\nI love you and/\nI love you and me/','https://avatar-ex-swe.nixcdn.com/song/2023/10/06/2/5/3/5/1696563949492_640.jpg','03:01',2,0),(3,'3D (ft. Jack Harlow)','1, 2, 3D/\n\nI can\'t touch you through the phone/\nOr kiss you through the universe/\nIn another time zone/\nIt\'s the only time I can\'t reverse/\nBut when there\'s two dimensions/\nThere\'s only one I\'m missing/\nAnd if you feel alone/\nYou don\'t have to feel that no more/\n\nI just wanna see you like that/\nSee you like that, uh uh/\n\nSo if you\'re ready (So if you\'re ready)/\nAnd if you\'ll let me (And if you\'ll let me)/\nI wanna see it in motion, in 3D (Uh uh)/\nYou won\'t regret me (You won\'t regret me)/\nChampagne confetti (Champagne confetti)/\nI wanna see it in motion, in 3D/\n\'Cause you know how I like it, girl/\n3D/\nYou know how I like it, girl/\n3D/\n\nBody to body to body to body to body/\nYou and me, baby, you know that we got it/\nSo don\'t go getting me started/\n\'Cause you know I get hot hearted/\nBaby, oh baby, oh baby, you making me crazy/\nRain, rain, rain, you can\'t fake it/\nYou give me brand new emotion/\nYou got me drinking that potion/\n\nI just wanna see you like that/\nSee you like that, uh uh/\n\nSo if you\'re ready (So if you\'re ready)/\nAnd if you\'ll let me (And if you\'ll let me)/\nI wanna see it in motion, in 3D/\nYou won\'t regret me (You won\'t regret me)/\nChampagne confetti (Hey)/\nI wanna see it in motion, in 3D/\n\'Cause you know how I like it, girl/\nYou know how I like it/\n3D/\nYou know how I like it, girl/\nYou know how I like it/\n3D/\n\'Cause you know how I like it, girl/\nYou know how I like it/\n3D/\nYou know how I like it, girl/\n3D/\n\nI\'m on my Jung Kook/\nTake a chick off one look/\nAnd when they get took/\nThey don\'t ever get untook/\nWhen I seen that body you would think it was a dead body/\nThe way I told my boys come look/\nI used to take girls up to Stony Brook/\nAnd steal they hearts like some crook/\nTrue story/\nNow when I hold somebody\'s hand, it\'s a new story/\nAll my ABGs get cute for me/\nI had one girl, too boring (One girl)/\nTwo girls, that was cool for me (Two girls)/\nThree girls, damn, dude\'s horny/\nFour girls, okay now you whoring (Hey, hey, hey)/\nI\'m loose/\nI done put these shrooms to good use/\nI done put my city on my back/\nAnd the world know my name, I\'m the truth/\n\nSo if you\'re ready/\nAnd if you\'ll let me/\nI wanna see it in motion, in 3D/\nYou won\'t regret me (Won\'t regret me)/\nChampagne, confetti (Champagne, confetti)/\nI wanna see it in motion, in 3D (Just show it to me girl now)/\n\'Cause you know how I like it, girl/\n3D/\nYou know how I like it, girl/\nOh yeah, alright/\n3D/\n\'Cause you know how I like it, girl/\nYou know how I like it/\n3D/\nYou know how I like it girl/\n3D/\n\nI got you playing with yourself on camera/\nYou my bae, just like Tampa/\nSpeaking of bucks, I got those, and as for fucks, well, not those/\nAnd as for thots, well do you really wanna know? I thought so/\nI\'ll fly you from Korea to Kentucky/\nAnd you ain\'t gotta guarantee me nothing, I just wanna see if I get lucky/\nI just wanna meet you in the physical and see if you would touch me/','https://media.zenfs.com/en/stylecaster_935/1abf5e09726822179e9154a29b62180a','03:32',3,0),(4,'Gods','Go-Go-Go-Go-Go-Gods/\nGo-Go-Go-Go-Go-Gods/\n\n(Ayy) This is what you came for/\nBlood on the game ball/\nEverybody droppin\' like rainfall/\n(Uh) This is your moment/\nEyes on the pulpit, kid/\nI think church just opened/\n\nAnd they\'re singin\' your praises, la-la-la/\nScreamin\' your name out la-la-loud/\nOne more step, you\'re immortal now \'cause/\n\nOnce you play God, once you play God/\nThey\'re gonna crumble one by one/\nThen we gon\' ride right into the sun/\nLike it\'s the day my kingdom come/\nBaby, we\'re/\n\nGo-Go-Go-Go-Go-Gods/\nYeah, we\'re/\nGo-Go-Go-Go-Go-Gods/\n\n(Ayy) Welcome to the big show/\nNext on the ladder/\nIs it your name in the rafters?/\nBrief, brief, brief moment of silence/\nBad girl woke up and chose violence/\n\nAnd they\'re singin\' my praises, la-la-la/\nScreamin\' my name out la-la-loud/\nThis is why we\'re immortal now \'cause/\n\nOnce you play God, once you play God/\nThey\'re gonna crumble one by one (Crumble one by one)/\nThen we gon\' ride right into the sun/\nLike it\'s the day my kingdom come/\nBaby, we\'re/\n\nGo-Go-Go-Go-Go-Gods/\nYeah, we\'re/\nGo-Go-Go-Go-Go-Gods/\n\nI\'m on my knees, pray for glory/\nAnyone read this underdog story?/\nI can\'t lose myself again/\nHelp me raise this heart/\nHeart, unbreakable/\n\nOnce you play God, once you play God/\nThey\'re gonna crumble one by one (Crumble one by one)/\nThen we gon\' ride right into the sun/\nLike it\'s the day my kingdom come/\nOnce you play God, once you play God/\nThey\'re gonna crumble one by one/\nThen we gon\' ride right into the sun/\nLike it\'s the day my kingdom come/\nBaby, we\'re/\n\nGo-Go-Go-Go-Go-Gods/\nYeah, we\'re (Gods)/\nGo-Go-Go-Go-Go-Gods/\nGo-Go-Go-Go-Go-Gods/\nYeah, we\'re (Gods)/\nGo-Go-Go-Go-Go-Gods/\n\nOnce you play/','https://preview.redd.it/gods-ft-newjeans-%EB%89%B4%EC%A7%84%EC%8A%A4-official-music-video-worlds-2023-v0-sxq7k3ftb4zb1.jpg?width=640&crop=smart&auto=webp&s=d88e85dd35a632f7a5f68d7123ed065dc88f2da5','03:41',4,0),(5,'Cruel Summer','(Yeah, yeah, yeah, yeah)/\n\nFever dream high in the quiet of the night/\nYou know that I caught it (Oh yeah, you\'re right, I want it)/\nBad, bad boy, shiny toy with a price/\nYou know that I bought it (Oh yeah, you\'re right, I want it)/\n\nKilling me slow, out the window/\nI\'m always waiting for you to be waiting below/\nDevils roll the dice, angels roll their eyes/\nWhat doesn\'t kill me makes me want you more/\n\nAnd it\'s new, the shape of your body/\nIt\'s blue, the feeling I\'ve got/\nAnd it\'s ooh, whoa oh/\nIt\'s a cruel summer/\nIt\'s cool, that\'s what I tell \'em/\nNo rules in breakable heaven/\nBut ooh, whoa oh/\nIt\'s a cruel summer/\nWith you/\n\nHang your head low in the glow of the vending machine/\nI\'m not dying (Oh yeah, you\'re right, I want it)/\nWe say that we\'ll just screw it up in these trying times/\nWe\'re not trying (Oh yeah, you\'re right, I want it)/\n\nSo cut the headlights, summer\'s a knife/\nI\'m always waiting for you just to cut to the bone/\nDevils roll the dice, angels roll their eyes/\nAnd if I bleed, you\'ll be the last to know/\n\nOh, it\'s new, the shape of your body/\nIt\'s blue, the feeling I\'ve got/\nAnd it\'s ooh, whoa oh/\nIt\'s a cruel summer/\nIt\'s cool, that\'s what I tell \'em/\nNo rules in breakable heaven/\nBut ooh, whoa oh/\nIt\'s a cruel summer/\nWith you/\n\nI\'m drunk in the back of the car/\nAnd I cried like a baby coming home from the bar (Oh)/\nSaid, I\'m fine, but it wasn\'t true/\nI don\'t wanna keep secrets just to keep you/\nAnd I snuck in through the garden gate/\nEvery night that summer just to seal my fate (Oh)/\nAnd I scream, For whatever it\'s worth/\nI love you, ain\'t that the worst thing you ever heard?/\nHe looks up, grinning like a devil/\n\nIt\'s new, the shape of your body/\nIt\'s blue, the feeling I\'ve got/\nAnd it\'s ooh, whoa oh/\nIt\'s a cruel summer/\nIt\'s cool, that\'s what I tell \'em/\nNo rules in breakable heaven/\nBut ooh, whoa oh/\nIt\'s a cruel summer/\nWith you/\n\nI\'m drunk in the back of the car/\nAnd I cried like a baby coming home from the bar (Oh)/\nSaid, I\'m fine, but it wasn\'t true/\nI don\'t wanna keep secrets just to keep you/\nAnd I snuck in through the garden gate/\nEvery night that summer just to seal my fate (Oh)/\nAnd I scream, For whatever it\'s worth/\nI love you, ain\'t that the worst thing you ever heard?/\n(Yeah, yeah, yeah, yeah)/','https://preview.redd.it/cruel-summer-7-single-vinyl-concept-by-me-v0-yhyjnz8ic6791.png?width=640&crop=smart&auto=webp&s=50240e6b1f45ef2dbf1ab2ef56bb33928de30471','03:00',1,0),(6,'Blank Space','Nice to meet you, where you been?/\nI could show you incredible things/\nMagic, madness, heaven, sin/\nSaw you there, and I thought/\nOh my God, look at that face/\nYou look like my next mistake/\nLove\'s a game, wanna play?/\nAyy/\n\nNew money, suit and tie/\nI can read you like a magazine/\nAin\'t it funny? Rumors fly/\nAnd I know you heard about me/\nSo hey, let\'s be friends/\nI\'m dying to see how this one ends/\nGrab your passport and my hand/\nI can make the bad guys good for a weekend/\n\nSo it\'s gonna be forever/\nOr it\'s gonna go down in flames/\nYou can tell me when it\'s over, mm/\nIf the high was worth the pain/\nGot a long list of ex-lovers/\nThey\'ll tell you I\'m insane/\n\'Cause you know I love the players/\nAnd you love the game/\n\n\'Cause we\'re young and we\'re reckless/\nWe\'ll take this way too far/\nIt\'ll leave you breathless, hmm/\nOr with a nasty scar/\nGot a long list of ex-lovers/\nThey\'ll tell you I\'m insane/\nBut I\'ve got a blank space, baby/\nAnd I\'ll write your name/\n\nCherry lips, crystal skies/\nI could show you incredible things/\nStolen kisses, pretty lies/\nYou\'re the King, baby, I\'m your Queen/\nFind out what you want/\nBe that girl for a month/\nWait, the worst is yet to come, oh no/\n\nScreaming, crying, perfect storms/\nI can make all the tables turn/\nRose garden filled with thorns/\nKeep you second guessing like/\nOh my God, who is she?/\nI get drunk on jealousy/\nBut you\'ll come back each time you leave/\n\'Cause, darling, I\'m a nightmare dressed like a daydream/\n\nSo it\'s gonna be forever/\nOr it\'s gonna go down in flames/\nYou can tell me when it\'s over, mm/\nIf the high was worth the pain/\nGot a long list of ex-lovers/\nThey\'ll tell you I\'m insane/\n\'Cause you know I love the players/\nAnd you love the game/\n\n\'Cause we\'re young and we\'re reckless/\nWe\'ll take this way too far/\nIt\'ll leave you breathless, hmm/\nOr with a nasty scar/\nGot a long list of ex-lovers/\nThey\'ll tell you I\'m insane/\nBut I\'ve got a blank space, baby/\nAnd I\'ll write your name/\n\nBoys only want love if it\'s torture/\nDon\'t say I didn\'t, say I didn\'t warn ya/\nBoys only want love if it\'s torture/\nDon\'t say I didn\'t say, I didn\'t warn ya/\n\nSo it\'s gonna be forever/\nOr it\'s gonna go down in flames/\nYou can tell me when it\'s over, mm/\nIf the high was worth the pain/\nGot a long list of ex-lovers/\nThey\'ll tell you I\'m insane/\n\'Cause you know I love the players/\nAnd you love the game/\n\n\'Cause we\'re young and we\'re reckless/\nWe\'ll take this way too far/\nIt\'ll leave you breathless, hmm/\nOr with a nasty scar/\nGot a long list of ex-lovers/\nThey\'ll tell you I\'m insane/\nBut I\'ve got a blank space, baby/\nAnd I\'ll write your name/\n','https://i.pinimg.com/originals/4e/80/ff/4e80ffea7f6d137b096ee5b2eb757a8f.jpg','03:52',1,0),(7,'Still With You','날 스치는 그대의 옅은 그 목소리/\n내 이름을 한 번만 더 불러주세요/\n얼어버린 노을 아래 멈춰 서있지만/\n그대 향해 한 걸음씩 걸어갈래요/\nStill with you/\n\n어두운방 조명 하나 없이/\n익숙해지면 안 되는데/\n그게 또 익숙해/\n나지막이 들리는/\n이 에어컨 소리/\n이거라도 없으면/\n나 정말 무너질 것 같아/\n\n함께 웃고 함께 울고/\n이 단순한 감정들이/\n내겐 전부였나 봐/\n언제쯤일까/\n다시 그댈 마주한다면/\n눈을 보고 말할래요/\n보고 싶었어요/\n\n황홀했던 기억 속에/\n나 홀로 춤을 춰도 비가 내리잖아/\n이 안개가 걷힐 때쯤/\n젖은 발로 달려갈 게/\n그때 날 안아줘/\n\n저 달이 외로워 보여서/\n밤하늘에 환하게 울고 있는 것 같아서/\n언젠가 아침이 오는 걸 알면서도/\n별처럼 너의 하늘에 머물고 싶었어/\n\n하루를 그 순간을/\n이렇게 될 걸 알았다면/\n더 담아뒀을 텐데/\n언제쯤일까/\n다시 그댈 마주한다면/\n눈을 보고 말할래요/\n보고 싶었어요/\n\n황홀했던 기억 속에/\n나 홀로 춤을 춰도 비가 내리잖아/\n이 안개가 걷힐 때쯤/\n젖은 발로 달려갈 게/\n그때 날 잡아줘/\n\n날 바라보는 희미한 미소 뒤편에/\n아름다운 보랏빛을 그려볼래요/\n서로 발걸음이 안 맞을 수도 있지만/\n그대와 함께 이 길을 걷고 싶어요/\nStill with you/\n\n','https://avatar-ex-swe.nixcdn.com/song/2020/06/05/4/f/d/2/1591338842259_640.jpg','03:58',3,0),(8,'Seven','Weight of the world on your shoulders/\nI kiss your waist and ease your mind/\nI must be favored to know ya/\nI take my hands and trace your lines/\n\nIt\'s the way that we can ride/\nIt\'s the way that we can ride (Oh-oh-oh-oh)/\nThink I met you in another life/\nSo break me off another time (Oh-oh-oh-oh)/\nYou wrap around me and you give me life/\nAnd that\'s why night after night/\nI\'ll be lovin\' you right/\n\nMonday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday (A week)/\nMonday, Tuesday, Wednesday, Thursday, Friday/\nSeven days a week/\nEvery hour, every minute, every second/\nYou know night after night/\nI\'ll be lovin\' you right/\nSeven days a week/\n\nYou love when I jump right in/\nAll of me I\'m offering/\nShow you what devotion is/\nDeeper than the ocean is/\nWind it back, I\'ll take it slow/\nLeave you with that afterglow/\nShow you what devotion is/\nDeeper than the ocean is/\n\nIt\'s the way that we can ride/\nIt\'s the way that we can ride (Oh-oh-oh-oh)/\nThink I met you in another life/\nSo break me off another time (Oh-oh-oh-oh)/\nYou wrap around me and you give me life/\nAnd that\'s why night after night/\nI\'ll be lovin\' you right/\n\nMonday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday (A week)/\nMonday, Tuesday, Wednesday, Thursday, Friday/\nSeven days a week/\nEvery hour, every minute, every second/\nYou know night after night/\nI\'ll be lovin\' you right (I\'ll be lovin\' you right)/\nSeven days a week/\nMonday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday (A week)/\nMonday, Tuesday, Wednesday, Thursday, Friday/\nSeven days a week (Oh, oh, seven days a week)/\nEvery hour, every minute, every second/\nYou know night after night (Night after night)/\nI\'ll be lovin\' you right (I\'ll be lovin\' you right)/\nSeven days a week/\n(Big Latto)/\n\nTightly take control, tightly take his soul/\nTake your phone and put it in the camera roll (Uh)/\nLeave them clothes at the door/\nWhat you waiting for? Better come and hit ya goals/\nHe jump in it both feet/\nGoing to the sun-up, we ain\'t gettin\' no sleep/\nSeven days a week, seven different sheets/\nSeven different angles, I can be your fantasy/\nOpen up, say, Ah/\nCome here, baby, let me swallow your pride/\nWhat you on I can match your vibe/\nHit me up and I\'ma Cha Cha Slide/\nYou make Mondays feel like weekends/\nI make him never think about cheatin\'/\nGot you skippin\' work and meetings/\nLet\'s sleep in, yeah/\n(Seven days a week, ooh)/\n\nMonday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday (A week)/\nMonday, Tuesday, Wednesday, Thursday, Friday/\nSeven days a week/\nEvery hour, every minute, every second (Oh-oh-oh)/\nYou know night after night/\nI\'ll be lovin\' you right/\nSeven days a week (Oh)\nMonday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday (A week)/\nMonday, Tuesday, Wednesday, Thursday, Friday (Ooh, ooh, ooh, ooh, ooh)/\nSeven days a week/\nEvery hour, every minute, every second (Hour, minute, second)/\nYou know night after night/\nI\'ll be lovin\' you right/\nSeven days a week/\n\n','https://media-cdn-v2.laodong.vn/storage/newsportal/2023/7/8/1214258/MV-Seven---Concept-1.jpeg','03:05',3,0),(9,'Solo','천진난만 청순가련/\n새침한 척 이젠 지쳐/\n나 귀찮아/\n매일 뭐 해? 어디야? 밥은? 잘 자/\nBaby, 자기, 여보, 보고 싶어/\n다 부질없어/\nYou got me like/\n(Oh, oh, oh) 이건 아무 감동 없는 love story/\n(Oh, oh, oh) 어떤 설렘도, 어떤 의미도/\n(Oh, oh, oh) 네겐 미안하지만 I\'m not sorry/\n(Oh, oh, oh) 오늘부터 난, 난, 난/\n빛이 나는 솔로/\n빛이 나는 솔로/\nI\'m going solo-lo-lo-lo-lo-lo/\nI\'m going solo-lo-lo-lo-lo-lo/\nUsed to be your girl, now I\'m used to being the GOAT/\nYou\'re sittin\' on your feelings, I\'m sittin\' on my throne/\nI ain\'t got no time for the troubles in your eyes/\nThis time I\'m only lookin\' at me, myself, and I/\nI\'ma do it on my own now/\nNow that you\'re alone, got you lookin\' for a clone now/\n(So low) that\'s how I\'m gettin\' down/\nDestined for this and the crown/\nSing it loud like/\n이건 아무 감동 없는 love story/\n(Oh, oh, oh) 어떤 설렘도, 어떤 의미도 (oh)/\n(Oh, oh, oh) 네겐 미안하지만 I\'m not sorry/\n(Oh, oh, oh) 오늘부터 난, 난, 난/\n빛이 나는 솔로/\n빛이 나는 솔로/\nI\'m going solo-lo-lo-lo-lo-lo/\nI\'m going solo-lo-lo-lo-lo-lo/\n만남, 설렘, 감동 뒤엔/\n이별, 눈물, 후회, 그리움/\n홀로인 게 좋아, 난 나다워야 하니까/\n자유로운 바람처럼, 구름 위에 별들처럼/\n멀리 가고 싶어, 밝게 빛나고 싶어/\nNow I\'m going slow-mo/\n빛이 나는 솔로/\nI\'m going solo-lo-lo-lo-lo-lo/\nI\'m going solo-lo-lo-lo-lo-lo/\n','https://i0.wp.com/colorcodedlyrics.com/wp-content/uploads/2018/11/Jennie-SOLO.jpg?fit=600%2C600&ssl=1','02:56',2,0),(10,'SPOT! ','Everything okay, my man?/\nTurn the music up/\nMm, we\'re not going home tonight, alright/\n네 계획에 없던 party/\nUp and down, round and round/\nHit the spot, spot, spot, spot/\n엎치락뒤치락 정신을 왜 차려? 왜?/\nHey, girl, where you at?/\n데리러 갈게 send me the address (hey)/\nNo dress code 대충 걸치면 돼/\n우린 꾸밈없고, 나머진 억텐 (yeah)/\n농익은 분위기 it\'s too sticky (sticky)/\n마구 부대껴, 어머! 정전기 찌릿 (찌릿)/\n여긴 내 동생 저기는 내 homie (what\'s up?)/\n순둥이지만 음악 틀면 눈 돌지/\nChillin\' out, we yellin\' out, one more/\n찐친 vibe 위아래 안 따져/\n부끄런 I 피식 E를 드러내/\n포위됐어 넌, now hands in the air/\nMm, we\'re not going home tonight, alright/\n네 계획에 없던 party/\nUp and down, round and round/\nHit the spot, spot, spot, spot/\n엎치락뒤치락 정신을 왜 차려? 왜?/\nUp and down, round and round/\nEverybody, hit the spot/\nUp and down, round and round/\nEverybody, hit the top/\nUp and down, round and round/\nEverybody, make it loud/\nUp and down, round and round/\nAin\'t nobody hold us down/\n어깨 툭툭 he say, Yo, JENNIE/\nTold you that 도망치면 배신/\nYeah, I know, I know/\n일단 더우니까 바람 쐬러 나가/\nBae, 나갈 때 뒤로 딱 붙어/\n땀 뺐으니까 후딱 ice cream, go/\n들키면 피곤해져, put your mask on/\n한바퀴 돌고 퀵하게 조인해 (ah)/\n우리 프로젝트 타이틀 명은 J-Z/\nWe gon\' run this town, that\'s crazy (uh)/\n짱박아 놨던 네 똘끼를 꺼내, huh/\n해방됐어 넌, now hands in the air/\nMm, we\'re not going home tonight, alright/\n네 계획에 없던 party/\nUp and down, round and round/\nHit the spot, spot, spot, spot/\n엎치락뒤치락 정신을 왜 차려? 왜?/\nUp and down, round and round/\nEverybody, hit the spot/\nUp and down, round and round/\nEverybody, hit the top/\nUp and down round and round/\nEverybody, make it loud/\nUp and down, round and round/\nEverybody, stop, wait a minute, ow/\nHey, hey/\nYeah, come vibe with us, ride with us (hey)/\nHey, hey/\nHey/\n','https://i.kfs.io/album/global/269250672,0v1/fit/500x500.jpg','03:13',2,0),(11,'Stitches','I thought that I\'d been hurt before/\nBut no one\'s ever left me quite this sore/\nYour words cut deeper than a knife/\nNow I need someone to breathe me back to life/\nGot a feeling that I\'m going under/\nBut I know that I\'ll make it out alive/\nIf I quit calling you my lover/\nMove on/\nYou watch me bleed until I can\'t breathe/\nShaking, falling onto my knees/\nAnd now that I\'m without your kisses/\nI\'ll be needing stitches/\nTripping over myself/\nAching, begging you to come help/\nAnd now that I\'m without your kisses/\nI\'ll be needing stitches/\nJust like a moth drawn to a flame/\nOh, you lured me in, I couldn\'t sense the pain/\nYour bitter heart, cold to the touch/\nNow I\'m gonna reap what I sow/\nI\'m left seeing red on my own/\nGot a feeling that I\'m going under/\nBut I know that I\'ll make it out alive/\nIf I quit calling you my lover/\nMove on/\nYou watch me bleed until I can\'t breathe/\nShaking, falling onto my knees/\nAnd now that I\'m without your kisses/\nI\'ll be needing stitches/\nTripping over myself/\nAching, begging you to come help/\nAnd now that I\'m without your kisses/\nI\'ll be needing stitches/\nNeedle and the thread, gotta get you outta my head/\nNeedle and the thread, gonna wind up dead/\nNeedle and the thread, gotta get you outta my head/\nNeedle and the thread, gonna wind up dead (gonna wind up dead)/\nNeedle and the thread, gotta get you outta my head (gotta get you outta my head)/\nNeedle and the thread, gonna wind up dead (wind up dead)/\nNeedle and the thread, gotta get you outta my head, get you outta my head/\nYou watch me bleed until I can\'t breathe/\nShaking, falling onto my knees (falling on my knees)/\nAnd now that I\'m without your kisses (without you)/\nI\'ll be needing stitches (and I\'ll be needing stitches)/\nTripping over myself/\nAching, begging you to come help (begging baby, please)/\nAnd now that I\'m without your kisses/\nI\'ll be needing stitches/\nAnd now that I\'m without your kisses/\nI\'ll be needing stitches/\nAnd now that I\'m without your kisses/\nI\'ll be needing stitches/\n','https://i.scdn.co/image/ab67616d0000b27375bd5306fb4669a15ee74eff','03:26',5,0),(12,'There\'s Nothing Holdin\' Me Back','I wanna follow where she goes/\nI think about her and she knows it/\nI wanna let her take control/\n\'Cause every time that she gets close, yeah/\nShe pulls me in enough to keep me guessin\', hmm/\nAnd maybe I should stop and start confessin\'/\nConfessin\', yeah/\nOh, I\'ve been shakin\'/\nI love it when you go crazy/\nYou take all my inhibitions/\nBaby, there\'s nothing holdin\' me back/\nYou take me places that tear up my reputation/\nManipulate my decisions/\nBaby, there\'s nothing holdin\' me back/\nThere\'s nothing holdin\' me back/\nThere\'s nothing holdin\' me back/\nShe says that she\'s never afraid/\nJust picture everybody naked/\nShe really doesn\'t like to wait/\nNot really into hesitation/\nPulls me in enough to keep me guessin\', whoa-oh/\nAnd maybe I should stop and start confessin\'/\nConfessin\', yeah/\nOh, I\'ve been shakin\'/\nI love it when you go crazy/\nYou take all my inhibitions/\nBaby, there\'s nothing holdin\' me back/\nYou take me places that tear up my reputation/\nManipulate my decisions/\nBaby, there\'s nothing holdin\' me back/\nThere\'s nothing holdin\' me back/\n\'Cause if we lost our minds and we took it way too far/\nI know we\'d be alright, I know we would be alright/\nIf you were by my side and we stumbled in the dark/\nI know we\'d be alright, I know we would be alright/\n\'Cause if we lost our minds and we took it way too far/\nI know we\'d be alright, I know we would be alright/\nIf you were by my side and we stumbled in the dark/\nI know we\'d be alright, we would be alright/\nOh, I\'ve been shakin\'/\nI love it when you go crazy/\nYou take all my inhibitions/\nBaby, there\'s nothing holdin\' me back/\nYou take me places that tear up my reputation/\nManipulate my decisions/\nBaby, there\'s nothing holdin\' me back, oh-whoa/\nThere\'s nothing holdin\' me back/\nI feel so free when you\'re with me, baby/\nBaby, there\'s nothing holdin\' me back/\n','https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2a1e56c4-45d4-4504-9b4e-4f0231021203/dbjkufh-bd1ddbe3-a16c-4620-92cb-cf28f74fc969.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzJhMWU1NmM0LTQ1ZDQtNDUwNC05YjRlLTRmMDIzMTAyMTIwM1wvZGJqa3VmaC1iZDFkZGJlMy1hMTZjLTQ2MjAtOTJjYi1jZjI4Zjc0ZmM5NjkuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9hwMH49ZkrAdqrenOWq2ZxOk7ZRw5jYOrS5pp5_Hc_A','03:57',5,0),(13,'Treat You Better','I won\'t lie to you/\nI know he\'s just not right for you/\nAnd you can tell me if I\'m off/\nBut I see it on your face/\nWhen you say that he\'s the one that you want/\nAnd you\'re spending all your time/\nIn this wrong situation/\nAnd anytime you want it to stop/\nI know I can treat you better than he can/\nAnd any girl like you deserves a gentleman/\nTell me, why are we wasting time/\nOn all your wasted crying/\nWhen you should be with me instead?/\nI know I can treat you better/\nBetter than he can/\nI\'ll stop time for you/\nThe second you say you\'d like me too/\nI just wanna give you the loving that you\'re missing/\nBaby, just to wake up with you/\nWould be everything I need, and this could be so different/\nTell me what you want to do/\n\'Cause I know I can treat you better than he can/\nAnd any girl like you deserves a gentleman/\nTell me, why are we wasting time/\nOn all your wasted crying/\nWhen you should be with me instead?/\nI know I can treat you better/\nBetter than he can/\nBetter than he can/\nGive me a sign/\nTake my hand, we\'ll be fine/\nPromise I won\'t let you down/\nJust know that you don\'t/\nHave to do this alone/\nPromise I\'ll never let you down/\n\'Cause I know I can treat you better than he can/\nAnd any girl like you deserves a gentleman/\nTell me, why are we wasting time/\nOn all your wasted crying/\nWhen you should be with me instead?/\nI know I can treat you better/\nBetter than he can, oh/\nBetter than he can/\nBetter than he can/\n','https://m.media-amazon.com/images/M/MV5BOWU0MzBlYTUtNTQ0Yi00YWI3LWIxYTUtM2Q1ZjQwMjBmOGI5XkEyXkFqcGdeQXVyNDQ5MDYzMTk@._V1_.jpg','04:17',5,0),(14,'Attention','Oh-oh, ooh/\nYou\'ve been runnin\' \'round, runnin\' \'round, runnin\' \'round throwin\' that dirt all on my name/\n\'Cause you knew that I, knew that I, knew that I\'d call you up/\nYou\'ve been going \'round, going \'round, going \'round every party in L.A./\n\'Cause you knew that I, knew that I, knew that I\'d be at one, oh/\nI know that dress is karma, perfume regret/\nYou got me thinking \'bout when you were mine, oh/\nAnd now I\'m all up on ya, what you expect?/\nBut you\'re not coming home with me tonight/\nYou just want attention, you don\'t want my heart/\nMaybe you just hate the thought of me with someone new/\nYeah, you just want attention, I knew from the start/\nYou\'re just making sure I\'m never gettin\' over you/\nyou\'ve been runnin\' \'round, runnin\' \'round, runnin\' \'round throwing that dirt all on my name/\n\'Cause you knew that I, knew that I, knew that I\'d call you up/\nBaby, now that we\'re, now that we\'re, now that we\'re right here standing face-to-face/\nYou already know, already know, already know that you won, oh/\nI know that dress is karma (dress is karma), perfume regret/\nYou got me thinking \'bout when you were mine (you got me thinking \'bout when you were mine)/\nAnd now I\'m all up on ya (all up on ya), what you expect? (oh baby)/\nBut you\'re not coming home with me tonight (oh no)/\nYou just want attention, you don\'t want my heart/\nMaybe you just hate the thought of me with someone new/\nYeah, you just want attention, I knew from the start/\nYou\'re just making sure I\'m never gettin\' over you, oh/\nWhat are you doin\' to me, what are you doin\', huh?/\n(What are you doin\'?)/\nWhat are you doin\' to me, what are you doin\', huh?/\n(What are you doin\'?)/\nWhat are you doin\' to me, what are you doin\', huh?/\n(What are you doin\'?)/\nWhat are you doin\' to me, what are you doin\', huh?/\nI know that dress is karma, perfume regret/\nYou got me thinking \'bout when you were mine/\nAnd now I\'m all up on ya, what you expect?/\nBut you\'re not coming home with me tonight/\nYou just want attention, you don\'t want my heart/\nMaybe you just hate the thought of me with someone new/\nYeah, you just want attention, I knew from the start/\nYou\'re just making sure I\'m never gettin\' over you (over you)/\nWhat are you doin\' to me? (hey) what are you doin\', huh? (what are you doin\', what?)/\nWhat are you doin\', huh? (what are you doin\' to me?)/\n(What are you doin\', huh?) (yeah, you just want attention)/\nWhat are you doin\' to me, what are you doin\', huh? (I knew from the start)/\n(You\'re just making sure I\'m never gettin\' over you) what are you doin\' to me, what are you doin\', huh?/\nOh, oh/\n','https://i.scdn.co/image/ab67616d0000b273897f73256b9128a9d70eaf66','03:28',6,0),(15,'Dangerously','Ooh, ooh/\nThis is gonna hurt, but I blame myself first./\n\'Cause I ignored the truth/\nDrunk off of that love, it my head up/\nThere\'s no forgetting you/\nYou\'ve awoken me, but you\'re choking me/\nI was so obsessed/\nGave you all of me/\nAnd now, honestly, I got nothing left/\nI loved you dangerously/\nMore than the air that I breathe/\nKnew we would crash at the speed that we were going/\nDidn\'t care if the explosion ruined me (me, me)/\nBaby, I loved you dangerously/\nMm, mm/\nI loved you dangerously/\nUsually, I hold the power with both my hands tied behind my back/\nLook at how things change/\n\'Cause now you\'re the train/\nAnd I\'m tied to the track/\nYou\'ve awoken me, but you\'re choking me/\nI was so obsessed/\nGave you all of me/\nAnd now, honestly, I got nothing left/\n\'Cause I loved you dangerously/\nMore than the air that I breathe/\nKnew we would crash at the speed that we were going/\nDidn\'t care if the explosion ruined me (me, me)/\nBaby, I loved you dangerously/\nYou took me down, down, down, down/\nAnd kissed my lips with goodbye/\nI see it now, now, now, now/\nIt was a matter of time/\nYou know I know/\nThere\'s only one place this could lead/\nBut you are the fire, I\'m gasoline/\nI love you, I love you, I love you/\nI loved you dangerously/\nOoh, more than the air that I breathe/\nOh, now, knew we would crash at the speed that we were going/\nDidn\'t care if the explosion ruined me (me, me)/\nOh, oh, baby, I loved you dangerously/\nMm, mm/\nOoh, I loved you dangerously/\nOoh-ooh, I loved you dangerously/\n','https://i.ytimg.com/vi/Xc695u4RFeI/maxresdefault.jpg','03:23',6,0),(16,'How Long','Alright/\nOoh, yeah/\nI\'ll admit, I was wrong, what else can I say, girl?/\nCan\'t you blame my head and not my heart?/\nI was drunk, I was gone, that don\'t make it right, but/\nI promise there were no feelings involved, mmh/\nShe said, Boy, tell me honestly/\nWas it real or just for show?, yeah/\nShe said, Save your apologies/\nBaby, I just gotta know/\nHow long has this been goin\' on?\nYou been creepin\' \'round on me/\nWhile you\'re callin\' me baby/\nHow long has this been goin\' on?/\nYou\'ve been actin\' so shady (shady)/\nI\'ve been feelin\' it lately, baby/\nOoo-oh (yeah)/\nOoo-oh (encore)/\nOooh-ooh-oh/\nI\'ll admit (I\'ll admit), it\'s my fault (my fault), but you gotta believe me/\nWhen I say it only happened once, mmh/\nI try (I try), and I try (I try), but you\'ll never see that/\nYou\'re the only I wanna love, oh, yeah/\nShe said Boy, tell me honestly (honestly)/\nWas it real or just for show?, yeah (real or just for show?)/\nShe said, Save your apologies (apologies, yeah)/\nBaby, I just gotta know/\nHow long has this been goin\' on?/\nYou been creepin\' \'round on me (on me)/\nWhile you\'re callin\' me baby (baby)/\nHow long has this been goin\' on?/\nYou\'ve been actin\' so shady (shady)/\nI\'ve been feelin\' it lately (lately), baby/\nOoo-oh (yeah)/\nOoo-oh (encore)/\nOooh-ooh-oh/\nHow long has it been goin\' on, baby?/\nOoo-oh (yeah)/\nOoo-oh, you gotta go tell me now/\nOooh-ooh-oh/\nShe said, Boy, tell me honestly/\nWas it real or just for show?, yeah/\nShe said, Save your apologies/\nBaby, I just gotta know/\nHow long has this been goin\' on? (on, on)/\nYou been creepin\' \'round on me (on me)/\nWhile you\'re callin\' me baby (baby)/\nHow long has this been goin\' on?/\nYou\'ve been actin\' so shady (shady)/\nI\'ve been feelin\' it lately (lately), baby/\nHow long has this been goin\' on? (ooh-ooh, yeah)/\nYou\'ve been creepin\' \'round on me/\nHow long has it been goin\' on, baby? Oh (ooo-oh)/\nHow long has this been goin\' on? (You gotta go tell me now)/\nYou\'ve been actin\' so shady (shady)/\nI\'ve been feelin\' it lately, baby/\n','https://lastfm.freetls.fastly.net/i/u/ar0/c523b7e5453796a596ab007255be1598.jpg','03:31',6,0);
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

-- Dump completed on 2024-05-15 12:03:18
