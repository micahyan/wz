/*
Navicat MySQL Data Transfer

Source Server         : micah
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : wtiyan

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2015-12-31 17:24:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wty_account`
-- ----------------------------
DROP TABLE IF EXISTS `wty_account`;
CREATE TABLE `wty_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `isconnect` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`acid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_account
-- ----------------------------
INSERT INTO `wty_account` VALUES ('2', '2', 'gop8B67h', '1', '0');

-- ----------------------------
-- Table structure for `wty_account_wechats`
-- ----------------------------
DROP TABLE IF EXISTS `wty_account_wechats`;
CREATE TABLE `wty_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `access_token` varchar(1000) NOT NULL DEFAULT '',
  `level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL DEFAULT '1',
  `jsapi_ticket` varchar(1000) NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `card_ticket` varchar(1000) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_account_wechats
-- ----------------------------
INSERT INTO `wty_account_wechats` VALUES ('2', '2', 'h7xzzUqVn637Xgxuz3Kp3P63z3c5z5o3', 'hn6l3u33UQGQ3vz39k1K3uuQNQ611LKWNQWqLvWvN97', '', '1', 'fdsfdf', '', '', '', '', '', '', '', '', '0', 'sdfds', 'dsfsdsdf', '1', '', '', '');

-- ----------------------------
-- Table structure for `wty_account_yixin`
-- ----------------------------
DROP TABLE IF EXISTS `wty_account_yixin`;
CREATE TABLE `wty_account_yixin` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `access_token` varchar(1000) NOT NULL DEFAULT '',
  `level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_account_yixin
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_activity_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `wty_activity_coupon`;
CREATE TABLE `wty_activity_coupon` (
  `couponid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(4) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `couponsn` varchar(50) NOT NULL,
  `description` text,
  `discount` decimal(10,2) NOT NULL,
  `condition` decimal(10,2) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '0',
  `dosage` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `credittype` varchar(20) NOT NULL,
  `use_module` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`couponid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_activity_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_activity_coupon_allocation`
-- ----------------------------
DROP TABLE IF EXISTS `wty_activity_coupon_allocation`;
CREATE TABLE `wty_activity_coupon_allocation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`couponid`,`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_activity_coupon_allocation
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_activity_coupon_modules`
-- ----------------------------
DROP TABLE IF EXISTS `wty_activity_coupon_modules`;
CREATE TABLE `wty_activity_coupon_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `couponid` (`couponid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_activity_coupon_modules
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_activity_coupon_password`
-- ----------------------------
DROP TABLE IF EXISTS `wty_activity_coupon_password`;
CREATE TABLE `wty_activity_coupon_password` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_activity_coupon_password
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_activity_coupon_record`
-- ----------------------------
DROP TABLE IF EXISTS `wty_activity_coupon_record`;
CREATE TABLE `wty_activity_coupon_record` (
  `recid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `grantmodule` varchar(50) NOT NULL DEFAULT '',
  `granttime` int(10) unsigned NOT NULL DEFAULT '0',
  `usemodule` varchar(50) NOT NULL DEFAULT '',
  `usetime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remark` varchar(300) NOT NULL DEFAULT '',
  `couponid` int(10) unsigned NOT NULL,
  `operator` varchar(30) NOT NULL,
  PRIMARY KEY (`recid`),
  KEY `couponid` (`uid`,`grantmodule`,`usemodule`,`status`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_activity_coupon_record
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_activity_exchange`
-- ----------------------------
DROP TABLE IF EXISTS `wty_activity_exchange`;
CREATE TABLE `wty_activity_exchange` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `couponid` int(10) NOT NULL DEFAULT '0',
  `uniacid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `extra` varchar(3000) NOT NULL DEFAULT '',
  `credit` int(10) unsigned NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `pretotal` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_activity_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_activity_exchange_trades`
-- ----------------------------
DROP TABLE IF EXISTS `wty_activity_exchange_trades`;
CREATE TABLE `wty_activity_exchange_trades` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `uniacid` (`uniacid`,`uid`,`exid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_activity_exchange_trades
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_activity_exchange_trades_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `wty_activity_exchange_trades_shipping`;
CREATE TABLE `wty_activity_exchange_trades_shipping` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_activity_exchange_trades_shipping
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_activity_modules`
-- ----------------------------
DROP TABLE IF EXISTS `wty_activity_modules`;
CREATE TABLE `wty_activity_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `available` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `uniacid` (`uniacid`),
  KEY `module` (`module`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_activity_modules
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_activity_modules_record`
-- ----------------------------
DROP TABLE IF EXISTS `wty_activity_modules_record`;
CREATE TABLE `wty_activity_modules_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `num` tinyint(3) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_activity_modules_record
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_article_reply`
-- ----------------------------
DROP TABLE IF EXISTS `wty_article_reply`;
CREATE TABLE `wty_article_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `articleid` int(11) NOT NULL,
  `isfill` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_article_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_basic_reply`
-- ----------------------------
DROP TABLE IF EXISTS `wty_basic_reply`;
CREATE TABLE `wty_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_basic_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_business`
-- ----------------------------
DROP TABLE IF EXISTS `wty_business`;
CREATE TABLE `wty_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL DEFAULT '',
  `phone` varchar(15) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '',
  `province` varchar(50) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `dist` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(500) NOT NULL DEFAULT '',
  `lng` varchar(10) NOT NULL DEFAULT '',
  `lat` varchar(10) NOT NULL DEFAULT '',
  `industry1` varchar(10) NOT NULL DEFAULT '',
  `industry2` varchar(10) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lat_lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_business
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_core_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `wty_core_attachment`;
CREATE TABLE `wty_core_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_core_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_core_cache`
-- ----------------------------
DROP TABLE IF EXISTS `wty_core_cache`;
CREATE TABLE `wty_core_cache` (
  `key` varchar(50) NOT NULL,
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_core_cache
-- ----------------------------
INSERT INTO `wty_core_cache` VALUES ('setting', 'a:5:{s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:9:\"copyright\";a:20:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";s:8:\"sitename\";s:27:\"微体验微信管理系统\";s:3:\"url\";s:21:\"http://www.wtiyan.com\";s:8:\"statcode\";s:0:\"\";s:10:\"footerleft\";s:21:\"powered by wdlcms.com\";s:11:\"footerright\";s:0:\"\";s:4:\"icon\";N;s:5:\"flogo\";s:0:\"\";s:5:\"blogo\";s:0:\"\";s:8:\"baidumap\";a:2:{s:3:\"lng\";s:0:\"\";s:3:\"lat\";s:0:\"\";}s:7:\"company\";s:0:\"\";s:7:\"address\";s:0:\"\";s:6:\"person\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:2:\"qq\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"keywords\";s:60:\"微体验,微信,微信公众平台,微信管理公众平台\";s:11:\"description\";s:60:\"微体验,微信,微信公众平台,微信管理公众平台\";s:12:\"showhomepage\";i:1;}s:5:\"basic\";a:1:{s:8:\"template\";s:7:\"default\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}}');
INSERT INTO `wty_core_cache` VALUES ('menus:platform', 'a:0:{}');
INSERT INTO `wty_core_cache` VALUES ('menus:site', 'a:0:{}');
INSERT INTO `wty_core_cache` VALUES ('modules', 'a:10:{s:5:\"basic\";a:17:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:22:\"http://www.wdlcms.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:4:\"news\";a:17:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:22:\"http://www.wdlcms.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:5:\"music\";a:17:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:22:\"http://www.wdlcms.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:7:\"userapi\";a:17:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:144:\"自定义接口又称第三方接口，可以让开发者更方便的接入微动力系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:22:\"http://www.wdlcms.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:8:\"recharge\";a:17:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:22:\"http://www.wdlcms.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:5:\"chats\";a:17:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:22:\"http://www.wdlcms.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:5:\"voice\";a:17:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:22:\"http://www.wdlcms.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:6:\"custom\";a:17:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:21:\"http://bbs.wdlcms.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:6:\"images\";a:17:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:22:\"http://www.wdlcms.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}s:5:\"video\";a:17:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供视频回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:11:\"Weizan Team\";s:3:\"url\";s:22:\"http://www.wdlcms.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:10:\"issolution\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";}}');
INSERT INTO `wty_core_cache` VALUES ('usersfields', 'a:51:{i:0;s:3:\"uid\";i:1;s:7:\"uniacid\";i:2;s:6:\"mobile\";i:3;s:5:\"email\";i:4;s:8:\"password\";i:5;s:4:\"salt\";i:6;s:7:\"groupid\";i:7;s:7:\"credit1\";i:8;s:7:\"credit2\";i:9;s:7:\"credit3\";i:10;s:7:\"credit4\";i:11;s:7:\"credit5\";i:12;s:10:\"createtime\";i:13;s:8:\"realname\";i:14;s:8:\"nickname\";i:15;s:6:\"avatar\";i:16;s:2:\"qq\";i:17;s:3:\"vip\";i:18;s:6:\"gender\";i:19;s:9:\"birthyear\";i:20;s:10:\"birthmonth\";i:21;s:8:\"birthday\";i:22;s:13:\"constellation\";i:23;s:6:\"zodiac\";i:24;s:9:\"telephone\";i:25;s:6:\"idcard\";i:26;s:9:\"studentid\";i:27;s:5:\"grade\";i:28;s:7:\"address\";i:29;s:7:\"zipcode\";i:30;s:11:\"nationality\";i:31;s:14:\"resideprovince\";i:32;s:10:\"residecity\";i:33;s:10:\"residedist\";i:34;s:14:\"graduateschool\";i:35;s:7:\"company\";i:36;s:9:\"education\";i:37;s:10:\"occupation\";i:38;s:8:\"position\";i:39;s:7:\"revenue\";i:40;s:15:\"affectivestatus\";i:41;s:10:\"lookingfor\";i:42;s:9:\"bloodtype\";i:43;s:6:\"height\";i:44;s:6:\"weight\";i:45;s:6:\"alipay\";i:46;s:3:\"msn\";i:47;s:6:\"taobao\";i:48;s:4:\"site\";i:49;s:3:\"bio\";i:50;s:8:\"interest\";}');

-- ----------------------------
-- Table structure for `wty_core_paylog`
-- ----------------------------
DROP TABLE IF EXISTS `wty_core_paylog`;
CREATE TABLE `wty_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT '',
  `uniacid` int(11) NOT NULL,
  `openid` varchar(40) NOT NULL DEFAULT '',
  `tid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `module` varchar(50) NOT NULL DEFAULT '',
  `tag` varchar(2000) NOT NULL DEFAULT '',
  `acid` int(10) unsigned NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  `createtime` varchar(64) NOT NULL,
  `eso_tag` varchar(2000) NOT NULL DEFAULT '',
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_core_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_core_performance`
-- ----------------------------
DROP TABLE IF EXISTS `wty_core_performance`;
CREATE TABLE `wty_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_core_performance
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_core_queue`
-- ----------------------------
DROP TABLE IF EXISTS `wty_core_queue`;
CREATE TABLE `wty_core_queue` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL DEFAULT '',
  `params` varchar(1000) NOT NULL DEFAULT '',
  `keyword` varchar(1000) NOT NULL DEFAULT '',
  `response` varchar(2000) NOT NULL DEFAULT '',
  `module` varchar(50) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_core_queue
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_core_resource`
-- ----------------------------
DROP TABLE IF EXISTS `wty_core_resource`;
CREATE TABLE `wty_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `acid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_core_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_core_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `wty_core_sessions`;
CREATE TABLE `wty_core_sessions` (
  `sid` char(32) NOT NULL DEFAULT '',
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_core_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_core_settings`
-- ----------------------------
DROP TABLE IF EXISTS `wty_core_settings`;
CREATE TABLE `wty_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_core_settings
-- ----------------------------
INSERT INTO `wty_core_settings` VALUES ('authmode', 'i:1;');
INSERT INTO `wty_core_settings` VALUES ('close', 'a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}');
INSERT INTO `wty_core_settings` VALUES ('copyright', 'a:20:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";s:8:\"sitename\";s:27:\"微体验微信管理系统\";s:3:\"url\";s:21:\"http://www.wtiyan.com\";s:8:\"statcode\";s:0:\"\";s:10:\"footerleft\";s:21:\"powered by wdlcms.com\";s:11:\"footerright\";s:0:\"\";s:4:\"icon\";N;s:5:\"flogo\";s:0:\"\";s:5:\"blogo\";s:0:\"\";s:8:\"baidumap\";a:2:{s:3:\"lng\";s:0:\"\";s:3:\"lat\";s:0:\"\";}s:7:\"company\";s:0:\"\";s:7:\"address\";s:0:\"\";s:6:\"person\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:2:\"qq\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"keywords\";s:60:\"微体验,微信,微信公众平台,微信管理公众平台\";s:11:\"description\";s:60:\"微体验,微信,微信公众平台,微信管理公众平台\";s:12:\"showhomepage\";i:1;}');
INSERT INTO `wty_core_settings` VALUES ('basic', 'a:1:{s:8:\"template\";s:7:\"default\";}');
INSERT INTO `wty_core_settings` VALUES ('register', 'a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}');

-- ----------------------------
-- Table structure for `wty_core_wechats_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `wty_core_wechats_attachment`;
CREATE TABLE `wty_core_wechats_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `type` varchar(15) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_core_wechats_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `wty_coupon`;
CREATE TABLE `wty_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `logo_url` varchar(150) NOT NULL,
  `code_type` tinyint(3) unsigned NOT NULL,
  `brand_name` varchar(15) NOT NULL,
  `title` varchar(15) NOT NULL,
  `sub_title` varchar(20) NOT NULL,
  `color` varchar(15) NOT NULL,
  `notice` varchar(15) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_info` varchar(200) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `location_id_list` varchar(1000) NOT NULL,
  `use_custom_code` tinyint(3) NOT NULL,
  `bind_openid` tinyint(3) unsigned NOT NULL,
  `can_share` tinyint(3) unsigned NOT NULL,
  `can_give_friend` tinyint(3) unsigned NOT NULL,
  `get_limit` tinyint(3) unsigned NOT NULL,
  `service_phone` varchar(20) NOT NULL,
  `extra` varchar(1000) NOT NULL,
  `source` varchar(20) NOT NULL,
  `url_name_type` varchar(20) NOT NULL,
  `custom_url` varchar(100) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_coupon_location`
-- ----------------------------
DROP TABLE IF EXISTS `wty_coupon_location`;
CREATE TABLE `wty_coupon_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_coupon_location
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_coupon_modules`
-- ----------------------------
DROP TABLE IF EXISTS `wty_coupon_modules`;
CREATE TABLE `wty_coupon_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `module` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `card_id` (`card_id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_coupon_modules
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_coupon_record`
-- ----------------------------
DROP TABLE IF EXISTS `wty_coupon_record`;
CREATE TABLE `wty_coupon_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `outer_id` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `friend_openid` varchar(50) NOT NULL,
  `givebyfriend` tinyint(3) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `usetime` int(10) unsigned NOT NULL,
  `status` tinyint(3) NOT NULL,
  `clerk_name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `outer_id` (`outer_id`),
  KEY `card_id` (`card_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_coupon_record
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_coupon_setting`
-- ----------------------------
DROP TABLE IF EXISTS `wty_coupon_setting`;
CREATE TABLE `wty_coupon_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) NOT NULL,
  `logourl` varchar(150) NOT NULL,
  `whitelist` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_coupon_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_cover_reply`
-- ----------------------------
DROP TABLE IF EXISTS `wty_cover_reply`;
CREATE TABLE `wty_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL DEFAULT '0',
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL DEFAULT '',
  `do` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_cover_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_custom_reply`
-- ----------------------------
DROP TABLE IF EXISTS `wty_custom_reply`;
CREATE TABLE `wty_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL DEFAULT '-1',
  `end1` int(10) NOT NULL DEFAULT '-1',
  `start2` int(10) NOT NULL DEFAULT '-1',
  `end2` int(10) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_custom_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_images_reply`
-- ----------------------------
DROP TABLE IF EXISTS `wty_images_reply`;
CREATE TABLE `wty_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_images_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_mc_card`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mc_card`;
CREATE TABLE `wty_mc_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `color` varchar(255) NOT NULL DEFAULT '',
  `background` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `format` varchar(50) NOT NULL DEFAULT '',
  `fields` varchar(1000) NOT NULL DEFAULT '',
  `snpos` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `business` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mc_card
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_mc_card_members`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mc_card_members`;
CREATE TABLE `wty_mc_card_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `cid` int(10) NOT NULL DEFAULT '0',
  `cardsn` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mc_card_members
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_mc_chats_record`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mc_chats_record`;
CREATE TABLE `wty_mc_chats_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `openid` (`openid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mc_chats_record
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_mc_credits_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mc_credits_recharge`;
CREATE TABLE `wty_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `tid` varchar(20) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mc_credits_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_mc_credits_record`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mc_credits_record`;
CREATE TABLE `wty_mc_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL DEFAULT '',
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mc_credits_record
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_mc_fans_groups`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mc_fans_groups`;
CREATE TABLE `wty_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mc_fans_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_mc_groups`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mc_groups`;
CREATE TABLE `wty_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL DEFAULT '',
  `orderlist` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mc_groups
-- ----------------------------
INSERT INTO `wty_mc_groups` VALUES ('2', '2', '默认会员组', '0', '1');

-- ----------------------------
-- Table structure for `wty_mc_handsel`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mc_handsel`;
CREATE TABLE `wty_mc_handsel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`touid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mc_handsel
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_mc_mapping_fans`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mc_mapping_fans`;
CREATE TABLE `wty_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `salt` char(8) NOT NULL DEFAULT '',
  `follow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fanid`),
  KEY `acid` (`acid`),
  KEY `uniacid` (`uniacid`),
  KEY `openid` (`openid`),
  KEY `updatetime` (`updatetime`),
  KEY `nickname` (`nickname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mc_mapping_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_mc_mapping_ucenter`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mc_mapping_ucenter`;
CREATE TABLE `wty_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mc_mapping_ucenter
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_mc_mass_record`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mc_mass_record`;
CREATE TABLE `wty_mc_mass_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mc_mass_record
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_mc_members`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mc_members`;
CREATE TABLE `wty_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `groupid` int(11) NOT NULL DEFAULT '0',
  `credit1` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `credit2` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `credit3` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `credit4` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `credit5` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL DEFAULT '',
  `nickname` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '',
  `vip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `birthyear` smallint(6) unsigned NOT NULL DEFAULT '0',
  `birthmonth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `birthday` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `constellation` varchar(10) NOT NULL DEFAULT '',
  `zodiac` varchar(5) NOT NULL DEFAULT '',
  `telephone` varchar(15) NOT NULL DEFAULT '',
  `idcard` varchar(30) NOT NULL DEFAULT '',
  `studentid` varchar(50) NOT NULL DEFAULT '',
  `grade` varchar(10) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(10) NOT NULL DEFAULT '',
  `nationality` varchar(30) NOT NULL DEFAULT '',
  `resideprovince` varchar(30) NOT NULL DEFAULT '',
  `residecity` varchar(30) NOT NULL DEFAULT '',
  `residedist` varchar(30) NOT NULL DEFAULT '',
  `graduateschool` varchar(50) NOT NULL DEFAULT '',
  `company` varchar(50) NOT NULL DEFAULT '',
  `education` varchar(10) NOT NULL DEFAULT '',
  `occupation` varchar(30) NOT NULL DEFAULT '',
  `position` varchar(30) NOT NULL DEFAULT '',
  `revenue` varchar(10) NOT NULL DEFAULT '',
  `affectivestatus` varchar(30) NOT NULL DEFAULT '',
  `lookingfor` varchar(255) NOT NULL DEFAULT '',
  `bloodtype` varchar(5) NOT NULL DEFAULT '',
  `height` varchar(5) NOT NULL DEFAULT '',
  `weight` varchar(5) NOT NULL DEFAULT '',
  `alipay` varchar(30) NOT NULL DEFAULT '',
  `msn` varchar(30) NOT NULL DEFAULT '',
  `taobao` varchar(30) NOT NULL DEFAULT '',
  `site` varchar(30) NOT NULL DEFAULT '',
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groupid` (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mc_members
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_mc_member_address`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mc_member_address`;
CREATE TABLE `wty_mc_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mc_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_mc_member_fields`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mc_member_fields`;
CREATE TABLE `wty_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_fieldid` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mc_member_fields
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_mc_oauth_fans`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mc_oauth_fans`;
CREATE TABLE `wty_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mc_oauth_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_menu_event`
-- ----------------------------
DROP TABLE IF EXISTS `wty_menu_event`;
CREATE TABLE `wty_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_menu_event
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_mobilenumber`
-- ----------------------------
DROP TABLE IF EXISTS `wty_mobilenumber`;
CREATE TABLE `wty_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateline` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_mobilenumber
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_modules`
-- ----------------------------
DROP TABLE IF EXISTS `wty_modules`;
CREATE TABLE `wty_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '',
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL DEFAULT '0',
  `subscribes` varchar(500) NOT NULL DEFAULT '',
  `handles` varchar(500) NOT NULL DEFAULT '',
  `isrulefields` tinyint(1) NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issolution` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `target` int(10) unsigned NOT NULL DEFAULT '0',
  `iscard` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`),
  KEY `idx_issystem` (`issystem`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_modules
-- ----------------------------
INSERT INTO `wty_modules` VALUES ('1', 'basic', 'system', '基本文字回复', '1.0', '和您进行简单对话', '一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.', 'Weizan Team', 'http://www.wdlcms.com/', '0', '', '', '1', '1', '0', '0', '0');
INSERT INTO `wty_modules` VALUES ('2', 'news', 'system', '基本混合图文回复', '1.0', '为你提供生动的图文资讯', '一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.', 'Weizan Team', 'http://www.wdlcms.com/', '0', '', '', '1', '1', '0', '0', '0');
INSERT INTO `wty_modules` VALUES ('3', 'music', 'system', '基本音乐回复', '1.0', '提供语音、音乐等音频类回复', '在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。', 'Weizan Team', 'http://www.wdlcms.com/', '0', '', '', '1', '1', '0', '0', '0');
INSERT INTO `wty_modules` VALUES ('4', 'userapi', 'system', '自定义接口回复', '1.1', '更方便的第三方接口设置', '自定义接口又称第三方接口，可以让开发者更方便的接入微动力系统，高效的与微信公众平台进行对接整合。', 'Weizan Team', 'http://www.wdlcms.com/', '0', '', '', '1', '1', '0', '0', '0');
INSERT INTO `wty_modules` VALUES ('5', 'recharge', 'system', '会员中心充值模块', '1.0', '提供会员充值功能', '', 'Weizan Team', 'http://www.wdlcms.com/', '0', '', '', '0', '1', '0', '0', '0');
INSERT INTO `wty_modules` VALUES ('6', 'chats', 'system', '发送客服消息', '1.0', '公众号可以在粉丝最后发送消息的48小时内无限制发送消息', '', 'Weizan Team', 'http://www.wdlcms.com/', '0', '', '', '0', '1', '0', '0', '0');
INSERT INTO `wty_modules` VALUES ('7', 'voice', 'system', '基本语音回复', '1.0', '提供语音回复', '在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。', 'Weizan Team', 'http://www.wdlcms.com/', '0', '', '', '1', '1', '0', '0', '0');
INSERT INTO `wty_modules` VALUES ('9', 'images', 'system', '基本图片回复', '1.0', '提供图片回复', '在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。', 'Weizan Team', 'http://www.wdlcms.com/', '0', '', '', '1', '1', '0', '0', '0');
INSERT INTO `wty_modules` VALUES ('10', 'video', 'system', '基本视频回复', '1.0', '提供视频回复', '在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。', 'Weizan Team', 'http://www.wdlcms.com/', '0', '', '', '1', '1', '0', '0', '0');
INSERT INTO `wty_modules` VALUES ('8', 'custom', 'system', '多客服转接', '1.0.0', '用来接入腾讯的多客服系统', '', 'Weizan Team', 'http://bbs.wdlcms.com', '0', 'a:0:{}', 'a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}', '1', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for `wty_modules_bindings`
-- ----------------------------
DROP TABLE IF EXISTS `wty_modules_bindings`;
CREATE TABLE `wty_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) NOT NULL DEFAULT '',
  `entry` varchar(10) NOT NULL DEFAULT '',
  `call` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL,
  `do` varchar(30) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_modules_bindings
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_music_reply`
-- ----------------------------
DROP TABLE IF EXISTS `wty_music_reply`;
CREATE TABLE `wty_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(300) NOT NULL DEFAULT '',
  `hqurl` varchar(300) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_music_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_news_reply`
-- ----------------------------
DROP TABLE IF EXISTS `wty_news_reply`;
CREATE TABLE `wty_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(64) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_news_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_profile_fields`
-- ----------------------------
DROP TABLE IF EXISTS `wty_profile_fields`;
CREATE TABLE `wty_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `unchangeable` tinyint(1) NOT NULL DEFAULT '0',
  `showinregister` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_profile_fields
-- ----------------------------
INSERT INTO `wty_profile_fields` VALUES ('1', 'realname', '1', '真实姓名', '', '0', '1', '1', '1');
INSERT INTO `wty_profile_fields` VALUES ('2', 'nickname', '1', '昵称', '', '1', '1', '0', '1');
INSERT INTO `wty_profile_fields` VALUES ('3', 'avatar', '1', '头像', '', '1', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('4', 'qq', '1', 'QQ号', '', '0', '0', '0', '1');
INSERT INTO `wty_profile_fields` VALUES ('5', 'mobile', '1', '手机号码', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('6', 'vip', '1', 'VIP级别', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('7', 'gender', '1', '性别', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('8', 'birthyear', '1', '出生生日', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('9', 'constellation', '1', '星座', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('10', 'zodiac', '1', '生肖', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('11', 'telephone', '1', '固定电话', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('12', 'idcard', '1', '证件号码', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('13', 'studentid', '1', '学号', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('14', 'grade', '1', '班级', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('15', 'address', '1', '邮寄地址', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('16', 'zipcode', '1', '邮编', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('17', 'nationality', '1', '国籍', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('18', 'resideprovince', '1', '居住地址', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('19', 'graduateschool', '1', '毕业学校', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('20', 'company', '1', '公司', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('21', 'education', '1', '学历', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('22', 'occupation', '1', '职业', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('23', 'position', '1', '职位', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('24', 'revenue', '1', '年收入', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('25', 'affectivestatus', '1', '情感状态', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('26', 'lookingfor', '1', ' 交友目的', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('27', 'bloodtype', '1', '血型', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('28', 'height', '1', '身高', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('29', 'weight', '1', '体重', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('30', 'alipay', '1', '支付宝帐号', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('31', 'msn', '1', 'MSN', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('32', 'email', '1', '电子邮箱', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('33', 'taobao', '1', '阿里旺旺', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('34', 'site', '1', '主页', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('35', 'bio', '1', '自我介绍', '', '0', '0', '0', '0');
INSERT INTO `wty_profile_fields` VALUES ('36', 'interest', '1', '兴趣爱好', '', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `wty_qrcode`
-- ----------------------------
DROP TABLE IF EXISTS `wty_qrcode`;
CREATE TABLE `wty_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL DEFAULT '0',
  `qrcid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ticket` varchar(250) NOT NULL DEFAULT '',
  `expire` int(10) unsigned NOT NULL DEFAULT '0',
  `subnum` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `url` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_qrcode_stat`
-- ----------------------------
DROP TABLE IF EXISTS `wty_qrcode_stat`;
CREATE TABLE `wty_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `qrcid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_qrcode_stat
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_rule`
-- ----------------------------
DROP TABLE IF EXISTS `wty_rule`;
CREATE TABLE `wty_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_rule
-- ----------------------------
INSERT INTO `wty_rule` VALUES ('1', '0', '城市天气', 'userapi', '255', '1');
INSERT INTO `wty_rule` VALUES ('2', '0', '百度百科', 'userapi', '255', '1');
INSERT INTO `wty_rule` VALUES ('3', '0', '即时翻译', 'userapi', '255', '1');
INSERT INTO `wty_rule` VALUES ('4', '0', '今日老黄历', 'userapi', '255', '1');
INSERT INTO `wty_rule` VALUES ('5', '0', '看新闻', 'userapi', '255', '1');
INSERT INTO `wty_rule` VALUES ('6', '0', '快递查询', 'userapi', '255', '1');

-- ----------------------------
-- Table structure for `wty_rule_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `wty_rule_keyword`;
CREATE TABLE `wty_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`),
  KEY `idx_rid` (`rid`),
  KEY `idx_uniacid_type_content` (`uniacid`,`type`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_rule_keyword
-- ----------------------------
INSERT INTO `wty_rule_keyword` VALUES ('1', '1', '0', 'userapi', '^.+天气$', '3', '255', '1');
INSERT INTO `wty_rule_keyword` VALUES ('2', '2', '0', 'userapi', '^百科.+$', '3', '255', '1');
INSERT INTO `wty_rule_keyword` VALUES ('3', '2', '0', 'userapi', '^定义.+$', '3', '255', '1');
INSERT INTO `wty_rule_keyword` VALUES ('4', '3', '0', 'userapi', '^@.+$', '3', '255', '1');
INSERT INTO `wty_rule_keyword` VALUES ('5', '4', '0', 'userapi', '日历', '1', '255', '1');
INSERT INTO `wty_rule_keyword` VALUES ('6', '4', '0', 'userapi', '万年历', '1', '255', '1');
INSERT INTO `wty_rule_keyword` VALUES ('7', '4', '0', 'userapi', '黄历', '1', '255', '1');
INSERT INTO `wty_rule_keyword` VALUES ('8', '4', '0', 'userapi', '几号', '1', '255', '1');
INSERT INTO `wty_rule_keyword` VALUES ('9', '5', '0', 'userapi', '新闻', '1', '255', '1');
INSERT INTO `wty_rule_keyword` VALUES ('10', '6', '0', 'userapi', '^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$', '3', '255', '1');

-- ----------------------------
-- Table structure for `wty_site_article`
-- ----------------------------
DROP TABLE IF EXISTS `wty_site_article`;
CREATE TABLE `wty_site_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL DEFAULT '0',
  `ishot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pcate` int(10) unsigned NOT NULL DEFAULT '0',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0',
  `template` varchar(300) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(500) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `credit` varchar(255) NOT NULL DEFAULT '',
  `incontent` tinyint(1) NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_site_article
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_site_category`
-- ----------------------------
DROP TABLE IF EXISTS `wty_site_category`;
CREATE TABLE `wty_site_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `icon` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `template` varchar(300) NOT NULL DEFAULT '',
  `styleid` int(10) unsigned NOT NULL,
  `templatefile` varchar(100) NOT NULL DEFAULT '',
  `linkurl` varchar(500) NOT NULL DEFAULT '',
  `ishomepage` tinyint(1) NOT NULL DEFAULT '0',
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_site_category
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_site_multi`
-- ----------------------------
DROP TABLE IF EXISTS `wty_site_multi`;
CREATE TABLE `wty_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `quickmenu` varchar(2000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_site_multi
-- ----------------------------
INSERT INTO `wty_site_multi` VALUES ('2', '2', 'qq', '2', '', 'a:2:{s:8:\"template\";s:7:\"default\";s:12:\"enablemodule\";a:0:{}}', '1', '');

-- ----------------------------
-- Table structure for `wty_site_nav`
-- ----------------------------
DROP TABLE IF EXISTS `wty_site_nav`;
CREATE TABLE `wty_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(50) NOT NULL DEFAULT '',
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL DEFAULT '',
  `position` tinyint(4) NOT NULL DEFAULT '1',
  `url` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(500) NOT NULL DEFAULT '',
  `css` varchar(1000) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_site_nav
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_site_slide`
-- ----------------------------
DROP TABLE IF EXISTS `wty_site_slide`;
CREATE TABLE `wty_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `displayorder` tinyint(4) NOT NULL DEFAULT '0',
  `multiid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_site_slide
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_site_styles`
-- ----------------------------
DROP TABLE IF EXISTS `wty_site_styles`;
CREATE TABLE `wty_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_site_styles
-- ----------------------------
INSERT INTO `wty_site_styles` VALUES ('2', '2', '1', '微站默认模板_I8sv');

-- ----------------------------
-- Table structure for `wty_site_styles_vars`
-- ----------------------------
DROP TABLE IF EXISTS `wty_site_styles_vars`;
CREATE TABLE `wty_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_site_styles_vars
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_site_templates`
-- ----------------------------
DROP TABLE IF EXISTS `wty_site_templates`;
CREATE TABLE `wty_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(30) NOT NULL,
  `description` varchar(500) NOT NULL DEFAULT '',
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `sections` int(10) unsigned NOT NULL,
  `version` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_site_templates
-- ----------------------------
INSERT INTO `wty_site_templates` VALUES ('1', 'default', '微站默认模板', '由微动力提供默认微站模板套系', '微动力团队', 'http://wdlcms.com', '1', '0', '');

-- ----------------------------
-- Table structure for `wty_solution_acl`
-- ----------------------------
DROP TABLE IF EXISTS `wty_solution_acl`;
CREATE TABLE `wty_solution_acl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `module` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `eid` int(10) unsigned NOT NULL DEFAULT '0',
  `do` varchar(255) NOT NULL,
  `state` varchar(1000) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_eid` (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_solution_acl
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_stat_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `wty_stat_keyword`;
CREATE TABLE `wty_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_stat_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_stat_msg_history`
-- ----------------------------
DROP TABLE IF EXISTS `wty_stat_msg_history`;
CREATE TABLE `wty_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_stat_msg_history
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_stat_rule`
-- ----------------------------
DROP TABLE IF EXISTS `wty_stat_rule`;
CREATE TABLE `wty_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_stat_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_uni_account`
-- ----------------------------
DROP TABLE IF EXISTS `wty_uni_account`;
CREATE TABLE `wty_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_uni_account
-- ----------------------------
INSERT INTO `wty_uni_account` VALUES ('2', '1', 'qq', '');

-- ----------------------------
-- Table structure for `wty_uni_account_modules`
-- ----------------------------
DROP TABLE IF EXISTS `wty_uni_account_modules`;
CREATE TABLE `wty_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_uni_account_modules
-- ----------------------------
INSERT INTO `wty_uni_account_modules` VALUES ('9', '2', 'userapi', '1', '');
INSERT INTO `wty_uni_account_modules` VALUES ('8', '2', 'music', '1', '');
INSERT INTO `wty_uni_account_modules` VALUES ('7', '2', 'news', '1', '');
INSERT INTO `wty_uni_account_modules` VALUES ('6', '2', 'basic', '1', '');
INSERT INTO `wty_uni_account_modules` VALUES ('10', '2', 'recharge', '1', '');
INSERT INTO `wty_uni_account_modules` VALUES ('11', '2', 'chats', '1', '');
INSERT INTO `wty_uni_account_modules` VALUES ('12', '2', 'voice', '1', '');
INSERT INTO `wty_uni_account_modules` VALUES ('13', '2', 'custom', '1', '');
INSERT INTO `wty_uni_account_modules` VALUES ('14', '2', 'images', '1', '');
INSERT INTO `wty_uni_account_modules` VALUES ('15', '2', 'video', '1', '');

-- ----------------------------
-- Table structure for `wty_uni_account_users`
-- ----------------------------
DROP TABLE IF EXISTS `wty_uni_account_users`;
CREATE TABLE `wty_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_uni_account_users
-- ----------------------------
INSERT INTO `wty_uni_account_users` VALUES ('2', '2', '2', 'manager');

-- ----------------------------
-- Table structure for `wty_uni_group`
-- ----------------------------
DROP TABLE IF EXISTS `wty_uni_group`;
CREATE TABLE `wty_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `modules` varchar(5000) NOT NULL DEFAULT '',
  `templates` varchar(5000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_uni_group
-- ----------------------------
INSERT INTO `wty_uni_group` VALUES ('1', '体验套餐服务', 'N;', 'N;');

-- ----------------------------
-- Table structure for `wty_uni_settings`
-- ----------------------------
DROP TABLE IF EXISTS `wty_uni_settings`;
CREATE TABLE `wty_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL DEFAULT '',
  `oauth` varchar(100) NOT NULL DEFAULT '',
  `uc` varchar(500) NOT NULL,
  `notify` varchar(2000) NOT NULL DEFAULT '',
  `creditnames` varchar(500) NOT NULL DEFAULT '',
  `creditbehaviors` varchar(500) NOT NULL DEFAULT '',
  `welcome` varchar(60) NOT NULL DEFAULT '',
  `default` varchar(60) NOT NULL DEFAULT '',
  `default_message` varchar(1000) NOT NULL DEFAULT '',
  `shortcuts` varchar(5000) NOT NULL DEFAULT '',
  `payment` varchar(2000) NOT NULL DEFAULT '',
  `groupdata` varchar(100) NOT NULL,
  `stat` varchar(300) NOT NULL,
  `bootstrap` varchar(120) NOT NULL,
  `menuset` text NOT NULL,
  `default_site` int(10) unsigned DEFAULT '0',
  `sync` varchar(100) NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_uni_settings
-- ----------------------------
INSERT INTO `wty_uni_settings` VALUES ('2', '', '', '', 'a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}', 'a:2:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}}', 'a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}', '', '', '', '', '', 'a:3:{s:8:\"isexpire\";i:0;s:10:\"oldgroupid\";s:0:\"\";s:7:\"endtime\";i:1451120170;}', '', '', '', '2', 'a:2:{s:6:\"switch\";i:0;s:4:\"acid\";s:0:\"\";}', '0');

-- ----------------------------
-- Table structure for `wty_uni_verifycode`
-- ----------------------------
DROP TABLE IF EXISTS `wty_uni_verifycode`;
CREATE TABLE `wty_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_uni_verifycode
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_userapi_cache`
-- ----------------------------
DROP TABLE IF EXISTS `wty_userapi_cache`;
CREATE TABLE `wty_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_userapi_cache
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_userapi_reply`
-- ----------------------------
DROP TABLE IF EXISTS `wty_userapi_reply`;
CREATE TABLE `wty_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL DEFAULT '',
  `apiurl` varchar(300) NOT NULL DEFAULT '',
  `token` varchar(32) NOT NULL DEFAULT '',
  `default_text` varchar(100) NOT NULL DEFAULT '',
  `cachetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_userapi_reply
-- ----------------------------
INSERT INTO `wty_userapi_reply` VALUES ('1', '1', '\"城市名+天气\", 如: \"北京天气\"', 'weather.php', '', '', '0');
INSERT INTO `wty_userapi_reply` VALUES ('2', '2', '\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"', 'baike.php', '', '', '0');
INSERT INTO `wty_userapi_reply` VALUES ('3', '3', '\"@查询内容(中文或英文)\"', 'translate.php', '', '', '0');
INSERT INTO `wty_userapi_reply` VALUES ('4', '4', '\"日历\", \"万年历\", \"黄历\"或\"几号\"', 'calendar.php', '', '', '0');
INSERT INTO `wty_userapi_reply` VALUES ('5', '5', '\"新闻\"', 'news.php', '', '', '0');
INSERT INTO `wty_userapi_reply` VALUES ('6', '6', '\"快递+单号\", 如: \"申通1200041125\"', 'express.php', '', '', '0');

-- ----------------------------
-- Table structure for `wty_users`
-- ----------------------------
DROP TABLE IF EXISTS `wty_users`;
CREATE TABLE `wty_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `joindate` int(10) unsigned NOT NULL DEFAULT '0',
  `joinip` varchar(15) NOT NULL DEFAULT '',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(15) NOT NULL DEFAULT '',
  `remark` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_users
-- ----------------------------
INSERT INTO `wty_users` VALUES ('1', '0', 'wtiadmin', '6d9a41eb23930ca535b660944944e80f4c146662', 'ef54e0d9', '0', '1450148060', '', '1451445202', '127.0.0.1', '');
INSERT INTO `wty_users` VALUES ('2', '1', 'lijie', '9ea47f37e91f2d16788c1e2c61711ebf337e41f1', 'PlKX22h2', '2', '1451120082', '127.0.0.1', '1451120094', '127.0.0.1', '');

-- ----------------------------
-- Table structure for `wty_users_group`
-- ----------------------------
DROP TABLE IF EXISTS `wty_users_group`;
CREATE TABLE `wty_users_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL DEFAULT '',
  `maxaccount` int(10) unsigned NOT NULL DEFAULT '0',
  `maxsubaccount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_users_group
-- ----------------------------
INSERT INTO `wty_users_group` VALUES ('1', '体验用户组', 'a:1:{i:0;i:1;}', '1', '1');
INSERT INTO `wty_users_group` VALUES ('2', '白金用户组', 'a:1:{i:0;i:1;}', '2', '2');
INSERT INTO `wty_users_group` VALUES ('3', '黄金用户组', 'a:1:{i:0;i:1;}', '3', '3');

-- ----------------------------
-- Table structure for `wty_users_invitation`
-- ----------------------------
DROP TABLE IF EXISTS `wty_users_invitation`;
CREATE TABLE `wty_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_users_invitation
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_users_permission`
-- ----------------------------
DROP TABLE IF EXISTS `wty_users_permission`;
CREATE TABLE `wty_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_users_permission
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_users_profile`
-- ----------------------------
DROP TABLE IF EXISTS `wty_users_profile`;
CREATE TABLE `wty_users_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL DEFAULT '',
  `nickname` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(100) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(11) NOT NULL DEFAULT '',
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `birthyear` smallint(6) unsigned NOT NULL DEFAULT '0',
  `birthmonth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `birthday` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `constellation` varchar(10) NOT NULL DEFAULT '',
  `zodiac` varchar(5) NOT NULL DEFAULT '',
  `telephone` varchar(15) NOT NULL DEFAULT '',
  `idcard` varchar(30) NOT NULL DEFAULT '',
  `studentid` varchar(50) NOT NULL DEFAULT '',
  `grade` varchar(10) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(10) NOT NULL DEFAULT '',
  `nationality` varchar(30) NOT NULL DEFAULT '',
  `resideprovince` varchar(30) NOT NULL DEFAULT '',
  `residecity` varchar(30) NOT NULL DEFAULT '',
  `residedist` varchar(30) NOT NULL DEFAULT '',
  `graduateschool` varchar(50) NOT NULL DEFAULT '',
  `company` varchar(50) NOT NULL DEFAULT '',
  `education` varchar(10) NOT NULL DEFAULT '',
  `occupation` varchar(30) NOT NULL DEFAULT '',
  `position` varchar(30) NOT NULL DEFAULT '',
  `revenue` varchar(10) NOT NULL DEFAULT '',
  `affectivestatus` varchar(30) NOT NULL DEFAULT '',
  `lookingfor` varchar(255) NOT NULL DEFAULT '',
  `bloodtype` varchar(5) NOT NULL DEFAULT '',
  `height` varchar(5) NOT NULL DEFAULT '',
  `weight` varchar(5) NOT NULL DEFAULT '',
  `alipay` varchar(30) NOT NULL DEFAULT '',
  `msn` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `taobao` varchar(30) NOT NULL DEFAULT '',
  `site` varchar(30) NOT NULL DEFAULT '',
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_users_profile
-- ----------------------------
INSERT INTO `wty_users_profile` VALUES ('1', '2', '1451120082', 'lijie', 'lijie', '', '', '', '', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `wty_video_reply`
-- ----------------------------
DROP TABLE IF EXISTS `wty_video_reply`;
CREATE TABLE `wty_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_video_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `wty_voice_reply`
-- ----------------------------
DROP TABLE IF EXISTS `wty_voice_reply`;
CREATE TABLE `wty_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`),
  KEY `rid_2` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wty_voice_reply
-- ----------------------------
