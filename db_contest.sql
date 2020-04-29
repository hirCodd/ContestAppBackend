/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : db_contest

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-04-30 00:48:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_about
-- ----------------------------
DROP TABLE IF EXISTS `tb_about`;
CREATE TABLE `tb_about` (
  `id` int(11) NOT NULL,
  `about_content` longtext COLLATE utf8mb4_unicode_ci,
  `insert_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_about
-- ----------------------------
INSERT INTO `tb_about` VALUES ('1', 'hhhhhhhhhhhhhhhhhhhhhh', null);

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'admin', '6f1ed89a844187717dafa45b6eab5a3e', '超级管理员');

-- ----------------------------
-- Table structure for tb_contest
-- ----------------------------
DROP TABLE IF EXISTS `tb_contest`;
CREATE TABLE `tb_contest` (
  `contest_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `contest_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '比赛名称',
  `author` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '作者',
  `contest_apply_time` datetime DEFAULT NULL COMMENT '比赛介绍',
  `contest_apply_end_time` datetime DEFAULT NULL COMMENT '报名截止时间',
  `contest_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '比赛地址',
  `contact_user` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'l联系人',
  `contact_phone` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系人电话',
  `contest_start_time` datetime DEFAULT NULL COMMENT '比赛开始时间',
  `contest_end_time` datetime DEFAULT NULL COMMENT '比赛结束时间',
  `contest_cooperation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '比赛合作方',
  `contest_introduce` text COLLATE utf8mb4_unicode_ci COMMENT '比赛介绍',
  `contest_reward` text COLLATE utf8mb4_unicode_ci COMMENT '比赛奖励',
  `contest_apply_rule` text COLLATE utf8mb4_unicode_ci COMMENT '报名规则',
  `contest_process` text COLLATE utf8mb4_unicode_ci COMMENT '比赛流程',
  `contest_info` text COLLATE utf8mb4_unicode_ci COMMENT '比赛说明',
  `contest_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '缩略图',
  `publish_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `insert_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`contest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_contest
-- ----------------------------
INSERT INTO `tb_contest` VALUES ('4', '王者荣耀比赛V1', 'admin', '2020-03-11 12:00:00', '2020-03-18 12:00:00', '线上', 'tony海航', '18829928422', '2020-03-16 17:00:00', '2020-03-23 17:00:00', '腾讯游戏', '<p>比赛说明</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛时间为周二、四、六的19：00；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 在对战表公布后，队长自行联系对手并约战；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 赛事官方每天随机抽取3-4队观战进行实况直播；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. 比赛采用BO1征兆模式，英雄、皮肤、铭文选择无限制。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;结果上传</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛结束后，获胜方需前往触手王者荣耀校园赛首页，点击“参加比赛”-“赛果上传”，将结算界面截图上传等待官方工作人员人工审核。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 审核通过后，将获得系统信件消息通知。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 未上传赛果截图或有其他特殊情况，官方有权判定比赛无效。</p>', '<p>比赛说明</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛时间为周二、四、六的19：00；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 在对战表公布后，队长自行联系对手并约战；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 赛事官方每天随机抽取3-4队观战进行实况直播；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. 比赛采用BO1征兆模式，英雄、皮肤、铭文选择无限制。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;结果上传</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛结束后，获胜方需前往触手王者荣耀校园赛首页，点击“参加比赛”-“赛果上传”，将结算界面截图上传等待官方工作人员人工审核。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 审核通过后，将获得系统信件消息通知。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 未上传赛果截图或有其他特殊情况，官方有权判定比赛无效。</p>', '<p>比赛说明</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛时间为周二、四、六的19：00；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 在对战表公布后，队长自行联系对手并约战；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 赛事官方每天随机抽取3-4队观战进行实况直播；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. 比赛采用BO1征兆模式，英雄、皮肤、铭文选择无限制。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;结果上传</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛结束后，获胜方需前往触手王者荣耀校园赛首页，点击“参加比赛”-“赛果上传”，将结算界面截图上传等待官方工作人员人工审核。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 审核通过后，将获得系统信件消息通知。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 未上传赛果截图或有其他特殊情况，官方有权判定比赛无效。</p>', '<p>比赛说明</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛时间为周二、四、六的19：00；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 在对战表公布后，队长自行联系对手并约战；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 赛事官方每天随机抽取3-4队观战进行实况直播；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. 比赛采用BO1征兆模式，英雄、皮肤、铭文选择无限制。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;结果上传</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛结束后，获胜方需前往触手王者荣耀校园赛首页，点击“参加比赛”-“赛果上传”，将结算界面截图上传等待官方工作人员人工审核。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 审核通过后，将获得系统信件消息通知。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 未上传赛果截图或有其他特殊情况，官方有权判定比赛无效。</p>', '<p>比赛说明</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛时间为周二、四、六的19：00；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 在对战表公布后，队长自行联系对手并约战；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 赛事官方每天随机抽取3-4队观战进行实况直播；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. 比赛采用BO1征兆模式，英雄、皮肤、铭文选择无限制。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;结果上传</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛结束后，获胜方需前往触手王者荣耀校园赛首页，点击“参加比赛”-“赛果上传”，将结算界面截图上传等待官方工作人员人工审核。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 审核通过后，将获得系统信件消息通知。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 未上传赛果截图或有其他特殊情况，官方有权判定比赛无效。</p>', 'http://localhost:8090/images/20200305_214437_8b6b2ca8-b657-4770-872d-43541b682c3c.jpg', '2020-03-10 23:32:55', '2020-03-10 23:32:55', '2020-03-10 23:32:55');
INSERT INTO `tb_contest` VALUES ('5', '英雄联盟比赛', 'admin', '2020-03-06 12:00:00', '2020-03-09 23:02:54', '线上', '老王', '18829928422', '2020-03-17 23:03:07', '2020-03-27 23:03:07', '腾讯游戏', '<p>比赛说明</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛时间为周二、四、六的19：00；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 在对战表公布后，队长自行联系对手并约战；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 赛事官方每天随机抽取3-4队观战进行实况直播；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. 比赛采用BO1征兆模式，英雄、皮肤、铭文选择无限制。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;结果上传</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛结束后，获胜方需前往触手王者荣耀校园赛首页，点击“参加比赛”-“赛果上传”，将结算界面截图上传等待官方工作人员人工审核。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 审核通过后，将获得系统信件消息通知。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 未上传赛果截图或有其他特殊情况，官方有权判定比赛无效。</p>', '<p>比赛说明</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛时间为周二、四、六的19：00；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 在对战表公布后，队长自行联系对手并约战；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 赛事官方每天随机抽取3-4队观战进行实况直播；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. 比赛采用BO1征兆模式，英雄、皮肤、铭文选择无限制。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;结果上传</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛结束后，获胜方需前往触手王者荣耀校园赛首页，点击“参加比赛”-“赛果上传”，将结算界面截图上传等待官方工作人员人工审核。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 审核通过后，将获得系统信件消息通知。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 未上传赛果截图或有其他特殊情况，官方有权判定比赛无效。</p>', '<p>比赛说明</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛时间为周二、四、六的19：00；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 在对战表公布后，队长自行联系对手并约战；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 赛事官方每天随机抽取3-4队观战进行实况直播；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. 比赛采用BO1征兆模式，英雄、皮肤、铭文选择无限制。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;结果上传</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛结束后，获胜方需前往触手王者荣耀校园赛首页，点击“参加比赛”-“赛果上传”，将结算界面截图上传等待官方工作人员人工审核。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 审核通过后，将获得系统信件消息通知。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 未上传赛果截图或有其他特殊情况，官方有权判定比赛无效。</p>', '<p>比赛说明</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛时间为周二、四、六的19：00；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 在对战表公布后，队长自行联系对手并约战；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 赛事官方每天随机抽取3-4队观战进行实况直播；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. 比赛采用BO1征兆模式，英雄、皮肤、铭文选择无限制。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;结果上传</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛结束后，获胜方需前往触手王者荣耀校园赛首页，点击“参加比赛”-“赛果上传”，将结算界面截图上传等待官方工作人员人工审核。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 审核通过后，将获得系统信件消息通知。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 未上传赛果截图或有其他特殊情况，官方有权判定比赛无效。</p>', '<p>比赛说明</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛时间为周二、四、六的19：00；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 在对战表公布后，队长自行联系对手并约战；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 赛事官方每天随机抽取3-4队观战进行实况直播；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. 比赛采用BO1征兆模式，英雄、皮肤、铭文选择无限制。</p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;结果上传</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 比赛结束后，获胜方需前往触手王者荣耀校园赛首页，点击“参加比赛”-“赛果上传”，将结算界面截图上传等待官方工作人员人工审核。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. 审核通过后，将获得系统信件消息通知。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 未上传赛果截图或有其他特殊情况，官方有权判定比赛无效。</p>', 'http://localhost:8090/images/20200305_214437_8b6b2ca8-b657-4770-872d-43541b682c3c.jpg', '2020-03-07 23:04:37', '2020-03-07 23:04:37', '2020-03-07 23:04:37');

-- ----------------------------
-- Table structure for tb_copyright
-- ----------------------------
DROP TABLE IF EXISTS `tb_copyright`;
CREATE TABLE `tb_copyright` (
  `id` int(11) NOT NULL,
  `copyright_content` longtext COLLATE utf8mb4_unicode_ci,
  `insert_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_copyright
-- ----------------------------
INSERT INTO `tb_copyright` VALUES ('1', 'fasfsafdsafdsafdsafasfd', null);

-- ----------------------------
-- Table structure for tb_team
-- ----------------------------
DROP TABLE IF EXISTS `tb_team`;
CREATE TABLE `tb_team` (
  `team_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `team_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '队伍名',
  `open_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contest_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_team
-- ----------------------------
INSERT INTO `tb_team` VALUES ('00000000005', '发撒的发生发送到', 'oHKWv4q4hqTXS7F_UVPoVAyg3r5k', '5');

-- ----------------------------
-- Table structure for tb_team_members
-- ----------------------------
DROP TABLE IF EXISTS `tb_team_members`;
CREATE TABLE `tb_team_members` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `open_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contest_area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所在大区',
  `member_player_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏id',
  `member_player_level` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏段位',
  `contest_other_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_team` tinyint(2) DEFAULT NULL,
  `apply_result` tinyint(2) DEFAULT NULL COMMENT '报名结果',
  `insert_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_team_members
-- ----------------------------
INSERT INTO `tb_team_members` VALUES ('27', '5', '1', 'oHKWv4q4hqTXS7F_UVPoVAyg3r5k', '范德萨发的是', '范德萨发啊发', '阿凡达撒', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', null, null);
INSERT INTO `tb_team_members` VALUES ('28', '5', '1', '', '范德萨发啊发', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', null, null);
INSERT INTO `tb_team_members` VALUES ('29', '5', '1', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', null, null);
INSERT INTO `tb_team_members` VALUES ('30', '5', '1', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', null, null);
INSERT INTO `tb_team_members` VALUES ('31', '5', '1', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', null, null);
INSERT INTO `tb_team_members` VALUES ('32', '1', null, 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', null, 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members` VALUES ('33', '1', null, 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', null, 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members` VALUES ('34', '1', null, 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', null, 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members` VALUES ('35', '1', null, 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', null, 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members` VALUES ('36', '1', null, 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', '钻石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members` VALUES ('37', '1', null, 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);

-- ----------------------------
-- Table structure for tb_wxuser
-- ----------------------------
DROP TABLE IF EXISTS `tb_wxuser`;
CREATE TABLE `tb_wxuser` (
  `user_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `open_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nick_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insert_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tb_wxuser
-- ----------------------------
INSERT INTO `tb_wxuser` VALUES ('00000000002', 'oHKWv4q4hqTXS7F_UVPoVAyg3r5k', 'pingo', 'https://wx.qlogo.cn/mmopen/vi_32/tbUMQoRYH41XQfmP17QoodXtOU9gcV4VpFAl1zF29xxmiatLbWIGWUDruWicG2ovnZR9jNNhjGGibAMmqtXiaqTB4Q/132', '1', 'Belarus', '', '', null);
