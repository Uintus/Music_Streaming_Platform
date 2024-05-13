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
  `user_id` int NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (0,'abc123','1234567','abc@gmail.com',0);
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
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_user`
--

LOCK TABLES `end_user` WRITE;
/*!40000 ALTER TABLE `end_user` DISABLE KEYS */;
INSERT INTO `end_user` VALUES (0,'Ben',23,0);
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
-- Table structure for table `singer`
--

DROP TABLE IF EXISTS `singer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `singer` (
  `singer_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `song_id` int NOT NULL,
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singer`
--

LOCK TABLES `singer` WRITE;
/*!40000 ALTER TABLE `singer` DISABLE KEYS */;
INSERT INTO `singer` VALUES (0,'Son Tung MTP','https://www.google.com/url?sa=i&url=https%3A%2F%2Fopen.spotify.com%2Fartist%2F5dfZ5uSmzR7VQK0udbAVpf&psig=AOvVaw0qaJFP2llxmir0mMk1wIND&ust=1715505602756000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMit-MOihYYDFQAAAAAdAAAAABAE',0),(1,'Taylor Swift','https://imageio.forbes.com/specials-images/imageserve/653fcd49893eb27774ba7ecc/65th-GRAMMY-Awards---Arrivals/960x0.jpg?format=jpg&width=960',1),(2,'Jennie','https://media.vov.vn/sites/default/files/styles/large/public/2023-12/moi-ra-mat-ca-khuc-you-me-cua-jennie-blackpink-thong-tri-cac-bxh-am-nhac-20231008222608.jpg',2),(3,'Jungkook','https://www.koimoi.com/wp-content/new-galleries/2023/07/bts-jungkook-to-make-his-acting-debut-soon-k-pop-star-shares-his-plans-for-near-future-after-discovering-he-can-act-001.jpg',3),(4,'NewJeans','https://media-cdn-v2.laodong.vn/storage/newsportal/2024/3/27/1319908/Newjeans-Ditto-3.jpg',4);
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
  `playlist_id` int NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (0,'Chung ta khong thuoc ve nhau','Thuộc về, về, về nơi này/\nChúng ta không thuộc về nhau (chúng ta không thuộc về nhau)/\nChúng ta không thuộc về (chúng ta không thuộc)/\nThuộc về, về, về nơi này/\nNiềm tin đã mất, giọt nước mắt cuốn kí ức anh chìm sâu/\nTình về nơi đâu? Cô đơn đôi chân lạc trôi giữa bầu trời/\nMàn đêm che dấu, từng góc tối khuất lấp phía sau bờ môi/\nTại vì anh thôi, yêu say mê nên đôi khi quá dại khờ/\nNhắm mắt ơ thờ, anh không muốn lạc vào trong nỗi đau này/\nPhía trước bây giờ ai đang nắm chặt bàn tay của em vậy? (Em vậy)/\nMông lung như một trò đùa (trò đùa), anh xin giơ tay rút lui thôi (do ai?)/\nTrách ai bây giờ đây? Ooh-ooh-ooh-ooh-ooh/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về nhau/\nEm hãy cứ đi bên người mà em cần/\nTrái tim không thuộc về nhau/\nGiấc mơ không là của nhau/\nXóa câu ca buồn chiều mưa/\nAnh lỡ xóa luôn yêu thương ngày xưa rồi/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về (về, về, về nơi này)/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về (về, về, về nơi này)/\nHey (hey), từng đêm qua (từng đêm qua)/\nCơn mưa bao vây chia rời đôi ta (rời đôi ta)/\nEm (em), ngày hôm qua (ngày hôm qua)/\nCuốn gió theo mây đi về nơi xa (về nơi xa)/\nTrời xanh rộng bao la (yeah), anh lê đôi chân mình/\nBơ vơ lang thang, có lẽ em đang yên vui bên nhân tình/\nQuên đi, để anh nhớ, hơi men để anh mơ/\nNơi đâu để anh giấu một nỗi buồn vào trong thơ/\nNhắm mắt ơ thờ, anh không muốn lạc vào trong nỗi đau này/\nPhía trước bây giờ ai đang nắm chặt bàn tay của em vậy?/\nMông lung như một trò đùa, anh xin giơ tay rút lui thôi (do ai?)/\nTrách ai bây giờ đây? Ooh-ooh-ooh-ooh-ooh/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về nhau/\nEm hãy cứ đi bên người mà em cần/\nTrái tim không thuộc về nhau/\nGiấc mơ không là của nhau/\nXóa câu ca buồn chiều mưa/\nAnh lỡ xóa luôn yêu thương ngày xưa rồi/\nChúng ta không thuộc về nhau (ah, ah)/\nChúng ta không thuộc về (về, về, về nơi này)/\nChúng ta không thuộc về nhau (ah, ah, ah)/\nChúng ta không thuộc về (về, về, về nơi này)/\nChúng ta không thuộc về nhau, về nhau, về nhau/\nKhông thuộc về nhau, về nhau, về nhau/\nKhông thuộc về nhau, oh-oh-oh-oh/\nChúng ta không thuộc về nhau (chúng ta không thuộc về nhau, về nhau, về nhau)/\nKhông thuộc về nhau, về nhau, về nhau/\nKhông thuộc về nhau, ah-ah-ah-ah-ah-ah-ah-ah-ah-ah-ah/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về nhau/\nChúng ta không thuộc về nhau/\nEm hãy cứ đi bên người mà em cần/\nTrái tim không thuộc về nhau/\nGiấc mơ không là của nhau/\nXoá câu ca buồn chiều mưa/\nAnh lỡ xoá luôn yêu thương ngày xưa rồi/\nChúng ta không thuộc về nhau (goodbye forever, oh-oh)/\nChúng ta không thuộc về nhau (oh-oh)/\nChúng ta không thuộc về nhau (goodbye forever, oh-oh-oh), ah-ah-ah (oh-oh)/\nChúng ta không thuộc về nhau (goodbye forever, oh-oh)/\nChúng ta không thuộc về nhau (oh-oh)/\nChúng ta không thuộc về nhau (goodbye forever, oh-oh-oh), ah-ah-ah (oh-oh-oh)/','https://upload.wikimedia.org/wikipedia/vi/0/01/Ch%C3%BAng_ta_kh%C3%B4ng_thu%E1%BB%99c_v%E1%BB%81_nhau.jpeg','03:53',0,0),(1,'Love Story','We were both young when I first saw you/\nI close my eyes/\nAnd the flashback starts/\nI\'m standing there/\nOn a balcony in summer air/\n\nSee the lights,/\nSee the party,/\nthe ball gowns\nI see you make your way through the crowd/\nYou say hello/\nLittle did I know/\n\nThat you were Romeo, you were throwing pebbles/\nAnd my daddy said stay away from Juliet/\nAnd I was crying on the staircase/\nBegging you please don\'t go, and I said/\n\nRomeo take me somewhere we can be alone/\nI\'ll be waiting all there\'s left to do is run/\nYou\'ll be the prince and I\'ll be the princess/\nIt\'s a love story baby just say yes/\n\nSo I sneak out to the garden to see you/\nWe keep quiet cause we\'re dead if they knew/\nSo close your eyes/\nEscape this town for a little while/\n\nCause you were Romeo I was a scarlet letter/\nAnd my daddy said stay away from Juliet/\nBut you were everything to me/\nI was begging you please don\'t go and I said/\n\nRomeo take me somewhere we can be alone/\nI\'ll be waiting all there\'s left to do is run/\nYou\'ll be the prince I\'ll be the princess/\nIt\'s a love story baby just say yes/\n\nRomeo save me, they try to tell me how to feel/\nThis love is difficult, but it\'s real,/\nDon\'t be afraid/\nWe\'ll make it out of this mess/\nIt\'s a love story baby just say yes/\n\nOh oh,/\n\nI got tired of waiting/\nWondering if you were ever coming around/\nMy faith in you was fading/\nWhen I met you on the outskirts of town. and I said/\n\nRomeo save me I\'ve been feeling so alone/\nI keep waiting for you but you never come/\nIs this in my head, I don\'t know what to think/\nHe kneels to the ground and pulled out a ring/\n\nAnd said/\n\nMarry me Juliet you\'ll never have to be alone/\nI love you and that\'s all I really know/\nI talked to your dad, go pick out a white dress/\nIt\'s a love story baby just say yes/\n\nOh, oh, oh/\n\nOh, oh, oh, oh/','https://i.ytimg.com/vi/pj3Wepr4WS4/mqdefault.jpg','03:57',1,0),(2,'You and Me','You know I gotcha/\nYou know that I got you like that/\nAin\'t nobody gonna have your back like the way I do/\nYou love it, just say you do/\nYou know you got me/\nEverything you do, everything you did/\nEverything I wish I was with, makes me feel alright/\nI\'m just saying, so/\n\nI really like it/\nNothin\' in the world can make me feel the way you do, the things you do/\nI really like it/\nNothin\' in the world can make me feel the way you do, the things you do/\n\nI love you and me/\nDancing in the moonlight/\nNobody can see/\nIt\'s just you and me tonight/\nI love you and me/\nDancing in the moonlight/\nNobody can see/\nIt\'s just you and me tonight/\n\nLook at you, now look at me/\nHow you ever, ever gonna find someone like this?/\nLook at you, now look at me/\nHow you ever, ever gonna find someone like this?/\n\nYou\'re the reason my heart skips, drops/\nJust a little touch, my world stops/\nFinally, I know that you\'re mine/\nI don\'t wanna fall/\nDon\'t wanna play this game of love, oh-eh-oh/\nThere\'s nowhere to hide/\n\nI really like it/\nNothing in the world can make me feel the way you do, the things you do/\nI really like it/\nNothing in the world can make me feel the way you do, the things you do/\n\nI love you and me/\nDancing in the moonlight/\nNobody can see/\nIt\'s just you and me tonight/\nI love you and me/\nDancing in the moonlight\nNobody can see/\nIt\'s just you and me tonight/\n\nLook at you, now look at me/\nHow you ever, ever gonna find someone like this?/\nLook at you, now look at me/\nHow you ever, ever gonna find someone like this?/\n\n(Ever, ever gonna find someone like this)/\n(Someone like this)/\n\nUnder the moonlight, all in the mood, like/\nYou should put a ring on it, “I do, I do” vibes/\nDon’t get the blue light, we gettin’ nasty/\nI found my new ride, here in the backseat/\nLove so good, I bet he be cashing out/\nGot him feeling that rush like he passin’ out/\nCouldn’t handle these curves, so we crashin’ now/\nBeep, beep, with the way I can back it out/\n\n \n\nI love you and me (Moonlight)/\n(Moonlight)/\nI love you and/\nI love you and me/','https://avatar-ex-swe.nixcdn.com/song/2023/10/06/2/5/3/5/1696563949492_640.jpg','03:01',2,0),(3,'3D (ft. Jack Harlow)','1, 2, 3D/\n\nI can\'t touch you through the phone/\nOr kiss you through the universe/\nIn another time zone/\nIt\'s the only time I can\'t reverse/\nBut when there\'s two dimensions/\nThere\'s only one I\'m missing/\nAnd if you feel alone/\nYou don\'t have to feel that no more/\n\nI just wanna see you like that/\nSee you like that, uh uh/\n\nSo if you\'re ready (So if you\'re ready)/\nAnd if you\'ll let me (And if you\'ll let me)/\nI wanna see it in motion, in 3D (Uh uh)/\nYou won\'t regret me (You won\'t regret me)/\nChampagne confetti (Champagne confetti)/\nI wanna see it in motion, in 3D/\n\'Cause you know how I like it, girl/\n3D/\nYou know how I like it, girl/\n3D/\n\nBody to body to body to body to body/\nYou and me, baby, you know that we got it/\nSo don\'t go getting me started/\n\'Cause you know I get hot hearted/\nBaby, oh baby, oh baby, you making me crazy/\nRain, rain, rain, you can\'t fake it/\nYou give me brand new emotion/\nYou got me drinking that potion/\n\nI just wanna see you like that/\nSee you like that, uh uh/\n\nSo if you\'re ready (So if you\'re ready)/\nAnd if you\'ll let me (And if you\'ll let me)/\nI wanna see it in motion, in 3D/\nYou won\'t regret me (You won\'t regret me)/\nChampagne confetti (Hey)/\nI wanna see it in motion, in 3D/\n\'Cause you know how I like it, girl/\nYou know how I like it/\n3D/\nYou know how I like it, girl/\nYou know how I like it/\n3D/\n\'Cause you know how I like it, girl/\nYou know how I like it/\n3D/\nYou know how I like it, girl/\n3D/\n\nI\'m on my Jung Kook/\nTake a chick off one look/\nAnd when they get took/\nThey don\'t ever get untook/\nWhen I seen that body you would think it was a dead body/\nThe way I told my boys come look/\nI used to take girls up to Stony Brook/\nAnd steal they hearts like some crook/\nTrue story/\nNow when I hold somebody\'s hand, it\'s a new story/\nAll my ABGs get cute for me/\nI had one girl, too boring (One girl)/\nTwo girls, that was cool for me (Two girls)/\nThree girls, damn, dude\'s horny/\nFour girls, okay now you whoring (Hey, hey, hey)/\nI\'m loose/\nI done put these shrooms to good use/\nI done put my city on my back/\nAnd the world know my name, I\'m the truth/\n\nSo if you\'re ready/\nAnd if you\'ll let me/\nI wanna see it in motion, in 3D/\nYou won\'t regret me (Won\'t regret me)/\nChampagne, confetti (Champagne, confetti)/\nI wanna see it in motion, in 3D (Just show it to me girl now)/\n\'Cause you know how I like it, girl/\n3D/\nYou know how I like it, girl/\nOh yeah, alright/\n3D/\n\'Cause you know how I like it, girl/\nYou know how I like it/\n3D/\nYou know how I like it girl/\n3D/\n\nI got you playing with yourself on camera/\nYou my bae, just like Tampa/\nSpeaking of bucks, I got those, and as for fucks, well, not those/\nAnd as for thots, well do you really wanna know? I thought so/\nI\'ll fly you from Korea to Kentucky/\nAnd you ain\'t gotta guarantee me nothing, I just wanna see if I get lucky/\nI just wanna meet you in the physical and see if you would touch me/','https://media.zenfs.com/en/stylecaster_935/1abf5e09726822179e9154a29b62180a','03:32',3,0),(4,'Gods','Go-Go-Go-Go-Go-Gods/\nGo-Go-Go-Go-Go-Gods/\n\n(Ayy) This is what you came for/\nBlood on the game ball/\nEverybody droppin\' like rainfall/\n(Uh) This is your moment/\nEyes on the pulpit, kid/\nI think church just opened/\n\nAnd they\'re singin\' your praises, la-la-la/\nScreamin\' your name out la-la-loud/\nOne more step, you\'re immortal now \'cause/\n\nOnce you play God, once you play God/\nThey\'re gonna crumble one by one/\nThen we gon\' ride right into the sun/\nLike it\'s the day my kingdom come/\nBaby, we\'re/\n\nGo-Go-Go-Go-Go-Gods/\nYeah, we\'re/\nGo-Go-Go-Go-Go-Gods/\n\n(Ayy) Welcome to the big show/\nNext on the ladder/\nIs it your name in the rafters?/\nBrief, brief, brief moment of silence/\nBad girl woke up and chose violence/\n\nAnd they\'re singin\' my praises, la-la-la/\nScreamin\' my name out la-la-loud/\nThis is why we\'re immortal now \'cause/\n\nOnce you play God, once you play God/\nThey\'re gonna crumble one by one (Crumble one by one)/\nThen we gon\' ride right into the sun/\nLike it\'s the day my kingdom come/\nBaby, we\'re/\n\nGo-Go-Go-Go-Go-Gods/\nYeah, we\'re/\nGo-Go-Go-Go-Go-Gods/\n\nI\'m on my knees, pray for glory/\nAnyone read this underdog story?/\nI can\'t lose myself again/\nHelp me raise this heart/\nHeart, unbreakable/\n\nOnce you play God, once you play God/\nThey\'re gonna crumble one by one (Crumble one by one)/\nThen we gon\' ride right into the sun/\nLike it\'s the day my kingdom come/\nOnce you play God, once you play God/\nThey\'re gonna crumble one by one/\nThen we gon\' ride right into the sun/\nLike it\'s the day my kingdom come/\nBaby, we\'re/\n\nGo-Go-Go-Go-Go-Gods/\nYeah, we\'re (Gods)/\nGo-Go-Go-Go-Go-Gods/\nGo-Go-Go-Go-Go-Gods/\nYeah, we\'re (Gods)/\nGo-Go-Go-Go-Go-Gods/\n\nOnce you play/','https://static.wikia.nocookie.net/witchers/images/0/0c/GODS_Cover.jpg/revision/latest?cb=20231008142328','03:41',4,0);
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

-- Dump completed on 2024-05-13 17:05:30
