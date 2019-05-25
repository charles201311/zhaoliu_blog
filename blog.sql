/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50639
Source Host           : localhost:3306
Source Database       : 1701x_week3

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2019-05-25 08:45:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `created` datetime DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`),
  CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `blog_type` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', '图像识别没你想的那么难！看完这篇你也能成专家', '本地生活场景中包含大量极富挑战的计算机视觉任务，如菜单识别，招牌识别，菜品识别，商品识别，行人检测与室内视觉导航等,这些计算机视觉任务对应的核心技术可以归纳为三类：物体识别，文本识别与三维重建。\n\n2018 年 11 月 30 日-12 月 1 日，由 51CTO 主办的 WOT 全球人工智能技术峰会在北京粤财 JW 万豪酒店隆重举行。\n\n本次峰会以人工智能为主题，阿里巴巴本地生活研究院人工智能部门的负责人李佩和大家分享他们在图像识别的过程中所遇到各种问题，以及寻求的各种解法。\r\n--------------------- \r\n作者：tea_year \r\n来源：CSDN \r\n原文：https://blog.csdn.net/zhangchen124/article/details/90444614 \r\n版权声明：本文为博主原创文章，转载请附上博文链接！', '2019-05-08 09:23:49', '王二', '1');
INSERT INTO `blog` VALUES ('2', '开源应自由！Apache、OpenStack 基金会权威回应美国出口管制', '受到美国 BIS 将华为列入管制“实体名单”事件的波及，业界关于开源及Apache 基金会的质疑声也越来越大：已“开源”的技术是否依然可以安心使用？强制“闭源”的背后又是否会让中国企业陷入覆灭的境地？\n\n——对此，Apache 基金会最新回应表示：开源不应受到 EAR（出口管理条例）的约束，更不应对社区产生影响！\r\n--------------------- \r\n作者：CSDN资讯 \r\n来源：CSDN \r\n原文：https://blog.csdn.net/csdnnews/article/details/90482173 \r\n版权声明：本文为博主原创文章，转载请附上博文链接！', '2019-05-23 09:24:22', '李四', '2');
INSERT INTO `blog` VALUES ('5', 'aa', 'aaa', '2019-04-03 14:48:32', 'aa', '1');
INSERT INTO `blog` VALUES ('6', 'bb', 'bb', '2019-03-06 14:48:51', 'bb', '2');
INSERT INTO `blog` VALUES ('7', 'cc', 'cc', '2018-12-06 15:00:56', 'cc', '2');
INSERT INTO `blog` VALUES ('8', '我的标题', '我的内容\r\n					 我的内容	 我的内容	 我的内容	 我的内容	 我的内容	 我的内容', null, '张三', '2');

-- ----------------------------
-- Table structure for `blog_type`
-- ----------------------------
DROP TABLE IF EXISTS `blog_type`;
CREATE TABLE `blog_type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_type
-- ----------------------------
INSERT INTO `blog_type` VALUES ('1', '科技');
INSERT INTO `blog_type` VALUES ('2', '计算机');
INSERT INTO `blog_type` VALUES ('3', '﻿航天');
INSERT INTO `blog_type` VALUES ('14', '﻿航天');
INSERT INTO `blog_type` VALUES ('15', '军事');
INSERT INTO `blog_type` VALUES ('16', 'java');
INSERT INTO `blog_type` VALUES ('17', 'c++');
INSERT INTO `blog_type` VALUES ('18', '﻿游戏');
INSERT INTO `blog_type` VALUES ('19', '天文');
INSERT INTO `blog_type` VALUES ('20', '﻿数据库');
INSERT INTO `blog_type` VALUES ('21', '人工智能');
INSERT INTO `blog_type` VALUES ('22', '区块链');
