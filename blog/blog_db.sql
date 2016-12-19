/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : blog_db

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2016-12-13 23:43:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tab_artitle`
-- ----------------------------
DROP TABLE IF EXISTS `tab_artitle`;
CREATE TABLE `tab_artitle` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `Aclass` int(10) DEFAULT NULL COMMENT '所属类别ID',
  `Atitle` text COMMENT '文章标题',
  `Acontent` text COMMENT '文章内容',
  `Adate` date DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_artitle
-- ----------------------------
INSERT INTO `tab_artitle` VALUES ('1', '2', '2016中国杭州G20峰会', '   2016中国杭州G20峰会是指2016年9月3日-10日在中国杭州召开的G20峰会，20国集团（G20）是一个国际经济合作论坛，于1999年9月25日由八国集团（G8）的财长在华盛顿宣布成立，属于布雷顿森林体系框架内非正式对话的一种机制，由原八国集团以及其余12个重要经济体组成。2015年11月16日，国家主席习近平出席土耳其G20峰会并发表讲话，宣布中国将于明年9月4日-5日在杭州举办二十国集团领导人第十一次峰会。峰会主题确定为“构建创新、活力、联动、包容的世界经济”。\r\n二十国集团领导人第十一次峰会将于9月3日至10日在浙江省杭州市举行。应中国国家主席习近平邀请，阿根廷总统马克里、巴西代总统特梅尔、法国总统奥朗德、印度尼西亚总统佐科、韩国总统朴槿惠、墨西哥总统培尼亚、俄罗斯总统普京、南非总统祖马、土耳其总统埃尔多安、美国总统奥巴马、澳大利亚总理特恩布尔、加拿大总理特鲁多、德国总理默克尔、印度总理莫迪、意大利总理伦齐、日本首相安倍晋三、英国首相特蕾莎·梅、欧洲理事会主席图斯克、欧盟委员会主席容克、沙特阿拉伯王储继承人兼第二副首相、国防大臣穆罕默德等二十国集团成员领导人，乍得总统代比、埃及总统塞西、哈萨克斯坦总统纳扎尔巴耶夫、老挝国家主席本扬、塞内加尔总统萨勒、新加坡总理李显龙、西班牙首相拉霍伊、泰国总理巴育等嘉宾国领导人，以及联合国秘书长潘基文、世界银行行长金墉、国际货币基金组织总裁拉加德、世界贸易组织总干事阿泽维多、国际劳工组织总干事莱德、金融稳定理事会主席卡尼、经济合作与发展组织秘书长古里亚等有关国际组织负责人将与会。', '2016-09-03');
INSERT INTO `tab_artitle` VALUES ('2', '3', '美国总统奥巴马抵达杭州', '9月3日,美国总统奥巴马乘坐专机美国“空军一号”抵达杭州,出席即将举行的G20峰会。昨天,美国总统奥巴马的先遣队已抵达杭州,由两架C-17运输机搭载,包括一辆代号Beast的凯迪拉克防弹车', '2016-09-04');
INSERT INTO `tab_artitle` VALUES ('3', '1', '马云B20发声：让eWTP自由贸易惠及全球80%中小企业', '9月4日消息，阿里巴巴董事局主席马云昨晚在二十国集团工商峰会（B20）发表演讲，系统阐述eWTP的理念、愿景和行动计划。他表示，希望eWTP自由贸易可以惠及全球80%中小企业。eWTP是马云提出并倡议的，他指出，这些日子飞了30个国家，向各国政府和国际组织描述eWTP梦想，现在已经听到了认可的声音。马云表示，“接下来一到两年以内，希望选择两到三个国家支持eWTP。”\r\n马云说，希望为全世界中小企业打造一个真正属于自己、自由公平开放贸易的平台，真正为中小企业、为年轻人解决问题，实现全球买、全球卖。\r\n马云表示，“增进贸易往来，才能创造更多就业机会。走上国际舞台，才能促进中小企业发展。强化沟通交流，才能打造出更加稳定、开放的世界。”（周小白）\r\n以下为马云演讲实录：\r\n女士们，先生们，晚上好。非常荣幸能够参加今天的活动，欢迎大家来到我的家乡。\r\n我出生在杭州，我是百分之百杭州制造。\r\n大家可能会问，为什么要把杭州作为G20峰会举办城市，而不是其它更著名的大城市。我的答案是44年前，杭州本来应该就非常著名。\r\n1972年，尼克松访问了杭州，中美两国领导人认为两国应当共建世界美好的未来。而杭州如此幸运，就是在杭州，两位领袖达成了全面的一致，杭州这个城市改写了历史。\r\n不过令人遗撼的是，后来中美联合公报被称为“上海公报”，而不是“杭州公报”。如果44年前我们把中美联合公报叫做杭州公报，那杭州早就比今天更出名。\r\n那个时候我才8岁，小男孩儿，但是由于杭州也成为开放社会的一部分，杭州有很多宾馆饭店，有很多外国的旅游者，通过这些机会我学会了英语，打开了我的眼界。\r\n我想给大家看几张图片，来介绍一下40年前和现在杭州的对比。大家可以看一下，上面是40年前，下面是现在的照片，上面40年前的西湖，下面是现在的西湖，在过去44年里，中国改变了，杭州改变了，我自己改变了，我的公司改变了。17年前都还没有阿里巴巴。\r\n因为我们是开放的，对整个世界开放，开放对我们来说意味着繁荣，开放对我们来说就意味着增长。\r\n今天我不是代表阿里巴巴，不代表杭州，也不是代表中国，而是代表世界工商界的一员，我想说，全球需要更自由的贸易，需要更多的就业，更加包容增长的全球化。\r\n现在世界上有一种声音，有点反全球化和反自由贸易。大家有点担心全球化，他们觉得全球化是坏事情，但我并不这样认为。\r\n全球化是过去30年发生的极好的一件事情，现在全球化带来的每一个问题只不过是成长当中的阵痛而已。在过去20到30年里，全球化为全球20%的大公司服务，为发达国家服务，但未来有没有可能让全球化向剩下的80%的中小企业服务呢？这是我们接下来可以做的事情。\r\n2000年以前，中国建造了长城，那是因为担心外敌入侵。今天还有人说要建贸易壁垒，来阻止自由贸易，这种论调我不同意，我们不能再用2000年前的办法来解决问题。\r\n在我看来，全球化不是对经济的威胁，不是对就业的威胁，全球化本身就意味着更多的就业和更多的工作岗位，只要我们能够让全球化进行的更加顺畅。', '2016-09-03');
INSERT INTO `tab_artitle` VALUES ('4', '3', '中国巴西奥运会', '第31届夏季奥林匹克运动会（Games of the XXXI Olympiad），又称2016年里约热内卢奥运会（Rio 2016）于2016年8月5日-21日在巴西里约热内卢举行。2016年里约奥运会中国奖牌总数：\r\n26金18银26铜（总数:70）', '2016-08-08');
INSERT INTO `tab_artitle` VALUES ('5', '3', '马云报仇买肯德基 当年去肯德基应聘被刷', '马云报仇买肯德基 蚂蚁金服收购百胜中国细节披露新浪科技讯 9月2日消息，百胜餐饮集团(纽约证券交易所代码：YUM)今天宣布与春华资本集团(下称“春华资本”)及蚂蚁金融服务集团(下称“蚂蚁金服”)达成协议，二者共同向百胜中国投资4.60亿美元，该项投资将与百胜餐饮集团与百胜中国的分拆同步进行。\r\n交易细节披露\r\n新浪科技了解到，百胜中国业务的分拆上市和春华资本及蚂蚁金服的投资预计将于2016年10月31日同步完成。之后，百胜中国将从2016年11月1日开始以独立公司身份在纽约证券交易所上市交易，代码为“YUMC”。\r\n根据协议，春华资本和蚂蚁金服将分别向百胜中国投资4.10亿美元和5000万美元。每股价格以分拆完成后31至60天期间百胜中国股票的成交量加权平均价为基准，给予8%的折让，而最终股票数量(在设定的上下限范围内)则视乎该价格再做相应的调整。春华资本和蚂蚁金服还合共拥有两批可以在五年内行使的认股权，分别按120亿美元和150亿美元股本价值的行权价，每批收购百胜中国大约2%的普通股。\r\n百胜中国正式分拆后，百胜集团将不再持有百胜中国股份，但百胜中国需要向百胜集团支付3%的版税。分拆后，百胜中国没有任何债务，此次获得的春华资本和蚂蚁金服的投资将被用于资助公司的未来增长计划。\r\n百胜餐饮集团还宣布，春华资本的创始人胡祖六博士将出任百胜中国董事会非执行董事长，胡博士此前曾担任高盛大中华区主席。\r\n高盛担任百胜餐饮集团及百胜中国的财务顾问，Wachtell, Lipton, Rosen & Katz律师事务所担任法律顾问。PJT Partners担任百胜餐饮集团董事会的独立财务顾问。盛信律师事务所(Simpson Thacher & Bartlett LLP)和方达律师事务所担任春华资本和蚂蚁金服的法律顾问。', '2016-09-04');
INSERT INTO `tab_artitle` VALUES ('6', '2', '20国集团峰会', '20国集团峰会（G20）是一个国际经济合作论坛，于1999年9月25日由八国集团的财长在华盛顿宣布成立，属于布雷顿森林体系框架内非正式对话的一种机制，由原八国集团以及其余十二个重要经济体组成。该组织的宗旨是为推动已工业化的发达国家和新兴市场国家之间就实质性问题进行开放及有建设性的讨论和研究，以寻求合作并促进国际金融稳定和经济的持续增长。按照以往惯例，国际货币基金组织与世界银行列席该组织的会议。20国集团成员涵盖面广，代表性强，该集团的GDP占全球经济的90%，贸易额占全球的80%，因此已取代G8成为全球经济合作的主要论坛。', '2016-09-04');
INSERT INTO `tab_artitle` VALUES ('7', '1', '小米支付发布：可刷公交/小米5抢先体验', '小米今天下午举行发布会，仍然是在上周红米Note 4的发布场地，然而今天的主角则换成了小米支付。本周二，小米发言人在微博宣布将与中国银联合作推出小米支付，并且与苹果、三星等支付方式不同的是，小米支付还能当做城市一卡通用来刷公交、地铁使用。据悉，小米支付将支持20家银行的信用卡和借记卡，覆盖国内各个大行，并且后续会持续追加，9月1日起正式上线，目前仅支持小米手机5。同时，小米公交在推出上海和深圳公交卡后，也开始在更多省市开启公交卡的大范围测试。', '2016-09-02');
INSERT INTO `tab_artitle` VALUES ('8', '2', '三星宣布将全球召回Galaxy Note 7', '继澳大利亚手机零售商和电信运营商宣布暂停销售Galaxy Note 7之后，正在韩国首尔进行的媒体见面会上三星宣布召回全球出售的Note 7并免费更换一个全新的Note 7，不管是否存在电池安全隐患。', '2016-09-02');
INSERT INTO `tab_artitle` VALUES ('10', '1', '苹果9月7日发布会看点：可能会推出这些新产品', '北京时间9月4日上午消息，据彭博社报道，又到一年9月，而苹果即将推出下一代iPhone。\r\n本周早些时候，苹果发出了9月7日发布会的邀请函，上面写着“7号见”。一些业内观察家认为，这一说法也暗示，苹果即将发布的新款iPhone型号为iPhone 7。\r\n苹果过去两个季度的营收出现了同比下降。外界正在关注，市场对iPhone的需求能否继续成为苹果的利润增长来源。此次，苹果可能将推出一款性能更强大的iPhone，并对摄像头进行优化。而明年，即iPhone发布10周年时，苹果可能将对iPhone进行更彻底的重新设计。与此同时，苹果可能会推出新款Apple Watch智能手表，集成GPS导航模块。\r\n以下是苹果可能在此次发布会上推出的新产品：\r\n　1、新款iPhone\r\n新款iPhone的外观设计将类似于iPhone 6和iPhone 6s，但将优化背面白色的天线设计，带来更清爽的外观。\r\n屏幕尺寸将与当前的iPhone型号类似，即4.7英寸和5.5英寸。\r\nHome按钮将不再是实体键。这一按钮将采用压敏技术，在点击时带来震动感应效果。这类似于最新款MacBook的触控板。\r\n3.5毫米耳机接口将被取消，苹果可能会在多出的空间加入额外的喇叭或麦克风。\r\n4.7英寸版本的后置单摄像头将得到优化。\r\n5.5英寸版本将搭载后置的双摄像头，从而带来更好的清晰度，以及优化弱光条件下的拍摄效果。\r\n速度更快的处理器，替换iPhone 6s中的A9处理器。\r\n在日本支持基于FliCa的移动支付系统。这一功能有可能在今年或明年的产品中推出。\r\n　2、新款Apple Watch\r\n集成GPS芯片，带来更准确的运动追踪性能。\r\n速度更快的处理器，优化应用启动时间，使操作系统内的导航更流畅。\r\n电池续航时间的优化，从而支持额外GPS模块的加入。\r\n3、软件升级\r\niOS 10将支持iPhone 5及之后型号的iPhone。软件升级中包括对iMessage应用的优化，支持新的动画、表情，以及第三方插件。此外，语音信箱和通知也将得到升级，而苹果还将提供一款应用，用于控制智能家居设备。\r\nApple Watch将获得新版系统watchOS 3。新版系统将加快应用启动时间；提供新的SOS功能，以呼叫紧急服务；集成一款新应用以监控呼吸；以及在应用内支持Apple Pay支付。\r\nApple TV将获得新版系统tvOS 10。新版系统将支持第四代Apple TV。新系统将为多款内容应用提供统一登录服务，加入夜晚模式，并对Apple Music进行重新设计。\r\nMac电脑将获得新版系统macOS Sierra。这一系统将支持通过网页端使用Apple Pay支付，并支持Siri语音助手。此外，新系统提供了新的照片管理和消息功能，而Apple Watch用户可以自动登录Mac电脑。\r\n　4、未来的新产品\r\n9月7日的发布会上苹果可能不会提到Mac电脑产品线。然而根据消息人士的说法，苹果最早将于今年10月开始销售某些新型号的Mac电脑。\r\nMacBook Pro可能将迎来升级。新款MacBook Pro将加入基于触摸屏的“动态功能条”，其中显示的信息会根据电脑当前运行的任务而变化。此外，新产品还将搭载更快的处理器、来自AMD的新显卡、尺寸更大的触控板、更扁平的键盘，以及USB-C接口。\r\nMacBook Air可能也将得到升级，集成USB-C接口。\r\n新款iMac。搭载来自AMD的新显卡。', '2016-09-04');
INSERT INTO `tab_artitle` VALUES ('11', '3', 'MyBatis学习总结(五)——实现关联表查询', 'MyBatis一对多关联\r\n提出需求\r\n\r\n　　根据classId查询对应的班级信息,包括学生,老师\r\n\r\n创建表和数据\r\n\r\n　　在上面的一对一关联查询演示中，我们已经创建了班级表和教师表，因此这里再创建一张学生表\r\n\r\n复制代码\r\nCREATE TABLE student(\r\n    s_id INT PRIMARY KEY AUTO_INCREMENT, \r\n    s_name VARCHAR(20), \r\n    class_id INT\r\n);\r\nINSERT INTO student(s_name, class_id) VALUES(\'student_A\', 1);\r\nINSERT INTO student(s_name, class_id) VALUES(\'student_B\', 1);\r\nINSERT INTO student(s_name, class_id) VALUES(\'student_C\', 1);\r\nINSERT INTO student(s_name, class_id) VALUES(\'student_D\', 2);\r\nINSERT INTO student(s_name, class_id) VALUES(\'student_E\', 2);\r\nINSERT INTO student(s_name, class_id) VALUES(\'student_F\', 2);\r\n部分代码\r\n详情：http://www.cnblogs.com/xdp-gacl/p/4264440.html', '2016-12-13');
INSERT INTO `tab_artitle` VALUES ('15', '1', '杭州G20峰会前夕 加拿大网红总理做客阿里巴巴', '9月3日消息，杭州G20开幕前夕，加拿大“网红”总理贾斯汀-特鲁多做客阿里巴巴。据悉，特鲁多此番前来是希望借助天猫为加拿大的中小企业寻求中国市场。欢迎仪式上，伴随着大屏飘起加拿大美丽的枫叶图案，特鲁多与马云用天猫APP扫码，共同开启了天猫国际加拿大国家馆，同时见证了阿里巴巴同加拿大等一系列战略合作协议的签署。\r\n特鲁多表示，今天对加拿大商界是令人振奋的一天，它们在全球最大的网上销售平台——阿里巴巴上拥有了一个永久的家，并且通过这个平台触及中国4亿多消费者。这是让加拿大企业和人民共同受益的合作，将促进中国游客去加拿大旅游，为加拿大创造就业，促进中产阶级发展。\r\n“很高兴阿里巴巴成为加拿大的中小企业进中国的门户。”马云在欢迎特鲁多时表示。\r\n马云称，自己相信，与全球年轻人及中小企业一起努力，可以建立一个平台，帮助全球的消费者。\r\n特鲁多被称为加拿大的第一位“网络总理”，纽约时报报道，YouTube上一段加拿大总理杜鲁多讲解量子计算的影片，两周内有近150万人次观看。量子计算这种冷门的题目一般不会吸引人，但讲解的人是加拿大的帅哥总理，立刻在网络疯传。纽时指出，杜鲁多早已是网络世界的明星。\r\n8月30日下午，特鲁多参加了由马云主持的中国企业家俱乐部论坛，特鲁多表示，自己当总理十个月以来，有很多的机会在不同场合与世界各地领先的企业家坐在一起交谈，交流看法，但是很少有像马云这样一见如故。特鲁多称赞马云说：“他有非常棒的愿景，就是个人消费可以获得蓬勃发展，为中小企业创造机会，并且获得更美好的人生，这个愿景非常的了不起。”\r\n在对话中，马云同特鲁多还一致表达了对中小企业的支持，马云表示“以后希望要有几百万，几亿年轻人用他们的手机就能够进行全球贸易。”', '2016-09-04');

-- ----------------------------
-- Table structure for `tab_artitle_class`
-- ----------------------------
DROP TABLE IF EXISTS `tab_artitle_class`;
CREATE TABLE `tab_artitle_class` (
  `id` int(10) NOT NULL DEFAULT '0',
  `Aname` text COMMENT '文章分类名称',
  `Acdate` date DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_artitle_class
-- ----------------------------
INSERT INTO `tab_artitle_class` VALUES ('1', 'IT技术类', '2016-07-31');
INSERT INTO `tab_artitle_class` VALUES ('2', '体育', '2016-07-31');
INSERT INTO `tab_artitle_class` VALUES ('3', '新闻', '2016-07-31');

-- ----------------------------
-- Table structure for `tab_artitle_commend`
-- ----------------------------
DROP TABLE IF EXISTS `tab_artitle_commend`;
CREATE TABLE `tab_artitle_commend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Cid` int(11) DEFAULT NULL COMMENT '文章ID编号',
  `Cname` text COMMENT '昵称',
  `Ccontent` text COMMENT '评论内容',
  `Cdate` date DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_artitle_commend
-- ----------------------------
INSERT INTO `tab_artitle_commend` VALUES ('1', '1', '一名游客', '谢谢，我已知晓', '2016-09-01');
INSERT INTO `tab_artitle_commend` VALUES ('2', '2', '游客2', '谢谢你，知道了！', '2016-08-26');
INSERT INTO `tab_artitle_commend` VALUES ('3', '1', '游客3', '谢谢你，知道了！', '2016-08-26');
INSERT INTO `tab_artitle_commend` VALUES ('7', '1', '撒旦', '是的', '2016-08-26');
INSERT INTO `tab_artitle_commend` VALUES ('8', '1', '一名游客45', '我已知晓', '2016-08-27');
INSERT INTO `tab_artitle_commend` VALUES ('9', '3', '用户1', '感谢！！！', '2016-08-27');
INSERT INTO `tab_artitle_commend` VALUES ('10', '4', '一名游客4q', '谢谢你，知道了！', '2016-08-27');
INSERT INTO `tab_artitle_commend` VALUES ('11', '3', '一名游客4q', '谢谢你，知道了！', '2016-08-27');
INSERT INTO `tab_artitle_commend` VALUES ('12', '2', '游客29', '我已知晓', '2016-08-28');
INSERT INTO `tab_artitle_commend` VALUES ('13', '4', '我是游客', '我已知晓', '2016-08-28');
INSERT INTO `tab_artitle_commend` VALUES ('14', '1', '一名游客4q3', '我已知晓', '2016-08-30');
INSERT INTO `tab_artitle_commend` VALUES ('15', '1', '我是游客', '感谢你的回答！', '2016-09-02');
INSERT INTO `tab_artitle_commend` VALUES ('16', '4', '匿名', '中国加油！', '2016-09-02');
INSERT INTO `tab_artitle_commend` VALUES ('17', '2', '我爱中国', '中国加油！', '2016-09-04');
INSERT INTO `tab_artitle_commend` VALUES ('18', '2', '匿名', '好啊', '2016-09-04');
INSERT INTO `tab_artitle_commend` VALUES ('19', '2', '匿名', '中国加油！', '2016-09-04');
INSERT INTO `tab_artitle_commend` VALUES ('20', '2', '一名游客', '我已知晓', '2016-12-11');
INSERT INTO `tab_artitle_commend` VALUES ('21', '1', '你妹', '加油', '2016-12-11');
INSERT INTO `tab_artitle_commend` VALUES ('22', '2', 'test', '测试用户', '2016-12-11');
INSERT INTO `tab_artitle_commend` VALUES ('23', '1', 'k', 'sd', '2016-12-11');
INSERT INTO `tab_artitle_commend` VALUES ('24', '10', '脑残粉1', 'MacBook Air可能也将得到升级，集成USB-C接口。 ', '2016-12-11');
INSERT INTO `tab_artitle_commend` VALUES ('25', '10', '脑残粉2', 'MacBook Air可能也将得到升级，集成USB-C接口。 ', '2016-12-11');
INSERT INTO `tab_artitle_commend` VALUES ('26', '10', '脑残粉8', 'MacBook Air可能也将得到升级，集成USB-C接口。 ', '2016-12-11');
INSERT INTO `tab_artitle_commend` VALUES ('27', '2', '一名美国游客', 'welcome to Hangzhou!', '2016-12-13');

-- ----------------------------
-- Table structure for `tab_manager`
-- ----------------------------
DROP TABLE IF EXISTS `tab_manager`;
CREATE TABLE `tab_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Mname` text COMMENT '管理员名称',
  `Mpasswd` text COMMENT '管理员密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_manager
-- ----------------------------
INSERT INTO `tab_manager` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for `tab_photo`
-- ----------------------------
DROP TABLE IF EXISTS `tab_photo`;
CREATE TABLE `tab_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `Pclass` int(11) DEFAULT NULL COMMENT '相差分类ID',
  `Pname` text COMMENT '相册名称',
  `Ppic` text COMMENT '图片标识',
  `Pinfo` text COMMENT '图片信息',
  `Pdate` date DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_photo
