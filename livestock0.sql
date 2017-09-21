/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : livestock0

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-09-28 13:47:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_ supplyconsume`
-- ----------------------------
DROP TABLE IF EXISTS `tb_ supplyconsume`;
CREATE TABLE `tb_ supplyconsume` (
  `scID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `supplyName` varchar(25) NOT NULL COMMENT '耗材名称',
  `consumeQuantity3` int(11) unsigned NOT NULL COMMENT '领用量',
  `consumeTime3` date NOT NULL COMMENT '领用时间',
  PRIMARY KEY (`scID`),
  KEY `supplyName` (`supplyName`),
  CONSTRAINT `tb_ supplyconsume_ibfk_1` FOREIGN KEY (`supplyName`) REFERENCES `tb_supply` (`supplyName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ supplyconsume
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_ supplypurchase`
-- ----------------------------
DROP TABLE IF EXISTS `tb_ supplypurchase`;
CREATE TABLE `tb_ supplypurchase` (
  `spID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `supplyName` varchar(25) NOT NULL COMMENT '耗材名称',
  `purchaseQuantity3` int(11) unsigned NOT NULL COMMENT '购入量',
  `purchaseTime3` date NOT NULL COMMENT '购入时间',
  PRIMARY KEY (`spID`),
  KEY `supplyName` (`supplyName`),
  CONSTRAINT `tb_ supplypurchase_ibfk_1` FOREIGN KEY (`supplyName`) REFERENCES `tb_supply` (`supplyName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ supplypurchase
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_alarminfo`
-- ----------------------------
DROP TABLE IF EXISTS `tb_alarminfo`;
CREATE TABLE `tb_alarminfo` (
  `alarmID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '报警信息ID',
  `farmID` int(11) unsigned NOT NULL COMMENT '养殖场ID',
  `alarmContent` varchar(500) NOT NULL COMMENT '报警内容',
  `alarmTime` datetime NOT NULL COMMENT '报警时间',
  PRIMARY KEY (`alarmID`),
  KEY `farmID` (`farmID`),
  CONSTRAINT `tb_alarminfo_ibfk_1` FOREIGN KEY (`farmID`) REFERENCES `tb_farm` (`farmID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_alarminfo
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_byproduct`
-- ----------------------------
DROP TABLE IF EXISTS `tb_byproduct`;
CREATE TABLE `tb_byproduct` (
  `byproductID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '副产品ID',
  `byproductName` varchar(25) NOT NULL COMMENT '副产品名称',
  `byproductQuantity` int(11) unsigned NOT NULL COMMENT '副产品数量',
  `staticsTime` date NOT NULL COMMENT '统计时间',
  PRIMARY KEY (`byproductID`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_byproduct
-- ----------------------------
INSERT INTO `tb_byproduct` VALUES ('111', '牛奶', '43', '2016-09-18');
INSERT INTO `tb_byproduct` VALUES ('112', '鸭蛋', '120', '2016-09-18');
INSERT INTO `tb_byproduct` VALUES ('113', '鸭蛋', '234', '2016-09-18');
INSERT INTO `tb_byproduct` VALUES ('114', '鸡蛋', '345', '2016-09-18');
INSERT INTO `tb_byproduct` VALUES ('115', '鸡蛋', '22', '2016-09-19');
INSERT INTO `tb_byproduct` VALUES ('116', '鸭蛋', '23', '2016-09-19');
INSERT INTO `tb_byproduct` VALUES ('117', '鸡蛋', '21', '2016-09-19');
INSERT INTO `tb_byproduct` VALUES ('119', '鸡蛋', '25', '2016-09-19');
INSERT INTO `tb_byproduct` VALUES ('123', '鸡蛋', '122', '2016-09-26');
INSERT INTO `tb_byproduct` VALUES ('124', '鸭蛋', '200', '2016-09-26');
INSERT INTO `tb_byproduct` VALUES ('125', '菜菜', '123', '2016-09-26');
INSERT INTO `tb_byproduct` VALUES ('126', '鸡蛋', '200', '2016-09-27');
INSERT INTO `tb_byproduct` VALUES ('127', '鸡蛋', '123', '2016-09-28');

-- ----------------------------
-- Table structure for `tb_date`
-- ----------------------------
DROP TABLE IF EXISTS `tb_date`;
CREATE TABLE `tb_date` (
  `farmdateID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `farmID` int(11) unsigned NOT NULL,
  `CO2` int(11) NOT NULL COMMENT '二氧化碳浓度',
  `H2S` int(11) NOT NULL COMMENT '硫化氢浓度',
  `NH3` int(11) NOT NULL COMMENT '氨气浓度',
  `farmTemperature` int(11) unsigned zerofill NOT NULL COMMENT '养殖场温度',
  `farmHumidity` int(11) NOT NULL COMMENT '养殖场湿度',
  `illumination` int(11) NOT NULL COMMENT '养殖场光照强度',
  `airPressure` int(11) NOT NULL COMMENT '养殖场气压',
  `ventilation` int(11) NOT NULL COMMENT '养殖场通风状况',
  `datetime` datetime NOT NULL COMMENT '时间',
  PRIMARY KEY (`farmdateID`),
  KEY `farmID` (`farmID`),
  CONSTRAINT `tb_date_ibfk_1` FOREIGN KEY (`farmID`) REFERENCES `tb_farm` (`farmID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_date
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_disease`
-- ----------------------------
DROP TABLE IF EXISTS `tb_disease`;
CREATE TABLE `tb_disease` (
  `diseaseID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `diseaseName` varchar(25) NOT NULL COMMENT '疾病名称',
  `diseaseSymptoms` varchar(500) NOT NULL COMMENT '疾病症状',
  `treatmentMethod` varchar(500) NOT NULL COMMENT '治疗方法',
  `precautions` varchar(500) DEFAULT NULL COMMENT '注意事项',
  PRIMARY KEY (`diseaseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_disease
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_drug`
-- ----------------------------
DROP TABLE IF EXISTS `tb_drug`;
CREATE TABLE `tb_drug` (
  `drugName` varchar(25) NOT NULL COMMENT '药品名称，主键',
  `drugUse` varchar(200) NOT NULL COMMENT '药品用途',
  `remark4` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`drugName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_drug
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_drugconsume`
-- ----------------------------
DROP TABLE IF EXISTS `tb_drugconsume`;
CREATE TABLE `tb_drugconsume` (
  `dcID` int(11) NOT NULL,
  `drugName` varchar(25) NOT NULL COMMENT '药品名称',
  `consumeQuantity` int(11) unsigned NOT NULL COMMENT '领用量',
  `consumeTime` date NOT NULL COMMENT '领用时间',
  PRIMARY KEY (`dcID`),
  KEY `drugName` (`drugName`),
  CONSTRAINT `tb_drugconsume_ibfk_1` FOREIGN KEY (`drugName`) REFERENCES `tb_drug` (`drugName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_drugconsume
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_drugpurchase`
-- ----------------------------
DROP TABLE IF EXISTS `tb_drugpurchase`;
CREATE TABLE `tb_drugpurchase` (
  `dpID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `drugName` varchar(25) NOT NULL COMMENT '药品名称，外键',
  `purchaseQuantity` int(11) unsigned NOT NULL COMMENT '购入量',
  `purchaseTime` date NOT NULL COMMENT '购入时间',
  PRIMARY KEY (`dpID`),
  KEY `drugName` (`drugName`),
  CONSTRAINT `tb_drugpurchase_ibfk_1` FOREIGN KEY (`drugName`) REFERENCES `tb_drug` (`drugName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_drugpurchase
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_equipment`
-- ----------------------------
DROP TABLE IF EXISTS `tb_equipment`;
CREATE TABLE `tb_equipment` (
  `equipmentID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '硬件设备ID',
  `equipmentName` varchar(25) NOT NULL COMMENT '设备名称',
  `farmID` int(11) unsigned NOT NULL COMMENT '养殖场ID',
  `purchaseTime4` date NOT NULL COMMENT '购入时间',
  PRIMARY KEY (`equipmentID`),
  KEY `farmID` (`farmID`),
  CONSTRAINT `tb_equipment_ibfk_1` FOREIGN KEY (`farmID`) REFERENCES `tb_farm` (`farmID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_equipment
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_farm`
-- ----------------------------
DROP TABLE IF EXISTS `tb_farm`;
CREATE TABLE `tb_farm` (
  `farmID` int(11) unsigned NOT NULL,
  `pic` varchar(50) NOT NULL COMMENT '养殖场图片',
  `farmName` varchar(25) DEFAULT NULL COMMENT '养殖场别名',
  PRIMARY KEY (`farmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_farm
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_feed`
-- ----------------------------
DROP TABLE IF EXISTS `tb_feed`;
CREATE TABLE `tb_feed` (
  `feedName` varchar(25) NOT NULL COMMENT '饲料名称',
  `feedUse` varchar(200) NOT NULL COMMENT '饲料用途',
  `remark5` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`feedName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_feed
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_feedconsume`
-- ----------------------------
DROP TABLE IF EXISTS `tb_feedconsume`;
CREATE TABLE `tb_feedconsume` (
  `fcID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `feedName` varchar(25) NOT NULL COMMENT '饲料名称',
  `consumeQuantity2` int(11) unsigned NOT NULL COMMENT '领用量',
  `consumeTime2` date NOT NULL COMMENT '领用时间',
  PRIMARY KEY (`fcID`),
  KEY `feedName` (`feedName`),
  CONSTRAINT `tb_feedconsume_ibfk_1` FOREIGN KEY (`feedName`) REFERENCES `tb_feed` (`feedName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_feedconsume
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_feedpurchase`
-- ----------------------------
DROP TABLE IF EXISTS `tb_feedpurchase`;
CREATE TABLE `tb_feedpurchase` (
  `fpID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `feedName` varchar(25) NOT NULL COMMENT '饲料名称',
  `purchaseQuantity2` int(11) unsigned NOT NULL COMMENT '购入量',
  `purchaseTime2` date NOT NULL COMMENT '购入时间',
  PRIMARY KEY (`fpID`),
  KEY `feedName` (`feedName`),
  CONSTRAINT `tb_feedpurchase_ibfk_1` FOREIGN KEY (`feedName`) REFERENCES `tb_feed` (`feedName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_feedpurchase
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_livestock`
-- ----------------------------
DROP TABLE IF EXISTS `tb_livestock`;
CREATE TABLE `tb_livestock` (
  `livestockID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'RFID编号',
  `RFID` int(25) NOT NULL,
  `farmID` int(11) unsigned NOT NULL,
  `livestockType` varchar(25) NOT NULL COMMENT '禽畜种类',
  `birthday` date NOT NULL COMMENT '出生日期',
  `sellTime` date NOT NULL COMMENT '出售日期',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`livestockID`),
  KEY `farmID` (`farmID`),
  CONSTRAINT `tb_livestock_ibfk_1` FOREIGN KEY (`farmID`) REFERENCES `tb_farm` (`farmID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_livestock
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_picture`
-- ----------------------------
DROP TABLE IF EXISTS `tb_picture`;
CREATE TABLE `tb_picture` (
  `picID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片ID',
  `picTitle` varchar(100) NOT NULL COMMENT '图片描述',
  `picSize` float(10,2) unsigned NOT NULL COMMENT '图片大小kb',
  `picWidth` float(10,2) unsigned NOT NULL COMMENT '图片宽度',
  `picHeight` float(10,2) unsigned NOT NULL COMMENT '图片高度',
  `picType` varchar(50) NOT NULL COMMENT '图片类型',
  `picPreviewPath` varchar(100) NOT NULL COMMENT '预览图路径',
  `picPath` varchar(100) NOT NULL COMMENT '图片路径',
  `picUploadDate` datetime NOT NULL COMMENT '图片上传时间',
  PRIMARY KEY (`picID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_picture
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_remotecontrol`
-- ----------------------------
DROP TABLE IF EXISTS `tb_remotecontrol`;
CREATE TABLE `tb_remotecontrol` (
  `controlID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '远程控制ID',
  `farmID` int(11) unsigned NOT NULL COMMENT '养殖场ID',
  `equipmentName` varchar(25) NOT NULL COMMENT '设备名称',
  `status` varchar(25) NOT NULL COMMENT '开关状态',
  `controlTime` datetime NOT NULL COMMENT '控制开关时间',
  PRIMARY KEY (`controlID`),
  KEY `farmID` (`farmID`),
  CONSTRAINT `tb_remotecontrol_ibfk_1` FOREIGN KEY (`farmID`) REFERENCES `tb_farm` (`farmID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_remotecontrol
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_supply`
-- ----------------------------
DROP TABLE IF EXISTS `tb_supply`;
CREATE TABLE `tb_supply` (
  `supplyName` varchar(25) NOT NULL COMMENT '耗材名称',
  `supplyUse` varchar(200) NOT NULL COMMENT '耗材用途',
  `remark6` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`supplyName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_supply
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_treatment`
-- ----------------------------
DROP TABLE IF EXISTS `tb_treatment`;
CREATE TABLE `tb_treatment` (
  `treatmentID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `livestockID` int(11) unsigned NOT NULL,
  `livestockType` varchar(25) NOT NULL COMMENT '种类',
  `disease` varchar(50) NOT NULL COMMENT '疾病名称',
  `diseaseCause` varchar(200) NOT NULL COMMENT '病因',
  `diseaseDiscription` varchar(500) NOT NULL COMMENT '病情描述',
  `treatmentDiscription` varchar(500) NOT NULL COMMENT '治疗情况',
  `diseaseTime` date NOT NULL COMMENT '患病时间',
  `remark2` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`treatmentID`),
  KEY `livestockID` (`livestockID`),
  CONSTRAINT `tb_treatment_ibfk_1` FOREIGN KEY (`livestockID`) REFERENCES `tb_livestock` (`livestockID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_treatment
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `userID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(25) NOT NULL COMMENT '用户名',
  `userPwd` varchar(25) NOT NULL COMMENT '密码',
  `userRole` int(2) NOT NULL DEFAULT '0' COMMENT '角色',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('3', 'afdsajk', 'reutnsadfkasj', '0');
INSERT INTO `tb_user` VALUES ('4', '45tjiresijkl', 'asfasuiewr', '0');
INSERT INTO `tb_user` VALUES ('5', '5438jsdalfjanvcx', 'jdfskal54oia', '0');
INSERT INTO `tb_user` VALUES ('6', 'a123456', 's1234567', '0');
INSERT INTO `tb_user` VALUES ('7', 'a12343456', 's123456111111117', '0');
INSERT INTO `tb_user` VALUES ('8', 'fxbfxb', 's1gh2345611', '0');
INSERT INTO `tb_user` VALUES ('9', 'zzzz12', 'zzzz12', '0');
INSERT INTO `tb_user` VALUES ('39', '方旭斌', 'fxb123', '0');
INSERT INTO `tb_user` VALUES ('49', 'gsare4', 'qaz123', '0');
INSERT INTO `tb_user` VALUES ('50', 'we123', 'wer123', '0');
INSERT INTO `tb_user` VALUES ('51', 'trehrhj', 'qw1234', '0');
INSERT INTO `tb_user` VALUES ('52', 'useruser', 'useruser', '0');
INSERT INTO `tb_user` VALUES ('53', 'fangxubin', 'f12345', '0');
INSERT INTO `tb_user` VALUES ('54', '方旭斌qwer', 'fang123', '0');
INSERT INTO `tb_user` VALUES ('55', 'a规划我', 'abc456', '0');
INSERT INTO `tb_user` VALUES ('56', 'asdfg', 'asd123', '0');
INSERT INTO `tb_user` VALUES ('57', 'sahfkah按', 'Q123456', '0');

-- ----------------------------
-- Table structure for `tb_vaccine`
-- ----------------------------
DROP TABLE IF EXISTS `tb_vaccine`;
CREATE TABLE `tb_vaccine` (
  `vaccineID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `livestockID` int(11) unsigned NOT NULL,
  `livestockType` varchar(25) NOT NULL COMMENT '种类',
  `vaccineType` varchar(25) NOT NULL COMMENT '疫苗类型',
  `injectionTime` date NOT NULL COMMENT '注射时间',
  `injectionPerson` varchar(25) NOT NULL COMMENT '注射人',
  `remark3` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`vaccineID`),
  KEY `livestockID` (`livestockID`),
  CONSTRAINT `tb_vaccine_ibfk_1` FOREIGN KEY (`livestockID`) REFERENCES `tb_livestock` (`livestockID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_vaccine
-- ----------------------------
