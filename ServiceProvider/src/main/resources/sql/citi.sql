/*
 Navicat Premium Data Transfer

 Source Server         : lecture
 Source Server Type    : MariaDB
 Source Server Version : 100148
 Source Host           : 121.37.66.218:3306
 Source Schema         : citi

 Target Server Type    : MariaDB
 Target Server Version : 100148
 File Encoding         : 65001

 Date: 02/09/2022 10:38:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for exchange_rate
-- ----------------------------
DROP TABLE IF EXISTS `exchange_rate`;
CREATE TABLE `exchange_rate`  (
  `currency_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '货币编号（英文缩写，有参考标准）',
  `currency_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货币名称',
  `currency_unit` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货币单位',
  `currency_rate` float NULL DEFAULT NULL COMMENT '与美元的汇率',
  PRIMARY KEY (`currency_id`) USING BTREE,
  UNIQUE INDEX `exchange_rate_currency_id_uindex`(`currency_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '汇率表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exchange_rate
-- ----------------------------
INSERT INTO `exchange_rate` VALUES ('AED', '阿联酋迪拉姆', '1迪拉姆', 0.272323);
INSERT INTO `exchange_rate` VALUES ('ALL', '阿尔巴尼亚列克', '1列克', 0.008892);
INSERT INTO `exchange_rate` VALUES ('AOA', '安哥拉宽扎', '1宽扎', 0.002389);
INSERT INTO `exchange_rate` VALUES ('ARS', '阿根廷比索', '1比索', 0.008333);
INSERT INTO `exchange_rate` VALUES ('AUD', '澳元', '1元', 0.718843);
INSERT INTO `exchange_rate` VALUES ('BAM', '波黑马克', '1马克', 0.547945);
INSERT INTO `exchange_rate` VALUES ('BGN', '保加利亚列维', '1列维', 0.54933);
INSERT INTO `exchange_rate` VALUES ('BHD', '巴林第纳尔', '1第纳尔', 2.65227);
INSERT INTO `exchange_rate` VALUES ('BND', '文莱元', '1元', 0.729847);
INSERT INTO `exchange_rate` VALUES ('BOB', '玻利维亚诺', '1玻利维亚诺', 0.145033);
INSERT INTO `exchange_rate` VALUES ('BRL', '巴西雷亚尔', '1雷亚尔', 0.210356);
INSERT INTO `exchange_rate` VALUES ('BWP', '博茨瓦纳普拉', '1普拉', 0.08365);
INSERT INTO `exchange_rate` VALUES ('BYN', '白俄罗斯卢布', '1卢布', 0.296068);
INSERT INTO `exchange_rate` VALUES ('CAD', '加元', '1元', 0.789977);
INSERT INTO `exchange_rate` VALUES ('CHF', '瑞士法郎', '1法郎', 1.04324);
INSERT INTO `exchange_rate` VALUES ('CLP', '智利比索', '1比索', 0.001204);
INSERT INTO `exchange_rate` VALUES ('CNY', '人民币元', '1元', 0.150134);
INSERT INTO `exchange_rate` VALUES ('COP', '哥伦比亚比索', '1比索', 0.000263);
INSERT INTO `exchange_rate` VALUES ('CZK', '捷克克朗', '1克朗', 0.043465);
INSERT INTO `exchange_rate` VALUES ('DKK', '丹麦克朗', '1克朗', 0.144792);
INSERT INTO `exchange_rate` VALUES ('DZD', '阿尔及利亚第纳尔', '1第纳尔', 0.006872);
INSERT INTO `exchange_rate` VALUES ('EGP', '埃及镑', '1镑', 0.053749);
INSERT INTO `exchange_rate` VALUES ('EUR', '欧元', '1欧元', 1.07717);
INSERT INTO `exchange_rate` VALUES ('GBP', '英镑', '1英镑', 1.26416);
INSERT INTO `exchange_rate` VALUES ('GHS', '加纳塞地', '1赛地', 0.128617);
INSERT INTO `exchange_rate` VALUES ('GYD', '圭亚那元', '1元', 0.00478);
INSERT INTO `exchange_rate` VALUES ('HKD', '港元', '1元', 0.127412);
INSERT INTO `exchange_rate` VALUES ('HRK', '克罗地亚库纳', '1库纳', 0.142359);
INSERT INTO `exchange_rate` VALUES ('HUF', '匈牙利福林', '1福林', 0.002735);
INSERT INTO `exchange_rate` VALUES ('IDR', '印度尼西亚卢比', '1卢比', 0.000069);
INSERT INTO `exchange_rate` VALUES ('ILS', '以色列谢客尔', '1谢客尔', 0.299433);
INSERT INTO `exchange_rate` VALUES ('INR', '印度卢比', '1卢比', 0.01289);
INSERT INTO `exchange_rate` VALUES ('IQD', '伊拉克第纳尔', '1第纳尔', 0.000685);
INSERT INTO `exchange_rate` VALUES ('IRR', '伊朗里亚尔', '1里亚尔', 0.000024);
INSERT INTO `exchange_rate` VALUES ('ISK', '冰岛克朗', '1克朗', 0.00786);
INSERT INTO `exchange_rate` VALUES ('JOD', '约旦第纳尔', '1第纳尔', 1.40786);
INSERT INTO `exchange_rate` VALUES ('JPY', '日元', '1元', 0.007822);
INSERT INTO `exchange_rate` VALUES ('KES', '肯尼亚先令', '1先令', 0.008569);
INSERT INTO `exchange_rate` VALUES ('KRW', '韩元', '1元', 0.000809);
INSERT INTO `exchange_rate` VALUES ('KWD', '科威特第纳尔', '1第纳尔', 3.26808);
INSERT INTO `exchange_rate` VALUES ('KZT', '哈萨克斯坦坚戈', '1坚戈', 0.002363);
INSERT INTO `exchange_rate` VALUES ('LAK', '老挝基普', '1基普', 0.000074);
INSERT INTO `exchange_rate` VALUES ('LBP', '黎巴嫩镑', '1镑', 0.000661);
INSERT INTO `exchange_rate` VALUES ('LKR', '斯里兰卡卢比', '1卢比', 0.002767);
INSERT INTO `exchange_rate` VALUES ('LYD', '利比亚第纳尔', '1第纳尔', 0.209562);
INSERT INTO `exchange_rate` VALUES ('MAD', '摩洛哥迪拉姆', '1迪拉姆', 0.101155);
INSERT INTO `exchange_rate` VALUES ('MDL', '摩尔多瓦列伊', '1列伊', 0.052521);
INSERT INTO `exchange_rate` VALUES ('MKD', '马其顿第纳尔', '1第纳尔', 0.017486);
INSERT INTO `exchange_rate` VALUES ('MMK', '缅甸缅元', '1元', 0.00054);
INSERT INTO `exchange_rate` VALUES ('MNT', '蒙古图格里克', '1图格里克', 0.000321);
INSERT INTO `exchange_rate` VALUES ('MOP', '澳门元', '1元', 0.12364);
INSERT INTO `exchange_rate` VALUES ('MUR', '毛里求斯卢比', '1卢比', 0.022936);
INSERT INTO `exchange_rate` VALUES ('MVR', '马尔代夫卢非亚', '1卢非亚', 0.064683);
INSERT INTO `exchange_rate` VALUES ('MWK', '马拉维克瓦查', '1克瓦查', 0.000984);
INSERT INTO `exchange_rate` VALUES ('MXN', '墨西哥比索', '1比索', 0.051151);
INSERT INTO `exchange_rate` VALUES ('MYR', '马来西亚林吉特', '1林吉特', 0.229052);
INSERT INTO `exchange_rate` VALUES ('NGN', '尼日利亚奈拉', '1奈拉', 0.002408);
INSERT INTO `exchange_rate` VALUES ('NOK', '挪威克朗', '1克朗', 0.106282);
INSERT INTO `exchange_rate` VALUES ('NPR', '尼泊尔卢比', '1卢比', 0.00806);
INSERT INTO `exchange_rate` VALUES ('NZD', '新西兰元', '1元', 0.655051);
INSERT INTO `exchange_rate` VALUES ('OMR', '阿曼里亚尔', '1里亚尔', 2.59737);
INSERT INTO `exchange_rate` VALUES ('PEN', '秘鲁索尔', '1索尔', 0.271961);
INSERT INTO `exchange_rate` VALUES ('PHP', '菲律宾比索', '1比索', 0.019077);
INSERT INTO `exchange_rate` VALUES ('PKR', '巴基斯坦卢比', '1卢比', 0.005032);
INSERT INTO `exchange_rate` VALUES ('PLN', '波兰兹罗提', '1兹罗提', 0.234952);
INSERT INTO `exchange_rate` VALUES ('PYG', '巴拉圭瓜拉尼', '1瓜拉尼', 0.000145);
INSERT INTO `exchange_rate` VALUES ('QAR', '卡塔尔里亚尔', '1里亚尔', 0.273916);
INSERT INTO `exchange_rate` VALUES ('RON', '罗马尼亚列伊', '1列伊', 0.217278);
INSERT INTO `exchange_rate` VALUES ('RSD', '塞尔维亚第纳尔', '1第纳尔', 0.009145);
INSERT INTO `exchange_rate` VALUES ('RUB', '俄罗斯卢布', '1卢布', 0.015685);
INSERT INTO `exchange_rate` VALUES ('SAR', '沙特里亚尔', '1里亚尔', 0.26665);
INSERT INTO `exchange_rate` VALUES ('SDG', '新苏丹镑', '1镑', 0.002238);
INSERT INTO `exchange_rate` VALUES ('SEK', '瑞典克朗', '1克朗', 0.102509);
INSERT INTO `exchange_rate` VALUES ('SGD', '新加坡元', '1元', 0.73147);
INSERT INTO `exchange_rate` VALUES ('SLL', '塞拉利昂利昂', '1利昂', 0.000077);
INSERT INTO `exchange_rate` VALUES ('SRD', '苏里南元', '1元', 0.0477);
INSERT INTO `exchange_rate` VALUES ('SSP', '南苏丹镑', '1镑', 0.00215);
INSERT INTO `exchange_rate` VALUES ('SYP', '叙利亚镑', '1镑', 0.000398);
INSERT INTO `exchange_rate` VALUES ('THB', '泰铢', '1铢', 0.029323);
INSERT INTO `exchange_rate` VALUES ('TND', '突尼斯第纳尔', '1第纳尔', 0.33129);
INSERT INTO `exchange_rate` VALUES ('TRY', '土耳其里拉', '1里拉', 0.061037);
INSERT INTO `exchange_rate` VALUES ('TWD', '台湾元', '1元', 0.034378);
INSERT INTO `exchange_rate` VALUES ('TZS', '坦桑尼亚先令', '1先令', 0.00043);
INSERT INTO `exchange_rate` VALUES ('UAH', '乌克兰格里夫那', '1格里夫那', 0.033848);
INSERT INTO `exchange_rate` VALUES ('UGX', '乌干达先令', '1先令', 0.000265);
INSERT INTO `exchange_rate` VALUES ('USD', '美元', 'Dollar', 1);
INSERT INTO `exchange_rate` VALUES ('UYU', '乌拉圭比索', '1比索', 0.025063);
INSERT INTO `exchange_rate` VALUES ('UZS', '乌兹别克斯坦苏姆', '1苏姆', 0.000091);
INSERT INTO `exchange_rate` VALUES ('VEF', '委内瑞拉博利瓦', '1博利瓦', 0.000004);
INSERT INTO `exchange_rate` VALUES ('VND', '越南盾', '1盾', 0.000043);
INSERT INTO `exchange_rate` VALUES ('XAF', '刚果中非共同体法郎', '1法郎', 0.001611);
INSERT INTO `exchange_rate` VALUES ('XDR', '特别提款权', '1特别提款权', 1.34915);
INSERT INTO `exchange_rate` VALUES ('YER', '也门里亚尔', '1里亚尔', 0.003997);
INSERT INTO `exchange_rate` VALUES ('ZAR', '南非兰特', '1兰特', 0.064574);
INSERT INTO `exchange_rate` VALUES ('ZMW', '赞比亚克瓦查', '1克瓦查', 0.057971);

-- ----------------------------
-- Table structure for salesman
-- ----------------------------
DROP TABLE IF EXISTS `salesman`;
CREATE TABLE `salesman`  (
  `salesman_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '交易员编号',
  `salesman_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易员名字',
  `company_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易员所属公司代号',
  PRIMARY KEY (`salesman_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '交易员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salesman
-- ----------------------------
INSERT INTO `salesman` VALUES ('CITI1001', '龙小一', 'CITIBank');
INSERT INTO `salesman` VALUES ('CITI1002', '杜小二', 'CITIBank');
INSERT INTO `salesman` VALUES ('CITI1003', '张小三', 'CITIBank');
INSERT INTO `salesman` VALUES ('CITI1004', '李小四', 'CITIBank');
INSERT INTO `salesman` VALUES ('CITI1005', '王小五', 'CITIBank');
INSERT INTO `salesman` VALUES ('CITI1006', '雷小六', 'CITIBank');
INSERT INTO `salesman` VALUES ('CITI1007', '贺小七', 'CITIBank');
INSERT INTO `salesman` VALUES ('CITI1008', '肖小八', 'CITIBank');
INSERT INTO `salesman` VALUES ('CITI1009', '刘小九', 'CITIBank');
INSERT INTO `salesman` VALUES ('CITI1010', '赵小十', 'CITIBank');

-- ----------------------------
-- Table structure for shares
-- ----------------------------
DROP TABLE IF EXISTS `shares`;
CREATE TABLE `shares`  (
  `RIC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '股票RIC编号',
  `shares_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '股票名称',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '股票的行业分类',
  `shares_price` float NULL DEFAULT NULL COMMENT '股票的单价',
  `currency_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '可交易的货币编号',
  `shares_num` bigint(20) NULL DEFAULT NULL COMMENT '股票发行总数',
  `trade_limit` int(11) NULL DEFAULT NULL COMMENT '个人持有最大数限制',
  `shares_flag` int(11) NULL DEFAULT NULL COMMENT '状态符，标志是否可交易',
  PRIMARY KEY (`RIC`) USING BTREE,
  INDEX `shares_shares_class_class_id_fk`(`class_id`) USING BTREE,
  INDEX `shares_exchange_rate_currency_id_fk`(`currency_id`) USING BTREE,
  CONSTRAINT `shares_exchange_rate_currency_id_fk` FOREIGN KEY (`currency_id`) REFERENCES `exchange_rate` (`currency_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shares_shares_class_class_id_fk` FOREIGN KEY (`class_id`) REFERENCES `shares_class` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '股票信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shares
-- ----------------------------
INSERT INTO `shares` VALUES ('1001', '湖大优选', 59, 7.91, 'USD', 3942775, 10000, 1);
INSERT INTO `shares` VALUES ('1002', '小湖快递', 58, 76.47, 'CNY', 3974924, 15000, 1);
INSERT INTO `shares` VALUES ('1003', '麓山科技', 17, 10.1, 'AUD', 3795743, 20000, 1);
INSERT INTO `shares` VALUES ('1004', '大湖软件', 28, 8.16, 'EUR', 3902066, 15000, 1);
INSERT INTO `shares` VALUES ('1005', '天马证券', 15, 10.59, 'GBP', 3937433, 20000, 1);
INSERT INTO `shares` VALUES ('1006', '爱晚广告', 29, 65.75, 'HKD', 3857532, 15000, 1);
INSERT INTO `shares` VALUES ('1007', '荫马重工', 40, 1100.36, 'JPY', 3875840, 20000, 1);
INSERT INTO `shares` VALUES ('1008', '德智影视', 35, 15231.1, 'KRW', 3820308, 25000, 1);
INSERT INTO `shares` VALUES ('1009', '复临建设', 11, 238.12, 'THB', 3881454, 15000, 1);
INSERT INTO `shares` VALUES ('1010', '橘子文创', 5, 7.9, 'USD', 3868184, 20000, 1);
INSERT INTO `shares` VALUES ('ABST', 'ABST', 1, 8.54, 'USD', 9273480, 50000, 1);
INSERT INTO `shares` VALUES ('BRGGF', 'BRGGF', 13, 12.27, 'USD', 9261844, 50000, 1);
INSERT INTO `shares` VALUES ('HEOFF', 'HEOFF', 24, 4.4, 'USD', 8869052, 50000, 1);
INSERT INTO `shares` VALUES ('IGXT', 'IGXT', 39, 5.3, 'USD', 8923197, 50000, 1);
INSERT INTO `shares` VALUES ('RLXXF', 'RLXXF', 44, 7.11, 'USD', 8586825, 50000, 1);

-- ----------------------------
-- Table structure for shares_class
-- ----------------------------
DROP TABLE IF EXISTS `shares_class`;
CREATE TABLE `shares_class`  (
  `class_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别编号，自增',
  `class_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别名称',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '股票所属行业类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shares_class
-- ----------------------------
INSERT INTO `shares_class` VALUES (1, '白色家电');
INSERT INTO `shares_class` VALUES (2, '饮料制造');
INSERT INTO `shares_class` VALUES (3, '食品加工制造');
INSERT INTO `shares_class` VALUES (4, '医药');
INSERT INTO `shares_class` VALUES (5, '文化艺术');
INSERT INTO `shares_class` VALUES (6, '生物制品');
INSERT INTO `shares_class` VALUES (7, '医疗器械服务');
INSERT INTO `shares_class` VALUES (8, '保险及其他');
INSERT INTO `shares_class` VALUES (9, '银行');
INSERT INTO `shares_class` VALUES (10, '煤炭开采及加工');
INSERT INTO `shares_class` VALUES (11, '建筑装饰');
INSERT INTO `shares_class` VALUES (12, '医药商业');
INSERT INTO `shares_class` VALUES (13, '电力');
INSERT INTO `shares_class` VALUES (14, '燃气水务');
INSERT INTO `shares_class` VALUES (15, '证券');
INSERT INTO `shares_class` VALUES (16, '通信服务');
INSERT INTO `shares_class` VALUES (17, '电子制造');
INSERT INTO `shares_class` VALUES (18, '汽车整体');
INSERT INTO `shares_class` VALUES (19, '汽车零部件');
INSERT INTO `shares_class` VALUES (20, '房地产开发');
INSERT INTO `shares_class` VALUES (21, '公路铁路运输');
INSERT INTO `shares_class` VALUES (22, '化学制品');
INSERT INTO `shares_class` VALUES (23, '有色冶炼加工');
INSERT INTO `shares_class` VALUES (24, '建筑材料');
INSERT INTO `shares_class` VALUES (25, '通用设备');
INSERT INTO `shares_class` VALUES (26, '计算机设备');
INSERT INTO `shares_class` VALUES (27, '家用轻工');
INSERT INTO `shares_class` VALUES (28, '计算机应用');
INSERT INTO `shares_class` VALUES (29, '传媒');
INSERT INTO `shares_class` VALUES (30, '光学光电子');
INSERT INTO `shares_class` VALUES (31, '交运设备服务');
INSERT INTO `shares_class` VALUES (32, '港口航运');
INSERT INTO `shares_class` VALUES (33, '机场航运');
INSERT INTO `shares_class` VALUES (34, '园区开发');
INSERT INTO `shares_class` VALUES (35, '影视娱乐');
INSERT INTO `shares_class` VALUES (36, '石油矿业开采');
INSERT INTO `shares_class` VALUES (37, '采掘服务');
INSERT INTO `shares_class` VALUES (38, '化工合成材料');
INSERT INTO `shares_class` VALUES (39, '化工新材料');
INSERT INTO `shares_class` VALUES (40, '钢铁');
INSERT INTO `shares_class` VALUES (41, '专用设备');
INSERT INTO `shares_class` VALUES (42, '仪器仪表');
INSERT INTO `shares_class` VALUES (43, '通信设备');
INSERT INTO `shares_class` VALUES (44, '视听器材');
INSERT INTO `shares_class` VALUES (45, '纺织制造');
INSERT INTO `shares_class` VALUES (46, '服装家纺');
INSERT INTO `shares_class` VALUES (47, '造纸');
INSERT INTO `shares_class` VALUES (48, '包装印刷');
INSERT INTO `shares_class` VALUES (49, '零售');
INSERT INTO `shares_class` VALUES (50, '贸易');
INSERT INTO `shares_class` VALUES (51, '酒店及餐饮');
INSERT INTO `shares_class` VALUES (52, '国防军工');
INSERT INTO `shares_class` VALUES (53, '电气设备');
INSERT INTO `shares_class` VALUES (54, '半导体及原件');
INSERT INTO `shares_class` VALUES (55, '其他电子');
INSERT INTO `shares_class` VALUES (56, '非汽车交运');
INSERT INTO `shares_class` VALUES (57, '公交');
INSERT INTO `shares_class` VALUES (58, '物流');
INSERT INTO `shares_class` VALUES (59, '电子商务');

-- ----------------------------
-- Table structure for shares_history
-- ----------------------------
DROP TABLE IF EXISTS `shares_history`;
CREATE TABLE `shares_history`  (
  `record_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录编号，自增',
  `RIC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '股票RIC编号',
  `closing_price` float NULL DEFAULT NULL COMMENT '股票当天收盘价(Notional)',
  `transaction_in` bigint(20) NULL DEFAULT NULL COMMENT '股票当天总买入数量',
  `transaction_out` bigint(20) NULL DEFAULT NULL COMMENT '股票当天总卖出数量',
  `record_date` date NULL DEFAULT NULL COMMENT '记录时间',
  PRIMARY KEY (`record_id`) USING BTREE,
  INDEX `shares_history_shares_RIC_fk`(`RIC`) USING BTREE,
  CONSTRAINT `shares_history_shares_RIC_fk` FOREIGN KEY (`RIC`) REFERENCES `shares` (`RIC`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '股票记录表（日结）' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shares_history
-- ----------------------------
INSERT INTO `shares_history` VALUES (1, 'IGXT', 5.3, 176590, 0, '2022-01-03');
INSERT INTO `shares_history` VALUES (2, 'ABST', 8.54, 259886, 0, '2022-01-05');
INSERT INTO `shares_history` VALUES (3, 'BRGGF', 12.27, 305420, 0, '2022-01-14');
INSERT INTO `shares_history` VALUES (4, '1010', 7.9, 364851, 5676, '2022-01-17');
INSERT INTO `shares_history` VALUES (5, '1006', 8.37734, 429017, 13131, '2022-01-24');
INSERT INTO `shares_history` VALUES (6, '1007', 8.60702, 469607, 17357, '2022-01-24');
INSERT INTO `shares_history` VALUES (7, '1008', 12.322, 55077, 12899, '2022-02-04');
INSERT INTO `shares_history` VALUES (8, 'IGXT', 5.3, 112117, 44503, '2022-02-08');
INSERT INTO `shares_history` VALUES (9, '1006', 8.37734, 172325, 47715, '2022-02-14');
INSERT INTO `shares_history` VALUES (10, '1005', 13.3875, 312223, 57964, '2022-02-18');
INSERT INTO `shares_history` VALUES (11, '1009', 6.98239, 412185, 84074, '2022-02-22');
INSERT INTO `shares_history` VALUES (12, '1010', 7.9, 444523, 108171, '2022-02-26');
INSERT INTO `shares_history` VALUES (13, 'ABST', 8.54, 40654, 45888, '2022-03-03');
INSERT INTO `shares_history` VALUES (14, 'IGXT', 5.3, 63036, 88175, '2022-03-08');
INSERT INTO `shares_history` VALUES (15, 'ABST', 8.54, 77805, 123603, '2022-03-13');
INSERT INTO `shares_history` VALUES (16, 'RLXXF', 7.11, 172693, 148085, '2022-03-15');
INSERT INTO `shares_history` VALUES (17, 'HEOFF', 4.4, 230758, 203636, '2022-03-20');
INSERT INTO `shares_history` VALUES (18, '1003', 7.26031, 337193, 210890, '2022-03-25');
INSERT INTO `shares_history` VALUES (19, 'RLXXF', 7.11, 61820, 3593, '2022-04-03');
INSERT INTO `shares_history` VALUES (20, 'IGXT', 5.3, 102454, 35416, '2022-04-08');
INSERT INTO `shares_history` VALUES (21, 'BRGGF', 12.27, 130254, 62213, '2022-04-14');
INSERT INTO `shares_history` VALUES (22, '1003', 7.26031, 168337, 86819, '2022-04-19');
INSERT INTO `shares_history` VALUES (23, 'IGXT', 5.3, 268350, 141968, '2022-04-24');
INSERT INTO `shares_history` VALUES (24, '1009', 6.98239, 338912, 160362, '2022-04-25');
INSERT INTO `shares_history` VALUES (25, 'BRGGF', 12.27, 9922, 38942, '2022-05-03');
INSERT INTO `shares_history` VALUES (26, '1010', 7.9, 63436, 76913, '2022-05-06');
INSERT INTO `shares_history` VALUES (27, 'ABST', 8.54, 85689, 118009, '2022-05-10');
INSERT INTO `shares_history` VALUES (28, 'RLXXF', 7.11, 129934, 141572, '2022-05-16');
INSERT INTO `shares_history` VALUES (29, 'HEOFF', 4.4, 171337, 177003, '2022-05-21');
INSERT INTO `shares_history` VALUES (30, '1001', 7.91, 231587, 197726, '2022-05-24');
INSERT INTO `shares_history` VALUES (31, 'HEOFF', 4.4, 17515, 45069, '2022-06-05');
INSERT INTO `shares_history` VALUES (32, 'HEOFF', 4.4, 39993, 60628, '2022-06-08');
INSERT INTO `shares_history` VALUES (33, 'IGXT', 5.3, 44315, 129114, '2022-06-14');
INSERT INTO `shares_history` VALUES (34, '1006', 8.37734, 106888, 130215, '2022-06-16');
INSERT INTO `shares_history` VALUES (35, '1005', 13.3875, 161784, 152101, '2022-06-23');
INSERT INTO `shares_history` VALUES (36, '1006', 8.37734, 197012, 183162, '2022-06-24');
INSERT INTO `shares_history` VALUES (37, '1003', 7.26031, 46775, 15015, '2022-07-03');
INSERT INTO `shares_history` VALUES (38, 'HEOFF', 4.4, 77000, 57338, '2022-07-05');
INSERT INTO `shares_history` VALUES (39, '1010', 7.9, 113572, 71745, '2022-07-13');
INSERT INTO `shares_history` VALUES (40, 'IGXT', 5.3, 127385, 119006, '2022-07-19');
INSERT INTO `shares_history` VALUES (41, '1004', 8.78971, 174224, 136744, '2022-07-20');
INSERT INTO `shares_history` VALUES (42, 'HEOFF', 4.4, 202749, 206704, '2022-07-25');
INSERT INTO `shares_history` VALUES (43, '1006', 8.37734, 15318, 52176, '2022-08-01');
INSERT INTO `shares_history` VALUES (44, 'RLXXF', 7.11, 19168, 67958, '2022-08-08');
INSERT INTO `shares_history` VALUES (45, 'BRGGF', 12.27, 37810, 155260, '2022-08-12');
INSERT INTO `shares_history` VALUES (46, '1010', 7.9, 58025, 163636, '2022-08-15');
INSERT INTO `shares_history` VALUES (47, 'RLXXF', 7.11, 102723, 194545, '2022-08-23');
INSERT INTO `shares_history` VALUES (48, 'HEOFF', 4.4, 115815, 244203, '2022-08-27');
INSERT INTO `shares_history` VALUES (54, 'IGXT', 5.3, 27144, 82901, '2022-08-28');
INSERT INTO `shares_history` VALUES (55, '1009', 6.98239, 43447, 120907, '2022-08-29');
INSERT INTO `shares_history` VALUES (56, '1009', 6.98239, 47257, 156999, '2022-08-30');
INSERT INTO `shares_history` VALUES (57, '1010', 7.9, 55438, 166846, '2022-08-31');
INSERT INTO `shares_history` VALUES (58, '1003', 7.26031, 35883, 3545, '2022-09-01');

-- ----------------------------
-- Table structure for transaction_records
-- ----------------------------
DROP TABLE IF EXISTS `transaction_records`;
CREATE TABLE `transaction_records`  (
  `record_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录编号，自增',
  `RIC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '股票RIC编号',
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易者id',
  `transaction_size` int(11) NULL DEFAULT NULL COMMENT '交易数量',
  `transaction_time` datetime NULL DEFAULT NULL COMMENT '交易时间',
  `salesman_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易员编号',
  `currency_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货币编号',
  `transaction_price` float NULL DEFAULT NULL COMMENT '股票成交单价',
  `transaction_flag` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易类型标志，buy or sell',
  `shares_hold` bigint(20) NULL DEFAULT NULL COMMENT '用户当前的该股持有数（包含当前交易）',
  `issuer_sector` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发行部门',
  `transaction_mode` int(11) NULL DEFAULT NULL COMMENT '交易模式，1：HT，0：PT',
  PRIMARY KEY (`record_id`) USING BTREE,
  INDEX `transaction_records_exchange_rate_currency_id_fk`(`currency_id`) USING BTREE,
  INDEX `transaction_records_salesman_salesman_id_fk`(`salesman_id`) USING BTREE,
  INDEX `transaction_records_shares_RIC_fk`(`RIC`) USING BTREE,
  INDEX `transaction_records_user_user_id_fk`(`user_id`) USING BTREE,
  CONSTRAINT `transaction_records_exchange_rate_currency_id_fk` FOREIGN KEY (`currency_id`) REFERENCES `exchange_rate` (`currency_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `transaction_records_salesman_salesman_id_fk` FOREIGN KEY (`salesman_id`) REFERENCES `salesman` (`salesman_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `transaction_records_shares_RIC_fk` FOREIGN KEY (`RIC`) REFERENCES `shares` (`RIC`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `transaction_records_user_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 557 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '交易记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of transaction_records
-- ----------------------------
INSERT INTO `transaction_records` VALUES (1, '1001', '10001', 125, '2022-01-03 05:37:20', 'CITI1006', 'IRR', 329583, 'buy', 125, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (2, '1006', '10001', 6391, '2022-01-03 23:35:34', 'CITI1009', 'ISK', 1065.82, 'buy', 6391, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (3, 'ABST', '10001', 24552, '2022-01-03 12:11:50', 'CITI1001', 'SGD', 11.6751, 'buy', 24552, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (4, '1005', '10002', 1179, '2022-01-03 17:39:03', 'CITI1005', 'BRL', 63.6419, 'buy', 1179, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (5, 'BRGGF', '10002', 261, '2022-01-03 00:24:52', 'CITI1007', 'BRL', 58.3297, 'buy', 261, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (6, '1001', '10003', 8878, '2022-01-03 22:25:39', 'CITI1009', 'PLN', 33.6665, 'buy', 8878, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (7, '1004', '10003', 3249, '2022-01-03 16:15:06', 'CITI1005', 'PKR', 1746.76, 'buy', 3249, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (8, 'HEOFF', '10004', 47979, '2022-01-03 07:42:00', 'CITI1004', 'MAD', 43.4976, 'buy', 47979, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (9, '1003', '10005', 1171, '2022-01-03 04:32:13', 'CITI1005', 'BOB', 50.0597, 'buy', 1171, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (10, '1007', '10005', 15336, '2022-01-03 04:09:11', 'CITI1003', 'GBP', 6.80849, 'buy', 15336, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (11, 'ABST', '10005', 34578, '2022-01-03 17:36:33', 'CITI1006', 'GBP', 6.75547, 'buy', 34578, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (12, 'IGXT', '10005', 32891, '2022-01-03 11:18:08', 'CITI1006', 'AED', 19.4622, 'buy', 32891, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (13, '1009', '10002', 12219, '2022-01-05 13:34:19', 'CITI1008', 'AED', 25.6401, 'buy', 12219, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (14, 'IGXT', '10002', 4854, '2022-01-05 13:41:54', 'CITI1010', 'IRR', 220833, 'buy', 4854, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (15, 'RLXXF', '10002', 7127, '2022-01-05 14:18:51', 'CITI1001', 'DZD', 1034.63, 'buy', 7127, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (16, '1007', '10003', 17821, '2022-01-05 20:34:33', 'CITI1008', 'XDR', 6.37958, 'buy', 17821, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (17, '1001', '10004', 4419, '2022-01-05 13:20:28', 'CITI1008', 'ILS', 26.4166, 'buy', 4419, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (18, '1004', '10004', 9227, '2022-01-05 19:34:59', 'CITI1010', 'JPY', 1123.72, 'buy', 9227, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (19, '1006', '10004', 3832, '2022-01-05 08:25:09', 'CITI1006', 'AED', 30.7625, 'buy', 3832, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (20, 'ABST', '10004', 23797, '2022-01-05 07:06:02', 'CITI1009', 'PLN', 36.3479, 'buy', 23797, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (21, '1001', '10002', 7178, '2022-01-14 13:40:48', 'CITI1009', 'RUB', 504.303, 'buy', 7178, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (22, '1003', '10004', 17909, '2022-01-14 13:31:45', 'CITI1008', 'UZS', 79783.7, 'buy', 17909, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (23, 'BRGGF', '10005', 20447, '2022-01-14 14:35:19', 'CITI1008', 'AUD', 17.0691, 'buy', 20447, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (24, '1001', '10001', 3896, '2022-01-17 18:30:03', 'CITI1007', 'SEK', 77.164, 'buy', 4021, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (25, '1008', '10001', 5262, '2022-01-17 21:06:29', 'CITI1003', 'BYN', 41.6187, 'buy', 5262, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (26, '1009', '10001', 2881, '2022-01-17 04:04:49', 'CITI1001', 'MVR', 107.948, 'buy', 2881, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (27, '1003', '10002', 11116, '2022-01-17 05:33:49', 'CITI1006', 'MOP', 58.7214, 'buy', 11116, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (28, '1002', '10003', 13446, '2022-01-17 15:16:53', 'CITI1004', 'DZD', 1670.66, 'buy', 13446, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (29, '1007', '10003', 5676, '2022-01-17 01:07:12', 'CITI1009', 'UYU', 343.415, 'sell', 12145, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (30, '1004', '10004', 1124, '2022-01-17 07:13:40', 'CITI1008', 'MKD', 502.671, 'buy', 10351, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (31, 'RLXXF', '10004', 9941, '2022-01-17 07:09:31', 'CITI1010', 'GBP', 5.62429, 'buy', 9941, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (32, '1009', '10005', 68, '2022-01-17 10:21:58', 'CITI1006', 'LBP', 10563.4, 'buy', 68, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (33, '1010', '10005', 11697, '2022-01-17 20:37:10', 'CITI1005', 'ZMW', 136.275, 'buy', 11697, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (34, '1005', '10001', 17537, '2022-01-24 01:15:33', 'CITI1004', 'ALL', 1505.56, 'buy', 17537, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (35, '1001', '10002', 4185, '2022-01-24 09:09:29', 'CITI1005', 'PHP', 414.635, 'sell', 2993, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (36, '1010', '10002', 1738, '2022-01-24 11:21:43', 'CITI1006', 'LYD', 37.6977, 'buy', 1738, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (37, 'IGXT', '10002', 38104, '2022-01-24 07:00:38', 'CITI1010', 'RSD', 579.552, 'buy', 42958, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (38, '1002', '10003', 3270, '2022-01-24 21:25:38', 'CITI1001', 'SLL', 149101, 'sell', 10176, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (39, '1007', '10003', 1787, '2022-01-24 01:10:14', 'CITI1002', 'SDG', 3845.85, 'buy', 19608, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (40, '1003', '10004', 1627, '2022-01-24 17:53:02', 'CITI1005', 'BRL', 34.5144, 'buy', 19536, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (41, '1006', '10005', 3373, '2022-01-24 01:27:07', 'CITI1009', 'MDL', 159.505, 'buy', 3373, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (42, '1003', '10001', 17233, '2022-01-24 06:28:54', 'CITI1001', 'PKR', 1442.83, 'buy', 17233, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (43, 'BRGGF', '10002', 194, '2022-01-24 02:44:58', 'CITI1005', 'BGN', 22.3363, 'sell', 67, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (44, '1006', '10003', 8446, '2022-01-24 06:52:56', 'CITI1008', 'KZT', 3545.21, 'buy', 8446, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (45, '1008', '10004', 1541, '2022-01-24 07:58:52', 'CITI1006', 'RUB', 785.589, 'buy', 1541, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (46, 'ABST', '10004', 13370, '2022-01-24 22:32:27', 'CITI1008', 'UYU', 340.741, 'buy', 37167, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (47, '1003', '10005', 774, '2022-01-24 15:29:01', 'CITI1009', 'ALL', 816.5, 'sell', 397, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (48, '1007', '10005', 3258, '2022-01-24 21:43:37', 'CITI1010', 'TND', 25.9803, 'sell', 12078, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (49, '1009', '10001', 2775, '2022-02-04 05:34:12', 'CITI1006', 'BND', 9.56693, 'sell', 106, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (50, '1005', '10002', 541, '2022-02-04 12:56:35', 'CITI1001', 'COP', 50902.9, 'sell', 638, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (51, 'ABST', '10002', 33218, '2022-02-04 18:22:52', 'CITI1005', 'HRK', 59.9892, 'buy', 33218, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (52, '1004', '10004', 4595, '2022-02-04 10:00:10', 'CITI1008', 'MUR', 383.228, 'sell', 4632, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (53, '1005', '10004', 15155, '2022-02-04 19:02:24', 'CITI1007', 'VND', 311336, 'buy', 15155, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (54, '1006', '10004', 3734, '2022-02-04 12:46:14', 'CITI1006', 'OMR', 3.22532, 'sell', 98, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (55, '1007', '10004', 6704, '2022-02-04 07:44:02', 'CITI1002', 'YER', 2153.37, 'buy', 6704, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (56, '1008', '10004', 1254, '2022-02-04 15:41:44', 'CITI1003', 'SYP', 30959.7, 'sell', 287, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (57, '1003', '10001', 1524, '2022-02-08 21:08:10', 'CITI1003', 'BYN', 24.5225, 'sell', 15709, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (58, '1002', '10002', 8076, '2022-02-08 22:02:11', 'CITI1002', 'SEK', 111.997, 'buy', 8076, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (59, '1003', '10002', 8165, '2022-02-08 18:29:55', 'CITI1009', 'SAR', 27.2279, 'sell', 2951, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (60, '1004', '10002', 1180, '2022-02-08 20:00:54', 'CITI1001', 'IRR', 366238, 'buy', 1180, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (61, '1006', '10002', 10122, '2022-02-08 09:24:48', 'CITI1001', 'BYN', 28.2953, 'buy', 10122, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (62, '1010', '10002', 13667, '2022-02-08 02:16:58', 'CITI1002', 'AUD', 10.9899, 'buy', 15405, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (63, 'HEOFF', '10002', 20975, '2022-02-08 05:27:06', 'CITI1003', 'CZK', 101.231, 'buy', 20975, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (64, 'IGXT', '10002', 1962, '2022-02-08 17:13:38', 'CITI1004', 'GBP', 4.19251, 'sell', 2892, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (65, '1004', '10003', 1078, '2022-02-08 16:59:26', 'CITI1004', 'DKK', 60.7057, 'buy', 4327, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (66, '1001', '10004', 1942, '2022-02-08 11:13:16', 'CITI1003', 'RUB', 504.303, 'buy', 6361, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (67, '1004', '10004', 4802, '2022-02-08 17:59:03', 'CITI1010', 'ZMW', 151.622, 'sell', 4425, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (68, 'IGXT', '10005', 15151, '2022-02-08 00:24:03', 'CITI1001', 'UGX', 20000, 'sell', 17740, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (69, 'RLXXF', '10001', 14761, '2022-02-14 15:37:30', 'CITI1006', 'EUR', 6.60063, 'buy', 14761, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (70, '1002', '10002', 6837, '2022-02-14 11:02:14', 'CITI1009', 'ARS', 1377.74, 'buy', 14913, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (71, '1003', '10002', 3377, '2022-02-14 02:47:55', 'CITI1004', 'MUR', 316.547, 'buy', 6328, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (72, '1008', '10002', 21535, '2022-02-14 23:49:44', 'CITI1007', 'MVR', 190.498, 'buy', 21535, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (73, '1002', '10003', 1753, '2022-02-14 23:37:23', 'CITI1005', 'UAH', 339.185, 'buy', 11929, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (74, '1002', '10004', 2667, '2022-02-14 12:23:52', 'CITI1005', 'MMK', 21260.6, 'buy', 2667, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (75, '1009', '10004', 8866, '2022-02-14 16:58:37', 'CITI1001', 'AED', 25.6401, 'buy', 8866, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (76, 'BRGGF', '10004', 412, '2022-02-14 19:34:41', 'CITI1010', 'LAK', 165811, 'buy', 412, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (77, '1006', '10005', 3212, '2022-02-14 00:06:44', 'CITI1005', 'CLP', 6957.92, 'sell', 161, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (78, '1002', '10001', 7426, '2022-02-18 10:19:49', 'CITI1005', 'BOB', 79.1596, 'buy', 7426, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (79, '1007', '10001', 1937, '2022-02-18 02:52:19', 'CITI1006', 'COP', 32726.3, 'buy', 1937, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (80, 'RLXXF', '10001', 4254, '2022-02-18 10:07:55', 'CITI1010', 'ARS', 853.234, 'sell', 10507, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (81, 'ABST', '10002', 3637, '2022-02-18 09:11:24', 'CITI1008', 'BYN', 28.8447, 'buy', 36855, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (82, 'HEOFF', '10002', 5995, '2022-02-18 06:27:16', 'CITI1009', 'NZD', 6.71703, 'sell', 14980, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (83, 'RLXXF', '10002', 34367, '2022-02-18 15:55:14', 'CITI1005', 'HRK', 49.9442, 'buy', 41494, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (84, '1003', '10003', 14458, '2022-02-18 21:32:22', 'CITI1001', 'ARS', 871.273, 'buy', 14458, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (85, '1005', '10003', 13154, '2022-02-18 21:11:24', 'CITI1009', 'HUF', 4894.86, 'buy', 13154, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (86, '1008', '10003', 22806, '2022-02-18 23:55:29', 'CITI1005', 'TZS', 28655.7, 'buy', 22806, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (87, '1010', '10003', 10665, '2022-02-18 00:35:49', 'CITI1010', 'BHD', 2.97858, 'buy', 10665, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (88, 'ABST', '10003', 2649, '2022-02-18 02:00:14', 'CITI1003', 'GHS', 66.3987, 'buy', 2649, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (89, 'IGXT', '10003', 11298, '2022-02-18 23:55:44', 'CITI1003', 'DKK', 36.6042, 'buy', 11298, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (90, 'RLXXF', '10003', 9593, '2022-02-18 23:50:53', 'CITI1007', 'UAH', 210.057, 'buy', 9593, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (91, '1005', '10004', 280, '2022-02-18 07:16:59', 'CITI1007', 'IDR', 194021, 'buy', 15435, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (92, '1005', '10005', 7628, '2022-02-18 17:48:14', 'CITI1007', 'XAF', 8310.03, 'buy', 7628, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (93, '1003', '10001', 4007, '2022-02-22 11:45:37', 'CITI1009', 'MKD', 415.207, 'buy', 19716, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (94, '1001', '10003', 25, '2022-02-22 16:29:12', 'CITI1001', 'RSD', 864.953, 'buy', 8903, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (95, '1005', '10003', 5202, '2022-02-22 03:26:43', 'CITI1008', 'VND', 311336, 'sell', 7952, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (96, '1007', '10003', 17020, '2022-02-22 20:36:34', 'CITI1001', 'CNY', 57.3289, 'sell', 801, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (97, '1010', '10003', 3888, '2022-02-22 08:00:34', 'CITI1002', 'DKK', 54.561, 'sell', 6777, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (98, 'HEOFF', '10003', 41247, '2022-02-22 11:17:28', 'CITI1001', 'AOA', 1841.77, 'buy', 41247, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (99, 'BRGGF', '10004', 47490, '2022-02-22 23:17:10', 'CITI1007', 'IRR', 511250, 'buy', 47902, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (100, '1009', '10005', 7193, '2022-02-22 17:42:25', 'CITI1004', 'KRW', 8630.89, 'buy', 7261, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (101, '1003', '10001', 9824, '2022-02-26 04:07:49', 'CITI1005', 'BGN', 13.2167, 'sell', 5885, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (102, '1008', '10001', 886, '2022-02-26 10:09:00', 'CITI1001', 'VND', 286557, 'sell', 4376, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (103, '1009', '10001', 2463, '2022-02-26 08:18:01', 'CITI1003', 'EUR', 6.48216, 'buy', 2569, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (104, 'IGXT', '10001', 9109, '2022-02-26 16:08:18', 'CITI1007', 'BWP', 63.3592, 'buy', 9109, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (105, '1002', '10002', 6755, '2022-02-26 02:32:56', 'CITI1002', 'AED', 42.1586, 'sell', 1321, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (106, '1004', '10002', 796, '2022-02-26 09:37:30', 'CITI1009', 'JPY', 1123.72, 'sell', 384, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (107, '1002', '10004', 4686, '2022-02-26 20:12:55', 'CITI1006', 'THB', 391.527, 'buy', 7353, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (108, '1008', '10004', 88, '2022-02-26 06:11:39', 'CITI1004', 'DZD', 1793.07, 'sell', 199, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (109, '1010', '10004', 16080, '2022-02-26 06:38:11', 'CITI1005', 'ZMW', 136.275, 'buy', 16080, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (110, '1010', '10005', 5748, '2022-02-26 02:45:57', 'CITI1010', 'LAK', 106757, 'sell', 5949, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (111, '1006', '10001', 4755, '2022-03-03 21:37:19', 'CITI1010', 'COP', 31853, 'buy', 11146, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (112, '1007', '10001', 1508, '2022-03-03 16:33:48', 'CITI1009', 'USD', 8.60702, 'sell', 429, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (113, '1002', '10002', 987, '2022-03-03 11:24:44', 'CITI1009', 'OMR', 4.42014, 'buy', 9063, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (114, '1001', '10003', 934, '2022-03-03 10:20:50', 'CITI1010', 'BRL', 37.6029, 'buy', 9812, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (115, '1003', '10003', 8876, '2022-03-03 07:03:57', 'CITI1010', 'OMR', 2.79526, 'sell', 5582, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (116, '1005', '10003', 2876, '2022-03-03 00:46:38', 'CITI1002', 'COP', 50902.9, 'buy', 16030, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (117, '1007', '10003', 12919, '2022-03-03 08:09:59', 'CITI1004', 'MAD', 85.0874, 'buy', 13720, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (118, 'ABST', '10004', 35504, '2022-03-03 20:56:52', 'CITI1010', 'AOA', 3574.72, 'sell', 1663, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (119, 'IGXT', '10004', 12959, '2022-03-03 23:46:52', 'CITI1004', 'ILS', 17.7001, 'buy', 12959, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (120, 'ABST', '10005', 5224, '2022-03-03 06:45:35', 'CITI1001', 'DKK', 58.9812, 'buy', 39802, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (121, '1001', '10001', 3507, '2022-03-08 02:10:38', 'CITI1008', 'PHP', 414.635, 'sell', 514, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (122, '1005', '10002', 242, '2022-03-08 22:34:18', 'CITI1001', 'ISK', 1703.24, 'sell', 937, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (123, '1006', '10002', 8678, '2022-03-08 21:22:37', 'CITI1005', 'BAM', 15.2886, 'sell', 1444, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (124, '1008', '10002', 1184, '2022-03-08 21:26:08', 'CITI1010', 'BGN', 22.4309, 'sell', 20351, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (125, 'ABST', '10002', 4976, '2022-03-08 10:39:31', 'CITI1005', 'SSP', 3972.09, 'buy', 38194, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (126, '1001', '10003', 1170, '2022-03-08 12:40:33', 'CITI1003', 'CHF', 7.58215, 'sell', 7708, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (127, '1008', '10004', 4963, '2022-03-08 08:47:25', 'CITI1009', 'LYD', 58.7986, 'buy', 5250, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (128, 'BRGGF', '10004', 2028, '2022-03-08 02:30:16', 'CITI1002', 'IQD', 17912.4, 'buy', 49930, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (129, 'ABST', '10005', 10415, '2022-03-08 17:22:01', 'CITI1010', 'VND', 198605, 'buy', 44993, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (130, 'IGXT', '10005', 27506, '2022-03-08 23:47:12', 'CITI1008', 'SDG', 2368.19, 'sell', 5385, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (131, '1005', '10001', 5066, '2022-03-13 18:04:40', 'CITI1010', 'HRK', 94.0401, 'sell', 12471, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (132, '1007', '10001', 224, '2022-03-13 22:55:53', 'CITI1007', 'KRW', 10639.1, 'sell', 205, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (133, '1006', '10002', 390, '2022-03-13 19:16:20', 'CITI1001', 'USD', 8.37734, 'sell', 1054, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (134, '1009', '10002', 63, '2022-03-13 05:56:38', 'CITI1010', 'CHF', 6.69299, 'buy', 12282, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (135, '1009', '10003', 14706, '2022-03-13 20:23:14', 'CITI1005', 'BOB', 48.1435, 'buy', 14706, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (136, '1003', '10004', 17989, '2022-03-13 09:11:28', 'CITI1002', 'INR', 563.252, 'sell', 1547, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (137, 'ABST', '10005', 11759, '2022-03-13 13:01:16', 'CITI1005', 'YER', 2136.6, 'sell', 22819, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (138, 'IGXT', '10002', 37604, '2022-03-15 12:59:46', 'CITI1007', 'KZT', 2242.91, 'buy', 40496, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (139, '1005', '10003', 3117, '2022-03-15 15:07:05', 'CITI1004', 'PYG', 92327.3, 'sell', 10037, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (140, '1010', '10003', 2480, '2022-03-15 22:41:50', 'CITI1002', 'BYN', 26.6831, 'buy', 9257, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (141, '1006', '10004', 5740, '2022-03-15 16:33:05', 'CITI1006', 'ZAR', 129.732, 'buy', 5838, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (142, 'ABST', '10004', 4915, '2022-03-15 14:06:38', 'CITI1002', 'LKR', 3086.38, 'sell', 32252, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (143, 'BRGGF', '10005', 16450, '2022-03-15 00:40:46', 'CITI1004', 'MMK', 22722.2, 'sell', 3997, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (144, 'RLXXF', '10005', 49064, '2022-03-15 20:20:00', 'CITI1002', 'CAD', 9.00026, 'buy', 49064, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (145, 'ABST', '10001', 17239, '2022-03-20 00:06:56', 'CITI1003', 'BYN', 28.8447, 'sell', 7313, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (146, '1007', '10002', 7253, '2022-03-20 16:01:53', 'CITI1008', 'ZMW', 148.471, 'buy', 7253, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (147, '1009', '10002', 11866, '2022-03-20 14:34:21', 'CITI1010', 'MNT', 21752, 'sell', 353, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (148, 'ABST', '10002', 16662, '2022-03-20 22:16:34', 'CITI1004', 'BGN', 15.5462, 'buy', 49880, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (149, '1002', '10003', 11031, '2022-03-20 04:37:00', 'CITI1002', 'AOA', 4805.67, 'sell', 898, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (150, '1006', '10003', 3100, '2022-03-20 17:58:42', 'CITI1006', 'PEN', 30.8035, 'sell', 5346, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (151, '1003', '10004', 5936, '2022-03-20 17:59:28', 'CITI1006', 'YER', 1816.44, 'sell', 13600, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (152, '1009', '10004', 5293, '2022-03-20 07:31:47', 'CITI1001', 'EUR', 6.48216, 'sell', 3573, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (153, 'RLXXF', '10004', 1086, '2022-03-20 14:14:11', 'CITI1005', 'USD', 7.11, 'sell', 8855, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (154, 'ABST', '10005', 12824, '2022-03-20 03:44:33', 'CITI1008', 'ALL', 960.414, 'buy', 47402, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (155, 'HEOFF', '10005', 21326, '2022-03-20 08:52:56', 'CITI1010', 'TWD', 127.989, 'buy', 21326, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (156, 'ABST', '10001', 7039, '2022-03-25 16:08:11', 'CITI1006', 'BGN', 15.5462, 'buy', 31591, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (157, 'BRGGF', '10001', 46731, '2022-03-25 17:14:44', 'CITI1007', 'CHF', 11.7614, 'buy', 46731, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (158, '1002', '10003', 7254, '2022-03-25 03:29:29', 'CITI1007', 'NGN', 4767.75, 'sell', 4675, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (159, '1007', '10003', 5433, '2022-03-25 11:39:39', 'CITI1003', 'KES', 1004.44, 'buy', 6234, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (160, '1010', '10003', 7175, '2022-03-25 20:08:17', 'CITI1005', 'RUB', 503.666, 'buy', 16432, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (161, 'IGXT', '10003', 1197, '2022-03-25 14:38:30', 'CITI1007', 'SGD', 7.24568, 'buy', 12495, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (162, '1008', '10004', 10122, '2022-03-25 20:12:58', 'CITI1004', 'JPY', 1575.3, 'buy', 10409, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (163, 'IGXT', '10004', 3716, '2022-03-25 10:25:46', 'CITI1003', 'QAR', 19.349, 'buy', 16675, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (164, '1001', '10005', 6007, '2022-03-25 12:40:48', 'CITI1003', 'NGN', 3284.88, 'buy', 6007, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (165, '1003', '10005', 19015, '2022-03-25 11:55:14', 'CITI1003', 'SYP', 18242, 'buy', 19412, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (166, '1004', '10001', 9749, '2022-04-03 01:24:21', 'CITI1010', 'GYD', 1838.85, 'buy', 9749, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (167, '1010', '10001', 14198, '2022-04-03 07:28:18', 'CITI1007', 'USD', 7.9, 'buy', 14198, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (168, '1005', '10002', 380, '2022-04-03 01:28:34', 'CITI1009', 'SEK', 130.598, 'sell', 557, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (169, '1005', '10003', 4044, '2022-04-03 05:04:36', 'CITI1003', 'COP', 50902.9, 'buy', 17198, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (170, 'RLXXF', '10003', 16616, '2022-04-03 18:52:05', 'CITI1007', 'ARS', 853.234, 'buy', 26209, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (171, '1008', '10005', 17213, '2022-04-03 21:07:13', 'CITI1005', 'TND', 37.1939, 'buy', 17213, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (172, 'RLXXF', '10005', 3213, '2022-04-03 14:34:28', 'CITI1009', 'DKK', 49.1049, 'sell', 45851, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (173, '1001', '10001', 4559, '2022-04-08 11:50:26', 'CITI1004', 'RON', 36.405, 'buy', 8580, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (174, '1003', '10001', 682, '2022-04-08 14:41:59', 'CITI1005', 'MYR', 31.6972, 'sell', 15027, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (175, '1006', '10001', 6635, '2022-04-08 02:25:00', 'CITI1006', 'NGN', 3478.96, 'buy', 13026, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (176, '1008', '10001', 2935, '2022-04-08 05:59:39', 'CITI1004', 'RON', 56.7106, 'sell', 2327, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (177, '1002', '10002', 7172, '2022-04-08 17:39:07', 'CITI1001', 'CHF', 11.0049, 'sell', 904, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (178, '1005', '10002', 1541, '2022-04-08 17:29:16', 'CITI1002', 'PHP', 701.759, 'buy', 2478, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (179, '1001', '10003', 1175, '2022-04-08 06:47:38', 'CITI1002', 'LYD', 37.7454, 'sell', 7703, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (180, '1007', '10003', 219, '2022-04-08 12:35:31', 'CITI1005', 'PLN', 36.6331, 'sell', 582, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (181, '1008', '10003', 1711, '2022-04-08 23:08:54', 'CITI1004', 'MUR', 537.232, 'buy', 24517, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (182, 'HEOFF', '10003', 16737, '2022-04-08 15:37:02', 'CITI1001', 'MDL', 83.776, 'sell', 24510, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (183, 'RLXXF', '10003', 15678, '2022-04-08 21:21:26', 'CITI1010', 'QAR', 25.9569, 'buy', 25271, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (184, '1005', '10005', 10510, '2022-04-08 13:15:07', 'CITI1006', 'JPY', 1711.51, 'buy', 18138, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (185, 'IGXT', '10005', 2903, '2022-04-08 19:34:51', 'CITI1009', 'JOD', 3.76458, 'sell', 2482, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (186, '1006', '10001', 1122, '2022-04-14 03:58:19', 'CITI1004', 'NPR', 1039.37, 'buy', 7513, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (187, '1003', '10002', 2253, '2022-04-14 16:47:50', 'CITI1002', 'UYU', 289.683, 'sell', 698, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (188, '1003', '10003', 11037, '2022-04-14 06:47:24', 'CITI1004', 'RUB', 462.883, 'sell', 3421, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (189, '1006', '10003', 4484, '2022-04-14 06:49:42', 'CITI1002', 'LYD', 39.9755, 'sell', 862, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (190, '1002', '10005', 12529, '2022-04-14 06:22:45', 'CITI1001', 'QAR', 41.9134, 'buy', 12529, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (191, '1003', '10005', 4888, '2022-04-14 12:47:21', 'CITI1003', 'DZD', 1056.51, 'buy', 5285, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (192, '1006', '10005', 3389, '2022-04-14 11:14:02', 'CITI1004', 'SDG', 3743.23, 'buy', 6762, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (193, '1007', '10005', 5872, '2022-04-14 11:38:50', 'CITI1007', 'TRY', 141.013, 'buy', 17950, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (194, 'BRGGF', '10005', 9023, '2022-04-14 06:02:02', 'CITI1010', 'KZT', 5192.55, 'sell', 11424, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (195, '1002', '10001', 2081, '2022-04-19 19:10:31', 'CITI1008', 'MWK', 11667.4, 'buy', 9507, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (196, 'BRGGF', '10001', 1126, '2022-04-19 06:16:16', 'CITI1001', 'COP', 46654, 'buy', 47857, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (197, '1005', '10002', 777, '2022-04-19 04:05:03', 'CITI1005', 'UAH', 395.517, 'sell', 160, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (198, '1008', '10002', 2674, '2022-04-19 17:33:00', 'CITI1008', 'LBP', 18641.4, 'buy', 24209, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (199, '1006', '10003', 1838, '2022-04-19 07:54:41', 'CITI1006', 'CZK', 192.738, 'buy', 7184, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (200, '1007', '10003', 279, '2022-04-19 11:32:55', 'CITI1009', 'HUF', 3146.99, 'sell', 522, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (201, 'IGXT', '10003', 8197, '2022-04-19 19:38:22', 'CITI1002', 'SGD', 7.24568, 'sell', 3101, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (202, 'RLXXF', '10003', 1359, '2022-04-19 18:36:26', 'CITI1006', 'VND', 165349, 'sell', 8234, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (203, '1001', '10004', 2533, '2022-04-19 17:02:39', 'CITI1001', 'IRR', 329583, 'buy', 6952, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (204, '1002', '10004', 7206, '2022-04-19 15:32:10', 'CITI1005', 'KZT', 4858.55, 'sell', 147, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (205, '1003', '10004', 5707, '2022-04-19 07:08:44', 'CITI1007', 'COP', 27605.8, 'buy', 19307, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (206, '1007', '10004', 6434, '2022-04-19 10:23:28', 'CITI1009', 'MUR', 375.262, 'sell', 270, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (207, '1010', '10004', 814, '2022-04-19 15:41:15', 'CITI1003', 'CZK', 181.755, 'buy', 16894, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (208, 'ABST', '10004', 8839, '2022-04-19 03:25:17', 'CITI1002', 'SGD', 11.6751, 'buy', 46006, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (209, 'IGXT', '10004', 12471, '2022-04-19 19:15:08', 'CITI1007', 'ZMW', 91.425, 'buy', 25430, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (210, '1003', '10005', 354, '2022-04-19 06:44:19', 'CITI1006', 'TRY', 118.949, 'sell', 43, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (211, '1006', '10001', 5917, '2022-04-24 15:08:12', 'CITI1008', 'SRD', 175.626, 'buy', 12308, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (212, 'HEOFF', '10001', 47263, '2022-04-24 12:26:37', 'CITI1010', 'TZS', 10232.6, 'buy', 47263, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (213, 'IGXT', '10001', 22201, '2022-04-24 06:09:12', 'CITI1007', 'AOA', 2218.5, 'buy', 31310, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (214, '1002', '10002', 2618, '2022-04-24 04:05:17', 'CITI1003', 'HKD', 90.1073, 'buy', 10694, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (215, '1005', '10002', 4906, '2022-04-24 23:16:47', 'CITI1005', 'MVR', 206.97, 'buy', 5843, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (216, 'ABST', '10002', 44838, '2022-04-24 09:19:38', 'CITI1001', 'BRL', 40.5978, 'sell', 5042, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (217, 'HEOFF', '10002', 6805, '2022-04-24 05:18:34', 'CITI1005', 'JPY', 562.516, 'sell', 8175, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (218, '1002', '10003', 3506, '2022-04-24 01:20:00', 'CITI1010', 'NGN', 4767.75, 'sell', 8423, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (219, 'IGXT', '10004', 17108, '2022-04-24 18:55:40', 'CITI1004', 'TRY', 86.8326, 'buy', 30067, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (220, '1010', '10001', 361, '2022-04-25 19:40:30', 'CITI1007', 'HKD', 62.0036, 'sell', 13837, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (221, 'HEOFF', '10002', 13868, '2022-04-25 06:11:51', 'CITI1010', 'SLL', 57142.9, 'buy', 28848, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (222, '1005', '10003', 1841, '2022-04-25 03:59:01', 'CITI1005', 'AOA', 5603.79, 'sell', 11313, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (223, 'BRGGF', '10003', 46667, '2022-04-25 02:16:38', 'CITI1003', 'MDL', 233.621, 'buy', 46667, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (224, 'HEOFF', '10003', 11169, '2022-04-25 22:06:17', 'CITI1010', 'DKK', 30.3884, 'sell', 13341, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (225, '1008', '10004', 2268, '2022-04-25 10:29:17', 'CITI1002', 'LKR', 4453.18, 'buy', 12677, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (226, '1010', '10004', 5023, '2022-04-25 05:18:31', 'CITI1007', 'BGN', 14.3812, 'sell', 11871, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (227, '1004', '10005', 561, '2022-04-25 00:19:54', 'CITI1006', 'HRK', 61.7432, 'buy', 561, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (228, '1009', '10005', 7198, '2022-04-25 16:06:55', 'CITI1006', 'KES', 814.843, 'buy', 14459, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (229, '1005', '10001', 8091, '2022-05-03 04:22:20', 'CITI1008', 'QAR', 48.8743, 'sell', 4380, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (230, '1009', '10001', 1778, '2022-05-03 06:03:12', 'CITI1006', 'KES', 814.843, 'buy', 4347, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (231, '1001', '10002', 211, '2022-05-03 09:12:46', 'CITI1005', 'RUB', 504.303, 'buy', 7389, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (232, '1004', '10002', 737, '2022-05-03 04:44:20', 'CITI1007', 'HUF', 3213.79, 'sell', 443, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (233, '1007', '10002', 512, '2022-05-03 12:59:21', 'CITI1009', 'IDR', 124739, 'buy', 7765, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (234, '1001', '10003', 191, '2022-05-03 19:01:23', 'CITI1008', 'GHS', 61.5004, 'sell', 8687, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (235, '1008', '10004', 562, '2022-05-03 08:57:38', 'CITI1001', 'SSP', 5731.14, 'sell', 9847, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (236, 'HEOFF', '10004', 17316, '2022-05-03 22:44:52', 'CITI1006', 'MMK', 8148.15, 'sell', 30663, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (237, '1006', '10005', 3005, '2022-05-03 09:21:55', 'CITI1002', 'SSP', 3896.44, 'sell', 3757, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (238, '1010', '10005', 9040, '2022-05-03 17:33:55', 'CITI1006', 'MMK', 14629.6, 'sell', 2657, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (239, 'BRGGF', '10005', 7421, '2022-05-03 17:56:48', 'CITI1002', 'ILS', 40.9775, 'buy', 27868, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (240, '1009', '10001', 1362, '2022-05-06 17:05:13', 'CITI1008', 'HRK', 49.0478, 'sell', 1207, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (241, '1010', '10001', 9180, '2022-05-06 04:38:30', 'CITI1006', 'XAF', 4903.79, 'sell', 4657, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (242, 'BRGGF', '10002', 39977, '2022-05-06 04:50:14', 'CITI1010', 'AOA', 5136.04, 'buy', 40044, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (243, 'RLXXF', '10002', 6197, '2022-05-06 17:02:45', 'CITI1007', 'INR', 551.59, 'buy', 47691, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (244, '1005', '10003', 4351, '2022-05-06 02:09:12', 'CITI1008', 'ARS', 1606.56, 'buy', 17505, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (245, '1009', '10003', 5162, '2022-05-06 10:36:55', 'CITI1009', 'SSP', 3247.62, 'sell', 9544, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (246, 'BRGGF', '10003', 589, '2022-05-06 22:23:44', 'CITI1010', 'SLL', 159351, 'buy', 47256, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (247, 'IGXT', '10003', 3555, '2022-05-06 19:10:53', 'CITI1005', 'MNT', 16510.9, 'sell', 7743, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (248, '1003', '10004', 1439, '2022-05-06 20:27:00', 'CITI1008', 'NZD', 11.0836, 'sell', 12161, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (249, '1009', '10004', 5140, '2022-05-06 04:03:16', 'CITI1009', 'JPY', 892.661, 'sell', 3726, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (250, 'IGXT', '10004', 8829, '2022-05-06 08:31:54', 'CITI1004', 'SLL', 68831.2, 'sell', 4130, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (251, '1001', '10005', 3304, '2022-05-06 21:20:23', 'CITI1001', 'GBP', 6.25712, 'sell', 2703, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (252, '1010', '10005', 2400, '2022-05-06 09:46:08', 'CITI1003', 'ILS', 26.3832, 'buy', 14097, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (253, '1001', '10001', 3882, '2022-05-10 13:54:56', 'CITI1009', 'INR', 613.654, 'buy', 7903, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (254, '1008', '10003', 77, '2022-05-10 20:34:09', 'CITI1006', 'LYD', 58.7986, 'buy', 22883, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (255, 'BRGGF', '10003', 4209, '2022-05-10 03:34:18', 'CITI1010', 'ZMW', 211.658, 'sell', 43047, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (256, '1001', '10004', 488, '2022-05-10 20:50:52', 'CITI1005', 'ILS', 26.4166, 'buy', 7440, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (257, '1005', '10004', 14250, '2022-05-10 12:47:24', 'CITI1004', 'VND', 311336, 'sell', 905, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (258, '1006', '10004', 7008, '2022-05-10 21:00:48', 'CITI1008', 'MOP', 67.7559, 'buy', 12846, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (259, '1007', '10004', 5531, '2022-05-10 02:59:40', 'CITI1003', 'EGP', 160.134, 'buy', 5801, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (260, '1010', '10004', 1444, '2022-05-10 18:43:10', 'CITI1008', 'TRY', 129.43, 'sell', 15450, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (261, '1005', '10005', 5267, '2022-05-10 20:54:31', 'CITI1009', 'TZS', 31133.6, 'buy', 12895, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (262, 'ABST', '10005', 21193, '2022-05-10 04:01:02', 'CITI1006', 'MVR', 132.029, 'sell', 13385, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (263, '1010', '10001', 6538, '2022-05-16 05:09:41', 'CITI1003', 'XAF', 4903.79, 'sell', 7299, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (264, 'HEOFF', '10001', 1049, '2022-05-16 19:56:16', 'CITI1010', 'DZD', 640.279, 'buy', 48312, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (265, 'RLXXF', '10001', 23804, '2022-05-16 01:59:37', 'CITI1001', 'EGP', 132.282, 'buy', 38565, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (266, '1007', '10002', 5094, '2022-05-16 17:08:11', 'CITI1002', 'KRW', 10639.1, 'buy', 12347, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (267, 'BRGGF', '10002', 8375, '2022-05-16 13:51:01', 'CITI1005', 'RON', 56.4714, 'buy', 48419, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (268, '1004', '10003', 2193, '2022-05-16 02:41:50', 'CITI1009', 'MNT', 27382.3, 'sell', 2134, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (269, 'IGXT', '10004', 6608, '2022-05-16 04:06:38', 'CITI1008', 'BRL', 25.1954, 'sell', 6351, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (270, '1001', '10005', 3220, '2022-05-16 07:16:26', 'CITI1003', 'RUB', 504.303, 'buy', 5923, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (271, '1002', '10005', 8224, '2022-05-16 18:29:03', 'CITI1004', 'CAD', 14.533, 'sell', 4305, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (272, 'IGXT', '10005', 2431, '2022-05-16 22:55:27', 'CITI1008', 'NZD', 8.09097, 'buy', 7816, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (273, 'RLXXF', '10005', 272, '2022-05-16 09:15:10', 'CITI1005', 'CAD', 9.00026, 'buy', 49336, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (274, '1005', '10002', 3498, '2022-05-21 02:06:01', 'CITI1008', 'TZS', 31133.6, 'sell', 2345, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (275, 'BRGGF', '10002', 281, '2022-05-21 05:55:24', 'CITI1003', 'BAM', 22.3928, 'buy', 48700, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (276, '1009', '10003', 95, '2022-05-21 06:13:20', 'CITI1002', 'PEN', 25.6742, 'buy', 14801, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (277, 'ABST', '10003', 26711, '2022-05-21 04:12:18', 'CITI1003', 'BND', 11.7011, 'buy', 29360, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (278, '1005', '10004', 14845, '2022-05-21 18:51:59', 'CITI1005', 'SAR', 50.2061, 'sell', 310, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (279, '1009', '10004', 7782, '2022-05-21 23:38:19', 'CITI1003', 'IQD', 10193.3, 'sell', 1084, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (280, 'ABST', '10005', 6030, '2022-05-21 22:21:16', 'CITI1008', 'AOA', 3574.72, 'buy', 40608, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (281, 'BRGGF', '10005', 9306, '2022-05-21 13:53:38', 'CITI1007', 'UGX', 46301.9, 'sell', 18562, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (282, 'HEOFF', '10005', 8286, '2022-05-21 18:24:33', 'CITI1003', 'BWP', 52.6001, 'buy', 29612, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (283, 'HEOFF', '10001', 13559, '2022-05-24 05:36:49', 'CITI1003', 'YER', 1100.83, 'sell', 34753, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (284, 'IGXT', '10001', 27378, '2022-05-24 04:36:53', 'CITI1009', 'AED', 19.4622, 'buy', 36487, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (285, '1003', '10002', 13570, '2022-05-24 17:43:59', 'CITI1003', 'VEF', 1815080, 'buy', 16521, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (286, '1004', '10002', 680, '2022-05-24 10:07:40', 'CITI1003', 'SGD', 12.0165, 'sell', 500, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (287, '1009', '10002', 14479, '2022-05-24 20:37:11', 'CITI1002', 'PKR', 1387.6, 'buy', 14832, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (288, '1006', '10003', 4119, '2022-05-24 19:43:26', 'CITI1008', 'LYD', 39.9755, 'sell', 1227, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (289, 'BRGGF', '10003', 608, '2022-05-24 18:56:05', 'CITI1002', 'PYG', 84620.7, 'buy', 47864, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (290, '1004', '10004', 4215, '2022-05-24 16:53:33', 'CITI1005', 'THB', 299.755, 'buy', 13442, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (291, '1001', '10005', 2365, '2022-05-24 17:03:43', 'CITI1009', 'PEN', 29.0851, 'sell', 338, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (292, '1002', '10002', 6545, '2022-06-05 22:02:10', 'CITI1002', 'TWD', 333.956, 'sell', 1531, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (293, '1008', '10002', 11099, '2022-06-05 02:46:27', 'CITI1007', 'NZD', 18.8107, 'sell', 10436, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (294, '1006', '10003', 488, '2022-06-05 07:59:56', 'CITI1001', 'HKD', 65.75, 'sell', 739, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (295, 'BRGGF', '10003', 10629, '2022-06-05 20:50:26', 'CITI1004', 'EUR', 11.391, 'sell', 36627, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (296, '1007', '10004', 9283, '2022-06-05 02:00:04', 'CITI1007', 'TWD', 250.364, 'buy', 9553, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (297, 'HEOFF', '10004', 16308, '2022-06-05 21:41:17', 'CITI1008', 'LAK', 59459.5, 'sell', 14355, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (298, 'HEOFF', '10005', 8232, '2022-06-05 11:51:17', 'CITI1004', 'RUB', 280.523, 'buy', 37844, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (299, '1007', '10002', 5343, '2022-06-08 14:41:22', 'CITI1004', 'MXN', 168.267, 'sell', 7004, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (300, '1003', '10003', 6252, '2022-06-08 09:37:26', 'CITI1007', 'BHD', 2.7374, 'sell', 8206, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (301, '1003', '10004', 3964, '2022-06-08 21:57:20', 'CITI1004', 'MWK', 7378.37, 'sell', 8197, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (302, 'ABST', '10004', 6610, '2022-06-08 03:42:09', 'CITI1003', 'KZT', 3614.05, 'buy', 43777, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (303, '1006', '10005', 1156, '2022-06-08 03:47:19', 'CITI1009', 'PEN', 30.8035, 'buy', 7918, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (304, 'HEOFF', '10005', 14712, '2022-06-08 15:28:32', 'CITI1007', 'BGN', 8.00976, 'buy', 44324, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (305, '1001', '10001', 3736, '2022-06-14 01:32:30', 'CITI1009', 'VND', 183953, 'sell', 285, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (306, '1002', '10001', 473, '2022-06-14 14:38:24', 'CITI1002', 'YER', 2872.34, 'buy', 9980, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (307, '1007', '10001', 3229, '2022-06-14 12:29:13', 'CITI1002', 'BWP', 102.893, 'buy', 3434, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (308, 'ABST', '10001', 29947, '2022-06-14 08:15:44', 'CITI1005', 'GBP', 6.75547, 'sell', 1644, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (309, 'HEOFF', '10001', 17, '2022-06-14 22:29:08', 'CITI1005', 'BND', 6.02866, 'buy', 48329, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (310, '1001', '10003', 402, '2022-06-14 11:00:30', 'CITI1010', 'DKK', 54.6301, 'buy', 9280, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (311, '1008', '10003', 201, '2022-06-14 21:06:04', 'CITI1009', 'NOK', 115.936, 'buy', 23007, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (312, 'ABST', '10005', 32136, '2022-06-14 09:52:49', 'CITI1009', 'XDR', 6.32991, 'sell', 8472, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (313, 'IGXT', '10005', 2667, '2022-06-14 09:14:59', 'CITI1005', 'MVR', 81.9381, 'sell', 2718, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (314, '1007', '10001', 59, '2022-06-16 22:02:40', 'CITI1004', 'BHD', 3.24515, 'buy', 264, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (315, '1009', '10001', 12750, '2022-06-16 15:20:37', 'CITI1009', 'CAD', 8.83873, 'buy', 13957, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (316, 'RLXXF', '10001', 8482, '2022-06-16 10:49:11', 'CITI1004', 'MWK', 7225.61, 'buy', 23243, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (317, '1003', '10002', 612, '2022-06-16 03:45:10', 'CITI1003', 'QAR', 26.5056, 'sell', 2339, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (318, '1007', '10003', 365, '2022-06-16 15:35:27', 'CITI1001', 'MUR', 375.262, 'sell', 436, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (319, 'IGXT', '10003', 38589, '2022-06-16 23:11:06', 'CITI1004', 'BYN', 17.9013, 'buy', 49887, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (320, '1003', '10005', 124, '2022-06-16 11:29:16', 'CITI1007', 'GYD', 1518.89, 'sell', 273, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (321, '1006', '10005', 2693, '2022-06-16 01:32:47', 'CITI1001', 'CLP', 6957.92, 'buy', 9455, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (322, '1004', '10001', 5105, '2022-06-23 21:38:59', 'CITI1008', 'NZD', 13.4184, 'buy', 14854, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (323, '1008', '10001', 4951, '2022-06-23 20:22:11', 'CITI1007', 'SAR', 46.2102, 'sell', 311, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (324, '1006', '10002', 7916, '2022-06-23 04:30:20', 'CITI1008', 'AOA', 3506.63, 'buy', 9360, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (325, '1009', '10003', 6699, '2022-06-23 01:54:15', 'CITI1001', 'NOK', 65.6968, 'sell', 8007, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (326, 'RLXXF', '10003', 40036, '2022-06-23 07:37:18', 'CITI1004', 'BWP', 84.997, 'buy', 49629, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (327, '1004', '10004', 8098, '2022-06-23 13:42:12', 'CITI1010', 'ZAR', 136.118, 'sell', 1129, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (328, 'BRGGF', '10004', 1839, '2022-06-23 01:08:15', 'CITI1005', 'INR', 951.901, 'buy', 49741, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (329, '1003', '10005', 232, '2022-06-23 12:30:45', 'CITI1010', 'MMK', 13445, 'sell', 165, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (330, '1004', '10005', 258, '2022-06-23 05:26:51', 'CITI1010', 'HKD', 68.9865, 'sell', 303, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (331, '1005', '10005', 1648, '2022-06-23 02:24:04', 'CITI1007', 'BYN', 45.2175, 'sell', 11247, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (332, '1001', '10001', 301, '2022-06-24 19:04:40', 'CITI1008', 'MWK', 8038.62, 'buy', 4322, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (333, '1002', '10001', 2169, '2022-06-24 12:36:00', 'CITI1006', 'KRW', 14191.3, 'buy', 11676, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (334, '1004', '10001', 6615, '2022-06-24 17:16:26', 'CITI1006', 'PYG', 60618.7, 'sell', 8239, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (335, 'HEOFF', '10001', 1565, '2022-06-24 06:46:16', 'CITI1010', 'PLN', 18.7272, 'buy', 49894, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (336, 'IGXT', '10001', 15713, '2022-06-24 13:18:48', 'CITI1008', 'TWD', 154.168, 'buy', 24822, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (337, 'RLXXF', '10001', 8188, '2022-06-24 20:19:57', 'CITI1006', 'SDG', 3176.94, 'sell', 6573, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (338, '1007', '10002', 5863, '2022-06-24 00:35:56', 'CITI1009', 'LKR', 3110.59, 'buy', 18210, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (339, '1009', '10002', 147, '2022-06-24 02:11:12', 'CITI1006', 'GBP', 5.52335, 'buy', 14979, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (340, '1004', '10003', 9470, '2022-06-24 11:20:47', 'CITI1001', 'DKK', 60.7057, 'buy', 13797, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (341, 'BRGGF', '10003', 15473, '2022-06-24 17:00:16', 'CITI1010', 'MXN', 239.878, 'sell', 31783, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (342, '1006', '10005', 785, '2022-06-24 03:00:37', 'CITI1005', 'UAH', 247.499, 'sell', 5977, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (343, '1002', '10001', 1730, '2022-07-03 12:40:23', 'CITI1006', 'KRW', 14191.3, 'buy', 11237, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (344, '1009', '10001', 13226, '2022-07-03 17:38:19', 'CITI1003', 'MUR', 304.429, 'buy', 14433, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (345, 'ABST', '10002', 68, '2022-07-03 03:43:22', 'CITI1007', 'COP', 32471.5, 'buy', 49948, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (346, 'HEOFF', '10002', 16, '2022-07-03 01:53:58', 'CITI1006', 'SAR', 16.501, 'sell', 14964, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (347, '1003', '10003', 2026, '2022-07-03 18:37:09', 'CITI1010', 'SEK', 70.8261, 'sell', 12432, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (348, '1004', '10003', 1404, '2022-07-03 04:31:06', 'CITI1004', 'IRR', 366238, 'sell', 2923, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (349, 'BRGGF', '10003', 7617, '2022-07-03 16:36:21', 'CITI1009', 'BRL', 58.3297, 'sell', 39639, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (350, 'HEOFF', '10003', 13804, '2022-07-03 05:06:03', 'CITI1001', 'CHF', 4.21763, 'buy', 27145, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (351, 'RLXXF', '10004', 3952, '2022-07-03 15:56:38', 'CITI1009', 'MDL', 135.374, 'sell', 4903, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (352, '1003', '10005', 17947, '2022-07-03 13:20:34', 'CITI1005', 'VND', 168845, 'buy', 18344, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (353, '1005', '10001', 5265, '2022-07-05 22:32:07', 'CITI1001', 'IQD', 19543.7, 'buy', 17736, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (354, '1008', '10001', 5225, '2022-07-05 10:20:22', 'CITI1008', 'CLP', 10234.2, 'sell', 37, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (355, '1001', '10003', 4350, '2022-07-05 03:03:46', 'CITI1003', 'NGN', 3284.88, 'sell', 4528, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (356, '1004', '10003', 2351, '2022-07-05 12:02:39', 'CITI1005', 'LBP', 13297.6, 'sell', 1976, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (357, '1007', '10003', 11119, '2022-07-05 03:07:45', 'CITI1010', 'BAM', 15.7078, 'buy', 11920, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (358, '1001', '10004', 920, '2022-07-05 17:33:32', 'CITI1006', 'PHP', 414.635, 'buy', 8360, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (359, '1004', '10004', 4192, '2022-07-05 14:09:31', 'CITI1004', 'LYD', 41.9432, 'sell', 5035, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (360, '1002', '10005', 5232, '2022-07-05 10:44:55', 'CITI1005', 'NZD', 17.5265, 'buy', 9537, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (361, '1008', '10005', 997, '2022-07-05 14:02:38', 'CITI1008', 'GYD', 2577.82, 'buy', 18210, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (362, 'BRGGF', '10005', 26205, '2022-07-05 03:54:40', 'CITI1009', 'LYD', 58.5507, 'sell', 1663, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (363, 'HEOFF', '10005', 6692, '2022-07-05 21:21:49', 'CITI1010', 'ZMW', 75.9, 'buy', 36304, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (364, '1005', '10001', 1149, '2022-07-13 14:51:21', 'CITI1004', 'NZD', 20.4373, 'buy', 18885, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (365, 'HEOFF', '10001', 339, '2022-07-13 06:06:34', 'CITI1003', 'GHS', 34.2101, 'buy', 48668, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (366, '1007', '10002', 6118, '2022-07-13 22:15:59', 'CITI1006', 'PYG', 59358.7, 'sell', 6229, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (367, '1007', '10003', 5259, '2022-07-13 04:48:31', 'CITI1005', 'MOP', 69.6135, 'buy', 6060, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (368, '1009', '10003', 208, '2022-07-13 13:10:03', 'CITI1009', 'PEN', 25.6742, 'buy', 14914, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (369, 'IGXT', '10003', 23540, '2022-07-13 12:20:17', 'CITI1010', 'RSD', 579.552, 'buy', 34838, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (370, '1003', '10005', 247, '2022-07-13 00:23:42', 'CITI1008', 'HRK', 51, 'sell', 150, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (371, '1004', '10005', 6077, '2022-07-13 09:38:53', 'CITI1007', 'UZS', 96590.2, 'buy', 6380, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (372, '1010', '10005', 8042, '2022-07-13 18:44:33', 'CITI1002', 'JOD', 5.61135, 'sell', 3655, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (373, '1006', '10001', 3908, '2022-07-19 08:58:33', 'CITI1008', 'PLN', 35.6555, 'sell', 2483, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (374, '1009', '10001', 203, '2022-07-19 18:32:38', 'CITI1002', 'TWD', 203.106, 'buy', 14636, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (375, '1004', '10002', 955, '2022-07-19 23:11:23', 'CITI1010', 'KZT', 3719.72, 'sell', 225, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (376, 'BRGGF', '10002', 972, '2022-07-19 05:08:15', 'CITI1010', 'USD', 12.27, 'buy', 49391, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (377, 'HEOFF', '10002', 12638, '2022-07-19 17:08:02', 'CITI1002', 'IRR', 183333, 'buy', 27618, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (378, '1007', '10004', 24, '2022-07-19 18:31:17', 'CITI1009', 'CNY', 57.3289, 'sell', 246, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (379, '1010', '10004', 7840, '2022-07-19 10:53:15', 'CITI1005', 'MMK', 14629.6, 'sell', 7610, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (380, '1004', '10005', 2847, '2022-07-19 13:14:21', 'CITI1009', 'SEK', 85.7457, 'sell', 3533, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (381, '1007', '10005', 3580, '2022-07-19 10:16:30', 'CITI1005', 'CZK', 198.022, 'sell', 8498, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (382, 'BRGGF', '10005', 27192, '2022-07-19 08:36:50', 'CITI1003', 'GBP', 9.70605, 'sell', 676, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (383, 'IGXT', '10005', 915, '2022-07-19 12:42:45', 'CITI1002', 'CAD', 6.70906, 'sell', 4470, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (384, '1007', '10001', 3233, '2022-07-20 00:50:40', 'CITI1006', 'DZD', 1252.48, 'buy', 3438, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (385, '1007', '10002', 4292, '2022-07-20 20:01:36', 'CITI1009', 'MDL', 163.878, 'sell', 1937, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (386, '1008', '10002', 376, '2022-07-20 02:59:28', 'CITI1003', 'BAM', 22.4876, 'buy', 21911, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (387, '1010', '10002', 556, '2022-07-20 21:43:31', 'CITI1005', 'BOB', 54.4704, 'sell', 1182, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (388, '1009', '10003', 3333, '2022-07-20 05:36:52', 'CITI1006', 'MNT', 21752, 'sell', 11373, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (389, 'BRGGF', '10003', 1101, '2022-07-20 13:05:42', 'CITI1004', 'BGN', 22.3363, 'buy', 48357, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (390, 'HEOFF', '10003', 26281, '2022-07-20 13:03:46', 'CITI1007', 'RUB', 280.523, 'buy', 39622, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (391, '1008', '10004', 8984, '2022-07-20 19:47:23', 'CITI1001', 'UGX', 46498, 'buy', 19393, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (392, '1010', '10004', 7788, '2022-07-20 05:58:36', 'CITI1009', 'IQD', 11532.8, 'sell', 7662, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (393, '1001', '10005', 1769, '2022-07-20 07:29:44', 'CITI1005', 'CAD', 10.0129, 'sell', 934, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (394, '1004', '10005', 6864, '2022-07-20 19:15:42', 'CITI1003', 'IQD', 12831.7, 'buy', 10397, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (395, 'HEOFF', '10001', 1171, '2022-07-25 00:22:12', 'CITI1009', 'HRK', 30.9078, 'buy', 49500, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (396, '1001', '10002', 1533, '2022-07-25 00:24:38', 'CITI1010', 'EGP', 147.166, 'buy', 8711, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (397, '1009', '10002', 8452, '2022-07-25 22:10:25', 'CITI1005', 'ZMW', 120.446, 'sell', 6380, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (398, '1002', '10003', 10992, '2022-07-25 14:34:56', 'CITI1006', 'SDG', 5129.91, 'sell', 937, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (399, '1008', '10003', 1670, '2022-07-25 02:52:22', 'CITI1001', 'EGP', 229.25, 'buy', 24476, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (400, 'ABST', '10003', 12224, '2022-07-25 00:33:16', 'CITI1005', 'CAD', 10.8104, 'buy', 41584, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (401, 'BRGGF', '10003', 39712, '2022-07-25 19:34:47', 'CITI1002', 'LYD', 58.5507, 'sell', 7544, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (402, 'RLXXF', '10003', 8649, '2022-07-25 01:56:29', 'CITI1009', 'SRD', 149.057, 'sell', 944, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (403, '1001', '10004', 524, '2022-07-25 02:05:20', 'CITI1003', 'PHP', 414.635, 'sell', 6916, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (404, '1004', '10004', 1631, '2022-07-25 22:41:36', 'CITI1008', 'CLP', 7300.42, 'sell', 7596, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (405, 'BRGGF', '10004', 197, '2022-07-25 19:02:22', 'CITI1003', 'SEK', 119.697, 'buy', 48099, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (406, 'HEOFF', '10004', 11730, '2022-07-25 08:46:19', 'CITI1002', 'NGN', 1827.24, 'buy', 42393, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (407, '1002', '10001', 3715, '2022-08-01 10:04:19', 'CITI1001', 'SRD', 240.687, 'buy', 13222, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (408, 'IGXT', '10001', 1097, '2022-08-01 01:58:22', 'CITI1008', 'COP', 20152.1, 'sell', 8012, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (409, 'BRGGF', '10002', 48054, '2022-08-01 11:12:48', 'CITI1008', 'VEF', 3067500, 'sell', 365, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (410, 'HEOFF', '10002', 4000, '2022-08-01 19:35:32', 'CITI1004', 'IRR', 183333, 'buy', 31618, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (411, '1003', '10003', 4946, '2022-08-01 00:07:43', 'CITI1001', 'UGX', 27397.4, 'buy', 19404, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (412, '1006', '10003', 70, '2022-08-01 17:09:23', 'CITI1005', 'SYP', 21048.6, 'sell', 1157, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (413, '1006', '10004', 1529, '2022-08-01 14:07:35', 'CITI1007', 'VEF', 2094330, 'buy', 14375, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (414, 'BRGGF', '10004', 1128, '2022-08-01 00:20:58', 'CITI1005', 'KZT', 5192.55, 'buy', 49030, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (415, 'RLXXF', '10004', 776, '2022-08-01 00:24:02', 'CITI1001', 'OMR', 2.73738, 'sell', 4127, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (416, '1006', '10005', 2179, '2022-08-01 15:36:22', 'CITI1004', 'PEN', 30.8035, 'sell', 4583, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (417, '1008', '10002', 1541, '2022-08-08 09:51:55', 'CITI1006', 'PKR', 2448.72, 'buy', 23076, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (418, '1009', '10002', 3468, '2022-08-08 04:57:55', 'CITI1002', 'UYU', 278.594, 'sell', 2912, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (419, 'BRGGF', '10002', 726, '2022-08-08 04:54:02', 'CITI1009', 'ILS', 40.9775, 'buy', 49145, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (420, '1002', '10003', 2936, '2022-08-08 23:35:10', 'CITI1004', 'NOK', 108.022, 'sell', 8993, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (421, '1005', '10004', 1997, '2022-08-08 03:57:38', 'CITI1009', 'PHP', 701.759, 'sell', 13158, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (422, '1006', '10004', 1583, '2022-08-08 12:04:53', 'CITI1010', 'DZD', 1219.05, 'buy', 14429, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (423, '1007', '10004', 132, '2022-08-08 03:52:13', 'CITI1008', 'IRR', 358626, 'sell', 114, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (424, '1008', '10004', 5777, '2022-08-08 17:08:49', 'CITI1002', 'GHS', 95.8035, 'sell', 4632, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (425, 'RLXXF', '10004', 1472, '2022-08-08 23:42:28', 'CITI1005', 'ALL', 799.595, 'sell', 3431, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (426, '1003', '10001', 3283, '2022-08-12 06:14:48', 'CITI1006', 'AED', 26.6607, 'buy', 18992, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (427, '1009', '10001', 135, '2022-08-12 02:21:55', 'CITI1006', 'BND', 9.56693, 'buy', 14771, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (428, 'BRGGF', '10001', 16267, '2022-08-12 20:41:40', 'CITI1003', 'KZT', 5192.55, 'sell', 30464, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (429, 'IGXT', '10002', 3873, '2022-08-12 21:48:15', 'CITI1001', 'DKK', 36.6042, 'buy', 6765, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (430, '1002', '10003', 7012, '2022-08-12 00:30:35', 'CITI1007', 'THB', 391.527, 'sell', 4917, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (431, '1007', '10003', 1844, '2022-08-12 22:59:34', 'CITI1004', 'BND', 11.7929, 'buy', 2645, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (432, '1002', '10004', 1601, '2022-08-12 00:10:35', 'CITI1009', 'XDR', 8.50962, 'buy', 8954, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (433, 'BRGGF', '10004', 42646, '2022-08-12 16:53:45', 'CITI1005', 'QAR', 44.7948, 'sell', 5256, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (434, 'IGXT', '10004', 7906, '2022-08-12 22:38:01', 'CITI1007', 'RSD', 579.552, 'buy', 20865, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (435, 'BRGGF', '10005', 21377, '2022-08-12 11:11:15', 'CITI1007', 'JOD', 8.71535, 'sell', 6491, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (436, '1002', '10002', 306, '2022-08-15 11:04:44', 'CITI1002', 'TRY', 188.095, 'buy', 8382, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (437, '1001', '10003', 5519, '2022-08-15 20:36:21', 'CITI1001', 'BAM', 14.4358, 'sell', 3359, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (438, '1004', '10003', 8531, '2022-08-15 06:44:09', 'CITI1001', 'SRD', 184.271, 'buy', 12858, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (439, 'ABST', '10003', 2857, '2022-08-15 04:49:30', 'CITI1009', 'ISK', 1086.51, 'sell', 26503, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (440, 'IGXT', '10003', 4703, '2022-08-15 09:37:56', 'CITI1008', 'USD', 5.3, 'buy', 16001, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (441, '1004', '10005', 928, '2022-08-15 11:47:03', 'CITI1002', 'ARS', 1054.81, 'buy', 11325, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (442, '1007', '10005', 5033, '2022-08-15 08:59:36', 'CITI1008', 'COP', 32726.3, 'buy', 17111, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (443, '1010', '10005', 714, '2022-08-15 11:21:14', 'CITI1008', 'SRD', 165.618, 'buy', 12411, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (444, '1001', '10001', 1905, '2022-08-23 21:26:48', 'CITI1006', 'NGN', 3284.88, 'sell', 2417, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (445, 'IGXT', '10001', 19995, '2022-08-23 22:41:48', 'CITI1004', 'MYR', 23.1389, 'buy', 29104, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (446, '1004', '10002', 9128, '2022-08-23 02:24:19', 'CITI1008', 'GHS', 68.3402, 'buy', 9353, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (447, '1005', '10002', 5341, '2022-08-23 00:58:20', 'CITI1010', 'ARS', 1606.56, 'sell', 502, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (448, '1006', '10002', 939, '2022-08-23 17:19:08', 'CITI1004', 'MOP', 67.7559, 'sell', 505, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (449, 'HEOFF', '10002', 9966, '2022-08-23 16:07:47', 'CITI1006', 'NGN', 1827.24, 'buy', 41584, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (450, '1002', '10003', 2214, '2022-08-23 21:34:34', 'CITI1003', 'JOD', 8.15475, 'buy', 14143, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (451, '1003', '10003', 1970, '2022-08-23 13:27:35', 'CITI1005', 'NGN', 3015.08, 'buy', 16428, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (452, '1006', '10003', 243, '2022-08-23 17:41:25', 'CITI1003', 'CNY', 55.7991, 'sell', 984, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (453, '1009', '10003', 1904, '2022-08-23 05:10:22', 'CITI1007', 'JOD', 4.95958, 'sell', 12802, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (454, 'BRGGF', '10003', 14235, '2022-08-23 07:44:49', 'CITI1006', 'SLL', 159351, 'sell', 33021, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (455, 'RLXXF', '10003', 6342, '2022-08-23 09:07:50', 'CITI1008', 'THB', 242.472, 'sell', 3251, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (456, '1010', '10004', 1416, '2022-08-23 09:50:09', 'CITI1008', 'GHS', 61.4227, 'buy', 16866, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (457, 'RLXXF', '10005', 9, '2022-08-23 15:04:02', 'CITI1007', 'VND', 165349, 'buy', 49073, 'LSE', 0);
INSERT INTO `transaction_records` VALUES (458, '1001', '10001', 567, '2022-08-27 16:09:10', 'CITI1006', 'VND', 183953, 'sell', 1850, 'NASDAQ', 1);
INSERT INTO `transaction_records` VALUES (459, '1001', '10003', 2363, '2022-08-27 10:06:53', 'CITI1004', 'KZT', 3347.44, 'sell', 6515, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (460, 'BRGGF', '10003', 46728, '2022-08-27 16:32:07', 'CITI1001', 'INR', 951.901, 'sell', 528, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (461, 'HEOFF', '10005', 13092, '2022-08-27 11:23:17', 'CITI1010', 'TZS', 10232.6, 'buy', 49396, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (503, '1005', '10001', 9747, '2022-08-28 23:07:41', 'CITI1008', 'NPR', 1660.97, 'sell', 7989, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (504, '1006', '10001', 6026, '2022-08-28 03:09:01', 'CITI1006', 'INR', 649.91, 'buy', 12417, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (505, 'IGXT', '10001', 22140, '2022-08-28 07:24:51', 'CITI1004', 'BOB', 36.5434, 'sell', 6964, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (506, '1004', '10002', 10688, '2022-08-28 07:25:51', 'CITI1008', 'KRW', 10864.9, 'buy', 10913, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (507, '1006', '10002', 478, '2022-08-28 20:58:47', 'CITI1006', 'VEF', 2094330, 'sell', 966, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (508, 'ABST', '10002', 24189, '2022-08-28 03:46:14', 'CITI1002', 'CLP', 7093.02, 'sell', 25691, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (509, 'ABST', '10003', 14704, '2022-08-28 16:19:40', 'CITI1001', 'UYU', 340.741, 'sell', 11799, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (510, 'IGXT', '10003', 1612, '2022-08-28 20:01:12', 'CITI1002', 'SRD', 111.111, 'buy', 12910, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (511, '1003', '10004', 8260, '2022-08-28 05:32:30', 'CITI1009', 'CLP', 6030.16, 'buy', 16457, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (512, '1006', '10004', 4384, '2022-08-28 06:57:08', 'CITI1006', 'INR', 649.91, 'sell', 8462, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (513, '1009', '10004', 558, '2022-08-28 06:11:46', 'CITI1009', 'ILS', 23.3187, 'buy', 1642, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (514, 'IGXT', '10004', 7259, '2022-08-28 09:18:25', 'CITI1002', 'BYN', 17.9013, 'sell', 5700, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (515, '1003', '10001', 2476, '2022-08-29 00:03:29', 'CITI1005', 'MOP', 58.7214, 'buy', 18185, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (516, '1008', '10001', 4610, '2022-08-29 22:03:40', 'CITI1010', 'ARS', 1478.69, 'sell', 652, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (517, 'ABST', '10001', 9738, '2022-08-29 03:13:10', 'CITI1002', 'MAD', 84.4249, 'sell', 21853, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (518, 'HEOFF', '10002', 3318, '2022-08-29 10:01:14', 'CITI1006', 'AUD', 6.12095, 'sell', 28300, 'FWB', 1);
INSERT INTO `transaction_records` VALUES (519, '1010', '10003', 6916, '2022-08-29 04:05:25', 'CITI1003', 'MDL', 150.416, 'buy', 16173, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (520, 'RLXXF', '10003', 857, '2022-08-29 16:20:02', 'CITI1004', 'BAM', 12.9758, 'sell', 8736, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (521, 'BRGGF', '10004', 203, '2022-08-29 16:04:43', 'CITI1002', 'NPR', 1522.33, 'buy', 48105, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (522, 'HEOFF', '10004', 19483, '2022-08-29 17:40:43', 'CITI1007', 'KWD', 1.34636, 'sell', 11180, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (523, '1004', '10005', 4126, '2022-08-29 09:21:08', 'CITI1008', 'AUD', 12.2276, 'buy', 14523, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (524, '1009', '10005', 2582, '2022-08-29 23:59:09', 'CITI1010', 'NPR', 866.302, 'buy', 9843, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (525, '1004', '10001', 12479, '2022-08-30 03:53:22', 'CITI1004', 'SAR', 32.9635, 'sell', 2375, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (526, '1006', '10001', 2344, '2022-08-30 21:13:32', 'CITI1007', 'KES', 977.633, 'buy', 8735, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (527, '1008', '10004', 6061, '2022-08-30 11:19:24', 'CITI1009', 'HRK', 86.5555, 'sell', 4348, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (528, 'BRGGF', '10004', 1466, '2022-08-30 01:59:00', 'CITI1003', 'SRD', 257.233, 'buy', 49368, 'FESE', 0);
INSERT INTO `transaction_records` VALUES (529, 'IGXT', '10004', 2641, '2022-08-30 14:57:42', 'CITI1001', 'MWK', 5386.18, 'sell', 10318, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (530, '1008', '10005', 7409, '2022-08-30 15:51:30', 'CITI1003', 'KWD', 3.7704, 'sell', 9804, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (531, '1009', '10005', 7502, '2022-08-30 21:52:00', 'CITI1008', 'NGN', 2899.66, 'sell', 2341, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (532, '1005', '10001', 7680, '2022-08-31 21:17:58', 'CITI1006', 'TRY', 219.333, 'sell', 309, 'SHSE', 1);
INSERT INTO `transaction_records` VALUES (533, '1002', '10002', 2167, '2022-08-31 10:18:34', 'CITI1004', 'SRD', 240.687, 'sell', 5909, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (534, '1002', '10004', 6047, '2022-08-31 23:09:34', 'CITI1003', 'AOA', 4805.67, 'buy', 13400, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (535, '1010', '10004', 2134, '2022-08-31 10:22:27', 'CITI1010', 'PHP', 414.111, 'buy', 17584, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (536, '1005', '10001', 2195, '2022-09-01 12:23:41', 'CITI1004', 'LBP', 20253.3, 'sell', 5794, 'LSE', 1);
INSERT INTO `transaction_records` VALUES (537, '1010', '10001', 2338, '2022-09-01 12:44:17', 'CITI1006', 'GBP', 6.24921, 'buy', 16175, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (538, '1003', '10002', 800, '2022-09-01 14:59:36', 'CITI1007', 'AED', 26.6607, 'sell', 2151, 'HKEx', 1);
INSERT INTO `transaction_records` VALUES (539, '1004', '10002', 34, '2022-09-01 10:32:26', 'CITI1002', 'SSP', 4088.24, 'sell', 191, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (540, '1005', '10002', 2482, '2022-09-01 02:43:30', 'CITI1007', 'MOP', 108.278, 'buy', 8325, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (541, '1007', '10002', 11604, '2022-09-01 18:41:44', 'CITI1003', 'MMK', 15938.9, 'buy', 17833, 'NYSE', 0);
INSERT INTO `transaction_records` VALUES (542, '1010', '10002', 516, '2022-09-01 08:48:35', 'CITI1004', 'GBP', 6.24921, 'sell', 666, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (543, '1003', '10003', 3783, '2022-09-01 18:47:07', 'CITI1007', 'OMR', 2.79526, 'buy', 18241, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (544, '1003', '10005', 15676, '2022-09-01 06:24:40', 'CITI1007', 'SDG', 3244.11, 'buy', 16073, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (545, '1001', '10001', 1000, '2022-09-02 09:27:13', 'CITI1006', 'USD', 7.91, 'buy', 2850, 'NYSE', 1);
INSERT INTO `transaction_records` VALUES (546, '1003', '10001', 3575, '2022-09-02 15:10:15', 'CITI1002', 'NZD', 11.0836, 'buy', 19284, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (547, '1004', '10002', 175, '2022-09-02 05:03:38', 'CITI1006', 'RSD', 961.149, 'sell', 50, 'NASDAQ', 0);
INSERT INTO `transaction_records` VALUES (548, '1009', '10002', 2392, '2022-09-02 00:34:00', 'CITI1008', 'IRR', 290933, 'buy', 8772, 'FESE', 1);
INSERT INTO `transaction_records` VALUES (549, 'HEOFF', '10002', 1930, '2022-09-02 06:41:10', 'CITI1003', 'SSP', 2046.51, 'buy', 33548, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (550, '1002', '10003', 11338, '2022-09-02 11:51:35', 'CITI1002', 'CNY', 76.47, 'sell', 591, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (551, '1006', '10003', 764, '2022-09-02 18:01:45', 'CITI1003', 'EUR', 7.77717, 'buy', 1991, 'ASX', 0);
INSERT INTO `transaction_records` VALUES (552, '1010', '10003', 4370, '2022-09-02 10:01:31', 'CITI1005', 'HKD', 62.0036, 'buy', 13627, 'FWB', 0);
INSERT INTO `transaction_records` VALUES (553, '1002', '10005', 3403, '2022-09-02 15:05:17', 'CITI1008', 'AOA', 4805.67, 'buy', 7708, 'SHSE', 0);
INSERT INTO `transaction_records` VALUES (554, '1008', '10005', 5873, '2022-09-02 14:59:44', 'CITI1003', 'KWD', 3.7704, 'buy', 23086, 'HKEx', 0);
INSERT INTO `transaction_records` VALUES (555, 'IGXT', '10005', 369, '2022-09-02 09:40:25', 'CITI1007', 'BYN', 17.9013, 'sell', 5016, 'ASX', 1);
INSERT INTO `transaction_records` VALUES (556, '1001', '10001', 111, '2022-09-02 10:12:03', 'CITI1006', 'USD', 7.91, 'buy', 2961, 'NYSE', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id，唯一标识',
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名字',
  `login_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登陆用用户名',
  `login_password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登陆密码\r\n',
  `logon_time` timestamp NULL DEFAULT NULL COMMENT '用户注册时间',
  `flag` int(11) NULL DEFAULT NULL COMMENT '用户权限标志',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('10001', '小刘', 'Lyyyyz', '123456', '2022-08-29 10:17:07', 1);
INSERT INTO `user` VALUES ('10002', '小肖', 'YingKe', '123456', '2022-08-29 10:17:18', 1);
INSERT INTO `user` VALUES ('10003', '小孟', 'Meng1010', '123456', '2022-08-29 10:17:20', 1);
INSERT INTO `user` VALUES ('10004', '小张', 'BoRui', '123456', '2022-08-29 10:17:21', 1);
INSERT INTO `user` VALUES ('10005', '小杜', 'ChengLong', '123456', '2022-08-29 10:17:22', 1);

SET FOREIGN_KEY_CHECKS = 1;