-- ----------------------------
INSERT INTO `tab_photo` VALUES ('1', '1', '绿萝', 'lvluo.png', '绿萝（学名：Epipremnum aureum），属于天南星科麒麟叶属植物，大型常绿藤本，生长于热带地区，常攀援生长在雨林的岩石和树干上，其缠绕性强，气根发达，可以水培种植。', '2016-08-02');
INSERT INTO `tab_photo` VALUES ('2', '1', '梅花', 'meihua.png', '梅花是中国十大名花之首，与兰花、竹子、菊花一起列为四君子，与松、竹并称为“岁寒三友”。在中国传统文化中，梅以它的高洁、坚强、谦虚的品格，给人以立志奋发的激励。在严寒中，梅开百花之先，独天下而春。', '2016-08-02');
INSERT INTO `tab_photo` VALUES ('3', '1', '菊花', 'juhua.png', '菊花（拉丁学名：Dendranthema morifolium（Ramat. ）Tzvel.）：在植物分类学中是菊科、菊属的多年生宿根草本植物。按栽培形式分为多头菊、独本菊、大立菊、悬崖菊、艺菊、案头菊等栽培类型；有按花瓣的外观形态分为园抱、退抱、反抱、乱抱、露心抱、飞午抱等栽培类型。不同类型里的菊花又命名各种各样的品种名称。 菊花是中国十大名花第三，花中四君子（梅兰竹菊）之一，也是世界四大切花（菊花、月季、康乃馨、唐菖蒲）之一，产量居首。因菊花具有清寒傲雪的品格，才有陶渊明的“采菊东篱下，悠然见南山”的名句。中国人有重阳节赏菊和饮菊花酒的习俗。唐·孟浩然《过故人庄》：“待到重阳日，还来就菊花。”在古神话传说中菊花还被赋予了吉祥、长寿的含义。 菊花是经长期人工选择培育的名贵观赏花卉，公元八世纪前后，作为观赏的菊花由中国传至日本。17世纪末叶荷兰商人将中国菊花引入欧洲，18世纪传入法国，19世纪中期引入北美。此后中国菊花遍及全球。', '2016-08-02');
INSERT INTO `tab_photo` VALUES ('4', '3', '小米5', 'xiaomi5.png', '高通骁龙820处理器，4轴防抖相机，十余项黑科技，很轻很快。', '2016-08-02');
INSERT INTO `tab_photo` VALUES ('5', '3', '魅族Pro6', 'pro6.png', '环形闪光灯，十核全网通手机！4+64GB内存！', '2016-08-02');
INSERT INTO `tab_photo` VALUES ('6', '3', '三星S7edge', 's7edge.png', '骁龙820，四曲面屏，IP68级防尘防水，数码变焦', '2016-08-02');
INSERT INTO `tab_photo` VALUES ('7', '2', '一只熊猫娃~', 'xiongmao.png', '一只熊猫娃~', '2016-08-02');
INSERT INTO `tab_photo` VALUES ('8', '2', '测试更新', '48x48_avatar_34.jpg', '测试相册更新', '2016-12-13');
INSERT INTO `tab_photo` VALUES ('15', '2', '猪猪侠', '3.jpg', '美丽的风景画', '2016-12-13');
INSERT INTO `tab_photo` VALUES ('16', '3', '6s', '6s.jpg', '博客相册测试', '2016-08-01');
INSERT INTO `tab_photo` VALUES ('17', '1', '荷花', 'hehua.jpg', '荷花：属毛茛目睡莲科，是莲属二种植物的通称。又名莲花、水芙蓉等。是莲属多年生水生草本花卉。地下茎长而肥厚，有长节，叶盾圆形。花期6至9月，单生于花梗顶端，花瓣多数，嵌生在花托穴内，有红、粉红、白、紫等色，或有彩纹、镶边。坚果椭圆形，种子卵形。', '2016-09-04');
INSERT INTO `tab_photo` VALUES ('18', '1', '万寿菊', 'wsj.jpg', '万寿菊（Tagetes erecta L）为菊科万寿菊属一年生草本植物，茎直立，粗壮，具纵细条棱，分枝向上平展。叶羽状分裂；沿叶缘有少数腺体。头状花序单生；总苞杯状，顶端具齿尖；舌状花黄色或暗橙色；管状花花冠黄色。瘦果线形，基部缩小，黑色或褐色，被短微毛；冠毛有1-2个长芒和2-3个短而钝的鳞片。花期7-9月。\r\n原产墨西哥。中国各地均有分布。可生长在海拔1150米至1480米的地区，多生在路边草甸。万寿菊常于春天播种，因其花大、花期长，故常用于花坛布景。', '2016-08-01');
INSERT INTO `tab_photo` VALUES ('19', '2', 'panda', 'panda.jpg', '熊猫！！', '2016-12-11');

-- ----------------------------
-- Table structure for `tab_photo_class`
-- ----------------------------
DROP TABLE IF EXISTS `tab_photo_class`;
CREATE TABLE `tab_photo_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Pcname` text COMMENT '相册分类名称',
  `Pcdate` date DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_photo_class
-- ----------------------------
INSERT INTO `tab_photo_class` VALUES ('1', '植物', '2016-08-01');
INSERT INTO `tab_photo_class` VALUES ('2', '动物', '2016-08-01');
INSERT INTO `tab_photo_class` VALUES ('3', '手机', '2016-08-01');
