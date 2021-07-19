/*
 Navicat Premium Data Transfer

 Source Server         : demo
 Source Server Type    : MySQL
 Source Server Version : 50709
 Source Host           : localhost:3306
 Source Schema         : three_kingdoms_tycoon

 Target Server Type    : MySQL
 Target Server Version : 50709
 File Encoding         : 65001

 Date: 08/12/2020 20:44:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for land
-- ----------------------------
DROP TABLE IF EXISTS `land`;
CREATE TABLE `land`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '领地名字',
  `level` int(255) NULL DEFAULT NULL COMMENT '领地等级',
  `owner` int(255) NULL DEFAULT NULL COMMENT '领地所属者',
  `pay` int(255) NULL DEFAULT NULL COMMENT '购买（攻打）领地所需的兵力',
  `position` int(255) NOT NULL AUTO_INCREMENT COMMENT '领地的坐标',
  `x` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `y` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`position`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of land
-- ----------------------------
INSERT INTO `land` VALUES (NULL, NULL, 1, NULL, 1, NULL, NULL);

-- ----------------------------
-- Table structure for player
-- ----------------------------
DROP TABLE IF EXISTS `player`;
CREATE TABLE `player`  (
  `id` int(11) NOT NULL COMMENT '玩家的账号',
  `money` int(255) NULL DEFAULT NULL COMMENT '金钱（兵力）',
  `skill` int(255) NULL DEFAULT NULL COMMENT '技能',
  `position` int(255) NULL DEFAULT NULL COMMENT '人物当时的坐标顺序',
  `war_effect` int(255) NULL DEFAULT NULL COMMENT '战争令牌回合数',
  `order` int(255) NOT NULL COMMENT '玩家的出牌顺序',
  `stop` int(255) NULL DEFAULT NULL COMMENT '暂停在原地的回合数',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '玩家的名字',
  PRIMARY KEY (`id`, `order`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player
-- ----------------------------
INSERT INTO `player` VALUES (1, 7000, NULL, NULL, NULL, 1, 2, NULL);
INSERT INTO `player` VALUES (2, 7000, NULL, NULL, NULL, 2, 2, NULL);
INSERT INTO `player` VALUES (3, NULL, NULL, NULL, NULL, 3, 2, NULL);
INSERT INTO `player` VALUES (4, NULL, NULL, NULL, NULL, 4, 2, NULL);

SET FOREIGN_KEY_CHECKS = 1;
