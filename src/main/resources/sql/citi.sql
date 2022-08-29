/*
 Navicat Premium Data Transfer

 Source Server         : localhost-chldu
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : citi

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 26/08/2022 15:19:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for exchange_rate
-- ----------------------------
DROP TABLE IF EXISTS `exchange_rate`;
CREATE TABLE `exchange_rate`  (
  `currency_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '货币编号（英文缩写，有参考标准）',
  `currency_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '货币名称',
  `currency_unit` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '货币单位',
  `currency_rate` float NULL DEFAULT NULL COMMENT '与美元的汇率',
  PRIMARY KEY (`currency_id`) USING BTREE,
  UNIQUE INDEX `exchange_rate_currency_id_uindex`(`currency_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '汇率表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exchange_rate
-- ----------------------------
INSERT INTO `exchange_rate` VALUES ('CNY', 'CNY', 'Yuan', 6.8);

-- ----------------------------
-- Table structure for salesman
-- ----------------------------
DROP TABLE IF EXISTS `salesman`;
CREATE TABLE `salesman`  (
  `salesman_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '交易员编号',
  `salesman_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '交易员名字',
  `company_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '交易员所属公司代号',
  PRIMARY KEY (`salesman_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '交易员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salesman
-- ----------------------------
INSERT INTO `salesman` VALUES ('1', 'salesman1', '1');
INSERT INTO `salesman` VALUES ('2', 'salesman2', '1');
INSERT INTO `salesman` VALUES ('3', 'salesman3', '2');

-- ----------------------------
-- Table structure for shares
-- ----------------------------
DROP TABLE IF EXISTS `shares`;
CREATE TABLE `shares`  (
  `RIC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '股票RIC编号',
  `shares_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '股票名称',
  `class_id` int NULL DEFAULT NULL COMMENT '股票的行业分类',
  `shares_price` float NULL DEFAULT NULL COMMENT '股票的单价',
  `currency_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '可交易的货币编号',
  `shares_num` bigint NULL DEFAULT NULL COMMENT '股票发行总数',
  `trade_limit` int NULL DEFAULT NULL COMMENT '个人持有最大数限制',
  `shares_flag` int NULL DEFAULT NULL COMMENT '状态符，标志是否可交易',
  PRIMARY KEY (`RIC`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '股票信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shares
-- ----------------------------
INSERT INTO `shares` VALUES ('fake', '不存在的企业', 1, 10, 'CNY', 10000, 100, 1);

-- ----------------------------
-- Table structure for shares_class
-- ----------------------------
DROP TABLE IF EXISTS `shares_class`;
CREATE TABLE `shares_class`  (
  `class_id` int NOT NULL AUTO_INCREMENT COMMENT '类别编号，自增',
  `class_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类别名称',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '股票所属行业类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shares_class
-- ----------------------------
INSERT INTO `shares_class` VALUES (1, '类别1');

-- ----------------------------
-- Table structure for shares_history
-- ----------------------------
DROP TABLE IF EXISTS `shares_history`;
CREATE TABLE `shares_history`  (
  `record_id` int NOT NULL AUTO_INCREMENT COMMENT '记录编号，自增',
  `RIC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '股票RIC编号',
  `closing_price` float NULL DEFAULT NULL COMMENT '股票当天收盘价',
  `transaction_in` bigint NULL DEFAULT NULL COMMENT '股票当天总买入数量',
  `transaction_out` bigint NULL DEFAULT NULL COMMENT '股票当天总卖出数量',
  `record_date` date NULL DEFAULT NULL COMMENT '记录时间',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '股票记录表（日结）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shares_history
-- ----------------------------

-- ----------------------------
-- Table structure for transaction_records
-- ----------------------------
DROP TABLE IF EXISTS `transaction_records`;
CREATE TABLE `transaction_records`  (
  `record_id` int NOT NULL AUTO_INCREMENT COMMENT '记录编号，自增',
  `RIC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '股票RIC编号',
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '交易者id',
  `transaction_size` int NULL DEFAULT NULL COMMENT '交易数量',
  `transaction_time` datetime NULL DEFAULT NULL COMMENT '交易时间',
  `salesman_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '交易员编号',
  `currency_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '货币编号',
  `transaction_price` float NULL DEFAULT NULL COMMENT '股票成交单价',
  `transaction_flag` int NULL DEFAULT NULL COMMENT '交易类型标志，买入1，卖出0',
  `shares_hold` bigint NULL DEFAULT NULL COMMENT '用户当前的该股持有数（包含当前交易）',
  `issuer_sector` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发行部门',
  `transaction_mode` int NULL DEFAULT NULL COMMENT '交易模式，1：HT，0：PT',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '交易记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaction_records
-- ----------------------------
INSERT INTO `transaction_records` VALUES (1, 'fake', '1', 10, '2022-08-25 16:27:16', '1', 'CNY', 10, 1, 10, 'Sector1', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id，唯一标识',
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名字',
  `login_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登陆用用户名',
  `login_password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登陆密码\r\n',
  `logon_time` timestamp NULL DEFAULT NULL COMMENT '用户注册时间',
  `flag` int NULL DEFAULT NULL COMMENT '用户权限标志',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '用户1号', 'accountOne', 'qewqe', NULL, 1);

-- ----------------------------
-- View structure for transaction_view
-- ----------------------------
DROP VIEW IF EXISTS `transaction_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `transaction_view` AS select cast(`records`.`transaction_time` as date) AS `date`,`users`.`user_name` AS `client_name`,`records`.`transaction_flag` AS `client_side`,`shares`.`shares_name` AS `ticker`,`shares`.`RIC` AS `ric`,`records`.`transaction_size` AS `size`,`records`.`transaction_price` AS `price`,(`records`.`transaction_price` / `exchange_rate`.`currency_rate`) AS `notional_usd`,`exchange_rate`.`currency_name` AS `currency`,`records`.`issuer_sector` AS `issuer_sector`,`salesman`.`salesman_name` AS `salesperson`,`records`.`transaction_mode` AS `ht_pt` from ((((`transaction_records` `records` join `user` `users`) join `shares`) join `exchange_rate`) join `salesman`) where ((`records`.`RIC` = `shares`.`RIC`) and (`records`.`user_id` = `users`.`user_id`) and (`records`.`salesman_id` = `salesman`.`salesman_id`) and (`records`.`currency_id` = `exchange_rate`.`currency_id`));

SET FOREIGN_KEY_CHECKS = 1;
