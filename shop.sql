/*
 Navicat MySQL Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 28/06/2022 15:23:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商家表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES (1, 'shangjia', 'shangjia', '商家1', '2022-06-28 10:41:10 ');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '禁用' COMMENT '状态',
  `num` int(11) NULL DEFAULT NULL COMMENT '数量',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `bid` int(11) NULL DEFAULT NULL COMMENT '关联商家',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'HUAWEI MateBook 16s 12代酷睿标压 i7 16GB 512GB 16英寸2.5K高色准触控屏 深空灰', 'HUAWEI MateBook 16s 12代酷睿标压 i7 16GB 512GB 16英寸2.5K高色准触控屏 深空灰', 'http://localhost:8089/upload/2022/06/28/d3ac87d8-e917-4fa7-981d-0da2d2788ef4.webp', '启用', 100, 5999.00, '2022-06-28 10:55:47 ', 1);
INSERT INTO `goods` VALUES (2, 'HUAWEI MateBook 16s 12代酷睿标压 i7 16GB 512GB 16英寸2.5K高色准触控屏 深空灰', 'HUAWEI MateBook 16s 12代酷睿标压 i7 16GB 512GB 16英寸2.5K高色准触控屏 深空灰', 'http://localhost:8089/upload/2022/06/28/d3ac87d8-e917-4fa7-981d-0da2d2788ef4.webp', '启用', 100, 5999.00, '2022-06-28 10:55:47 ', 1);
INSERT INTO `goods` VALUES (3, 'HUAWEI MateBook 16s 12代酷睿标压 i7 16GB 512GB 16英寸2.5K高色准触控屏 深空灰', 'HUAWEI MateBook 16s 12代酷睿标压 i7 16GB 512GB 16英寸2.5K高色准触控屏 深空灰', 'http://localhost:8089/upload/2022/06/28/d3ac87d8-e917-4fa7-981d-0da2d2788ef4.webp', '启用', 100, 5999.00, '2022-06-28 10:55:47 ', 1);
INSERT INTO `goods` VALUES (4, 'HUAWEI MateBook 16s 12代酷睿标压 i7 16GB 512GB 16英寸2.5K高色准触控屏 深空灰', 'HUAWEI MateBook 16s 12代酷睿标压 i7 16GB 512GB 16英寸2.5K高色准触控屏 深空灰', 'http://localhost:8089/upload/2022/06/28/d3ac87d8-e917-4fa7-981d-0da2d2788ef4.webp', '启用', 100, 5999.00, '2022-06-28 10:55:47 ', 1);
INSERT INTO `goods` VALUES (5, 'HUAWEI MateBook 16s 12代酷睿标压 i7 16GB 512GB 16英寸2.5K高色准触控屏 深空灰', 'HUAWEI MateBook 16s 12代酷睿标压 i7 16GB 512GB 16英寸2.5K高色准触控屏 深空灰', 'http://localhost:8089/upload/2022/06/28/d3ac87d8-e917-4fa7-981d-0da2d2788ef4.webp', '启用', 100, 5999.00, '2022-06-28 10:55:47 ', 1);
INSERT INTO `goods` VALUES (6, 'HUAWEI MateBook 16s 12代酷睿标压 i7 16GB 512GB 16英寸2.5K高色准触控屏 深空灰', 'HUAWEI MateBook 16s 12代酷睿标压 i7 16GB 512GB 16英寸2.5K高色准触控屏 深空灰', 'http://localhost:8089/upload/2022/06/28/d3ac87d8-e917-4fa7-981d-0da2d2788ef4.webp', '启用', 100, 5999.00, '2022-06-28 10:55:47 ', 1);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `uid` int(11) NULL DEFAULT NULL COMMENT '关联用户',
  `gid` int(11) NULL DEFAULT NULL COMMENT '关联商家',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态 已下单 已退货',
  `num` int(11) NULL DEFAULT NULL COMMENT '数量',
  `time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, '545161689', 1, 1, '已退货', 2, '2022-06-28 14:55:38 ');
INSERT INTO `orders` VALUES (2, '50932693595', 1, 1, '已下单', 3, '2022-06-28 15:19:07 ');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', 'user', '卢本伟', '2022-06-28 10:34:19 ');

SET FOREIGN_KEY_CHECKS = 1;
