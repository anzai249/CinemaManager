/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : cinema_manager

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 12/12/2022 12:26:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for managers
-- ----------------------------
DROP TABLE IF EXISTS `managers`;
CREATE TABLE `managers`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of managers
-- ----------------------------
INSERT INTO `managers` VALUES (1, '邓云熙', 'D70TdNRkIP');
INSERT INTO `managers` VALUES (2, 'Walter Rose', 'xj8TucMjtL');
INSERT INTO `managers` VALUES (3, '郝致远', 'yJ0als5xbB');
INSERT INTO `managers` VALUES (4, '佐野詩乃', 'l16dIMNAqY');
INSERT INTO `managers` VALUES (5, '杉山百恵', 'XBqGNqAjNu');
INSERT INTO `managers` VALUES (6, 'Ruth Gonzalez', '8frBdYJLy1');
INSERT INTO `managers` VALUES (7, '贾睿', 'i4t97t9Gla');
INSERT INTO `managers` VALUES (8, '斎藤樹', 'JKpr5OAajF');
INSERT INTO `managers` VALUES (9, '朱晓明', 'IUmpfi8hw8');
INSERT INTO `managers` VALUES (10, '冯璐', 'DTLWkoPif9');
INSERT INTO `managers` VALUES (11, '萧安琪', 'VZvIfQcSyu');
INSERT INTO `managers` VALUES (12, 'Debbie Crawford', 'x9G0j5iaC3');
INSERT INTO `managers` VALUES (13, 'Roger Reyes', 'dQ2OPnS3xA');
INSERT INTO `managers` VALUES (14, 'Sheila Reed', 'iHpgu2yrWI');
INSERT INTO `managers` VALUES (15, 'Bobby Brooks', '0iD6wa916h');
INSERT INTO `managers` VALUES (16, '谭云熙', 'WgkoeZmfr5');
INSERT INTO `managers` VALUES (17, '松井涼太', 'd96pjhpxYz');
INSERT INTO `managers` VALUES (18, '夏安琪', '0FsgW5kfXn');
INSERT INTO `managers` VALUES (19, 'Larry Barnes', 'TePo33snJE');
INSERT INTO `managers` VALUES (20, '遠藤桜', 'WTvvRizeeB');
INSERT INTO `managers` VALUES (21, '鈴木葵', 'rL9n66gQP2');
INSERT INTO `managers` VALUES (22, '蒋岚', 'vedHpEWy6p');
INSERT INTO `managers` VALUES (23, 'Ronald Carter', 'u4yHiTiOEA');
INSERT INTO `managers` VALUES (24, '严岚', 'SvQ8djyHGS');
INSERT INTO `managers` VALUES (25, '山崎紗良', '7X8vgP4mZ5');
INSERT INTO `managers` VALUES (26, 'Travis Martin', '5M4d03rCoe');
INSERT INTO `managers` VALUES (27, 'Monica Rogers', 'HBdWM2fExH');
INSERT INTO `managers` VALUES (28, 'Juan Baker', 'cqqAE22AGI');
INSERT INTO `managers` VALUES (29, '石田大地', 'y2yWRAcGj6');
INSERT INTO `managers` VALUES (30, '中村聖子', 'e3QbwVcucY');

-- ----------------------------
-- Table structure for movies
-- ----------------------------
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type` ASC) USING BTREE,
  CONSTRAINT `type` FOREIGN KEY (`type`) REFERENCES `types` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movies
-- ----------------------------
INSERT INTO `movies` VALUES (1, '《西游记》', '师徒四人西天取经的故事', 4);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '大片上映', '年度大片《西游记》上映！');

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES (1, '动作片');
INSERT INTO `types` VALUES (2, '冒险片');
INSERT INTO `types` VALUES (3, '喜剧片');
INSERT INTO `types` VALUES (4, '剧情片');
INSERT INTO `types` VALUES (5, '幻想片');
INSERT INTO `types` VALUES (6, '恐怖片');
INSERT INTO `types` VALUES (7, '爱情片');
INSERT INTO `types` VALUES (8, '历史片');

SET FOREIGN_KEY_CHECKS = 1;
