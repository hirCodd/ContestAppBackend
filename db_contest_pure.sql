/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : db_contest

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-05-06 23:42:11
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
