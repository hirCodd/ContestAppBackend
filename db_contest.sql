/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : db_contest

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-05-06 23:42:23
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
  PRIMARY KEY (`contest_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_copyright
-- ----------------------------
INSERT INTO `tb_copyright` VALUES ('1', 'fasfsafdsafdsafdsafasfd', null);

-- ----------------------------
-- Table structure for tb_team
-- ----------------------------
DROP TABLE IF EXISTS `tb_team`;
CREATE TABLE `tb_team` (
  `team_id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `team_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '队伍名',
  `open_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contest_id` int(32) DEFAULT NULL,
  PRIMARY KEY (`team_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_team
-- ----------------------------
INSERT INTO `tb_team` VALUES ('1', '发撒的发生发送到', 'oHKWv4q4hqTXS7F_UVPoVAyg3r5k', '5');
INSERT INTO `tb_team` VALUES ('2', 'sdsfd', '2232', '5');
INSERT INTO `tb_team` VALUES ('9', '1588768982166', '1588768982165', '5');
INSERT INTO `tb_team` VALUES ('10', '1588769106259', '1588769106259', '5');
INSERT INTO `tb_team` VALUES ('11', '1588769106271', '1588769106271', '5');
INSERT INTO `tb_team` VALUES ('12', '1588769106277', '1588769106277', '5');
INSERT INTO `tb_team` VALUES ('13', '1588769283507', '1588769283507', '5');
INSERT INTO `tb_team` VALUES ('14', '1588769283533', '1588769283533', '5');
INSERT INTO `tb_team` VALUES ('15', '1588769283541', '1588769283541', '5');
INSERT INTO `tb_team` VALUES ('16', '1588769512636', '1588769512635', '5');
INSERT INTO `tb_team` VALUES ('17', '1588769512657', '1588769512657', '5');
INSERT INTO `tb_team` VALUES ('18', '1588769512666', '1588769512666', '5');
INSERT INTO `tb_team` VALUES ('19', '1588770001645', '1588770001645', '5');
INSERT INTO `tb_team` VALUES ('20', '1588770001667', '1588770001667', '5');
INSERT INTO `tb_team` VALUES ('21', '1588770001676', '1588770001676', '5');
INSERT INTO `tb_team` VALUES ('22', '1588771462374', '1588771462374', '5');
INSERT INTO `tb_team` VALUES ('23', '1588771462400', '1588771462400', '5');
INSERT INTO `tb_team` VALUES ('24', '1588771462410', '1588771462409', '5');
INSERT INTO `tb_team` VALUES ('25', '1588771690862', '1588771690862', '5');
INSERT INTO `tb_team` VALUES ('26', '1588771690888', '1588771690887', '5');
INSERT INTO `tb_team` VALUES ('27', '1588771690895', '1588771690895', '5');
INSERT INTO `tb_team` VALUES ('28', '1588771791247', '1588771791247', '5');
INSERT INTO `tb_team` VALUES ('29', '1588771791260', '1588771791260', '5');
INSERT INTO `tb_team` VALUES ('30', '1588771791265', '1588771791265', '5');
INSERT INTO `tb_team` VALUES ('31', '1588773510353', '1588773510353', '5');
INSERT INTO `tb_team` VALUES ('32', '1588773510363', '1588773510363', '5');
INSERT INTO `tb_team` VALUES ('33', '1588773510367', '1588773510367', '5');
INSERT INTO `tb_team` VALUES ('34', '1588773652345', '1588773652344', '5');
INSERT INTO `tb_team` VALUES ('35', '1588773652353', '1588773652353', '5');
INSERT INTO `tb_team` VALUES ('36', '1588773652358', '1588773652358', '5');
INSERT INTO `tb_team` VALUES ('37', '1588774228037', '1588774228037', '5');
INSERT INTO `tb_team` VALUES ('38', '1588774228047', '1588774228047', '5');
INSERT INTO `tb_team` VALUES ('39', '1588774228055', '1588774228055', '5');
INSERT INTO `tb_team` VALUES ('40', '1588774583344', '1588774583344', '1');
INSERT INTO `tb_team` VALUES ('41', '1588775620957', '1588775620957', '5');
INSERT INTO `tb_team` VALUES ('42', '1588775620971', '1588775620971', '5');
INSERT INTO `tb_team` VALUES ('43', '1588775620980', '1588775620980', '5');
INSERT INTO `tb_team` VALUES ('44', '1588776429678', '1588776429678', '5');
INSERT INTO `tb_team` VALUES ('45', '1588776429693', '1588776429693', '5');
INSERT INTO `tb_team` VALUES ('46', '1588776429698', '1588776429698', '5');
INSERT INTO `tb_team` VALUES ('47', '1588776689767', '1588776689767', '5');
INSERT INTO `tb_team` VALUES ('48', '1588776689787', '1588776689786', '5');
INSERT INTO `tb_team` VALUES ('49', '1588776689795', '1588776689795', '5');

-- ----------------------------
-- Table structure for tb_team_members
-- ----------------------------
DROP TABLE IF EXISTS `tb_team_members`;
CREATE TABLE `tb_team_members` (
  `member_id` int(32) NOT NULL AUTO_INCREMENT,
  `contest_id` int(32) DEFAULT NULL,
  `team_id` int(32) DEFAULT NULL,
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
  PRIMARY KEY (`member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_team_members
-- ----------------------------
INSERT INTO `tb_team_members` VALUES ('27', '1', '1', 'oHKWv4q4hqTXS7F_UVPoVAyg3r5k', '范德萨发的是', '范德萨发啊发', '阿凡达撒', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', '2020-05-06 22:16:04', '2020-05-06 22:16:04');
INSERT INTO `tb_team_members` VALUES ('28', '1', '1', '', '范德萨发啊发', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', '2020-05-06 22:16:05', '2020-05-06 22:16:05');
INSERT INTO `tb_team_members` VALUES ('29', '1', '1', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', '2020-05-06 22:16:06', '2020-05-06 22:16:06');
INSERT INTO `tb_team_members` VALUES ('30', '1', '1', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', '2020-05-06 22:16:08', '2020-05-06 22:16:08');
INSERT INTO `tb_team_members` VALUES ('31', '1', '1', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', '2020-05-06 22:16:09', '2020-05-06 22:16:09');
INSERT INTO `tb_team_members` VALUES ('32', '1', null, 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', null, 'xxx', '0', null, '2020-05-06 22:16:11', '2020-05-06 22:16:11');
INSERT INTO `tb_team_members` VALUES ('33', '1', null, 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', null, 'xxx', '0', null, '2020-05-06 22:16:12', '2020-05-06 22:16:12');
INSERT INTO `tb_team_members` VALUES ('34', '1', null, 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', null, 'xxx', '0', null, '2020-05-06 22:16:14', '2020-05-06 22:16:14');

-- ----------------------------
-- Table structure for tb_team_members_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_team_members_copy`;
CREATE TABLE `tb_team_members_copy` (
  `member_id` int(32) NOT NULL AUTO_INCREMENT,
  `contest_id` int(32) DEFAULT NULL,
  `team_id` int(32) DEFAULT NULL,
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
  PRIMARY KEY (`member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_team_members_copy
-- ----------------------------
INSERT INTO `tb_team_members_copy` VALUES ('27', '1', '1', 'oHKWv4q4hqTXS7F_UVPoVAyg3r5k', '范德萨发的是', '范德萨发啊发', '阿凡达撒', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', '2020-05-06 22:16:04', '2020-05-06 22:16:04');
INSERT INTO `tb_team_members_copy` VALUES ('28', '1', '1', '', '范德萨发啊发', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', '2020-05-06 22:16:05', '2020-05-06 22:16:05');
INSERT INTO `tb_team_members_copy` VALUES ('29', '1', '1', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', '2020-05-06 22:16:06', '2020-05-06 22:16:06');
INSERT INTO `tb_team_members_copy` VALUES ('30', '1', '1', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', '2020-05-06 22:16:08', '2020-05-06 22:16:08');
INSERT INTO `tb_team_members_copy` VALUES ('31', '1', '1', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', '2020-05-06 22:16:09', '2020-05-06 22:16:09');
INSERT INTO `tb_team_members_copy` VALUES ('32', '1', null, 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', null, 'xxx', '0', null, '2020-05-06 22:16:11', '2020-05-06 22:16:11');
INSERT INTO `tb_team_members_copy` VALUES ('33', '1', null, 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', null, 'xxx', '0', null, '2020-05-06 22:16:12', '2020-05-06 22:16:12');
INSERT INTO `tb_team_members_copy` VALUES ('34', '1', null, 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', null, 'xxx', '0', null, '2020-05-06 22:16:14', '2020-05-06 22:16:14');
INSERT INTO `tb_team_members_copy` VALUES ('35', '5', null, 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', null, 'xxx', '0', null, '2020-05-06 16:33:35', '2020-05-06 16:33:35');
INSERT INTO `tb_team_members_copy` VALUES ('36', '5', null, 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', '钻石', 'xxx', '0', null, '2020-05-06 16:34:07', '2020-05-06 16:34:07');
INSERT INTO `tb_team_members_copy` VALUES ('37', '5', null, 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, '2020-05-06 16:34:09', '2020-05-06 16:34:09');
INSERT INTO `tb_team_members_copy` VALUES ('38', '5', null, 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, '2020-05-06 16:34:09', '2020-05-06 16:34:09');
INSERT INTO `tb_team_members_copy` VALUES ('39', '5', null, 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, '2020-05-06 16:34:09', '2020-05-06 16:34:09');
INSERT INTO `tb_team_members_copy` VALUES ('40', '5', null, 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, '2020-05-06 16:34:09', '2020-05-06 16:34:09');
INSERT INTO `tb_team_members_copy` VALUES ('41', '5', null, 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, '2020-05-06 16:34:09', '2020-05-06 16:34:09');
INSERT INTO `tb_team_members_copy` VALUES ('42', '5', null, 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, '2020-05-06 16:34:09', '2020-05-06 16:34:09');
INSERT INTO `tb_team_members_copy` VALUES ('43', '5', null, 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, '2020-05-06 16:34:09', '2020-05-06 16:34:09');
INSERT INTO `tb_team_members_copy` VALUES ('44', '5', null, 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, '2020-05-06 16:34:09', '2020-05-06 16:34:09');
INSERT INTO `tb_team_members_copy` VALUES ('45', '5', null, 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, '2020-05-06 16:34:09', '2020-05-06 16:34:09');

-- ----------------------------
-- Table structure for tb_team_members_result
-- ----------------------------
DROP TABLE IF EXISTS `tb_team_members_result`;
CREATE TABLE `tb_team_members_result` (
  `member_id` int(32) DEFAULT NULL,
  `contest_id` int(32) DEFAULT NULL,
  `team_id` int(32) DEFAULT NULL,
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
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_team_members_result
-- ----------------------------
INSERT INTO `tb_team_members_result` VALUES ('30', '5', '1', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', '2020-05-06 22:16:00', '2020-05-06 22:16:00');
INSERT INTO `tb_team_members_result` VALUES ('29', '5', '1', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', '2020-05-06 22:15:58', '2020-05-06 22:15:58');
INSERT INTO `tb_team_members_result` VALUES ('28', '5', '1', '', '范德萨发啊发', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', '2020-05-06 22:15:57', '2020-05-06 22:15:57');
INSERT INTO `tb_team_members_result` VALUES ('31', '5', '1', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', '2020-05-06 22:15:56', '2020-05-06 22:15:56');
INSERT INTO `tb_team_members_result` VALUES ('27', '5', '1', 'oHKWv4q4hqTXS7F_UVPoVAyg3r5k', '范德萨发的是', '范德萨发啊发', '阿凡达撒', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', '2020-05-06 22:15:55', '2020-05-06 22:15:55');
INSERT INTO `tb_team_members_result` VALUES ('33', '5', '37', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', null, 'xxx', '0', null, '2020-05-06 22:15:53', '2020-05-06 22:15:53');
INSERT INTO `tb_team_members_result` VALUES ('41', '5', '37', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, '2020-05-06 22:15:52', '2020-05-06 22:15:52');
INSERT INTO `tb_team_members_result` VALUES ('36', '5', '37', 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', '钻石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('42', '5', '37', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('38', '5', '37', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('37', '5', '38', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('35', '5', '38', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', null, 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('40', '5', '38', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('45', '5', '38', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('34', '5', '38', 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', null, 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('44', '5', '39', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('32', '5', '39', 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', null, 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('43', '5', '39', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('39', '5', '39', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('28', '1', '1', '', '范德萨发啊发', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', null, null);
INSERT INTO `tb_team_members_result` VALUES ('31', '1', '1', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', null, null);
INSERT INTO `tb_team_members_result` VALUES ('29', '1', '1', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', null, null);
INSERT INTO `tb_team_members_result` VALUES ('30', '1', '1', '', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', null, null);
INSERT INTO `tb_team_members_result` VALUES ('27', '1', '1', 'oHKWv4q4hqTXS7F_UVPoVAyg3r5k', '范德萨发的是', '范德萨发啊发', '阿凡达撒', '范德萨发啊发', '范德萨发啊发', '范德萨发啊发', '1', '1', null, null);
INSERT INTO `tb_team_members_result` VALUES ('33', '1', '40', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', null, 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('32', '1', '40', 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', null, 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('34', '1', '40', 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', null, 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('40', '5', '41', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('38', '5', '41', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('43', '5', '41', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('45', '5', '41', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('44', '5', '41', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('36', '5', '42', 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', '钻石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('35', '5', '42', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', null, 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('41', '5', '42', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('37', '5', '42', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('42', '5', '42', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('39', '5', '43', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('41', '5', '44', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('37', '5', '44', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('40', '5', '44', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('43', '5', '44', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('38', '5', '44', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('35', '5', '45', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', null, 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('42', '5', '45', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('36', '5', '45', 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', '钻石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('45', '5', '45', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('44', '5', '45', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('39', '5', '46', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('38', '5', '47', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('43', '5', '47', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('36', '5', '47', 'xxxxxxx', '232424324', 'memberPhone', '西班牙', '小胡子', '钻石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('44', '5', '47', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('41', '5', '47', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('42', '5', '48', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('45', '5', '48', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('40', '5', '48', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('35', '5', '48', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', null, 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('37', '5', '48', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);
INSERT INTO `tb_team_members_result` VALUES ('39', '5', '49', 'xxxx22332xxx', '23243324324', 'memb232232erPhone', '西班2323牙', '小23胡子', '钻2石', 'xxx', '0', null, null, null);

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
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_wxuser
-- ----------------------------
INSERT INTO `tb_wxuser` VALUES ('00000000002', 'oHKWv4q4hqTXS7F_UVPoVAyg3r5k', 'pingo', 'https://wx.qlogo.cn/mmopen/vi_32/tbUMQoRYH41XQfmP17QoodXtOU9gcV4VpFAl1zF29xxmiatLbWIGWUDruWicG2ovnZR9jNNhjGGibAMmqtXiaqTB4Q/132', '1', 'Belarus', '', '', null);
