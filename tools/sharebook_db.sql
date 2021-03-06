/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50041
Source Host           : localhost:3306
Source Database       : sharebook_db

Target Server Type    : MYSQL
Target Server Version : 50041
File Encoding         : 65001

Date: 2018-05-27 22:22:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info` (
  `Book_Info_Id` varchar(255) NOT NULL,
  `isbn13` varchar(13) default NULL,
  `title` varchar(255) default NULL,
  `image` varchar(255) default NULL,
  `publisher` varchar(255) default NULL,
  `pubdate` varchar(255) default NULL,
  `author` varchar(255) default NULL,
  `summary` varchar(5000) default NULL,
  `page` varchar(255) default NULL,
  `price` varchar(255) default NULL,
  `hot` int(11) default NULL,
  `enter_time` varchar(255) default NULL,
  PRIMARY KEY  (`Book_Info_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES ('25942191', '9787115362865', '第一行代码', 'https://img3.doubanio.com/view/subject/m/public/s28351121.jpg', '人民邮电出版社', '2014-8', '郭霖', '《第一行代码——Android》是Android初学者的最佳入门书。全书由浅入深、系统全面地讲解了Android软件开发的方方面面。第1章带领你搭建Android开发环境，完成你的第一个Android程序。第2章至第13章完整地讲解了Android开发中的各种基本知识和关键技术，包括四大组件、UI、碎片、广播机制、数据存储、服务、多媒体、网络、定位服务、传感器，以及分布式版本控制系统Git的使用等等。在部分章节会穿插相关技术的高级使用技巧。第14章和第15章则将带领你编写一个完整的项目，教会你如何打包、上架、嵌入广告并获得盈利。《第一行代码——Android》内容通俗易懂，既适合初学者循序渐进地阅读，也可作为一本参考手册，随时查阅。', '553', '79.00元', '1', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('26915433', '9787115439789', '第一行代码：Android（第2版）', 'https://img3.doubanio.com/view/subject/m/public/s29572743.jpg', '人民邮电出版社', '2016-12-1', '郭霖', '本书被广大Android 开发者誉为“Android 学习第一书”。全书系统全面、循序渐进地介绍了Android软件开发的必备知识、经验和技巧。\n第2版基于Android 7.0 对第1 版进行了全面更新，将所有知识点都在最新的Android 系统上进行重新适配，使用 全新的Android Studio 开发工具代替之前的Eclipse，并添加了对Material Design、运行时权限、Gradle、RecyclerView、百分比布局、OkHttp、Lambda 表达式等全新知识点的详细讲解。\n本书内容通俗易懂，由浅入深，既是Android 初学者的入门必备，也是Android 开发者的进阶首选。', '570', 'CNY 79.00', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('27034265', '9787115448156', '第一行代码 Java 视频讲解版', 'https://img3.doubanio.com/view/subject/m/public/s29440076.jpg', '人民邮电出版社', '2017-3', '李兴华', '第一行代码 Java 视频讲解版从初学者的角度，以丰富的例子、通俗易懂的语言、简单的图示，详细地介绍了Java开发中重点用到的多种技术。全书分为15章，包括Java简介、程序基本概念、面向对象基本概念、面向对象高级知识、包及访问控制权限、异常的捕获及处理、Eclipse开发工具、Java新特性、多线程、Java常用类库、Java IO编程、Java网络编程、Java类集框架、Java数据库编程、DAO设计模式等内容。 *行代码 Java 视频讲解版列举了700多个小实例、100多个示意图，方便读者快速理解和应用。本书还附带了长达60小时的教学视频、源代码和PPT电子教案，另外专门提供了论坛为读者解答问题。本书作者有多年的开发和教学经验，希望能成为读者的良师益友。 *行代码 Java 视频讲解版面向Java技术的初学者，适合作为培训中心、计算机相关专业的教材。', '634', '89.00元', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('22504106', '9787513017176', '从第一行开始', 'https://img1.doubanio.com/view/subject/m/public/s26601147.jpg', '知识产权出版社', '2013-3', '查韦斯', '《从第一行开始:查韦斯随笔》是委内瑞拉总统查韦斯的思想随笔。这些思想的火花已成为指导玻利瓦尔革命的理论灵感之源泉。查韦斯总统对于国家历史、政治、经济、国际形势、社会主义建设和人民政权的发展、社会主义道德等问题都进行了深入思考。他对革命力量发出深情的号召，对干涉其他国家内政者予以强烈的抨击，为拉美一体化进行了坚定而卓越的努力。', '410', '58.00元', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('26712321', '9787767676761', '第一行代码', 'https://img1.doubanio.com/f/shire/5522dd1f5b742d1e1394a17f44d590646b63871d/pics/book-default-lpic.gif', '', '', null, '', '', '', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('6886394', '9787544340076', '你可以不生气', 'https://img1.doubanio.com/view/subject/m/public/s8482739.jpg', '海南出版社', '2011-10', '一行禅师', '《你可以不生气》是一行禅师献给21世纪人类的重要著作。在书中，一行禅师提醒我们，把生气当做自己的孩子，好好地拥抱、照顾，受伤的孩子很快就可以康复。《你可以不生气》以许多实际的例子，告诉我们如何学习谛听、深观，并透过正念转化我们的习气，把内心积蓄的负面能量转化成正面能量，将生气的怒火转化成慈悲的甘泉，还能更有智慧地对待别人，面对人生的挫折与痛苦。', '223', '28.00元', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('6791741', '9787564804398', '步行冥想', 'https://img3.doubanio.com/view/subject/m/public/s6866226.jpg', '湖南师范大学出版社', '2011-9', '一行禅师', '是否可以用脚步使自己与生命联接得更为深刻紧密？\n是否可以将平和、快乐印刻在大地和自己脸上？\n细细地阅读《步行冥想》，听从它深入内心的教诲，你将知道如何在行走中感受当下，享受心灵的平和，无论是在山空水静的大自然，还是在纷繁杂乱的城市街道。\n著名的一行禅师及其高徒阮英明香以书籍、DVD和CD的独特形式，在《步行冥想》中为你阐释步行减压的艺术。\n本书将告诉你：行走不是为了到达某个终点，而是一次触及世间万物和心灵的机会；通过呼吸将灵魂和思想统一成一种惯性的正面力量；通过冥想来化解你情感中的波折，比如愤怒、焦虑等。\n在《步行冥想》的教诲之下，无论我们的内在差异有多大，都能够重新发现：快乐与平和才是我们的家！', '114', '28.00', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('26435264', '9787550254374', '园艺是最好的亲子游戏', 'https://img3.doubanio.com/view/subject/m/public/s28120160.jpg', '北京联合出版公司', '2015-8', '〔美〕勒娜特·福森·布朗', '本书为家庭园艺类亲子读物，鼓励孩子去户外亲近自然，以耳目一新的创意实验活动，帮助孩子更好地耕耘自己的园地，体验学习、创造、劳作和收获的乐趣，还能充分培养孩子的耐心、创造力和独立思考能力，让孩子热爱生活，领略自然之美。\n书中提供了52个创新有趣的园艺实验，教孩子从学习地图认识自己所在地的环境开始，通过种子、土壤和花朵，以园林艺术来美化家园，改善生活环境。\n作者创造了一个有趣的机会，让小读者和全家人一起学习生态学、植物学，了解季节、食物、昆虫和烹饪。本书开放式的课程，值得小朋友们一遍又一遍地探索，和家人、朋友共度美好时光。\n在阳光明媚的地方建一个蝴蝶园地；\n用废旧轮胎做一个完美的土豆农场；\n在装满土壤的旧鞋子里栽花种草；\n用漂亮的浅口碟子为鸟儿做个浴盆；\n用花园中收获的香草做个助眠香包；\n用尼龙袜做个会长出青草头发的娃娃；\n在你的花园里搭建一个秘密堡垒；\n……\n一起美化家园，做心灵手巧的创意小能手！', '136', '68.00元', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('26923370', '9787302437734', 'C#6.0学习笔记', 'https://img1.doubanio.com/view/subject/m/public/s29179328.jpg', '清华大学出版社', '2016-9-1', '周家安', '', '751', 'CNY 99.00', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('2080803', '9787503004308', '天下第一行书', 'https://img1.doubanio.com/f/shire/5522dd1f5b742d1e1394a17f44d590646b63871d/pics/book-default-lpic.gif', '测绘出版社', '1990年8月', '于曙光', '', '158', '3.7元', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('2221176', '9787807491132', '四言/天下第一行书集字联大观', 'https://img3.doubanio.com/view/subject/m/public/s5836362.jpg', '', '2007-6', null, '本书共收录了三十九对四言字联，如：天地一气　世宙万年，天作之合　春以为期，风清引竹　气静得兰等。', '46', '12.00元', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('2221187', '9787807491149', '天下第一行书集字联大观-五言', 'https://img1.doubanio.com/view/subject/m/public/s5836387.jpg', '江西美术', '2007-6', '郭晓芳', '本书共收录了七十六对五言的字联，是广大书法爱好者的收藏珍品。', '76', '16.00元', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('1414536', '9787502150778', '责任', 'https://img3.doubanio.com/view/subject/m/public/s8447224.jpg', '石油工业', '2005-5', '宿磊', '本书包括：责任：上帝赋予我们的天职；全力以赴实现我们心中的梦；责任缔造无限完美；心在，一切自然在共四章内容。', '222', '23.00元', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('3468212', '9789570817713', '谁才是第一', 'https://img3.doubanio.com/view/subject/m/public/s7005665.jpg', '联经出版事业公司', '1998', '清水一行', '', '243', '25.00', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('20301179', '9789502169408', '责任-优秀员工的第一行为准则', 'https://img3.doubanio.com/view/subject/m/public/s23519506.jpg', '', '', null, '责任-优秀员工的第一行为准则，ISBN：9789502169408，作者：', '', '', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('19965378', '9784906011216', '金第一行助の事件簿', 'https://img1.doubanio.com/view/subject/m/public/s22706838.jpg', 'マガジン・マガジン', '1997-6', '佐藤 陽子', '', '', 'JPY 650', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('4302299', '9787806772430', '清宫广州十三行档案精选', 'https://img3.doubanio.com/view/subject/m/public/s8871173.jpg', '广东经济出版社', '2002-07-01', '中国第一历史档案馆 等编', '', '285', '500', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('1492410', '9787504938459', '开国第一任央行行长', 'https://img3.doubanio.com/view/subject/m/public/s5646723.jpg', '中国金融出版社', '2006-1', '邓加荣', '他思贤若渴，为人民银行延聘了一大批著名的经济学家，如千家驹、王学文，章乃器、沈志远、陶大镛、冀朝鼎等，使人民银行成为“人才篓子”；他运筹帷幄其中，决胜于千里之外，接连地平息了几次奸商投机倒把的猖狂活动，查抄证券大楼，平息了银元炒卖风潮，巧设奇计于粮食、纱布市场，打退奸商屯集居奇、投机倒把活动；他曾担任过杨虎城的秘书长，从狱中智释刘志丹同志，西安事变暴发，党调他去西安协助周恩来同志协调处理事变后的事宜；他曾……他，就是开国第一任中国人民银行行长南汉宸，本书是《中国经济学家列传》系列丛书之一，向我们娓娓道来他的生平事迹！\n\n　　开国第一任中国人民银行行长南汉宸的一生，许多亲自经历的故事。“中国人民银行”，这个名字好！“人民”两个字，说明了这个银行的性质，它是人民的，大众的，而不是某个官僚资本家的，或某个财政金融寡头的；同时，也表明了它的地位和作用，它应当是未来的人民共和国的国家银行、中央银行。他参加了这个名字的拟定，主持了中国人民银行筹备处的工作。他思贤若渴，为人民银行延聘了一大批著名的经济学家，如千家驹、王学文，章乃器、沈志远、陶大镛、冀朝鼎等，使人民银行成为“人才篓子”。他运筹帷幄其中，决胜于千里之外，接连地平息了几次奸商投机倒把的猖狂活动，查抄证券大楼，平息了银元炒卖风潮，巧设奇计于粮食、纱布市场，打退奸商屯集居奇、投机倒把活动。资金“三紧三松”，政策灵活得当，使私人工商业一死一活，死的是不法商人和投机倒把分子，搞活的是正常的工商业。他曾担任过杨虎城的秘书长，从狱中智释刘志丹同志，西安事变暴发，党调他去西安协助周恩来同志协调处理事变后的事宜。他曾受命于危难之际，在国民党对我陕甘宁边区实行封锁禁运的最艰苦时候，出任边区财政厅长，想方设法打破国民党的经济封锁，为边区五万多干部、战士解决了穿衣吃饭问题。他曾……', '399', '38.00元', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('5373997', '9787513001755', '学．思．行 中国地质大学（第一辑）', 'https://img3.doubanio.com/view/subject/m/public/s6259853.jpg', '', '2011-1', null, '《学思行(第1辑)》内容简介：理论联系实际是党的优良传统和作风，教育与生产劳动和社会实践相结合是党的教育方针的重要内容，社会实践是大学生思想政治教育的重要环节，是大学生喜爱的思想政治教育形式之一。大学生参加社会实践，可以了解社会、认知国情，增长才干、奉献社会，锻炼毅力、培养品格，对于培养中国特色社会主义事业的合格建设者和可靠接班人具有重要意义。本系列书以年级为序，集中收录了近年来中国地质大学（北京）大学生社会实践的优秀报告论文。本辑收录了2007级大学生社会实践的优秀论文报告，共分六篇：新中国60年转变探索篇、农村生态环境与科学发展考察篇、祖国地质事业调查篇、共和国先进典型探访篇、公益实践服务活动篇、大学生生活调查篇。', '398', '58.00元', '0', '2018-05-05 09:25:26');
INSERT INTO `book_info` VALUES ('19669279', '9786138700623', '7886 Redman', 'https://img3.doubanio.com/view/subject/m/public/s22478074.jpg', '', '', 'Helias, Saul Eadweard', '', '112', '', '0', '2018-05-25 19:04:22');
INSERT INTO `book_info` VALUES ('3729424', '9780583118392', 'The Siege of Trencher\'s Farm', 'https://img1.doubanio.com/f/shire/5522dd1f5b742d1e1394a17f44d590646b63871d/pics/book-default-lpic.gif', 'Dell 7886', '1970', 'Gordon M. Williams', '', '', '', '0', '2018-05-25 19:04:22');
INSERT INTO `book_info` VALUES ('24700123', '9787508639581', '一炮走红的国家', 'https://img3.doubanio.com/view/subject/m/public/s26690375.jpg', '中信出版社', '2013-5-30', '鲁奇尔·夏尔马', '这是一本对新兴国家的成长动力进行精彩绝伦的分析，并大胆预测了决定国家未来成败的趋势与因素的权威著作。对于中国读者而言，这本书的价值主要体现在两方面，一方面是大量从事制造业和国际贸易的生意人的投资战略指导，另一方面本书是指导政府决策机构应该如何规避国家战略的风险，以及各级地方政府如何引导企业拉动当地经济的必读的决策参考。\n21世纪的头10年，各个新兴国家几乎同时经历着普通繁荣时期，但在下一个10年，它们的发展将会千差万别。作者全景式地展现了新兴市场繁荣发展、衰退的局面，包括中国、俄罗斯、巴西、印度、东南亚以及欧洲国家的经济增长模式和发展轨迹，并深入探讨了各国的政体、地方保护主义、家族继承制企业等相互作用力与一个国家的经济发展之间的和谐与不平衡关系。\n作者对全球经济发展趋势以及未来投资新热点和走向的揭露性观察，能够帮助我们在这次金融萧条中找到变革的思路。而且本书语言通俗易懂，从温州小商品市场的老板到政府高层，都没有任何阅读障碍。', '268', '59.00元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('20283567', '9787508636436', '下一个倒下的会不会是华为', 'https://img1.doubanio.com/view/subject/m/public/s26810717.jpg', '中信出版社', '2012-11', '田涛', '下一个倒下的会不会是华为：任正非的企业管理哲学与华为的兴衰逻辑，ISBN：9787508636436，作者：田涛，吴春波 著', '280', '48.00元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('25741323', '9787111441939', '影子银行内幕', 'https://img1.doubanio.com/view/subject/m/public/s27080669.jpg', '机械工业出版社', '2013-10', '张化桥', '美国部署退市，当大部分人以为金融海啸危机已过之际，却忽略了中国累积了二三十年的信贷泡沫！而全球新一浪的金融海啸，源头极有可能来自中国的「影子银行」！\n你还以为影子银行与你何干? 真相是它们无处不在。\n小额贷款、信托投资公司、民间借贷、典当，甚至银行里千奇百怪的理财产品都属于影子银行的组成部分。今天中国面对的流动性过剩、低利率、信贷扩张、通胀、房地产泡沫等问题，更与影子银行环环紧扣，无论你是寻常百姓还是做生意的、卖大白菜的抑或是股民，都逃不开这股愈演愈烈的漩涡。\n被誉为“最佳中国分析师”“最具影响力的投资银行家”的张化桥，从人人艳羡的国际投资银行跳进小额贷款的行业，旋即被封为“小额信贷年度人物”。本书将揭示张化桥经历三年惊心动魄、在希望与绝望中游走的日子。他看到了金融业的内幕，体会到影子银行业的辛酸和黑暗，并在本书中分析了当下中国金融体系中最大的风险，预示下一波次贷风暴的起点。作者预言:“中国创造了地球上最大信贷泡沫，如未能及时将泡沫释放，将很可能成为新一轮环球金融海啸的源头。”\n本书英文版在海外引发极大关注，甫一出版即登上亚马逊金融及银行类畅销书第一名，更获《经济学人》《华尔街日报》《金融时报》《纽约时报》、彭博、英国广播公司等全球知名媒体争相采访报道。', '216', '39.00', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('1440229', '9787500452300', '下一个大泡泡', 'https://img3.doubanio.com/view/subject/m/public/s3039706.jpg', '中国社会科学出版社', '２００５', '（美）哈里.S.登特（Harry S. Dent）', '在本书中，作者显示出宽广的宏观视野，他实际上几乎涉及了所有的投资品种，股票、债券、基金和房地产，并且给出详细的操作建议。书中用大量的篇幅，讨论了历史上的股市周期，尤其是20世纪上半叶美国股市的那次大泡沫和大萧条。读者通过此书，可以对美国经济的历史和股市的发展有一个清晰的了解。', '362', '28.00元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('2005515', '9787508607603', '别以为下一个男人会更好', 'https://img3.doubanio.com/view/subject/m/public/s2183280.jpg', '中信', '2007-1', '李木耳', '男人是二元制的生物，凡事只知道“对”或者“不对”。因此，跟他们打交道比较简单。前提是，要保持清醒的头脑。一个女人，最终能依靠的只有自己，不要试图向任何男人乞求时间、金钱及怜悯。\n\n　　为情所困的女人们，是该提醒的时候了。当你遭遇变心的男人，旁观者都会愤愤不平地劝说：“这样的男人，早分开早好。”可你无法依常理行事，伤心欲狂，不肯心死。把心丢在泥淖里还是“啪啪”地跳动，淌着血，等待机会。你毕业的追求是拥有一个人所共知的好丈夫，你认为没有家庭生活，事业再成功也是凄凉的格局。你对男人所有的要求都倾尽全力去满足，为获得家庭的美满而牺牲自己，以为这样就可以换来永不落幕的婚姻，离婚二字像天外来客般遥不可及。\n　　你永远不知道男人的心中在想什么，谢谢老天你不知道，幸亏不知道。如果你太清楚地知道男人真实的内心感受，可能会疯狂地拿头去撞墙。过去的女人可以躲在兰闺中温馨地绣一辈子花，今时今日却要在职场与情场中游刃有余地穿梭。本书作者李木耳将其所有精辟见解分成十二个主题，以幽默、犀利的文笔提醒女性读者认清事实、打破迷思，不必将就自己，不可陷入无谓的爱情幻梦，不必为不值得的人伤心，因为这么做，只会阻挡真爱的来临。本书不但好看、有趣，对许多女性也有当头棒喝、一语惊醒梦中人的作用。', '175', '18.80元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('6425842', '9787550100022', '下一个十年', 'https://img1.doubanio.com/view/subject/m/public/s6490629.jpg', '南方出版社', '2011-6', '松田久一', '下一个十年，消费会走向何方？\n本书主要对日本泡沫经济破灭后出现的一种反常的消费现象——厌消费进行分析与解构。泡沫经济破灭后的日本，出现了主力消费群体（80后群体）大面积厌恶消费的现象，并且这种现象呈现出即使收入增加，消费也没有随之增长的反常结果，使得日本的经济一直陷入低迷，只能主要靠出口拉动这一模式进行经济增长。\n本书的作者对这一现象进行了十年的观察与跟踪调查，动用了社会学、心理学、消费行为学、统计学等多门学科手段对这一反常理的模式进行了极为深刻的研究和剖析，令人信服地将泡沫经济破灭对一代人的消费行为模式的影响全景展现出来，成为商业史上最详实、最全面的消费者研究范本。本书在出版当年已经成为美国多家商学院必读的消费者研究教材，也成为近年对日本社会影响最大的图书之一。\n今天的中国，正承受着高通胀与泡沫膨胀带来的巨大压力，而部分正在成长的主力消费群体也开始呈现出对消费的悲观与节制现象，这一现象演化下去，将与日本的厌消费模式愈发接近，而同为亚洲族群的消费群体，中日之间的消费习惯与方式是很接近的。作为参考与借鉴，我们希望本书能为未来十年的中国提供一些有益的思路，避免泡沫经济给中国企业的明天带来更多的负面冲击。', '177', '28.00元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('6991326', '9787544724685', '下一个就是你', 'https://img3.doubanio.com/view/subject/m/public/s8866493.jpg', '译林出版社·凤凰阿歇特', '2012-3', '(美)格雷格·赫尔维茨', '麦克此生最大的愿望就是：将过去永埋心里。\n而今，他是一个成功的地皮开发商，有一个漂亮的妻子，和一个聪明的女儿。州长甚至为他的绿色工程亲自颁奖。\n可就在颁奖宴会上，他碰上了一个真正的无赖：道奇。这个无赖及其同伙接二连三地跟踪他，威胁他，深夜潜入他女儿的房间……\n可怕的是， 麦克根本不认识他；更为可怕的是，麦克一家因受到赤裸裸的威胁去报警，警察不但不相信他，反而将他作为重点调查对象。\n受到夹击的麦克为了保护家人，无奈之下，只好再次求助于私人侦探汉克。\n在汉克这里，保留了一份关于麦克的档案，展开这份档案，也就展开了他那一段辛酸的寻父史。\n在那个晨光照耀的陌生岔路口，小麦克看到父亲的袖子上有隐隐的血迹，他始终没有勇气问出那个问题：爸爸，妈妈是你杀死的么？就在这么一个陌生的地方，他被父亲抛弃了。多少年来，他找遍了所有姓约翰的人（那是他唯一留住的关于父亲的记忆）；多少年来，他在心中掩藏着一份对父亲深深的恨意！\n彼时，他在收容所里长大，和铁哥们谢普干尽了坏事。凭着一腔义气，他还挺身而出，放弃了读大学的机会，顶替谢普去蹲劳教所。想要洗心革面并不容易，可他还是鼓起勇气，一步步地用自己的毅力走了过来，费劲千辛万苦，如今，他也拥有了一个旁人轻轻松松就能拥有的家，以及平淡的生活。\n但是，但是，现在这个家又处于风雨飘摇之中了，到底是什么，让麦克的命运如此多舛？先是妻子横遭袭击，九死一生？然后是遭人追杀，他不得不抛下奄奄一息的妻子，带着女儿亡命天涯，到最终，他不得不将女儿送到收养所避难！这种命运与当年的遭遇何其相似？是怎样一只恶毒的命运黑手，残忍地破坏了这两个原本幸福的家庭？\n这一次，已为人父的、有担当的麦克决定反戈相击了！当年的哥们谢普不计前嫌，和他一步一步避开追杀，展开调查；同时，那个患了绝症的老侦探汉克，也倾心相助。就在他们的不断调查中，真相也逐渐水露石出：原来，当年残杀麦克的父亲和母亲的刽子手就是而今追杀他们的人！在这背后，还有另一个令人震惊的阴谋，与此同时，麦克家人朋友的生命也危在旦夕……', '388', '29.80元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('1886671', '9787111194682', '下一个社会的管理', 'https://img3.doubanio.com/view/subject/m/public/s1829016.jpg', '机械工业出版社', '2006-7', '(美)彼得·德鲁克', '一部为未来而写就的著作。\r\n  人口因素与信息革命的巨变，制造业的衰微，劳动力的裂变，知识工作者的崛起，这些变化对社会带来的冲击，就是本书的主题。\r\n  变化已经出现，下一个社会已经到来，这是不可逆转的。在未来的10—15年，甚至可能在更长的时间内，管理者的主要工作将是应对这些造就下一个社会的重大变化。管理者必须利用这些变化，并将之转变成企业的机会。\r\n\r\n  《下一个社会的管理》是德鲁克后期最重要的一部著作。\r\n  什么是下一个社会？\r\n  德鲁克所说的“下一个社会”并不是人们常说的“新经济”。无疑，“下一个社会”是德鲁克发明的新名词。德鲁克以他特有的句式说到：“新经济可能会出现，也可能不会出现，但是毫无疑问，下一个社会将很快来临。……”在德鲁克看来，下一个社会出现的时间，大约在2030年左右。他认为，下一个社会将是知识社会。\r\n  德鲁克在书中提出一个发人深省的问题：诞生于19世纪70年代的有限责任公司能够幸存下来吗？如果你的公司举步维艰，你应系统地审视公司的五个假设。下一个社会中能够生存的公司必须拥有“领导改变的能力”以及打造熊彼特所主张的“创造性破坏”的能力，即创新的能力。需要强调的是，创新的目的是有效利用资源、提高生产力、创造价值，进而提供政府和非营利机构发展所需要的资金，旨在促进经济和社会的和谐发展。\r\n  在下一个社会中，要成功地进行管理，管理者应当铭记德鲁克的忠告：“社会变化对于组织和管理者的成败而言，可能比经济事件还要重要。”这就是下一个社会的管理。身为一名管理者，你是否曾经这样思考过？为此，你将采取什么行动？', '182', '32.00元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('26147494', '9787229073039', '下一个意外', 'https://img3.doubanio.com/view/subject/m/public/s27635950.jpg', '重庆出版社', '2014-11', '[美] 丽莎•嘉娜', 'FBI心理分析员皮尔斯•昆西的生活陷入了一潭泥沼。\n正在戒酒的长女酒驾造成车祸，撞死路人的同时，自己也重伤成脑死亡。\n前妻爱上一个不存在的人，随后在家中被残忍杀害，现场证据和目击者的证词全都指向昆西。\n次女被人跟踪，身边的每一个人都看似杀手。全美国的所有监狱都传播着昆西家的电话号码。他不知道自己在纽约买了一辆车，更不知道自己刚刚从养老院把父亲接走。\n另一个昆西在昆西不知道的地方不断伤害着他最爱的家人，不知所措的他只能寻求爱人蕾妮的帮助。\n可是，这次他们遇到的杀手与以往任何一次都不相同。他对复仇与恐惧无比贪婪。\n为了找出凶手，蕾妮唯一能做的只有将自己送上他的杀戮之途。她将成为谋杀的目标。她将成为……下一个意外。', '373', '36.00元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('25773128', '9787213058424', '大数据云图', 'https://img3.doubanio.com/view/subject/m/public/s27153366.jpg', '浙江人民出版社', '2013-12-1', '大卫•芬雷布 (David Feinleib)', '[内容简介]\n★亚马逊、Google、IBM、Facebook、LinkedIn…… 超过一百家大数据公司的商业法则深度解密。教育、医疗、电子、汽车、建筑…… 十几个行业的成功企业案例全面分享。\n★从Twitter到Netflix，从Bing到LinkedIn……互联网新贵如何在大数据之战中脱颖而出？从福特到宝洁，从耐克到三星……传统商业巨头如何在大数据时代再创辉煌？\n★大数据云图清晰勾勒出大数据行业的企业分布，让你能够轻易发现大数据行业的下一个大机遇究竟在何处。\n[编辑推荐]\n★大数据时代商业应用之作，从大数据行业入手，描绘出大数据时代的商业分布。\n★本书作者大卫•芬雷布被誉为“大数据商业应用的引路人”。与同伴共同创建的Big Data Group公司，为科技买家和供应商提供咨询服务，其中关注度最高的就是大数据云图。\n★湛庐文化出品。', '196', '45.9元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('3142648', '9780198001812', '下一個十年', 'https://img3.doubanio.com/view/subject/m/public/s3176965.jpg', '牛津大學出版社', '2008-7-1', '陳冠中', '回歸開始到今天有一個重要趨勢，就是許多市民特別是年輕人視香港為家。\n既是家，就該宜居，清潔，有回憶，有歸屬感，自己當家作主。特別是2003年後，港人這方面的表達就更清楚了。\n是這股動人的公民社會力量讓我認為在未來十年，特區將有所改善，令香港成為大家引以為榮的地方。如果香港能普選特首和立法會，真的實現人民當家作主，普世都說香港是個民主的地方，我覺得是一件光榮的事。\n如果香港是個公正的和諧社會，創業條件和社會保障俱好，貧富差距不再遠大於日本、韓國、台灣、新加坡，我覺得是一件光榮的事。\n如果香港城市能保留自己的本土歷史特色、港人有文化、夠創意，我覺得是一件光榮的事。\n如果香港在環保、節能方面為世人稱頌，全球人材愛到香港就業定居，更重要的是本地人覺得香港是個宜居的好地方，符合了香港人說的一句話：人家讚賞、自己滿意，是一件光榮的事。\n以上，香港其實都是可以在十年內取得重大進展的，事在人為。\n寫《我這一代香港人》的陳冠中認為：下一個十年，香港應該可以做到：\n中國的一份子、為內地的經濟發展及社會進步作出貢獻、繁榮、安定、法治、自由、民主、和諧、善治、公正、環保、節能、宜居、好玩，一個有自己文化特色的世界城市。\n到時候我相信很多港人、國人也會跟我一樣覺得與有榮焉。', '160', 'HKD$80.00', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('10466763', '9787213046575', '中国：下一个日本？', 'https://img3.doubanio.com/view/subject/m/public/s9750762.jpg', '浙江人民出版社', '2012-1', '王国培', '今日的中国，经济飞速增长、房产投资如火如荼、本币不断升值、对美贸易形成巨额顺差……回望历史，20世纪60年代的日本也经历过极其相似的经济发展过程。然而，在20世纪80年代日本经济泡沫破灭之后，日本用了近20年的时间才重新恢复发展。\n    中国是否将走上日本的老路？中国经济是否存在泡沫？本书《中国：下一个日本》所能带给您的不是可以解答这些疑问的定论。它更像一本思想集、观点集，甚至更像是一个冲突阵地。它带领我们回顾邻国的经济历史，反思中国的经济现状，并为中国未来的经济发展提供了最具诚意的建言。\n    《中国：下一个日本》由王国培编著。', '174', '30.00元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('4140331', '9789861048642', 'TSUBASA翼(28)', 'https://img3.doubanio.com/view/subject/m/public/s4220542.jpg', '東立出版社有限公司', '2010年4月7日', 'CLAMP', '(完結篇)複製的小狼和小櫻在拯救一行人後消失。兩人為了替在夢中世界一再重覆的世界劃上休止符，選擇「再次出生」。接著，此時出現次元魔女虛幻的意念！小櫻及小狼迎向的結局會是──？環繞「翼」的故事──終於完結！', '', '110元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('6519829', '9787508627878', '下一个男人会更好', 'https://img3.doubanio.com/view/subject/m/public/s8895045.jpg', '中信出版社', '2011-7', '陈彤', '《下一个男人会更好》内容简介：女人永远要记住一句话：对自己最好，对别人尽可能好。这是一个商业时代，是无限畅饮选择多多的“新相亲时代”。在这个时代，一切都是无限量供应的——包括相亲，只要你愿意，你可以成天相亲，在各相亲网站登陆注册。而这一切，在过去是不可想象的。你必须清楚地意识到，你不是生活在18世纪，你不能指望用18世纪的方式获得幸福，消除痛苦。今时今日没有人再以“扶危济困”为自己的择偶原则，善良和贤淑已不是爱情中最吸引人的品质，要获得完美的婚姻，就要运用新的爱情观点，拥有新的人生态度。\n所有的成功都是因为曾经失败。爱也是一样，这是一个新相亲时代，在这个时代，爱情的桂冠属于那些敢于付出、勇于索取的女人！', '248', '26.80元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('1443479', '9787500452546', '下一个百万富翁就是你', 'https://img3.doubanio.com/view/subject/m/public/s5700820.jpg', '中国社会科学出版社', '2005-11', '[美]托马斯·斯坦', '《下一个百万富翁就是你》是一本惊世之作,它将改变你的命运,引导你迈向致富之路！《下一个百万富翁就是你》揭示了百万富翁的秘密：他们开源节流、量入为出。他们致力于财富的积累，尽可能合理地安排时间、精力和金钱。他们深信，经济上的自立远比外表的光鲜体面更加重要。他们的父母不会给予他们的经济援助。他们的成年子女都实现了经济自立。他们善于把握商机。他们选择了适合自己的职业。通过阅读《下一个百万富翁就是你》，你可以深入领会富翁的七大特质。我们也希望你能因此而有所收益。\n    《下一个百万富翁就是你》对谁才是真正的富翁和如何致富做了最全面的阐述，很多的成果都源于我们将近20年的调查研究。这包括对500位百万富翁的私人访谈和小组集中访谈，以及对11000位拥有巨额财富者和高收入人士的问卷调查。', '229', '29.80元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('3246100', '9787532258581', '海报牛仔-下一个行动', 'https://img3.doubanio.com/view/subject/m/public/s3320364.jpg', '', '2008-8', '法国金字塔出版社 编', '《艺态6:海报牛仔》告诉读者黑与白元素的使用，实际上是对于建筑学中一种强烈色彩对比的视觉暗示，两元对立性是设计结构的根本所在。《海报牛仔》为《艺态》杂志06版，通过个人化的设计规则，表达自己的设计作品，也包括关于设计实用性与美学问题的全盘考虑。', '144', '48.00元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('3287787', '9787807474159', '下一个天亮', 'https://img3.doubanio.com/view/subject/m/public/s3349445.jpg', '海天出版社', '2009-01', '左小词', '一本记忆青春的小说。以独立别致的小标题形成小说明朗的线索及脉络，以诗意简洁的文字风格展示本就属于青春的色调。围绕一个名叫“惹尘”的女孩推开情节，她的家庭是个谜团，她的身世是个谜团。在悲疚的阴影里她退学家中，痛苦、茫然、挣扎。面对继续而来的亲情、爱情、友情，她该何去何从？种种，种种，纷扰的情爱，盘结的生长的疼痛，悄然在十八岁少女身边展开……', '262', '25.00元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('24224982', '9787218083797', '下一个暴富点', 'https://img3.doubanio.com/view/subject/m/public/s26590321.jpg', '广东人民出版社', '2013-6', '（美）肯·费雪 劳拉·霍夫斯曼', '巴菲特师弟教你以史为镜\n炼就发现牛市的火眼金睛\n从2002年牛市开始上涨到2007年到达最高峰，全球股市疯涨161%,原因何在?这一时期的V形反转趋势中股市出现了怎样的暴富点？\n股市反弹与经济复苏之间是否有着必然联系？为何2010年美股的上涨并没有伴随经济复苏？时至今日，日益复苏的中国经济是否预示着A股市场的反弹趋势正在逐步形成？\n巴菲特为何能在金融危机爆发前准确地抛出中石油股票，他抄底A股入股比亚迪大赚13亿美元的秘诀又是什么？\n看似独立的个例之间到底暗藏着怎样的玄机？隐藏在股市起伏与经济荣衰中的密码，究竟以何种方式发挥作用？\n全球知名投资大师肯·费雪漫步300年投资史，将松散而随机的历史事件进行整合，对政治、经济等因素一一分解，加以行为金融学的群体心理分析，得出了惊人的结论。对于每次的经济涨跌周期、熊市和牛市中的关键节点，也渐渐得出一个清晰的趋势图景。被短视、记忆和悲观情绪蒙蔽的我们，怎样才能让历史成为强大的工具并帮助我们在投资中获利？', '252', '68.00元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('2998874', '9787534425073', '下一个产品', 'https://img1.doubanio.com/view/subject/m/public/s5875539.jpg', '江苏美术', '2008-1', '张凌浩', '《下一个产品:产品专题设计研究》取名为“下一个产品”，也是有感于第八届威尼斯建筑双年展的主题“NEXT”，以鼓励探讨新的设计概念和方向。《下一个产品:产品专题设计研究》尝试从产品设计的基本理论出发，结合课程教学的特点，展开多方向的专题性设计实践探索，引导以设计创新的思考和观念在设计中扩展思路，将社会的、生活的、文化的相关知识应用于产品的创新开发，并在体验设计、系统设计再思考、地域文化再设计、跨学科设计等方面展开专题性的设计研究，并把握设计概念化和视觉化过程中的可能性和可行性。', '150', '45.00元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('6808999', '9787802199088', '石油大棋局', 'https://img3.doubanio.com/view/subject/m/public/s22702181.jpg', '中国民主法制出版社有限公司', '2011-8', '威廉·恩道尔', '《石油大棋局:下一个目标中国》内容简介：谁能想到，石油源自地球生物遗骸是个天大的谎言，石油行将枯竭是个巨大的阴谋？地球石油蕴藏很可能取之不竭。为这一颠覆性的观点提供有力佐证的，是前苏联科学家花费40年时间，在传统理论上不可能找到石油的地方找到了石油。他们究竟用什么方法找到了巨量石油？他们又是如何用科学证据来证实传统石油生成有机论是伪科学的？恩道尔用丰富的资料、无可辩驳的证据给出了答案。\n美英石油帝国为何要编织这个谎言，它是如何一步步成长起来的？两伊战争、海湾战争、车臣战争、伊拉克战争、颜色革命，这些事件跟石油枯竭谎言有何关系？它们背后的黑手是谁？美英精英集团为达到控制石油、控制世界的目的，是如何从觊觎中东等国储量丰富的石油，到一步步通过外交、经济、军事等手段在这些国家驻军、将其据为己有的。\n这里讲的每一个故事，都会让人们了解新闻背后的国际地缘政治经济博弈真相，它们都与石油和石油霸权有关。人们也会发现，石油的命运，以及与其息息相关的民族与国家的命运早已被一盘精心策划的棋局所操纵。在这盘大棋局中，与之相关的国家、银行、专家、组织都不过是一颗颗任人操纵的棋子。', '250', '39.00元', '0', '2018-05-25 19:04:36');
INSERT INTO `book_info` VALUES ('24703171', '9787115317957', '机器学习实战', 'https://img3.doubanio.com/view/subject/m/public/s26696371.jpg', '人民邮电出版社', '2013-6', 'Peter Harrington', '机器学习是人工智能研究领域中一个极其重要的研究方向，在现今的大数据时代背景下，捕获数据并从中萃取有价值的信息或模式，成为各行业求生存、谋发展的决定性手段，这使得这一过去为分析师和数学家所专属的研究领域越来越为人们所瞩目。\n本书第一部分主要介绍机器学习基础，以及如何利用算法进行分类，并逐步介绍了多种经典的监督学习算法，如k近邻算法、朴素贝叶斯算法、Logistic回归算法、支持向量机、AdaBoost集成方法、基于树的回归算法和分类回归树（CART）算法等。第三部分则重点介绍无监督学习及其一些主要算法：k均值聚类算法、Apriori算法、FP-Growth算法。第四部分介绍了机器学习算法的一些附属工具。\n全书通过精心编排的实例，切入日常工作任务，摒弃学术化语言，利用高效的可复用Python代码来阐释如何处理统计数据，进行数据分析及可视化。通过各种实例，读者可从中学会机器学习的核心算法，并能将其运用于一些策略性任务中，如分类、预测、推荐。另外，还可用它们来实现一些更高级的功能，如汇总和简化等。', '332', '69.00元', '0', '2018-05-26 01:22:02');
INSERT INTO `book_info` VALUES ('24703340', '9787302313007', '信息安全原理与技术', 'https://img1.doubanio.com/f/shire/5522dd1f5b742d1e1394a17f44d590646b63871d/pics/book-default-lpic.gif', '', '', null, '', '', '33.00元', '0', '2018-05-27 19:47:31');
INSERT INTO `book_info` VALUES ('4767833', '9787504361226', '恩典多奇异', 'https://img1.doubanio.com/view/subject/m/public/s4287939.jpg', '中国广播电视出版社', '2010-04', '杨腓力 (Philip Yancey)', '我们常常歌唱恩典，谈论恩典，但是很少有人去思考、去探究，到底什么才是恩典——这一使基督教区别于其他宗教的最核心的观念。而本该散发恩典的基督徒和教会，却常常陷入“无恩”里面，无法自救，无力在日常生活中展现它呢？\n杨腓力重申圣经立场，并从社会、政治、教会、个人多个事例中分析反思，力指这个世界对恩典的渴求以及恩典的缺乏。他带领我们探求恩典的真相：恩典意即我们不能做任何事叫上帝爱我们更多一些，也不能做任何事叫他爱我们更少一些。恩典是我们这个世界不配有的礼物，也是这个无恩世界中硕果仅存的好词，更是每个人内心最深的渴慕。\n本书保持了杨腓力一贯的写作风格：以某个主题为主线，大量的故事和事例，叩问个人内心，反思教会立场；全书结构相对松散，语言极富感染力。杨腓力的层层剖析，逼迫人人反省自己，无处可逃——这也是杨腓力的价值所在。\n《恩典多奇异》是杨腓力的代表作，也是他最重要、最畅销的作品之一。', '', '28.8', '0', '2018-05-27 19:47:51');

-- ----------------------------
-- Table structure for book_list
-- ----------------------------
DROP TABLE IF EXISTS `book_list`;
CREATE TABLE `book_list` (
  `Book_Id` int(11) NOT NULL auto_increment,
  `Owner_Id` int(11) NOT NULL,
  `Book_Info_Id` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL,
  PRIMARY KEY  (`Book_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_list
-- ----------------------------
INSERT INTO `book_list` VALUES ('1', '18', '25942191', '1');
INSERT INTO `book_list` VALUES ('2', '18', '26915433', '1');
INSERT INTO `book_list` VALUES ('3', '18', '25942191', '1');
INSERT INTO `book_list` VALUES ('4', '18', '25942191', '1');
INSERT INTO `book_list` VALUES ('5', '18', '26915433', '1');
INSERT INTO `book_list` VALUES ('6', '18', '24703171', '1');
INSERT INTO `book_list` VALUES ('7', '18', '4767833', '1');
INSERT INTO `book_list` VALUES ('8', '18', '4767833', '1');

-- ----------------------------
-- Table structure for borrow_list
-- ----------------------------
DROP TABLE IF EXISTS `borrow_list`;
CREATE TABLE `borrow_list` (
  `Borrow_Id` int(11) NOT NULL auto_increment,
  `Book_Id` int(11) default NULL,
  `Book_Info_Id` int(11) default NULL,
  `Owner_Id` int(11) default NULL,
  `Borrower_Id` int(11) default NULL,
  `Borrow_Time` datetime default NULL,
  `Return_Time` datetime default NULL,
  `Confine_Time` datetime default NULL,
  `Complete_Status` varchar(1) default NULL,
  PRIMARY KEY  (`Borrow_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrow_list
-- ----------------------------
INSERT INTO `borrow_list` VALUES ('2', '1', '25942191', '18', '18', '2018-05-06 00:00:00', '2018-05-06 01:39:51', '2018-05-06 01:39:37', '1');
INSERT INTO `borrow_list` VALUES ('10', '1', '25942191', '18', '18', '2018-05-24 18:36:34', '2018-05-25 16:01:08', '2018-05-24 18:45:43', '1');
INSERT INTO `borrow_list` VALUES ('3', '2', '26915433', '18', '18', '2018-05-06 00:00:00', '2018-05-24 01:33:06', '2018-05-24 01:32:31', '1');
INSERT INTO `borrow_list` VALUES ('11', '4', '25942191', '18', '18', '2018-05-25 16:41:54', '2018-05-25 16:43:47', '2018-05-25 16:43:13', '1');
INSERT INTO `borrow_list` VALUES ('12', '1', '25942191', '18', '18', '2018-05-25 17:04:43', '2018-05-25 21:39:58', '2018-05-25 21:39:45', '1');
INSERT INTO `borrow_list` VALUES ('13', '1', '25942191', '18', '18', '2018-05-27 21:39:58', '2018-05-27 21:46:19', '2018-05-27 21:45:29', '1');
INSERT INTO `borrow_list` VALUES ('14', '3', '25942191', '18', '18', '2018-05-27 21:41:23', '2018-05-27 21:46:29', '2018-05-27 21:45:51', '1');

-- ----------------------------
-- Table structure for dynamic
-- ----------------------------
DROP TABLE IF EXISTS `dynamic`;
CREATE TABLE `dynamic` (
  `Dynamic_Id` int(11) NOT NULL auto_increment,
  `Book_Info_Id` int(11) default NULL,
  `User_Id` int(11) default NULL,
  `Body` varchar(5000) default NULL,
  `Create_Time` varchar(255) default NULL,
  PRIMARY KEY  (`Dynamic_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dynamic
-- ----------------------------
INSERT INTO `dynamic` VALUES ('2', '25942191', '18', '这是第1条', '2018-05-05 10:50:30');
INSERT INTO `dynamic` VALUES ('3', '25942191', '18', '这是第三条', '2018-05-05');
INSERT INTO `dynamic` VALUES ('4', '25942191', '18', '这是第四条', '2018-05-05');
INSERT INTO `dynamic` VALUES ('5', '25942191', '18', '这是第五条', '2018-05-05');
INSERT INTO `dynamic` VALUES ('6', '25942191', '18', '这是第六条', '2018-05-05');
INSERT INTO `dynamic` VALUES ('13', '26915433', '18', '123456', '2018-05-27 19:31:02');
INSERT INTO `dynamic` VALUES ('8', '25942191', '18', '这是第7条', '2018-05-05');
INSERT INTO `dynamic` VALUES ('9', '25942191', '18', '这是第8条', '2018-05-25');
INSERT INTO `dynamic` VALUES ('10', '25942191', '18', '这是第9条', '2018-05-25 16:55:27');
INSERT INTO `dynamic` VALUES ('12', '26915433', '18', '123456', '2018-05-27 19:27:48');
INSERT INTO `dynamic` VALUES ('14', '26915433', '18', '126456', '2018-05-27 19:37:35');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `Message_Id` int(11) NOT NULL auto_increment,
  `User_Id` int(11) default NULL,
  `Body` varchar(255) default NULL,
  `Create_Time` varchar(255) default NULL,
  `Status` varchar(255) default NULL,
  PRIMARY KEY  (`Message_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('8', '18', '您好！\n		您的书籍《第一行代码》现在由用户用户4：，申请借阅。\n其联系方式为：17764526235。请您尽快联系该用户，交流书籍借阅方式。', '2018-05-27', '0');
INSERT INTO `message` VALUES ('9', '18', '您好！\n		您的书籍《第一行代码》现在由用户用户4：，申请借阅。\n其联系方式为：17764526235。请您尽快联系该用户，交流书籍借阅方式。', '2018-05-27', '0');

-- ----------------------------
-- Table structure for taobao
-- ----------------------------
DROP TABLE IF EXISTS `taobao`;
CREATE TABLE `taobao` (
  `user` varchar(255) default NULL,
  `image` varchar(255) default NULL,
  `price` double(16,0) default NULL,
  `time` varchar(255) default NULL,
  `region` varchar(255) default NULL,
  `sign` varchar(255) NOT NULL,
  `title` varchar(255) default NULL,
  PRIMARY KEY  (`sign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taobao
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `User_Id` int(255) NOT NULL auto_increment,
  `User` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Token` varchar(255) NOT NULL,
  PRIMARY KEY  (`User_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('18', '123456', '49ba59abbe56e057', 'dd3e5a3bde882d6882b8ba56b7b82bd6');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `User_Id` int(11) NOT NULL,
  `User_Name` varchar(255) default NULL,
  `Home_Name` varchar(255) default NULL,
  `City_Id` int(11) default NULL,
  `County_Id` int(11) default NULL,
  `Photo_Url` varchar(255) default NULL,
  `Phone` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('18', '用户4', '123456的书房', null, null, null, '17764526235');
