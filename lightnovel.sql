/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : lightnovel

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 30/03/2022 14:36:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (1, '2022/01/27', '添加日志模块', '内容测试');
INSERT INTO `blog` VALUES (2, '2022/01/28', '添加模块', '添加图书详情页面，点击图书后显示简介，目录等功能，新增book、volume、chapter、paragraph表');
INSERT INTO `blog` VALUES (3, '2022/01/28', '添加模块', '章节查询，文章段落查询');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NULL DEFAULT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `press` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `abs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 1, 'https://img.wenku8.com/image/2/2580/2580s.jpg', '關于我在無意間被隔壁的天使變成廢柴這件事', '佐伯さん', '2022-01-24', 'GA文庫', '藤宮周所住公寓的隔壁，住著學校第一的美少女椎名真晝。自從周看到真晝在雨中淋得全身濕透而把傘借給她以後，原本並無交集的兩人便開始了奇妙的交流。\n真晝看不下去周自甘墮落的獨居生活，于是開始幫他做飯、打掃房間，在各方面照顧著周。\n真晝渴望家人間的聯系，逐漸敞開心房，開始懂得撒嬌；然而，周沒有自信能接受她的好意。盡管兩人不夠坦率，仍然漸漸縮短彼此間的距離……\n本作于「成為小說家吧」網站獲得讀者們大力支持，為主角與冷淡卻可愛的鄰居間甜蜜而令人焦急的戀愛故事。');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '恋爱');
INSERT INTO `category` VALUES (2, '战斗');
INSERT INTO `category` VALUES (3, '幻想');
INSERT INTO `category` VALUES (4, '校园');
INSERT INTO `category` VALUES (5, '恐怖');
INSERT INTO `category` VALUES (6, '游戏');

-- ----------------------------
-- Table structure for chapter
-- ----------------------------
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book_id` int NULL DEFAULT NULL,
  `volume_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chapter
-- ----------------------------
INSERT INTO `chapter` VALUES (1, '與天使相遇', 1, 1);
INSERT INTO `chapter` VALUES (2, '感冒與天使的照料', 1, 1);
INSERT INTO `chapter` VALUES (3, '天使的分送', 1, 1);
INSERT INTO `chapter` VALUES (4, '天使與掃除大作戰', 1, 1);
INSERT INTO `chapter` VALUES (5, '友人來訪', 1, 1);
INSERT INTO `chapter` VALUES (6, '天使受傷與謝禮', 1, 1);
INSERT INTO `chapter` VALUES (7, '開始共進晚餐', 1, 1);
INSERT INTO `chapter` VALUES (8, '天使生日', 1, 1);
INSERT INTO `chapter` VALUES (9, '母親來襲', 1, 1);
INSERT INTO `chapter` VALUES (10, '給天使的獎勵', 1, 1);
INSERT INTO `chapter` VALUES (11, '天使指導的料理教室', 1, 1);
INSERT INTO `chapter` VALUES (12, '大家一起過聖誕節', 1, 1);
INSERT INTO `chapter` VALUES (13, '兩人共度聖誕節', 1, 1);
INSERT INTO `chapter` VALUES (14, '後記', 1, 1);

-- ----------------------------
-- Table structure for paragraph
-- ----------------------------
DROP TABLE IF EXISTS `paragraph`;
CREATE TABLE `paragraph`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book_id` int NULL DEFAULT NULL,
  `volume_id` int NULL DEFAULT NULL,
  `chapter_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 316 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paragraph
-- ----------------------------
INSERT INTO `paragraph` VALUES (1, '台版 轉自 輕之國度', 1, 1, 1);
INSERT INTO `paragraph` VALUES (2, '圖源︰輕之國度錄入組', 1, 1, 1);
INSERT INTO `paragraph` VALUES (3, '掃圖︰擼管娘', 1, 1, 1);
INSERT INTO `paragraph` VALUES (4, '錄入︰kid', 1, 1, 1);
INSERT INTO `paragraph` VALUES (5, '修圖︰擼管娘', 1, 1, 1);
INSERT INTO `paragraph` VALUES (6, '「你在干嘛？」', 1, 1, 1);
INSERT INTO `paragraph` VALUES (7, '藤宮周和她──椎名真晝第一次說話，是在連綿細雨中看到她坐在公園秋千上的時候。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (8, '周今年升上高一後，便展開獨居生活，而在他住的公寓房間右鄰，住著一位天使。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (9, '所謂的天使當然只是一種比喻，但椎名真晝這名少女就是如此美麗可愛，使得這個比喻就像真的一樣。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (10, '她那保養得宜的亞麻色長直發總是柔順有光澤，透亮的乳白色肌膚保持著沒有一絲粗糙的光滑感。鼻梁挺直端正，一雙大眼邊緣瓖著縴長睫毛，還有著飽滿水亮、形狀優美的櫻色嘴唇，以上要素皆體現出人造物般的精致之美。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (11, '周和她就讀同一所高中，而且是同年級生，所以經常听到關于她的傳聞，其中多半形容她是「文武雙全的美少女」。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (12, '因為她在段考中始終維持第一名的成績，在體育課上也有一流的活躍表現。由于兩人不同班，周並不太清楚她的事情；但若是傳聞沒錯，那她就真的是個完美超人了。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (13, '看起來沒有什麼明顯的缺點，長得眉清目秀，成績優異卻不會因此驕矜自滿，性格相當謙虛沉穩。這樣的人會受歡迎也不奇怪。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (14, '和這樣厲害的美少女比鄰而居，想必有部分男生會相當羨慕，恨不得能置身同樣情境吧。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (15, '話雖如此，周並不打算跟她發生什麼，也不認為有那個機會。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (16, '在他眼中，椎名真晝這位少女當然很有魅力。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (17, '然而，兩人不過是鄰居的關系。周既沒有機會和她說話，也沒有打算和她扯上關系。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (18, '畢竟一扯上關系，自己恐怕會受到男生的嫉妒。再說，如果只是住在隔壁就能變得親近的話，那些迷戀她的男生們就不用那麼辛苦了。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (19, '順帶一提，感受到異性魅力未必等同于懷有戀愛感情。在周看來，真晝就是個最適合從遠處觀賞的美少女而已。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (20, '因此，周對于與她發展什麼酸甜浪漫的關系不抱任何期待，也就不會主動去親近對方。他只是住在真晝的隔壁，根本不曾與她接觸。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (21, '所以，當周偶然看到她不撐傘獨自待在雨中、顯得很迷惘的時候，心里只想著「這個人在干嘛？」，並且露出了看著可疑人物的眼神。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (22, '雨大到所有人都匆匆趕回自己家里，她卻在學校和公寓之間的一處公園里，一個人坐在秋千上。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (23, '（插圖007）', 1, 1, 1);
INSERT INTO `paragraph` VALUES (24, '（干嘛待在那邊淋雨？）', 1, 1, 1);
INSERT INTO `paragraph` VALUES (25, '天上覆蓋著暗灰色的烏雲，陽光照不下來，使得周遭景色一片昏暗。從早上下到現在的傾盆大雨，讓視野變得更加模糊。盡管如此，那顯眼的亞麻色頭發和制服，卻讓周一眼就能認出她是真晝。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (26, '周不懂她為什麼不撐傘，待在那里全身濕透地淋著雨。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (27, '她看起來不像是在等人，對于淋濕也沒有感到抗拒，只是茫然地朝著某個方向看。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (28, '略微仰起的臉龐本就格外白皙，如今更顯得氣色不佳，甚至看上去很蒼白。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (29, '即使身處那種運氣不好馬上就會感冒的狀態，真晝仍然靜靜坐在那里。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (30, '既然她看起來不打算回家，應該是自願在那邊淋雨吧。或許輪不到別人來開口介入。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (31, '想到這里，周準備穿過公園──此時，他卻看見真晝那垮下臉、幾乎要哭出來的表情，于是忍不住搔了搔頭。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (32, '他並沒有想要和她扯上關系之類的動機。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (33, '可是，把露出那種表情的人放著不管，總覺得良心過不去。只是這樣而已。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (34, '「……你在干嘛？」', 1, 1, 1);
INSERT INTO `paragraph` VALUES (35, '為了表示自己沒有別的意思，周用盡可能冷淡的語氣向她搭話。接著，吸飽水分而變得沉重的一頭長發晃了一下，轉向周這里。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (36, '她的臉蛋還是一樣漂亮。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (37, '即使被雨淋濕，也沒有掩蓋住她的光芒，反而連雨都成為襯托她美麗臉龐的小道具。那大概就是所謂的嬌艷欲滴吧。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (38, '一對雙眼皮大眼水靈靈地看著這邊。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (39, '真晝姑且知道周是鄰居，畢竟兩人早上偶爾會擦身而過。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (40, '只是因為突然被搭話，再加上從不來往的人主動接觸自己，她那雙焦糖色的眼眸中反映出一絲警戒。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (41, '「藤宮同學，你找我有事？」', 1, 1, 1);
INSERT INTO `paragraph` VALUES (42, '周心里莫名感慨地想著「原來她有記住我的姓氏啊」，同時察覺出她大概不會放松警惕。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (43, '雖說兩人並非素未謀面，但是被他這樣不熟的鄰居搭話，也難怪她會增強防備。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (44, '她可能不太想和異性有什麼牽扯。听說常常有各個年級的校內男生向她告白或試圖接近，她恐怕覺得自己也別有用心吧。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (45, '「沒什麼。只是看你一個人在大雨中坐在這里，誰都會在意吧。」', 1, 1, 1);
INSERT INTO `paragraph` VALUES (46, '「這樣啊。謝謝你的關心，但我是自己想留在這里的，請不用在意。」', 1, 1, 1);
INSERT INTO `paragraph` VALUES (47, '語氣中沒有尖銳露骨的警戒，她只是用溫和卻絲毫不容他人深究的淡然聲音說道。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (48, '（唉，就知道會這樣。）', 1, 1, 1);
INSERT INTO `paragraph` VALUES (49, '她明顯有什麼隱情，但見她擺出「別管我」的拒絕態度，周便不打算追問下去了。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (50, '他原本就是一時興起才搭話，詢問原因也只是順便，其實並沒有多麼在意。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (51, '如果她想要留在這里的話，那也沒關系。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (52, '站在真晝的角度來看，周的行為反而會讓她產生「為什麼要跟我說話？」這種疑問吧。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (53, '真晝打量著周，那張柔弱的美麗臉蛋透露著猜疑的情緒，所以周只簡短回道︰「是喔。」', 1, 1, 1);
INSERT INTO `paragraph` VALUES (54, '繼續纏著她說話肯定會被討厭，差不多該撤退了。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (55, '幸好，不管真晝對周的印象是好是壞，兩人都毫不相千，因此他可以乾脆地做出決斷，放著她不管自己回家。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (56, '不過，讓少女獨自一人在這里淋成落湯雞，周感覺心里有點過意不去。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (57, '「那樣會感冒的，你就撐傘回去吧。不用還沒關系。」', 1, 1, 1);
INSERT INTO `paragraph` VALUES (58, '所以，周在最後多管了一點閑事。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (59, '要是她因此感冒，總覺得自己睡覺吃飯都不能安心。抱著這種想法，周把原本撐在頭上的傘遞給她。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (60, '讓她接過傘──正確地說是把傘硬塞給她之後，周就在她開口說話前轉身離去了。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (61, '他快步離開時，背後傳來真晝的聲音。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (62, '那聲音微弱到幾乎被雨聲掩蓋，周就這麼徑自迅速地穿過了公園。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (63, '他想著「別感冒就好」而把傘硬塞給真晝後，似乎多少減輕了起初想無視她直接走掉時所產生的罪惡感。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (64, '既然她拒絕交談，周也無意再和她有什麼來往。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (65, '反正兩人顯然沒緣分，不會有下次了。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (66, '至少在這個時候，再次踏上歸途的周是這麼想的。', 1, 1, 1);
INSERT INTO `paragraph` VALUES (67, '「周，你鼻子好吵。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (68, '「你才吵。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (69, '結果第二天，感冒的人是周。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (70, '被赤澤樹這個同班同學──或者該說是損友指出事實，周試著用鼻子發出哼聲，可惜失敗了。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (71, '他的鼻子確實有發出聲音，不過那只是他一用鼻子呼吸就發出的嘶嘶水聲。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (72, '周感覺身體很不舒服。不知道是因為鼻塞還是感冒本身的影響，腦子里一直感到陣陣發疼。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (73, '盡管他吃了市售感冒藥，但癥狀並沒有完全壓下來，因而搞成這副狼狽的樣子。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (74, '見周因鼻塞發出呻吟、苦著臉和面紙打交道，樹的眼神與其說是擔心，更像是感到傻眼。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (75, '「昨天你還好好的吧？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (76, '「淋到雨了。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (77, '「保重啊。話說，你昨天沒帶傘嗎？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (78, '「……給別人了。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (79, '周當然不可能在學校說「給真晝了」，于是含糊其辭地回道。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (80, '順帶一提，周在學校瞧見真晝時瞄了一眼。她臉色不差，看起來精神也很好的樣子。結果，得到感冒的反而只有把傘拿給她的自己，這狀況只能說是可笑了。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (81, '雖然感冒的原因是他沒有好好泡個澡暖暖身子，算是自作自受吧。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (82, '「雨下那麼大還把傘借出去，你人也太好了吧？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (83, '「我有什麼辦法，反正給都給了。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (84, '「竟然不惜冒著生病的風險……你是給誰了啊？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (85, '「……路過的走失兒童？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (86, '雖然比起真正的小孩，對方已經成長得亭亭玉立了。不如說，根本就是同年的人。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (87, '（……對了，原來她那時候的表情就像走失的小孩啊。）', 1, 1, 2);
INSERT INTO `paragraph` VALUES (88, '說出口後，周才終于領會過來。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (89, '原來真晝當時的表情，和走失的孩子在尋找父母時如出一轍。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (90, '「你可真好心。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (91, '周回想著昨天遇見真晝的情景。對此，樹笑著調侃道。他對周的心情一無所知。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (92, '「不過啊，不管是借傘還是怎樣，你在那之後只是隨便擦擦身體就算了吧。感覺那才是你感冒的原因。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (93, '「……你怎麼知道？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (94, '「只要去你家看過，就知道你不會愛惜自己的身體了啦。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (95, '樹這麼說後，接著若無其事地損了一句︰「所以才會感冒啊，笨──蛋。」周只能選擇閉上嘴巴。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (96, '樹說得沒錯，周基本上對自己的事情不太在乎。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (97, '進一步說，他不擅長收拾整理，所以房間老是亂七八糟。吃的也都是便利商店的便當或營養補助食品，不然就是外食。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (98, '連樹都受不了地說過「虧你敢說要獨居」。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (99, '從樹的角度來看，周的生活習慣實在過于邋遢隨便，也難怪他會感冒了。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (100, '「今天早點回家休息吧。明天剛好是周末，早點把感冒治好。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (101, '「喔……」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (102, '「至少有個女朋友照顧你的話就好了呢。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (103, '「吵死了。有女朋友的人給我閉嘴。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (104, '看到樹有些自豪地揚起嘴角，周火大地用自己的面紙盒朝他的手背打下去。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (105, '隨著時間過去，周的身體狀況變得愈來愈差。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (106, '原本感冒的癥狀只有頭痛和流鼻水，現在還加上喉嚨痛和倦怠感前來助陣，一起支配著他的身體。盡管周在放學後心無旁鶩地急著趕回家，身體卻不敵感冒所帶來的影響，腳步變得沉重又緩慢。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (107, '即使如此，周仍是抵達了公寓的入口。他拖著沉重的腳步一走進電梯里，就把身體靠到牆上。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (108, '「呼──」地一聲吐出的氣息，比平常更加紊亂且灼熱。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (109, '在學校的時候還能忍受，但或許是因為快到家而放松下來的緣故，身體一下子變得難受起來。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (110, '連搭電梯時習以為常的那種獨特失重感，現在也只是帶來痛苦。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (111, '身體格外不舒服，但他就快到家了。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (112, '電梯一停在周住的樓層，他便慢慢走出來，朝自家走去──然後，他頓時愣住了。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (113, '周的視線前方是原以為不會再說上話、有著一頭亞麻色飄逸長發的少女。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (114, '那可愛動人的容貌看上去朝氣蓬勃，皮膚的氣色也很好。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (115, '怎麼想都是她更有可能感冒，結果卻是一副精神百倍的模樣。也許是她平時就有在照顧身體的關系，這時候就如實地呈現出兩人生活型態的差距。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (116, '真晝的手上握著昨天周硬塞給她的傘，折疊得相當整齊。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (117, '明明說過不用還，她還是拿來還了啊。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (118, '「……之前說了，不用還也沒關系的。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (119, '「有借有還是理所當……？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (120, '她話說到一半就停了下來──或者該說，她在看見周的臉後便說不出話來了。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (121, '「那個，你在發燒對吧……？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (122, '「……不關你的事。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (123, '周蹙眉心想，還真是在最糟糕的時機撞見了。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (124, '說得極端一點，傘還不還都無所謂。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (125, '不過，在這個時間點遇到就很不妙了。她那麼聰明，肯定很快就能聯想到周感冒的原因。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (126, '「可是，都是因為你把傘借我……」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (127, '「是我自己要借的，跟你沒關系吧。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (128, '「有關系。因為我在那里，所以你才會感冒的。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (129, '「這沒什麼啦，你不用放在心上。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (130, '對周而言，那是他為了自我滿足而做的事情，所以不希望因此讓別人擔心。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (131, '然而，真晝似乎不打算三言兩語就放過周。她端正的美貌流露出焦急之色。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (132, '「……就這樣吧，再見。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (133, '在這邊僵持不下讓周更加難受，于是他決定強行逃離真晝擔心的追問。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (134, '他腳步踉蹌、搖搖晃晃地隨手接過傘，然後從口袋里拿出鑰匙……到這里還沒有問題。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (135, '當他動作有些遲緩地打開自家房門的瞬間，身體突然變得虛脫無力。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (136, '也許是因為總算能走進家門而感到安心的緣故，周的身體搖晃著朝後方的護欄倒去。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (137, '盡管當下心里覺得不妙，不過那道護欄很結實，只是撞一下的話不用擔心撞壞，況且高度足夠，也不至于摔下去。直接撞上去多少會有點痛，但那也沒辦法……周已經做好了感到疼痛的心理準備。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (138, '但下一秒，他感到手臂被用力一拉，強行恢復了原本的姿勢。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (139, '「……實在沒辦法放著不管。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (140, '微弱的聲音傳到周有些模糊的意識中。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (141, '「欠你的人情我會還的。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (142, '大概是燒得更厲害了，周試著用意識逐漸渙散的腦袋去理解她所說的話，最後還是選擇放棄。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (143, '在他理解之前，真晝就撐著他幾近癱軟的身體，打開了他的家門。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (144, '「我進去了。這是不得已的，請原諒。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (145, '平靜的嗓音透露著不容分說的強硬態度。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (146, '感冒的周也沒力氣抵抗，就這麼被拖著，第一次和同齡女性一起回到家中。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (147, '雖然他沒有在生病時幫忙照料的女朋友，不過似乎有位幫忙照料的天使降臨。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (148, '周燒得頭昏腦脹，遲了一步才想起自己家里的現狀──不如說是親眼看到實際情況之後，他才後悔讓真晝進來。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (149, '周住的公寓是一房一廳，另外還有廚房和儲藏室。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (150, '客廳與寢室都相當寬敞，還附設了儲藏室，對于獨居的人而言已經頗為奢侈。周的家庭還算富裕，父母考慮到安全性和交通便利等因素後，最後選擇了這里。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (151, '由于是雙親做下決定，並表示「想要一個人住的話，就得住這里」，因此周並不打算對此提出異議，但他內心其實認為不用花那麼多錢也可以。他一個人實在不知道該怎麼處置這麼大的房子。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (152, '先不說這些。周獨自在這里生活，而且他是個不擅長收拾整理的男生。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (153, '所以別說客廳了，連寢室里都堆著滿地的雜物。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (154, '「真是看不下去。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (155, '天使──更正，是救世主大人對周送上這麼一句與她可愛外表不符的直白感想。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (156, '事實上就是那麼慘不忍睹，因此周也無從反駁。早知道別人要進來家里，他就多少挪開一點雜物了。不過，事到如今說這些也沒用。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (157, '真晝光潤的嘴唇中吐出嘆息。即使如此，她也沒有回去，而是把周帶到了寢室。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (158, '中途兩人還差點摔倒，這讓把屋子弄得這麼亂的本人也深切體認到，自己再不認真收拾房間就不妙了。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (159, '「我先出去一下，你就在我回來之前換好衣服。沒問題吧？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (160, '「……你還要回來啊。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (161, '「放著臥床不起的人不管，我會睡不好覺的。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (162, '真晝冷淡地回答，似乎和周上次看到她淋濕那時有著一樣的想法，所以他也無法再多說什麼。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (163, '等到她離開房間之後，周就老實地照她所說，換上家居服。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (164, '「真是亂七八糟，根本沒有走路的地方……為什麼這樣還能生活呢……」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (165, '周在換衣服的期間，隱約听見了真晝疑惑的低語聲，這令他感到萬分抱歉。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (166, '周換好衣服躺下之後，似乎在不知不覺間睡著了。當他使勁地撐起沉重的眼皮時，首先映入眼簾的是亞麻色的發絲。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (167, '視線沿著發絲往上看去，只見真晝安靜地站在床邊盯著他。看來，剛才那些並不是一場夢。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (168, '「……現在幾點了？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (169, '「晚上七點。你睡了幾個小時。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (170, '真晝淡然地回答，並配合周坐起身體的動作，將倒入杯中的運動飲料遞給他。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (171, '周心懷感激地接過杯子後喝了幾口，才總算有余力留意周圍情況。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (172, '可能是因為睡了一覺的緣故，感覺身體稍微好點了。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (173, '他接著注意到頭上有股涼涼的感覺，于是伸手按向額頭，指尖上隨即傳來像是布一樣有點硬的觸感。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (174, '周一意識到額頭上貼著家里不可能有的退熱貼後，便抬頭看向真晝。只見她直言不諱地回道︰「我從家里拿來的。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (175, '這個家里既沒有退熱貼，也沒有運動飲料。想必運動飲料也是她拿過來的吧。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (176, '「……謝謝你特地帶來。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (177, '「不會。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (178, '冷淡的回應令周只能露出苦笑。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (179, '她只是出于罪惡感才提議照料自己，並不是想和他聊天吧。再說，在不熟的男人家里兩人獨處，這種狀態也不可能親近地說話。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (180, '「我把桌上的藥拿過來了。最好吃點東西後再吃藥，不過你現在有食欲嗎？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (181, '「嗯，算有吧。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (182, '「是嗎？那我煮了稀飯，你吃一點吧。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (183, '「……咦？你親手煮的？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (184, '「除了我還有誰？不想要的話，我就自己吃了。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (185, '「不不，我吃，請讓我吃吧。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (186, '周想都沒想過真晝除了照料自己以外，還會為他下廚煮稀飯，一時間有點驚慌失措。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (187, '老實說，雖然真晝的廚藝是個未知數，但他沒听說過對方在家政課上失敗之類的傳聞，應該不會太糟吧。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (188, '見周立刻低下頭回答要吃，真晝有些傻眼，不過她還是點了點頭，然後把放在邊桌上的體溫計遞給他。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (189, '「我去把稀飯端來，你先量一下體溫。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (190, '「嗯。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (191, '周依言照辦。當他解開襯衫前襟並拿出體溫計的時候，真晝忽地別開臉。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (192, '「請等我離開房間以後再量！」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (193, '周朝語氣略微慌張的真晝看去，只見她的臉上泛起淡淡的紅暈。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (194, '他詫異地心想，男人的胸膛又不像女孩子一樣需要遮起來。話雖如此，她可能不習慣瞧見他人裸露的肌膚，周只是敞開前襟，她就明顯地慌了手腳。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (195, '真晝白皙的臉頰染上了淡淡的薔薇色，臉依舊撇向一旁，身體微微發抖。不知道是不是錯覺，她的耳朵似乎也染上了顏色，可見她有多麼害羞。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (196, '（……啊，好像有點懂周圍的男生為什麼一直說她可愛了。）', 1, 1, 2);
INSERT INTO `paragraph` VALUES (197, '周也認同真晝確實是個美少女，但並沒有更進一步的感想。對方是很美麗、可愛沒錯，但也僅止于此。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (198, '那或許該說是人造物之美──給人一種近似藝術品的印象。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (199, '然而，她像現在這樣有點害羞又驚慌、增添一絲生氣的模樣，反而看起來特別可愛。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (200, '「……那你快去拿稀飯過來不就好了？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (201, '「不、不用你說我也會去。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (202, '（插圖008）', 1, 1, 2);
INSERT INTO `paragraph` VALUES (203, '不過，兩人的關系並沒有親密到周能坦率地夸她可愛的程度。況且要是說出口，肯定會被她以異樣的眼光看待，于是他將這番感想吞了回去。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (204, '周一副不怎麼感興趣地那麼一說後，真晝就踩著啪嗒啪嗒的腳步聲快步走出了房間。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (205, '她的動作有些遲緩，大概是因為感到動搖，或是房間太亂的緣故吧。八成是後者。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (206, '周精神恍惚地目送她離開之後，呼出一口算不上嘆息的長氣，心里想著︰事情怎麼會變成這樣？', 1, 1, 2);
INSERT INTO `paragraph` VALUES (207, '（……唉，大概是因為責任感和罪惡感吧。）', 1, 1, 2);
INSERT INTO `paragraph` VALUES (208, '一般而言，女孩子應該不會跑進不太熟的男性家里照料病人。畢竟要是被欺負還是怎樣的話，事情就嚴重了。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (209, '真晝甘冒風險做出照料病人的選擇，看得出她對此非常介意。加上周的態度明顯對她沒有興趣，說不定這才是讓她安心的主要原因。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (210, '不管怎樣，真晝是不得已才來照顧他的，這一點應該可以肯定。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (211, '「……我拿來了。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (212, '周以微微發熱的腦子想著這些事的時候，真晝有些拘謹地敲了敲門。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (213, '她似乎擔心周還沒穿好衣服，所以沒有馬上進入房間。這時，周才想起自己把衣服解開是為了量體溫。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (214, '「我還沒量體溫。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (215, '「不是跟你說了，在我離開的時候量好嗎……」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (216, '「抱歉，我剛剛在發呆。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (217, '周老實地道歉後，將體溫計夾到腋下。沒多久，便傳來有些模糊的電子聲。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (218, '他拿起體溫計，只見顯示螢幕上出現三十八度三的數字。雖然不需要去醫院，但這樣的體溫還是偏高。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (219, '接著他穿好衣服，向遲遲不打算進來的真晝喊道「好了」之後，真晝這才端著盛放一口陶鍋的托盤，忐忑不安地走進來。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (220, '似乎是看到周把衣服整理好的關系，她明顯松了口氣。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (221, '「幾度？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (222, '「三八點三。吃藥後睡一覺就會好了。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (223, '「……市售的成藥都只是針對癥狀，無法消滅病毒本身。你還是必須讓身體好好休息，使免疫系統發揮作用。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (224, '盡管被念了幾句，可是周知道真晝是在擔心自己，所以總覺得挺不好意思的。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (225, '真晝嘆了口氣說「真拿你沒辦法」，同時將托盤連同上面的陶鍋一起放在邊桌上，然後掀起鍋蓋。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (226, '鍋子里是放了梅干的稀飯。可能是考慮到對胃的負擔，所以並不是全粥，而是加了更多水的稀飯，大概算是七分粥。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (227, '里面放入梅干，應該不是為了增添味道，而是听說它可以治感冒的關系。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (228, '鍋子沒有冒出熱氣，卻傳來一點余溫。看樣子，這鍋稀飯不是剛做好的，而是做好之後刻意放涼過。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (229, '真晝不顧直盯著稀飯看的周，動作俐落地把稀飯盛到碗里。梅干細細地散在稀飯里面，籽也細心地挑掉了。紅色的梅干肉混入白色米湯中，顯得相當清爽。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (230, '「請用。應該不會燙了。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (231, '「嗯，謝啦。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (232, '周接過碗，卻只是拿著湯匙，直盯著稀飯看。見狀，真晝納悶地問︰', 1, 1, 2);
INSERT INTO `paragraph` VALUES (233, '「……怎麼了？想讓我喂你嗎？我可不提供那種服務。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (234, '「誰說要你喂了……只是很驚訝你還會做飯。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (235, '「一個人住的話，當然會做啊。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (236, '對于生活無法自理的周來說，這話听起來相當刺耳。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (237, '「……藤宮同學你在考慮做飯之前，最好先把房間整理一下比較好。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (238, '「您說得對。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (239, '真晝似乎大概猜到了周在想什麼，連忙開口叮囑。周低聲答應著，一邊用湯匙舀起一口稀飯送進嘴里，試圖藉此敷衍過去。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (240, '稀飯濃稠的味道在舌頭上擴散開來，鹽放得不多，十足襯托出了米的原味。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (241, '拌開的梅干肉帶來溫和的酸味與咸味，增添了粥的風味並形成絕妙的平衡。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (242, '周不太喜歡吃很咸的梅干，更偏好這種微甜的溫和酸味。要是沒感冒的話，他想直接把梅干放到白飯上配著吃或是做成茶泡飯。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (243, '「好吃。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (244, '「謝謝夸獎。雖說只是煮稀飯的話，誰來煮都差不多呢。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (245, '真晝裝作一本正經的樣子回答，臉上卻隱隱浮現一抹微笑。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (246, '那笑容含有幾分安心的氣息，和在學校偶爾能見到的客套笑容不同，令周不禁凝視著她的臉龐。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (247, '「……藤宮同學？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (248, '「啊，沒事。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (249, '柔和的笑容只出現一瞬間就很快地消失了，總覺得很可惜。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (250, '周心里這麼想著，但並沒有說出口。他只是再次一小口一小口地吃著稀飯，打算掩飾過去。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (251, '「……總之，你今天就靜養吧，記得多補充水分。還有，要擦汗的話就用這個，臉盆里面有裝水，毛巾沾濕以後要擰乾再擦喔。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (252, '等周吃完飯後，真晝勤快地準備好未開封的運動飲料、裝水的臉盆和毛巾，還有備用的退熱貼，並將東西一一放在邊桌上。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (253, '再怎麼說，都不可能在不熟識的異性家里留宿，況且那樣周也會覺得不自在，所以他很感謝真晝這番行動。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (254, '在周的注視下，真晝檢查著還有沒有缺什麼東西。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (255, '（……沒想到她會出于責任感，照顧得這麼無微不至。）', 1, 1, 2);
INSERT INTO `paragraph` VALUES (256, '雖然講話毫不留情又很冷淡，但她做起事來卻相當認真勤快。周不禁苦笑，看來他也逐漸習慣了這樣的真晝。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (257, '（她對往後就沒有交集的人還真客氣。）', 1, 1, 2);
INSERT INTO `paragraph` VALUES (258, '之後八成不會再和她有什麼關聯了吧。畢竟她只是在機緣巧合下，照顧自己一次罷了。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (259, '沒錯，既然以後不會接觸，就問問那件他很在意的事吧。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (260, '也許是藥效發作的關系，盡管倦怠感依舊沒有減輕，但燒似乎退了一些，周感覺思緒比睡前清晰不少。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (261, '「呃，可以問你一件事嗎？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (262, '「什麼事？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (263, '真晝擺放好必要的物品之後，轉向周問道。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (264, '「那時候你為什麼要在雨中坐在秋千上？跟男朋友吵架了嗎？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (265, '周一直很在意導致他生病受人照料的那個契機──也就是昨天所發生的事情。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (266, '那個雨天，真晝坐在秋千上擺蕩著。她為什麼會在那里呢？', 1, 1, 2);
INSERT INTO `paragraph` VALUES (267, '正是因為很在意她那如同迷路孩子般的眼神，周才會硬把傘借給她。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (268, '可是，他並不知道真晝為什麼會露出那樣的表情。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (269, '那看起來像是在等待某人的樣子，因此周胡亂猜測，她是不是跟交往中的男朋友吵架之類的。真晝聞言，一臉受不了地看著他說︰', 1, 1, 2);
INSERT INTO `paragraph` VALUES (270, '「很抱歉，我才沒有男朋友，也沒有打算交男朋友。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (271, '「啊？為什麼？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (272, '「我倒要問你，為什麼會以我有男朋友為前提呢？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (273, '「看你那麼受歡迎的樣子，我還以為會有一、兩個。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (274, '對正在和真晝交談的周來說，她是個意外地充滿人情味、個性有些強勢的普通少女。然而，她在旁人眼中並非如此。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (275, '她是個清純可愛、乖巧謙虛的美少女，擁有引人注目的端正美貌，甚至足以被稱作天使。盡管個子嬌小，身材卻凹凸有致。柔弱且能激發他人保護欲的氣質，與那身材曲線相輔相成，簡直完美體現了所有男生的理想。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (276, '再加上總是保持學年第一的成績，體育全能，還有今天周才見識到、可能還不錯的廚藝。可想而知，她在男性之間一定很受歡迎。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (277, '周曾經見過別人向她搭訕攀談，也知道班上有不少同學都對她抱持好感。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (278, '所以才沒想到，她居然會在那種任君挑選的狀況下，不曾跟任何一個人交往。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (279, '周這麼想，因此用了「一、兩個」的說法。然而，一听到他這麼說，真晝就板起臉來，然後露出扭曲的表情。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (280, '「我沒有，我也不記得自己是那種跟好幾個人交往、沒節操的人。絕對不可能。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (281, '見真晝的眼神一下子冷淡得可怕，而且冷漠地予以否定，周立刻明白自己踩到了地雷。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (282, '也許是感冒的緣故，周突然感到一陣惡寒，總覺得連房間都變得冷颼颼的。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (283, '「抱歉，我沒那個意思。是我說錯話了。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (284, '「……不會，我也一時頭腦發熱，有點情緒化。對不起。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (285, '不過，在周低頭道歉之後，冰冷的氛圍便很快消散了。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (286, '與其說是頭腦發熱，周更覺得剛才那氣氛像是刮起了暴風雪，只是他不敢把這話說出口。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (287, '「總之，我並不是因為那方面的原因才待在雨中，只是想讓腦袋冷靜一下而已……害你因為擔心我而感冒，倒是讓我覺得很抱歉。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (288, '「沒什麼啦，反正是我自己硬要借傘給你。況且，正因為是我擅自這麼做的，所以不希望你因此懷有罪惡感。畢竟，這大概是我最後一次和椎名你有交集吧。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (289, '果不其然，真晝是因感到內疚才會照顧他的。她听完周後半部分的話後眨了眨眼，有些驚訝地看著他。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (290, '她應該是對「最後一次有交集」這個說法有點在意。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (291, '「我們也沒什麼接觸的機會，當然不會再有交集吧。就算大家都說你是年級第一的美少女、才女，還是天使什麼的，我也沒打算跟你發展什麼關系。你以為我是想讓你欠人情，然後趁機得手嗎？」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (292, '看到真晝尷尬地撇開視線，周苦笑著心想︰果然如此。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (293, '這應該不是她本人自作多情，而是確實曾經發生過那樣的事。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (294, '賣美少女人情以藉機拉進關系，這樣的方法的確行得通。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (295, '真晝似乎有過好幾次這種經驗，也難怪那個雨天她會表現得如此警惕。既然是為了自衛，那就不能怪她了。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (296, '「被不喜歡的男生糾纏，你也覺得很麻煩吧。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (297, '「是沒錯。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (298, '「我就知道。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (299, '听到她本人予以肯定，周反而感到有趣。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (300, '就算大家把她捧上天，說她是乖巧的模範生和可愛的天使，但她也有喜歡、討厭和感到厭煩的事情。這讓周多少產生了一點親近感。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (301, '真晝似乎覺得自己不小心說溜嘴，用隱含怨氣的目光盯著誘使她失言的周。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (302, '她也是個有感情的人，這就是最好的證明。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (303, '「有什麼關系？那樣我反而安心了。原來天使也和平常人一樣有這種困擾。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (304, '「……請別那樣叫我。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (305, '看來天使這個綽號讓她感到很難為情，真晝繼續對周投以不滿的眼神。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (306, '這個反應也讓周覺得有趣，于是他又笑了。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (307, '「總之，沒什麼事情的話，不會特地去麻煩你啦。」', 1, 1, 2);
INSERT INTO `paragraph` VALUES (308, '周如此斷言。真晝聞言，有點驚訝地睜大眼楮，然後微微露出苦笑。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (309, '周躺在床上呆呆地望著天花板，回想起真晝點了點頭之後回去的身影。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (310, '盡管藥效已發揮作用，身體還是很疲憊。一旦放松下來，他很快就會陷入夢鄉吧。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (311, '周閉上眼楮，回想今天發生的事情。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (312, '有天使（毒舌系）在病床邊照料自己，這種事不管說給誰听都不可能相信，而且這也不是能到處說的事情。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (313, '今天發生的事，是周與真晝兩人之間的秘密。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (314, '秘密──這樣的形容莫名令人感到別扭。明明只是因為怕麻煩，他才決定最好不要跟別人說的。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (315, '從明天開始，他們就只是交情不深的外人了。', 1, 1, 2);
INSERT INTO `paragraph` VALUES (316, '周這麼告訴自己，然後慢慢沉入夢鄉。', 1, 1, 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', NULL);

-- ----------------------------
-- Table structure for volume
-- ----------------------------
DROP TABLE IF EXISTS `volume`;
CREATE TABLE `volume`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of volume
-- ----------------------------
INSERT INTO `volume` VALUES (1, '第一卷', 1);
INSERT INTO `volume` VALUES (2, '第二卷', 1);
INSERT INTO `volume` VALUES (3, '第三卷', 1);
INSERT INTO `volume` VALUES (4, '第四卷', 1);
INSERT INTO `volume` VALUES (5, '第五卷', 1);

SET FOREIGN_KEY_CHECKS = 1;
