/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : lianxi

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-06-15 01:13:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 用户信息', '7', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 用户信息', '7', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 用户信息', '7', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 邮箱验证码', '8', 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 邮箱验证码', '8', 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 邮箱验证码', '8', 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 轮播图', '9', 'add_banner');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 轮播图', '9', 'change_banner');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 轮播图', '9', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 课程', '10', 'add_course');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 课程', '10', 'change_course');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 课程', '10', 'delete_course');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 章节', '11', 'add_lesson');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 章节', '11', 'change_lesson');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 章节', '11', 'delete_lesson');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 视频', '12', 'add_video');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 视频', '12', 'change_video');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 视频', '12', 'delete_video');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 课程资源', '13', 'add_courseresource');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 课程资源', '13', 'change_courseresource');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 课程资源', '13', 'delete_courseresource');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 城市', '14', 'add_citydict');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 城市', '14', 'change_citydict');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 城市', '14', 'delete_citydict');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 课程机构', '15', 'add_courseorg');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 课程机构', '15', 'change_courseorg');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 课程机构', '15', 'delete_courseorg');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 教师', '16', 'add_teacher');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 教师', '16', 'change_teacher');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 教师', '16', 'delete_teacher');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 用户咨询', '17', 'add_userask');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 用户咨询', '17', 'change_userask');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 用户咨询', '17', 'delete_userask');
INSERT INTO `auth_permission` VALUES ('52', 'Can add 课程评论', '18', 'add_coursecomments');
INSERT INTO `auth_permission` VALUES ('53', 'Can change 课程评论', '18', 'change_coursecomments');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete 课程评论', '18', 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES ('55', 'Can add 用户收藏', '19', 'add_userfavorite');
INSERT INTO `auth_permission` VALUES ('56', 'Can change 用户收藏', '19', 'change_userfavorite');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete 用户收藏', '19', 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES ('58', 'Can add 用户消息', '20', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('59', 'Can change 用户消息', '20', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('60', 'Can delete 用户消息', '20', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 用户课程', '21', 'add_usercourse');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 用户课程', '21', 'change_usercourse');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 用户课程', '21', 'delete_usercourse');
INSERT INTO `auth_permission` VALUES ('64', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('65', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('66', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('67', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 课程', '10', 'view_course');
INSERT INTO `auth_permission` VALUES ('69', 'Can view 课程资源', '13', 'view_courseresource');
INSERT INTO `auth_permission` VALUES ('70', 'Can view 章节', '11', 'view_lesson');
INSERT INTO `auth_permission` VALUES ('71', 'Can view 视频', '12', 'view_video');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 课程评论', '18', 'view_coursecomments');
INSERT INTO `auth_permission` VALUES ('73', 'Can view 用户咨询', '17', 'view_userask');
INSERT INTO `auth_permission` VALUES ('74', 'Can view 用户课程', '21', 'view_usercourse');
INSERT INTO `auth_permission` VALUES ('75', 'Can view 用户收藏', '19', 'view_userfavorite');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 用户消息', '20', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('77', 'Can view 城市', '14', 'view_citydict');
INSERT INTO `auth_permission` VALUES ('78', 'Can view 课程机构', '15', 'view_courseorg');
INSERT INTO `auth_permission` VALUES ('79', 'Can view 教师', '16', 'view_teacher');
INSERT INTO `auth_permission` VALUES ('80', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('81', 'Can view 轮播图', '9', 'view_banner');
INSERT INTO `auth_permission` VALUES ('82', 'Can view 邮箱验证码', '8', 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('83', 'Can view 用户信息', '7', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('84', 'Can add Bookmark', '22', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('85', 'Can change Bookmark', '22', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('86', 'Can delete Bookmark', '22', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('87', 'Can add User Setting', '23', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('88', 'Can change User Setting', '23', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('89', 'Can delete User Setting', '23', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('90', 'Can add User Widget', '24', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('91', 'Can change User Widget', '24', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('92', 'Can delete User Widget', '24', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('93', 'Can add log entry', '25', 'add_log');
INSERT INTO `auth_permission` VALUES ('94', 'Can change log entry', '25', 'change_log');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete log entry', '25', 'delete_log');
INSERT INTO `auth_permission` VALUES ('96', 'Can view Bookmark', '22', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('97', 'Can view log entry', '25', 'view_log');
INSERT INTO `auth_permission` VALUES ('98', 'Can view User Setting', '23', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('99', 'Can view User Widget', '24', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('100', 'Can add captcha store', '26', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('101', 'Can change captcha store', '26', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('102', 'Can delete captcha store', '26', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('103', 'Can view captcha store', '26', 'view_captchastore');
INSERT INTO `auth_permission` VALUES ('104', 'Can add 轮播课程', '10', 'add_bannercourse');
INSERT INTO `auth_permission` VALUES ('105', 'Can change 轮播课程', '10', 'change_bannercourse');
INSERT INTO `auth_permission` VALUES ('106', 'Can delete 轮播课程', '10', 'delete_bannercourse');
INSERT INTO `auth_permission` VALUES ('107', 'Can view 轮播课程', '27', 'view_bannercourse');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `captcha_captchastore`
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('51', 'GPJL', 'gpjl', '98a6810aca5c7b1782ceb1003cd07d23052a759d', '2018-06-09 12:28:48');
INSERT INTO `captcha_captchastore` VALUES ('52', 'HIDY', 'hidy', 'd3bd767ccd276b4dff97334c0f2c44466db9c41d', '2018-06-09 12:28:49');
INSERT INTO `captcha_captchastore` VALUES ('54', 'CSUZ', 'csuz', '87b6ce8b0cb5dd6babec411fe85fdefe09e05282', '2018-06-09 12:53:56');
INSERT INTO `captcha_captchastore` VALUES ('55', 'TNIU', 'tniu', '9d726113ce279b3c7df5c46d7294e2c21039fca4', '2018-06-09 12:54:52');
INSERT INTO `captcha_captchastore` VALUES ('56', 'ZZZR', 'zzzr', 'e308c4b55720783e34749ac995c347209a906da4', '2018-06-09 12:55:19');
INSERT INTO `captcha_captchastore` VALUES ('57', 'CLVS', 'clvs', '3040900b6fb205acf98d1fab6d9786c3e9e29713', '2018-06-09 12:55:20');
INSERT INTO `captcha_captchastore` VALUES ('58', 'RZOF', 'rzof', 'ac7c557d7ec8c21bbb5244809c44ebb1013d6fc5', '2018-06-09 12:55:25');
INSERT INTO `captcha_captchastore` VALUES ('59', 'PHCR', 'phcr', '42dd0708e5a2e7eac9c813abb6faebf66d7bbc38', '2018-06-09 12:56:17');
INSERT INTO `captcha_captchastore` VALUES ('60', 'KKLF', 'kklf', 'c7b18f6009cbf17e72efb56446297eecf1b6845a', '2018-06-09 19:14:13');
INSERT INTO `captcha_captchastore` VALUES ('61', 'EMOI', 'emoi', 'da74d47db7dbd47355f77918aee92e7b43998007', '2018-06-09 22:53:21');
INSERT INTO `captcha_captchastore` VALUES ('62', 'CRKZ', 'crkz', '88588350a554eab39714a1c88c04d286f85093ef', '2018-06-09 22:54:19');
INSERT INTO `captcha_captchastore` VALUES ('63', 'SFJO', 'sfjo', 'e9f8777dbcf9b421fb720c9018db29fd91c65255', '2018-06-09 22:54:21');
INSERT INTO `captcha_captchastore` VALUES ('64', 'IVQI', 'ivqi', '5cfad7d7c8ad3352899697fa53bb7f35525ad304', '2018-06-09 22:54:25');
INSERT INTO `captcha_captchastore` VALUES ('65', 'KJRU', 'kjru', '8d5333fb3f2c29f0f9efd96620700a7d275e2d27', '2018-06-11 14:29:21');
INSERT INTO `captcha_captchastore` VALUES ('66', 'SRZW', 'srzw', '76cc2044758bb171be85af01d3e2db6142e29dc9', '2018-06-12 20:00:49');
INSERT INTO `captcha_captchastore` VALUES ('67', 'LDHT', 'ldht', '5d6b24e3f668b41088c900e9ef038adcf6812df9', '2018-06-12 20:01:20');
INSERT INTO `captcha_captchastore` VALUES ('68', 'PTMO', 'ptmo', 'fcc0e284d4c4d0f3821a51360bce44e95672ff31', '2018-06-13 13:47:13');
INSERT INTO `captcha_captchastore` VALUES ('69', 'NGAS', 'ngas', 'ac90a9a148ba1419e72394ee1aa1b792e007285d', '2018-06-14 17:31:00');
INSERT INTO `captcha_captchastore` VALUES ('70', 'EFBP', 'efbp', '103e1b42bd89494bfe699847c4fadcd609c86a24', '2018-06-14 17:31:07');
INSERT INTO `captcha_captchastore` VALUES ('71', 'BKJI', 'bkji', '81ee30e006804b4a3add7173c617c8bf9f683044', '2018-06-14 17:34:51');

-- ----------------------------
-- Table structure for `courses_course`
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `course_org_id` int(11),
  `category` varchar(30) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `teacher_id` int(11),
  `teacher_tell` varchar(300),
  `youneed_know` varchar(300),
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_11456c5a` (`course_org_id`),
  KEY `courses_course_d9614d40` (`teacher_id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`),
  CONSTRAINT `courses_cour_course_org_id_4d2c4aab_fk_organization_courseorg_id` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES ('1', 'Django入门', '从入门到放弃', '未名湖畔碑上镌刻着四句诗，写的正是此处景色： \r\n　　画肪平临蘋岸间， \r\n　　飞楼俯映柳阴多； \r\n　　夹镜光澄风四面， \r\n　　垂虹影界水中央。', 'zj', '123', '60', '23', 'course/2018/06/timg_3_hectdnC.jpg', '138', '2018-06-07 23:26:00', '10', '后端', 'python', '5', '要从入门到放弃！', '计算机基础你需要有', '1');
INSERT INTO `courses_course` VALUES ('2', 'Scrapy框架', '爬虫利器', '永远都不要放弃自己，勇往直前，直至成功！', 'zj', '123', '458', '23', 'course/2018/06/u24747021452633240695fm27gp0.jpg', '261', '2018-06-09 20:54:00', '10', '后端', '', null, null, null, '0');
INSERT INTO `courses_course` VALUES ('3', '数据算法', '很难吧', '过放荡不羁的生活，容易得像顺水推舟，但是要结识良朋益友，却难如登天。 —— 巴尔扎克', 'gj', '1234', '245', '213', 'course/2018/06/20130131_623af8553ec7c01ab34dvVBR3mgtruO8.jpg', '134', '2018-06-09 21:34:00', '10', '后端', '', null, null, null, '0');
INSERT INTO `courses_course` VALUES ('4', 'Python', '在人的生活中最主要的是劳动训练。没有劳动就不可能有正常人的生活。 —— 卢梭', '籍——通过心灵观察世界的窗口。住宅里没有书，犹如房间没有窗户。——威尔逊', 'zj', '123', '45', '356', 'course/2018/06/u13004774321854494127fm27gp0.jpg', '39', '2018-06-09 22:07:00', '2', '后端', '', null, null, null, '0');
INSERT INTO `courses_course` VALUES ('5', 'C++', '尊重人不应该胜于尊重真理。 —— 柏拉图', '尊重人不应该胜于尊重真理。 —— 柏拉图', 'gj', '13', '451', '141', 'course/2018/06/20150328131207_SyL8N.png', '124', '2018-06-09 22:09:00', '3', '后端', '', null, null, null, '0');
INSERT INTO `courses_course` VALUES ('6', 'c语言', '静以修身，俭以养德。 —— 诸葛亮', '静以修身，俭以养德。 —— 诸葛亮', 'gj', '213', '245', '235', 'course/2018/06/Myg.jpg', '213', '2018-06-09 22:10:00', '4', '后端', 'python', '7', '要从入门到放弃！', '计算机基础你需要有', '1');
INSERT INTO `courses_course` VALUES ('7', '数学计算', '我们不得不饮食睡眠游惰恋爱，也就是说，我们不得不接触生活中最甜蜜的事情：不过我们必须不屈服于这些事物。 —— 约里奥·居里', '我们不得不饮食睡眠游惰恋爱，也就是说，我们不得不接触生活中最甜蜜的事情：不过我们必须不屈服于这些事物。 —— 约里奥·居里', 'zj', '123', '535', '23', 'course/2018/06/timg_15.jpg', '35', '2018-06-09 22:10:00', '5', '后端', '', null, null, null, '0');
INSERT INTO `courses_course` VALUES ('8', '计算机', '人要有三个头脑，天生的一个头脑，从书中得来的一个头脑，从生活中得来的一个头脑。 —— 蒙田', '人要有三个头脑，天生的一个头脑，从书中得来的一个头脑，从生活中得来的一个头脑。 —— 蒙田', 'zj', '12344', '3525', '34234', 'course/2018/06/u2406451733029044050fm214gp0.jpg', '236', '2018-06-09 22:11:00', '6', '后端', 'c++', null, null, null, '0');
INSERT INTO `courses_course` VALUES ('9', 'Python全栈', '书籍是全世界的营养品。生活里没有书籍，就好像没有阳光；智慧里没有书籍，就好像鸟儿没有翅膀。 —— 莎士比亚', '书籍是全世界的营养品。生活里没有书籍，就好像没有阳光；智慧里没有书籍，就好像鸟儿没有翅膀。 —— 莎士比亚', 'zj', '1234', '45', '566', 'course/2018/06/u117414786581684355fm214gp0.jpg', '123135', '2018-06-09 22:12:00', '8', '后端', 'python', '3', '要从入门到放弃！', '计算机基础你需要有', '0');
INSERT INTO `courses_course` VALUES ('10', '大数据开发', '初恋——那是一场革命：单调、正规的生活方式刹那间被摧毁和破坏了；青春站在街垒上，它那辉煌的旗帜高高地飘扬——不论前面等待着它的是什么——死亡还是新的生活——它向一切都致以热烈的敬意。 —— 屠格涅夫', '初恋——那是一场革命：单调、正规的生活方式刹那间被摧毁和破坏了；青春站在街垒上，它那辉煌的旗帜高高地飘扬——不论前面等待着它的是什么——死亡还是新的生活——它向一切都致以热烈的敬意。 —— 屠格涅夫', 'gj', '1234', '234459', '12313', 'course/2018/06/timg_15_1NEYrOu.jpg', '12349', '2018-06-09 22:13:00', '1', '后端', 'python', '5', '要从入门到放弃！', '计算机基础你需要有', '1');
INSERT INTO `courses_course` VALUES ('11', 'Java', '很难很难的', '我需要三件东西：爱情友谊和图书。然而这三者之间何其相通！炽热的爱情可以充实图书的内容，图书又是人们最忠实的朋友。 —— 蒙田', 'zj', '123', '4523', '21313', 'course/2018/06/timg_12.jpg', '213', '2018-06-14 22:48:00', '10', '后端', 'c++', '1', '要从入门到放弃！', '计算机基础你需要有', '0');
INSERT INTO `courses_course` VALUES ('12', 'Ruby', '不太清楚', '世界要是没有爱情，它在我们心中还会有什么意义！这就如一盏没有亮光的走马灯。 —— 歌德', 'zj', '234', '42', '235', 'course/2018/06/timg_15_hj5GzXK.jpg', '213', '2018-06-14 22:49:00', '3', '后端', 'django', '3', '要从入门到放弃！', '计算机基础你需要有', '0');
INSERT INTO `courses_course` VALUES ('13', '.net', '非常难的', '毫无经验的初恋是迷人的，但经得起考验的爱情是无价的。 —— 马尔林斯基', 'gj', '3', '5', '123', 'course/2018/06/6939483_161209743302_2.jpg', '312', '2018-06-14 22:50:00', '5', '后端', 'python', '2', '要从入门到放弃！', '计算机基础你需要有', '0');
INSERT INTO `courses_course` VALUES ('14', '人工智能', '非常非常难', '人生的磨难是很多的，所以我们不可对于每一件轻微的伤害都过于敏感。在生活磨难面前，精神上的坚强和无动于衷是我们抵抗罪恶和人生意外的最好武器。 —— 洛克', 'zj', '123', '241', '352', 'course/2018/06/timg_8.jpg', '1', '2018-06-14 22:52:00', '2', '后端', 'django', '7', '要从入门到放弃！', '计算机基础你需要有', '0');
INSERT INTO `courses_course` VALUES ('15', '爬虫Spider', '还行不错', '在人的生活中最主要的是劳动训练。没有劳动就不可能有正常人的生活。 —— 卢梭', 'gj', '23', '144', '234524', 'course/2018/06/timg_3.jpg', '239', '2018-06-14 22:53:00', '4', '后端', 'python', '5', '要从入门到放弃！', '计算机基础你需要有', '0');

-- ----------------------------
-- Table structure for `courses_courseresource`
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
INSERT INTO `courses_courseresource` VALUES ('1', '第一章', 'course/resource/2018/06/gd4.jpg', '2018-06-07 23:40:00', '1');
INSERT INTO `courses_courseresource` VALUES ('2', '数据开发', 'course/resource/2018/06/timg_1.jpg', '2018-06-11 19:24:00', '10');

-- ----------------------------
-- Table structure for `courses_lesson`
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES ('1', '第一章', '2018-06-07 23:32:00', '1');
INSERT INTO `courses_lesson` VALUES ('2', '第一章 基础知识', '2018-06-11 19:02:00', '10');
INSERT INTO `courses_lesson` VALUES ('3', '第二章:进阶', '2018-06-11 19:02:00', '10');
INSERT INTO `courses_lesson` VALUES ('4', '第三章:开发过程', '2018-06-11 19:02:00', '10');

-- ----------------------------
-- Table structure for `courses_video`
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES ('1', 'Djngo入门', '2018-06-07 23:37:00', '2', 'https://blog.csdn.net/weixin_41827390/', '0');
INSERT INTO `courses_video` VALUES ('2', 'Django进阶', '2018-06-07 23:38:00', '2', 'https://blog.csdn.net/weixin_41827390/', '0');
INSERT INTO `courses_video` VALUES ('3', '基础知识讲解', '2018-06-11 19:04:00', '2', 'http://www.baidu.comhttps://blog.csdn.net/weixin_41827390/', '0');
INSERT INTO `courses_video` VALUES ('4', '进阶视频讲解', '2018-06-11 19:04:00', '3', 'https://blog.csdn.net/weixin_41827390/', '0');
INSERT INTO `courses_video` VALUES ('5', '入门', '2018-06-11 19:08:00', '3', 'https://blog.csdn.net/weixin_41827390/', '0');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('3', '2018-06-07 20:06:18', '4', 'xixi', '1', 'Added.', '7', '1');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('26', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('27', 'courses', 'bannercourse');
INSERT INTO `django_content_type` VALUES ('10', 'courses', 'course');
INSERT INTO `django_content_type` VALUES ('13', 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES ('11', 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES ('12', 'courses', 'video');
INSERT INTO `django_content_type` VALUES ('18', 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES ('17', 'operation', 'userask');
INSERT INTO `django_content_type` VALUES ('21', 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES ('19', 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES ('20', 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES ('14', 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES ('15', 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES ('16', 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('9', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('8', 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('25', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('23', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('24', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-06-07 08:27:02');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2018-06-07 08:27:02');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2018-06-07 08:27:02');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2018-06-07 08:27:02');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2018-06-07 08:27:02');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2018-06-07 08:27:02');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2018-06-07 08:27:02');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2018-06-07 08:27:02');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2018-06-07 08:27:02');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2018-06-07 08:27:02');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2018-06-07 08:27:02');
INSERT INTO `django_migrations` VALUES ('12', 'sessions', '0001_initial', '2018-06-07 08:27:02');
INSERT INTO `django_migrations` VALUES ('13', 'users', '0001_initial', '2018-06-07 09:02:08');
INSERT INTO `django_migrations` VALUES ('14', 'courses', '0001_initial', '2018-06-07 11:25:11');
INSERT INTO `django_migrations` VALUES ('15', 'operation', '0001_initial', '2018-06-07 11:25:11');
INSERT INTO `django_migrations` VALUES ('16', 'organization', '0001_initial', '2018-06-07 11:25:11');
INSERT INTO `django_migrations` VALUES ('17', 'users', '0002_banner_emailverifyrecord', '2018-06-07 11:25:11');
INSERT INTO `django_migrations` VALUES ('18', 'xadmin', '0001_initial', '2018-06-07 20:17:50');
INSERT INTO `django_migrations` VALUES ('19', 'xadmin', '0002_log', '2018-06-07 20:17:50');
INSERT INTO `django_migrations` VALUES ('20', 'xadmin', '0003_auto_20160715_0100', '2018-06-07 20:17:50');
INSERT INTO `django_migrations` VALUES ('21', 'captcha', '0001_initial', '2018-06-08 17:32:09');
INSERT INTO `django_migrations` VALUES ('22', 'courses', '0002_auto_20180608_1731', '2018-06-08 17:32:09');
INSERT INTO `django_migrations` VALUES ('23', 'organization', '0002_auto_20180608_1731', '2018-06-08 17:32:10');
INSERT INTO `django_migrations` VALUES ('24', 'users', '0003_auto_20180608_1731', '2018-06-08 17:32:10');
INSERT INTO `django_migrations` VALUES ('25', 'organization', '0003_courseorg_catgory', '2018-06-09 15:19:13');
INSERT INTO `django_migrations` VALUES ('26', 'organization', '0004_auto_20180609_1825', '2018-06-09 18:25:38');
INSERT INTO `django_migrations` VALUES ('27', 'courses', '0003_course_course_org', '2018-06-09 20:54:10');
INSERT INTO `django_migrations` VALUES ('28', 'organization', '0005_teacher_image', '2018-06-09 21:54:06');
INSERT INTO `django_migrations` VALUES ('29', 'courses', '0004_course_category', '2018-06-11 17:44:57');
INSERT INTO `django_migrations` VALUES ('30', 'courses', '0005_course_tag', '2018-06-11 18:14:11');
INSERT INTO `django_migrations` VALUES ('31', 'courses', '0006_video_url', '2018-06-11 19:06:32');
INSERT INTO `django_migrations` VALUES ('32', 'courses', '0007_video_learn_times', '2018-06-11 19:21:31');
INSERT INTO `django_migrations` VALUES ('33', 'courses', '0008_course_teacher', '2018-06-11 19:32:30');
INSERT INTO `django_migrations` VALUES ('34', 'courses', '0009_auto_20180611_1938', '2018-06-11 19:39:02');
INSERT INTO `django_migrations` VALUES ('35', 'operation', '0002_auto_20180612_1853', '2018-06-12 18:53:55');
INSERT INTO `django_migrations` VALUES ('36', 'operation', '0003_auto_20180612_2003', '2018-06-12 20:03:54');
INSERT INTO `django_migrations` VALUES ('37', 'organization', '0006_teacher_age', '2018-06-13 13:52:39');
INSERT INTO `django_migrations` VALUES ('38', 'users', '0004_auto_20180614_1403', '2018-06-14 14:03:36');
INSERT INTO `django_migrations` VALUES ('39', 'courses', '0010_auto_20180614_1746', '2018-06-14 17:46:44');
INSERT INTO `django_migrations` VALUES ('40', 'organization', '0007_courseorg_tag', '2018-06-14 18:21:15');
INSERT INTO `django_migrations` VALUES ('41', 'courses', '0011_auto_20180615_0054', '2018-06-15 00:54:15');
INSERT INTO `django_migrations` VALUES ('42', 'courses', '0012_auto_20180615_0056', '2018-06-15 00:56:28');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('cje8dblztqixgd38f7v21ztmoczkm6uq', 'NTM0NjlmMTJhNjZjMmQxNWE5YTIwMDUzY2EzN2ZhZTk1ODgxOTNkOTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImJhbm5lcmNvdXJzZSJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiNjFmOTMwOTY2MWVlOTg0MTA2MDc5NmEzZWM5Njk2NTljZDhlYWEyNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==', '2018-06-29 01:11:06');

-- ----------------------------
-- Table structure for `operation_coursecomments`
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` (`course_id`),
  KEY `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES ('1', '23', '2018-06-12 18:54:03', '10', '1');
INSERT INTO `operation_coursecomments` VALUES ('2', '233123', '2018-06-12 19:02:13', '10', '1');
INSERT INTO `operation_coursecomments` VALUES ('3', '嘿嘿嘿', '2018-06-12 19:02:25', '10', '1');

-- ----------------------------
-- Table structure for `operation_userask`
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES ('1', '小熙', '15234280837', 'Django入门', '2018-06-07 00:12:00');
INSERT INTO `operation_userask` VALUES ('2', '连熙熙', '13334323654', 'Django入门', null);

-- ----------------------------
-- Table structure for `operation_usercourse`
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES ('1', '2018-06-11 17:52:00', '3', '4');
INSERT INTO `operation_usercourse` VALUES ('2', '2018-06-11 17:53:00', '1', '1');
INSERT INTO `operation_usercourse` VALUES ('3', '2018-06-12 20:04:03', '10', '1');
INSERT INTO `operation_usercourse` VALUES ('4', '2018-06-14 20:20:18', '2', '1');

-- ----------------------------
-- Table structure for `operation_userfavorite`
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES ('4', '1', '3', '2018-06-14 18:37:23', '1');
INSERT INTO `operation_userfavorite` VALUES ('6', '10', '2', '2018-06-14 18:37:48', '1');
INSERT INTO `operation_userfavorite` VALUES ('8', '8', '2', '2018-06-14 18:37:57', '1');

-- ----------------------------
-- Table structure for `operation_usermessage`
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
INSERT INTO `operation_usermessage` VALUES ('1', '1', '快做完啦', '1', '2018-06-14 16:35:00');

-- ----------------------------
-- Table structure for `organization_citydict`
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES ('1', '北京市', '应该是很热的吧', '2018-06-07 23:52:00');
INSERT INTO `organization_citydict` VALUES ('2', '上海市', '上海的海啊', '2018-06-09 14:49:00');
INSERT INTO `organization_citydict` VALUES ('3', '武汉市', '武汉的汗啊', '2018-06-09 14:49:00');
INSERT INTO `organization_citydict` VALUES ('4', '广州市', '广州太广了', '2018-06-09 14:49:00');
INSERT INTO `organization_citydict` VALUES ('5', '杭州市', '雷锋的塔啊', '2018-06-09 14:50:00');
INSERT INTO `organization_citydict` VALUES ('6', '长治市', '我的家乡啊', '2018-06-09 14:50:00');

-- ----------------------------
-- Table structure for `organization_courseorg`
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `add_time` datetime NOT NULL,
  `city_id` int(11) NOT NULL,
  `catgory` varchar(20) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_course_city_id_4a842f85_fk_organization_citydict_id` (`city_id`),
  CONSTRAINT `organization_course_city_id_4a842f85_fk_organization_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES ('1', '北京大学', '假如你避免不了，就得去忍受。不能忍受生命中注定要忍受的事情，就是软弱和愚蠢的表现。\r\n——勃朗特《简爱》', '130', '2', 'org/2018/06/u24747021452633240695fm27gp0.jpg', '北京', '2018-06-07 23:52:00', '1', 'pxjg', '0', '0', '小熙努力');
INSERT INTO `organization_courseorg` VALUES ('2', '上海大学', '在学校和生活中，工作的最重要的动力是工作中的乐趣，是工作获得结果时的乐趣以及对这个结果的社会价值的认识。 —— 爱因斯坦', '6', '3', 'org/2018/06/下载.jpg', '上海', '2018-06-09 15:06:00', '2', 'gx', '0', '0', '小熙努力');
INSERT INTO `organization_courseorg` VALUES ('3', '杭州大学', '我们破灭的希望，流产的才能，失败的事业，受了挫折的雄心，往往积聚起来变为忌妒。 —— 巴尔扎克', '23', '45', 'org/2018/06/timg_5.jpg', '杭州', '2018-06-09 15:07:00', '5', 'gx', '0', '0', '小熙努力');
INSERT INTO `organization_courseorg` VALUES ('4', '武汉大学', '只有当全体居民都参加管理工作时，才能彻底进行反官僚主义的斗争，才能完全战胜官僚主义。 —— 列宁', '43', '123', 'org/2018/06/u24747021452633240695fm27gp0_Ley44yc.jpg', '武汉', '2018-06-09 15:08:00', '3', 'gx', '0', '0', '小熙努力');
INSERT INTO `organization_courseorg` VALUES ('5', '广州大学', '我不能说我不珍重这些荣誉，并且我承认它很有价值，不过我却从来不曾为追求这些荣誉而工作。 —— 法拉第', '213', '320', 'org/2018/06/timg.jpg', '广州', '2018-06-09 15:09:00', '4', 'pxjg', '0', '0', '小熙努力');
INSERT INTO `organization_courseorg` VALUES ('6', '长治大学', '当一个人用工作去迎接光明，光明很快就会来照耀着他。 —— 冯学峰', '231', '41424', 'org/2018/06/gdmy.jpg', '长治', '2018-06-09 15:10:00', '6', 'gr', '0', '0', '小熙努力');
INSERT INTO `organization_courseorg` VALUES ('7', '长治IT', '希望你们年青的一代，也能象蜡烛为人照明那样，有一分热，发一分光，忠诚而踏实地为人类伟大的事业贡献自己的力量。 —— 法拉第', '125', '4445', 'org/2018/06/wl.jpg', '长治', '2018-06-09 15:11:00', '6', 'gr', '0', '0', '小熙努力');
INSERT INTO `organization_courseorg` VALUES ('8', '简爱教育', '感情有着极大的鼓舞力量，因此，它是一切道德行为的重要前提，谁要是没有强烈的志向，也就不能够热烈地把这个志向体现于事业中。 —— 凯洛夫', '24552', '23124', 'org/2018/06/timg_4.jpg', '北京', '2018-06-09 15:12:00', '1', 'pxjg', '0', '0', '小熙努力');
INSERT INTO `organization_courseorg` VALUES ('9', '杭州教育', '管理阶层的领导能力是刺激员工努力工作的原动力。 —— 毕雷敦', '8567', '234', 'org/2018/06/gd4.jpg', '上海', '2018-06-09 15:13:00', '2', 'pxjg', '0', '0', '小熙努力');
INSERT INTO `organization_courseorg` VALUES ('10', '清华大学', '有远大抱负的人不可忽略眼前的工作。 —— 欧里庇得斯', '2415', '5353536', 'org/2018/06/cegd.jpg', '北京', '2018-06-09 15:14:00', '1', 'gx', '0', '0', '小熙努力');
INSERT INTO `organization_courseorg` VALUES ('11', '百度教育', '没有一件工作是旷日持久的，除了那件你不敢拌着手进行的工作。 —— 波德莱', '123', '234', 'org/2018/06/timg_10.jpg', '北京', '2018-06-14 22:58:00', '1', 'pxjg', '312', '123', '我');
INSERT INTO `organization_courseorg` VALUES ('12', '腾讯课堂', '希望你们年青的一代，也能象蜡烛为人照明那样，有一分热，发一分光，忠诚而踏实地为人类伟大的事业贡献自己的力量。 —— 法拉第', '123123', '4325', 'org/2018/06/Myg.jpg', '上海', '2018-06-14 22:59:00', '2', 'pxjg', '432', '41234', '要');
INSERT INTO `organization_courseorg` VALUES ('13', '网易平台', '只要我们具有能够改善事物的能力，我们的首要职责就是利用它并训练我们的全部智慧和能力，来为我们人类至高无上的事业服务。 —— 赫胥黎', '123', '253', 'org/2018/06/timg_3.jpg', '上海', '2018-06-14 23:00:00', '2', 'pxjg', '34', '234', '很');
INSERT INTO `organization_courseorg` VALUES ('14', '慕课网', '有远大抱负的人不可忽略眼前的工作。 —— 欧里庇得斯', '35', '545', 'org/2018/06/My.jpg', '北京', '2018-06-14 23:01:00', '1', 'pxjg', '443', '53425', '努');
INSERT INTO `organization_courseorg` VALUES ('15', '小熙教育', '我们常常听人说，人们因工作过度而垮下来，但是实际上十有八九是因为饱受担忧或焦虑的折磨。 —— 卢伯克.J.\r\n尽忠职守，勤奋工作，并且热爱荣耀相信自己的直觉。 —— 李奥贝纳', '435', '354', 'org/2018/06/timg_11.jpg', '长治', '2018-06-14 23:02:00', '6', 'gr', '233', '3434', '力');

-- ----------------------------
-- Table structure for `organization_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` (`org_id`),
  CONSTRAINT `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES ('1', '连熙', '1', 'BaiDu', '技术总监', '很耐心的教您怎样从删库到跑路', '12338', '123124', '2018-06-07 23:57:00', '1', 'teacher/2018/06/psb.jpg', '18');
INSERT INTO `organization_teacher` VALUES ('2', '小熙', '3', '腾讯', 'CEO', '很热情的教您怎样从删库到跑路', '26', '45', '2018-06-09 20:27:00', '10', 'teacher/2018/06/timg_10.jpg', '18');
INSERT INTO `organization_teacher` VALUES ('3', 'Strvie', '8', 'YouKu', '程序猿', '积极，热情，负责人', '234', '234', '2018-06-09 20:28:00', '2', 'teacher/2018/06/timg_2.jpg', '18');
INSERT INTO `organization_teacher` VALUES ('4', '楚燕潮', '10', '北京大学', '教学主任', '学识渊博，负责', '1234', '35', '2018-06-09 20:31:00', '1', 'teacher/2018/06/054353404.jpg', '18');
INSERT INTO `organization_teacher` VALUES ('5', '韩新月', '2', 'IBM', '副总', '善良，热心', '234233', '2330', '2018-06-09 20:32:00', '4', 'teacher/2018/06/u41703047382895518923fm27gp0.jpg', '18');
INSERT INTO `organization_teacher` VALUES ('6', '孙少平', '5', '矿务局', '队长', '刚强', '547', '345', '2018-06-09 20:33:00', '5', 'teacher/2018/06/1-150314142405.jpg', '18');
INSERT INTO `organization_teacher` VALUES ('7', '伊丽莎白', '5', 'BaiDu', '教学主任', '善良，热心', '5235', '45', '2018-06-09 22:14:00', '9', 'teacher/2018/06/timg_14.jpg', '18');

-- ----------------------------
-- Table structure for `users_banner`
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES ('1', '我的轮播图1', 'banner/2018/06/4154e5bbb76c272eb002ad9f53c61be2.jpg', 'https://blog.csdn.net/weixin_41827390/', '1', '2018-06-07 23:09:00');
INSERT INTO `users_banner` VALUES ('2', '我的轮播图2', 'banner/2018/06/timg_16.jpg', 'https://blog.csdn.net/weixin_41827390/', '2', '2018-06-14 17:52:00');
INSERT INTO `users_banner` VALUES ('3', '我的轮播图3', 'banner/2018/06/timg_17.jpg', 'https://blog.csdn.net/weixin_41827390/', '3', '2018-06-14 17:53:00');
INSERT INTO `users_banner` VALUES ('4', '我的轮播图5', 'banner/2018/06/gd.jpg', 'https://blog.csdn.net/weixin_41827390/', '4', '2018-06-14 17:54:00');
INSERT INTO `users_banner` VALUES ('5', '我的轮播图5', 'banner/2018/06/timg_5.jpg', 'https://blog.csdn.net/weixin_41827390/', '5', '2018-06-14 17:54:00');

-- ----------------------------
-- Table structure for `users_emailverifyrecord`
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(30) NOT NULL,
  `send_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES ('2', '483122', 'lian_xi0508@163.com', 'forget', '2018-06-07 22:39:00');
INSERT INTO `users_emailverifyrecord` VALUES ('3', '01961381', '1537@152.com', 'forget', '2018-06-07 22:50:00');

-- ----------------------------
-- Table structure for `users_userprofile`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$24000$zhU6vJKygXMN$Pepfa+Ku6FenR9VfKyrpc2SU/MHx7M6ro/Q/qiKQuI4=', '2018-06-14 22:45:42', '1', 'lianxi', '', '', 'lian_xi0508@sina.cn', '1', '1', '2018-06-07 11:28:00', '小熙', null, 'female', '长治', '1523433333', 'image/2018/06/timg_1.jpg');
INSERT INTO `users_userprofile` VALUES ('4', 'pbkdf2_sha256$24000$e1rDi9KX0Wmv$zh4dZd40xYZocjGsvVn4QuSHaXOc2kZaeo6EsIukLa8=', '2018-06-14 23:06:08', '1', 'xixi', '连', '熙', 'lian_xi0508@163.com', '1', '1', '2018-06-07 20:02:00', '小熙', '1992-07-09', 'male', '北京', '15234280837', 'image/2018/06/psb.jpg');
INSERT INTO `users_userprofile` VALUES ('5', 'pbkdf2_sha256$24000$6tfgCmVfeenK$jEPiNzoit6riDMyN94EKXW99Nk3JpA6T1gbdA77coO0=', null, '0', 'lian_xi0508@sina.cn', '', '', 'lian_xi0508@sina.cn', '0', '1', '2018-06-08 18:41:27', '', null, 'female', '', null, 'image/default.png');
INSERT INTO `users_userprofile` VALUES ('6', 'pbkdf2_sha256$24000$VGtGfKYHqe2i$AfV4bpNlmR6QRMvSpjIfq/zuPaFAS44YWuP6kIMQ+7g=', null, '0', 'lian_xi0508@163.com', '', '', 'lian_xi0508@163.com', '0', '0', '2018-06-08 19:09:03', '', null, 'female', '', null, 'image/default.png');

-- ----------------------------
-- Table structure for `users_userprofile_groups`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `users_userprofile_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------
INSERT INTO `users_userprofile_user_permissions` VALUES ('2', '4', '1');
INSERT INTO `users_userprofile_user_permissions` VALUES ('3', '4', '2');
INSERT INTO `users_userprofile_user_permissions` VALUES ('4', '4', '3');
INSERT INTO `users_userprofile_user_permissions` VALUES ('5', '4', '4');
INSERT INTO `users_userprofile_user_permissions` VALUES ('6', '4', '5');
INSERT INTO `users_userprofile_user_permissions` VALUES ('7', '4', '6');
INSERT INTO `users_userprofile_user_permissions` VALUES ('8', '4', '7');
INSERT INTO `users_userprofile_user_permissions` VALUES ('9', '4', '8');
INSERT INTO `users_userprofile_user_permissions` VALUES ('10', '4', '9');
INSERT INTO `users_userprofile_user_permissions` VALUES ('11', '4', '13');
INSERT INTO `users_userprofile_user_permissions` VALUES ('12', '4', '14');
INSERT INTO `users_userprofile_user_permissions` VALUES ('13', '4', '15');
INSERT INTO `users_userprofile_user_permissions` VALUES ('14', '4', '16');
INSERT INTO `users_userprofile_user_permissions` VALUES ('15', '4', '17');
INSERT INTO `users_userprofile_user_permissions` VALUES ('16', '4', '18');
INSERT INTO `users_userprofile_user_permissions` VALUES ('17', '4', '19');
INSERT INTO `users_userprofile_user_permissions` VALUES ('18', '4', '20');
INSERT INTO `users_userprofile_user_permissions` VALUES ('19', '4', '21');
INSERT INTO `users_userprofile_user_permissions` VALUES ('20', '4', '22');
INSERT INTO `users_userprofile_user_permissions` VALUES ('21', '4', '23');
INSERT INTO `users_userprofile_user_permissions` VALUES ('22', '4', '24');
INSERT INTO `users_userprofile_user_permissions` VALUES ('23', '4', '25');
INSERT INTO `users_userprofile_user_permissions` VALUES ('24', '4', '26');
INSERT INTO `users_userprofile_user_permissions` VALUES ('25', '4', '27');
INSERT INTO `users_userprofile_user_permissions` VALUES ('26', '4', '28');
INSERT INTO `users_userprofile_user_permissions` VALUES ('27', '4', '29');
INSERT INTO `users_userprofile_user_permissions` VALUES ('28', '4', '30');
INSERT INTO `users_userprofile_user_permissions` VALUES ('29', '4', '31');
INSERT INTO `users_userprofile_user_permissions` VALUES ('30', '4', '32');
INSERT INTO `users_userprofile_user_permissions` VALUES ('31', '4', '33');
INSERT INTO `users_userprofile_user_permissions` VALUES ('32', '4', '34');
INSERT INTO `users_userprofile_user_permissions` VALUES ('33', '4', '35');
INSERT INTO `users_userprofile_user_permissions` VALUES ('34', '4', '36');
INSERT INTO `users_userprofile_user_permissions` VALUES ('35', '4', '37');
INSERT INTO `users_userprofile_user_permissions` VALUES ('36', '4', '38');
INSERT INTO `users_userprofile_user_permissions` VALUES ('37', '4', '39');
INSERT INTO `users_userprofile_user_permissions` VALUES ('38', '4', '40');
INSERT INTO `users_userprofile_user_permissions` VALUES ('39', '4', '41');
INSERT INTO `users_userprofile_user_permissions` VALUES ('40', '4', '42');
INSERT INTO `users_userprofile_user_permissions` VALUES ('41', '4', '43');
INSERT INTO `users_userprofile_user_permissions` VALUES ('42', '4', '44');
INSERT INTO `users_userprofile_user_permissions` VALUES ('43', '4', '45');
INSERT INTO `users_userprofile_user_permissions` VALUES ('44', '4', '46');
INSERT INTO `users_userprofile_user_permissions` VALUES ('45', '4', '47');
INSERT INTO `users_userprofile_user_permissions` VALUES ('46', '4', '48');
INSERT INTO `users_userprofile_user_permissions` VALUES ('47', '4', '49');
INSERT INTO `users_userprofile_user_permissions` VALUES ('48', '4', '50');
INSERT INTO `users_userprofile_user_permissions` VALUES ('49', '4', '51');
INSERT INTO `users_userprofile_user_permissions` VALUES ('50', '4', '52');
INSERT INTO `users_userprofile_user_permissions` VALUES ('51', '4', '53');
INSERT INTO `users_userprofile_user_permissions` VALUES ('52', '4', '54');
INSERT INTO `users_userprofile_user_permissions` VALUES ('53', '4', '55');
INSERT INTO `users_userprofile_user_permissions` VALUES ('54', '4', '56');
INSERT INTO `users_userprofile_user_permissions` VALUES ('55', '4', '57');
INSERT INTO `users_userprofile_user_permissions` VALUES ('56', '4', '58');
INSERT INTO `users_userprofile_user_permissions` VALUES ('57', '4', '59');
INSERT INTO `users_userprofile_user_permissions` VALUES ('58', '4', '60');
INSERT INTO `users_userprofile_user_permissions` VALUES ('59', '4', '61');
INSERT INTO `users_userprofile_user_permissions` VALUES ('60', '4', '62');
INSERT INTO `users_userprofile_user_permissions` VALUES ('61', '4', '63');
INSERT INTO `users_userprofile_user_permissions` VALUES ('62', '4', '64');
INSERT INTO `users_userprofile_user_permissions` VALUES ('63', '4', '65');
INSERT INTO `users_userprofile_user_permissions` VALUES ('64', '4', '66');
INSERT INTO `users_userprofile_user_permissions` VALUES ('65', '4', '67');
INSERT INTO `users_userprofile_user_permissions` VALUES ('66', '4', '68');
INSERT INTO `users_userprofile_user_permissions` VALUES ('67', '4', '69');
INSERT INTO `users_userprofile_user_permissions` VALUES ('68', '4', '70');
INSERT INTO `users_userprofile_user_permissions` VALUES ('69', '4', '71');
INSERT INTO `users_userprofile_user_permissions` VALUES ('70', '4', '72');
INSERT INTO `users_userprofile_user_permissions` VALUES ('71', '4', '73');
INSERT INTO `users_userprofile_user_permissions` VALUES ('72', '4', '74');
INSERT INTO `users_userprofile_user_permissions` VALUES ('73', '4', '75');
INSERT INTO `users_userprofile_user_permissions` VALUES ('74', '4', '76');
INSERT INTO `users_userprofile_user_permissions` VALUES ('75', '4', '77');
INSERT INTO `users_userprofile_user_permissions` VALUES ('76', '4', '78');
INSERT INTO `users_userprofile_user_permissions` VALUES ('77', '4', '79');
INSERT INTO `users_userprofile_user_permissions` VALUES ('78', '4', '80');
INSERT INTO `users_userprofile_user_permissions` VALUES ('79', '4', '81');
INSERT INTO `users_userprofile_user_permissions` VALUES ('1', '4', '82');
INSERT INTO `users_userprofile_user_permissions` VALUES ('80', '4', '83');
INSERT INTO `users_userprofile_user_permissions` VALUES ('81', '4', '84');
INSERT INTO `users_userprofile_user_permissions` VALUES ('82', '4', '85');
INSERT INTO `users_userprofile_user_permissions` VALUES ('83', '4', '86');
INSERT INTO `users_userprofile_user_permissions` VALUES ('84', '4', '87');
INSERT INTO `users_userprofile_user_permissions` VALUES ('85', '4', '88');
INSERT INTO `users_userprofile_user_permissions` VALUES ('86', '4', '89');
INSERT INTO `users_userprofile_user_permissions` VALUES ('87', '4', '90');
INSERT INTO `users_userprofile_user_permissions` VALUES ('88', '4', '91');
INSERT INTO `users_userprofile_user_permissions` VALUES ('89', '4', '92');
INSERT INTO `users_userprofile_user_permissions` VALUES ('90', '4', '93');
INSERT INTO `users_userprofile_user_permissions` VALUES ('91', '4', '94');
INSERT INTO `users_userprofile_user_permissions` VALUES ('92', '4', '95');
INSERT INTO `users_userprofile_user_permissions` VALUES ('93', '4', '96');
INSERT INTO `users_userprofile_user_permissions` VALUES ('94', '4', '97');
INSERT INTO `users_userprofile_user_permissions` VALUES ('95', '4', '98');
INSERT INTO `users_userprofile_user_permissions` VALUES ('96', '4', '99');
INSERT INTO `users_userprofile_user_permissions` VALUES ('97', '4', '100');
INSERT INTO `users_userprofile_user_permissions` VALUES ('98', '4', '101');
INSERT INTO `users_userprofile_user_permissions` VALUES ('99', '4', '102');
INSERT INTO `users_userprofile_user_permissions` VALUES ('100', '4', '103');

-- ----------------------------
-- Table structure for `xadmin_bookmark`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for `xadmin_log`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2018-06-07 22:35:03', '127.0.0.1', '1', 'EmailVerifyRecord object', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2018-06-07 22:39:16', '127.0.0.1', '2', '483122(lian_xi0508@163.com)', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2018-06-07 22:39:47', '127.0.0.1', null, '', 'delete', '批量删除 1 个 邮箱验证码', null, '1');
INSERT INTO `xadmin_log` VALUES ('4', '2018-06-07 22:50:29', '127.0.0.1', '3', '01961381(1537@152.com)', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2018-06-07 23:09:52', '127.0.0.1', '1', 'Banner object', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2018-06-07 23:28:03', '127.0.0.1', '1', 'Course object', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2018-06-07 23:33:12', '127.0.0.1', '1', '第一章', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2018-06-07 23:37:38', '127.0.0.1', '1', 'Video object', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2018-06-07 23:38:39', '127.0.0.1', '2', 'Django进阶', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2018-06-07 23:41:10', '127.0.0.1', '1', '第一章', 'create', '已添加', '13', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2018-06-07 23:52:22', '127.0.0.1', '1', '北京市', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2018-06-07 23:57:49', '127.0.0.1', '1', '北京大学', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2018-06-07 23:58:27', '127.0.0.1', '1', '连熙', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2018-06-08 00:00:31', '127.0.0.1', '1', '连熙', 'change', '已修改 work_company 和 work_position 。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2018-06-08 00:12:04', '127.0.0.1', '1', '小熙', 'create', '已添加', '17', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2018-06-09 14:49:25', '127.0.0.1', '2', '上海市', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2018-06-09 14:49:39', '127.0.0.1', '3', '武汉市', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2018-06-09 14:50:01', '127.0.0.1', '4', '广州市', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2018-06-09 14:50:16', '127.0.0.1', '5', '杭州市', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2018-06-09 14:50:28', '127.0.0.1', '6', '长治市', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2018-06-09 15:05:49', '127.0.0.1', '1', '北京大学', 'change', '已修改 image 。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2018-06-09 15:05:58', '127.0.0.1', '1', '北京大学', 'change', '已修改 image 。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2018-06-09 15:06:30', '127.0.0.1', '1', '北京大学', 'change', '没有字段被修改。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2018-06-09 15:07:30', '127.0.0.1', '2', '上海大学', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2018-06-09 15:08:19', '127.0.0.1', '3', '杭州大学', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2018-06-09 15:09:13', '127.0.0.1', '4', '武汉大学', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2018-06-09 15:09:57', '127.0.0.1', '5', '广州大学', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2018-06-09 15:11:05', '127.0.0.1', '6', '长治大学', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2018-06-09 15:12:10', '127.0.0.1', '7', '长治IT', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2018-06-09 15:13:22', '127.0.0.1', '8', '简爱教育', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2018-06-09 15:14:01', '127.0.0.1', '9', '杭州教育', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2018-06-09 15:14:52', '127.0.0.1', '10', '清华大学', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2018-06-09 20:28:21', '127.0.0.1', '2', '小熙', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2018-06-09 20:29:48', '127.0.0.1', '3', 'Strvie', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2018-06-09 20:32:13', '127.0.0.1', '4', '楚燕潮', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2018-06-09 20:33:13', '127.0.0.1', '5', '韩新月', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2018-06-09 20:34:26', '127.0.0.1', '6', '孙少平', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2018-06-09 20:56:04', '127.0.0.1', '2', 'Scrapy框架', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('39', '2018-06-09 21:35:48', '127.0.0.1', '3', '数据算法', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('40', '2018-06-09 21:54:32', '127.0.0.1', '6', '孙少平', 'change', '已修改 image 。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('41', '2018-06-09 21:55:24', '127.0.0.1', '5', '韩新月', 'change', '已修改 image 。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('42', '2018-06-09 21:55:37', '127.0.0.1', '4', '楚燕潮', 'change', '已修改 image 。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('43', '2018-06-09 21:55:48', '127.0.0.1', '3', 'Strvie', 'change', '已修改 image 。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('44', '2018-06-09 21:56:02', '127.0.0.1', '2', '小熙', 'change', '已修改 image 。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('45', '2018-06-09 21:56:10', '127.0.0.1', '1', '连熙', 'change', '已修改 image 。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('46', '2018-06-09 22:06:52', '127.0.0.1', '3', 'Strvie', 'change', '已修改 image 。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('47', '2018-06-09 22:07:07', '127.0.0.1', '2', '小熙', 'change', '已修改 image 。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('48', '2018-06-09 22:08:47', '127.0.0.1', '4', 'Python', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('49', '2018-06-09 22:09:02', '127.0.0.1', '4', 'Python', 'change', '没有字段被修改。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('50', '2018-06-09 22:10:08', '127.0.0.1', '5', 'C++', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('51', '2018-06-09 22:10:39', '127.0.0.1', '6', 'c语言', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('52', '2018-06-09 22:11:51', '127.0.0.1', '7', '数学计算', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('53', '2018-06-09 22:12:22', '127.0.0.1', '8', '计算机', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('54', '2018-06-09 22:13:03', '127.0.0.1', '9', 'Python全栈', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('55', '2018-06-09 22:14:01', '127.0.0.1', '10', '大数据开发', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('56', '2018-06-09 22:15:10', '127.0.0.1', '7', '伊丽莎白', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('57', '2018-06-11 16:28:47', '127.0.0.1', '1', 'Django入门', 'change', '已修改 course_org，learn_times，students，fav_nums 和 image 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('58', '2018-06-11 17:52:46', '127.0.0.1', '1', 'UserCourse object', 'create', '已添加', '21', '1');
INSERT INTO `xadmin_log` VALUES ('59', '2018-06-11 17:53:16', '127.0.0.1', '4', 'xixi', 'change', '已修改 image 。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('60', '2018-06-11 17:54:00', '127.0.0.1', '2', 'UserCourse object', 'create', '已添加', '21', '1');
INSERT INTO `xadmin_log` VALUES ('61', '2018-06-11 17:54:55', '127.0.0.1', '1', 'lianxi', 'change', '已修改 last_login，nick_name，birthday，address，mobile 和 image 。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('62', '2018-06-11 18:24:53', '127.0.0.1', '10', '大数据开发', 'change', '已修改 tag 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('63', '2018-06-11 18:25:06', '127.0.0.1', '9', 'Python全栈', 'change', '已修改 tag 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('64', '2018-06-11 18:26:06', '127.0.0.1', '8', '计算机', 'change', '已修改 tag 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('65', '2018-06-11 19:02:45', '127.0.0.1', '2', '第一章 基础知识', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('66', '2018-06-11 19:02:56', '127.0.0.1', '3', '第二章:进阶', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('67', '2018-06-11 19:03:10', '127.0.0.1', '4', '第三章:开发过程', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('68', '2018-06-11 19:04:25', '127.0.0.1', '3', '基础知识讲解', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('69', '2018-06-11 19:04:55', '127.0.0.1', '4', '进阶视频讲解', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('70', '2018-06-11 19:07:43', '127.0.0.1', '3', '基础知识讲解', 'change', '已修改 url 。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('71', '2018-06-11 19:07:47', '127.0.0.1', '4', '进阶视频讲解', 'change', '已修改 url 。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('72', '2018-06-11 19:07:58', '127.0.0.1', '2', 'Django进阶', 'change', '已修改 lesson 和 url 。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('73', '2018-06-11 19:08:06', '127.0.0.1', '1', 'Djngo入门', 'change', '已修改 lesson 和 url 。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('74', '2018-06-11 19:08:56', '127.0.0.1', '5', '入门', 'create', '已添加', '12', '1');
INSERT INTO `xadmin_log` VALUES ('75', '2018-06-11 19:09:25', '127.0.0.1', '1', '第一章', 'change', '没有字段被修改。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('76', '2018-06-11 19:25:06', '127.0.0.1', '2', '数据开发', 'create', '已添加', '13', '1');
INSERT INTO `xadmin_log` VALUES ('77', '2018-06-11 19:33:27', '127.0.0.1', '10', '大数据开发', 'change', '已修改 teacher 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('78', '2018-06-11 19:39:31', '127.0.0.1', '10', '大数据开发', 'change', '已修改 youneed_know 和 teacher_tell 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('79', '2018-06-12 19:42:27', '127.0.0.1', '2', 'UserCourse object', 'change', '已修改 course 。', '21', '1');
INSERT INTO `xadmin_log` VALUES ('80', '2018-06-14 16:36:57', '127.0.0.1', '1', 'UserMessage object', 'create', '已添加', '20', '1');
INSERT INTO `xadmin_log` VALUES ('81', '2018-06-14 17:49:47', '127.0.0.1', '1', 'Banner object', 'change', '已修改 image 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('82', '2018-06-14 17:50:49', '127.0.0.1', '1', 'Banner object', 'change', '已修改 url 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('83', '2018-06-14 17:50:56', '127.0.0.1', '1', 'Banner object', 'change', '已修改 index 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('84', '2018-06-14 17:53:15', '127.0.0.1', '2', 'Banner object', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('85', '2018-06-14 17:53:30', '127.0.0.1', '3', 'Banner object', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('86', '2018-06-14 17:53:34', '127.0.0.1', '1', 'Banner object', 'change', '已修改 title 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('87', '2018-06-14 17:54:29', '127.0.0.1', '4', 'Banner object', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('88', '2018-06-14 17:54:55', '127.0.0.1', '5', 'Banner object', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('89', '2018-06-14 18:11:15', '127.0.0.1', '9', 'Python全栈', 'change', '已修改 is_banner，teacher，youneed_know 和 teacher_tell 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('90', '2018-06-14 18:11:55', '127.0.0.1', '10', '大数据开发', 'change', '已修改 is_banner 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('91', '2018-06-14 18:12:16', '127.0.0.1', '6', 'c语言', 'change', '已修改 is_banner，teacher，tag，youneed_know 和 teacher_tell 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('92', '2018-06-14 18:12:40', '127.0.0.1', '1', 'Django入门', 'change', '已修改 is_banner，teacher，tag，youneed_know 和 teacher_tell 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('93', '2018-06-14 18:13:08', '127.0.0.1', '9', 'Python全栈', 'change', '已修改 is_banner 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('94', '2018-06-14 22:41:56', '127.0.0.1', '4', 'xixi', 'change', '已修改 is_staff 。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('95', '2018-06-14 22:43:51', '127.0.0.1', '4', 'xixi', 'change', '已修改 last_login 和 image 。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('96', '2018-06-14 22:44:39', '127.0.0.1', '4', 'xixi', 'change', '已修改 user_permissions 。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('97', '2018-06-14 22:46:32', '127.0.0.1', '4', 'xixi', 'change', '已修改 last_login，is_superuser 和 user_permissions 。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('98', '2018-06-14 22:49:17', '127.0.0.1', '11', 'Java', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('99', '2018-06-14 22:50:32', '127.0.0.1', '12', 'Ruby', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('100', '2018-06-14 22:52:22', '127.0.0.1', '13', '.net', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('101', '2018-06-14 22:53:20', '127.0.0.1', '14', '人工智能', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('102', '2018-06-14 22:54:55', '127.0.0.1', '15', '爬虫Spider', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('103', '2018-06-14 22:59:49', '127.0.0.1', '11', '百度教育', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('104', '2018-06-14 23:00:41', '127.0.0.1', '12', '腾讯课堂', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('105', '2018-06-14 23:01:31', '127.0.0.1', '13', '网易平台', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('106', '2018-06-14 23:02:41', '127.0.0.1', '14', '慕课网', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('107', '2018-06-14 23:04:18', '127.0.0.1', '15', '小熙教育', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('108', '2018-06-15 01:08:27', '127.0.0.1', '6', 'c语言', 'change', '已修改 image 。', '27', '4');
INSERT INTO `xadmin_log` VALUES ('109', '2018-06-15 01:08:41', '127.0.0.1', '1', 'Django入门', 'change', '已修改 image 。', '27', '4');
INSERT INTO `xadmin_log` VALUES ('110', '2018-06-15 01:11:06', '127.0.0.1', '10', '大数据开发', 'change', '已修改 image 。', '27', '4');

-- ----------------------------
-- Table structure for `xadmin_usersettings`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');
INSERT INTO `xadmin_usersettings` VALUES ('2', 'site-theme', 'https://bootswatch.com/3/readable/bootstrap.min.css', '1');
INSERT INTO `xadmin_usersettings` VALUES ('3', 'users_userprofile_editform_portal', 'box-0,box-1,box-2,box-3,box-4|box-5', '1');
INSERT INTO `xadmin_usersettings` VALUES ('4', 'dashboard:home:pos', '', '4');
INSERT INTO `xadmin_usersettings` VALUES ('5', 'courses_course_editform_portal', 'box-0,lesson_set-group,courseresource_set-group', '4');

-- ----------------------------
-- Table structure for `xadmin_userwidget`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
