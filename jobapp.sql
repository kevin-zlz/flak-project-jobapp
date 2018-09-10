/*
 Navicat Premium Data Transfer

 Source Server         : localmysql-12345678
 Source Server Type    : MySQL
 Source Server Version : 50627
 Source Host           : localhost
 Source Database       : jobapp

 Target Server Type    : MySQL
 Target Server Version : 50627
 File Encoding         : utf-8

 Date: 08/16/2018 15:45:57 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `city`
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `province_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_city_province1_idx` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8 COMMENT='城市表';

-- ----------------------------
--  Records of `city`
-- ----------------------------
BEGIN;
INSERT INTO `city` VALUES ('5', '石家庄市', '130000'), ('6', '唐山市', '130000'), ('7', '秦皇岛市', '130000'), ('8', '邯郸市', '130000'), ('9', '邢台市', '130000'), ('10', '保定市', '130000'), ('11', '张家口市', '130000'), ('12', '承德市', '130000'), ('13', '沧州市', '130000'), ('14', '廊坊市', '130000'), ('15', '衡水市', '130000'), ('16', '太原市', '140000'), ('17', '大同市', '140000'), ('18', '阳泉市', '140000'), ('19', '长治市', '140000'), ('20', '晋城市', '140000'), ('21', '朔州市', '140000'), ('22', '晋中市', '140000'), ('23', '运城市', '140000'), ('24', '忻州市', '140000'), ('25', '临汾市', '140000'), ('26', '吕梁市', '140000'), ('27', '呼和浩特市', '150000'), ('28', '包头市', '150000'), ('29', '乌海市', '150000'), ('30', '赤峰市', '150000'), ('31', '通辽市', '150000'), ('32', '鄂尔多斯市', '150000'), ('33', '呼伦贝尔市', '150000'), ('34', '巴彦淖尔市', '150000'), ('35', '乌兰察布市', '150000'), ('36', '兴安盟', '150000'), ('37', '锡林郭勒盟', '150000'), ('38', '阿拉善盟', '150000'), ('39', '沈阳市', '210000'), ('40', '大连市', '210000'), ('41', '鞍山市', '210000'), ('42', '抚顺市', '210000'), ('43', '本溪市', '210000'), ('44', '丹东市', '210000'), ('45', '锦州市', '210000'), ('46', '营口市', '210000'), ('47', '阜新市', '210000'), ('48', '辽阳市', '210000'), ('49', '盘锦市', '210000'), ('50', '铁岭市', '210000'), ('51', '朝阳市', '210000'), ('52', '葫芦岛市', '210000'), ('53', '长春市', '220000'), ('54', '吉林市', '220000'), ('55', '四平市', '220000'), ('56', '辽源市', '220000'), ('57', '通化市', '220000'), ('58', '白山市', '220000'), ('59', '松原市', '220000'), ('60', '白城市', '220000'), ('61', '延边朝鲜族自治州', '220000'), ('62', '哈尔滨市', '230000'), ('63', '齐齐哈尔市', '230000'), ('64', '鸡西市', '230000'), ('65', '鹤岗市', '230000'), ('66', '双鸭山市', '230000'), ('67', '大庆市', '230000'), ('68', '伊春市', '230000'), ('69', '佳木斯市', '230000'), ('70', '七台河市', '230000'), ('71', '牡丹江市', '230000'), ('72', '黑河市', '230000'), ('73', '绥化市', '230000'), ('74', '大兴安岭地区', '230000'), ('75', '市辖区', '310000'), ('76', '县', '310000'), ('77', '南京市', '320000'), ('78', '无锡市', '320000'), ('79', '徐州市', '320000'), ('80', '常州市', '320000'), ('81', '苏州市', '320000'), ('82', '南通市', '320000'), ('83', '连云港市', '320000'), ('84', '淮安市', '320000'), ('85', '盐城市', '320000'), ('86', '扬州市', '320000'), ('87', '镇江市', '320000'), ('88', '泰州市', '320000'), ('89', '宿迁市', '320000'), ('90', '杭州市', '330000'), ('91', '宁波市', '330000'), ('92', '温州市', '330000'), ('93', '嘉兴市', '330000'), ('94', '湖州市', '330000'), ('95', '绍兴市', '330000'), ('96', '金华市', '330000'), ('97', '衢州市', '330000'), ('98', '舟山市', '330000'), ('99', '台州市', '330000'), ('100', '丽水市', '330000'), ('101', '合肥市', '340000'), ('102', '芜湖市', '340000'), ('103', '蚌埠市', '340000'), ('104', '淮南市', '340000'), ('105', '马鞍山市', '340000'), ('106', '淮北市', '340000'), ('107', '铜陵市', '340000'), ('108', '安庆市', '340000'), ('109', '黄山市', '340000'), ('110', '滁州市', '340000'), ('111', '阜阳市', '340000'), ('112', '宿州市', '340000'), ('113', '巢湖市', '340000'), ('114', '六安市', '340000'), ('115', '亳州市', '340000'), ('116', '池州市', '340000'), ('117', '宣城市', '340000'), ('118', '福州市', '350000'), ('119', '厦门市', '350000'), ('120', '莆田市', '350000'), ('121', '三明市', '350000'), ('122', '泉州市', '350000'), ('123', '漳州市', '350000'), ('124', '南平市', '350000'), ('125', '龙岩市', '350000'), ('126', '宁德市', '350000'), ('127', '南昌市', '360000'), ('128', '景德镇市', '360000'), ('129', '萍乡市', '360000'), ('130', '九江市', '360000'), ('131', '新余市', '360000'), ('132', '鹰潭市', '360000'), ('133', '赣州市', '360000'), ('134', '吉安市', '360000'), ('135', '宜春市', '360000'), ('136', '抚州市', '360000'), ('137', '上饶市', '360000'), ('138', '济南市', '370000'), ('139', '青岛市', '370000'), ('140', '淄博市', '370000'), ('141', '枣庄市', '370000'), ('142', '东营市', '370000'), ('143', '烟台市', '370000'), ('144', '潍坊市', '370000'), ('145', '济宁市', '370000'), ('146', '泰安市', '370000'), ('147', '威海市', '370000'), ('148', '日照市', '370000'), ('149', '莱芜市', '370000'), ('150', '临沂市', '370000'), ('151', '德州市', '370000'), ('152', '聊城市', '370000'), ('153', '滨州市', '370000'), ('154', '荷泽市', '370000'), ('155', '郑州市', '410000'), ('156', '开封市', '410000'), ('157', '洛阳市', '410000'), ('158', '平顶山市', '410000'), ('159', '安阳市', '410000'), ('160', '鹤壁市', '410000'), ('161', '新乡市', '410000'), ('162', '焦作市', '410000'), ('163', '濮阳市', '410000'), ('164', '许昌市', '410000'), ('165', '漯河市', '410000'), ('166', '三门峡市', '410000'), ('167', '南阳市', '410000'), ('168', '商丘市', '410000'), ('169', '信阳市', '410000'), ('170', '周口市', '410000'), ('171', '驻马店市', '410000'), ('172', '武汉市', '420000'), ('173', '黄石市', '420000'), ('174', '十堰市', '420000'), ('175', '宜昌市', '420000'), ('176', '襄樊市', '420000'), ('177', '鄂州市', '420000'), ('178', '荆门市', '420000'), ('179', '孝感市', '420000'), ('180', '荆州市', '420000'), ('181', '黄冈市', '420000'), ('182', '咸宁市', '420000'), ('183', '随州市', '420000'), ('184', '恩施土家族苗族自治州', '420000'), ('185', '省直辖行政单位', '420000'), ('186', '长沙市', '430000'), ('187', '株洲市', '430000'), ('188', '湘潭市', '430000'), ('189', '衡阳市', '430000'), ('190', '邵阳市', '430000'), ('191', '岳阳市', '430000'), ('192', '常德市', '430000'), ('193', '张家界市', '430000'), ('194', '益阳市', '430000'), ('195', '郴州市', '430000'), ('196', '永州市', '430000'), ('197', '怀化市', '430000'), ('198', '娄底市', '430000'), ('199', '湘西土家族苗族自治州', '430000'), ('200', '广州市', '440000'), ('201', '韶关市', '440000'), ('202', '深圳市', '440000'), ('203', '珠海市', '440000'), ('204', '汕头市', '440000'), ('205', '佛山市', '440000'), ('206', '江门市', '440000'), ('207', '湛江市', '440000'), ('208', '茂名市', '440000'), ('209', '肇庆市', '440000'), ('210', '惠州市', '440000'), ('211', '梅州市', '440000'), ('212', '汕尾市', '440000'), ('213', '河源市', '440000'), ('214', '阳江市', '440000'), ('215', '清远市', '440000'), ('216', '东莞市', '440000'), ('217', '中山市', '440000'), ('218', '潮州市', '440000'), ('219', '揭阳市', '440000'), ('220', '云浮市', '440000'), ('221', '南宁市', '450000'), ('222', '柳州市', '450000'), ('223', '桂林市', '450000'), ('224', '梧州市', '450000'), ('225', '北海市', '450000'), ('226', '防城港市', '450000'), ('227', '钦州市', '450000'), ('228', '贵港市', '450000'), ('229', '玉林市', '450000'), ('230', '百色市', '450000'), ('231', '贺州市', '450000'), ('232', '河池市', '450000'), ('233', '来宾市', '450000'), ('234', '崇左市', '450000'), ('235', '海口市', '460000'), ('236', '三亚市', '460000'), ('237', '省直辖县级行政单位', '460000'), ('238', '市辖区', '500000'), ('239', '县', '500000'), ('240', '市', '500000'), ('241', '成都市', '510000'), ('242', '自贡市', '510000'), ('243', '攀枝花市', '510000'), ('244', '泸州市', '510000'), ('245', '德阳市', '510000'), ('246', '绵阳市', '510000'), ('247', '广元市', '510000'), ('248', '遂宁市', '510000'), ('249', '内江市', '510000'), ('250', '乐山市', '510000'), ('251', '南充市', '510000'), ('252', '眉山市', '510000'), ('253', '宜宾市', '510000'), ('254', '广安市', '510000'), ('255', '达州市', '510000'), ('256', '雅安市', '510000'), ('257', '巴中市', '510000'), ('258', '资阳市', '510000'), ('259', '阿坝藏族羌族自治州', '510000'), ('260', '甘孜藏族自治州', '510000'), ('261', '凉山彝族自治州', '510000'), ('262', '贵阳市', '520000'), ('263', '六盘水市', '520000'), ('264', '遵义市', '520000'), ('265', '安顺市', '520000'), ('266', '铜仁地区', '520000'), ('267', '黔西南布依族苗族自治州', '520000'), ('268', '毕节地区', '520000'), ('269', '黔东南苗族侗族自治州', '520000'), ('270', '黔南布依族苗族自治州', '520000'), ('271', '昆明市', '530000'), ('272', '曲靖市', '530000'), ('273', '玉溪市', '530000'), ('274', '保山市', '530000'), ('275', '昭通市', '530000'), ('276', '丽江市', '530000'), ('277', '思茅市', '530000'), ('278', '临沧市', '530000'), ('279', '楚雄彝族自治州', '530000'), ('280', '红河哈尼族彝族自治州', '530000'), ('281', '文山壮族苗族自治州', '530000'), ('282', '西双版纳傣族自治州', '530000'), ('283', '大理白族自治州', '530000'), ('284', '德宏傣族景颇族自治州', '530000'), ('285', '怒江傈僳族自治州', '530000'), ('286', '迪庆藏族自治州', '530000'), ('287', '拉萨市', '540000'), ('288', '昌都地区', '540000'), ('289', '山南地区', '540000'), ('290', '日喀则地区', '540000'), ('291', '那曲地区', '540000'), ('292', '阿里地区', '540000'), ('293', '林芝地区', '540000'), ('294', '西安市', '610000'), ('295', '铜川市', '610000'), ('296', '宝鸡市', '610000'), ('297', '咸阳市', '610000'), ('298', '渭南市', '610000'), ('299', '延安市', '610000'), ('300', '汉中市', '610000'), ('301', '榆林市', '610000'), ('302', '安康市', '610000'), ('303', '商洛市', '610000'), ('304', '兰州市', '620000'), ('305', '嘉峪关市', '620000'), ('306', '金昌市', '620000'), ('307', '白银市', '620000'), ('308', '天水市', '620000'), ('309', '武威市', '620000'), ('310', '张掖市', '620000'), ('311', '平凉市', '620000'), ('312', '酒泉市', '620000'), ('313', '庆阳市', '620000'), ('314', '定西市', '620000'), ('315', '陇南市', '620000'), ('316', '临夏回族自治州', '620000'), ('317', '甘南藏族自治州', '620000'), ('318', '西宁市', '630000'), ('319', '海东地区', '630000'), ('320', '海北藏族自治州', '630000'), ('321', '黄南藏族自治州', '630000'), ('322', '海南藏族自治州', '630000'), ('323', '果洛藏族自治州', '630000'), ('324', '玉树藏族自治州', '630000'), ('325', '海西蒙古族藏族自治州', '630000'), ('326', '银川市', '640000'), ('327', '石嘴山市', '640000'), ('328', '吴忠市', '640000'), ('329', '固原市', '640000'), ('330', '中卫市', '640000'), ('331', '乌鲁木齐市', '650000'), ('332', '克拉玛依市', '650000'), ('333', '吐鲁番地区', '650000'), ('334', '哈密地区', '650000'), ('335', '昌吉回族自治州', '650000'), ('336', '博尔塔拉蒙古自治州', '650000'), ('337', '巴音郭楞蒙古自治州', '650000'), ('338', '阿克苏地区', '650000'), ('339', '克孜勒苏柯尔克孜自治州', '650000'), ('340', '喀什地区', '650000'), ('341', '和田地区', '650000'), ('342', '伊犁哈萨克自治州', '650000'), ('343', '塔城地区', '650000'), ('344', '阿勒泰地区', '650000'), ('345', '省直辖行政单位', '650000'), ('346', '朝阳区', '110000'), ('347', '丰台区', '110000'), ('348', '海淀区', '110000'), ('349', '通州区', '110000'), ('350', '昌平区', '110000'), ('351', '大兴区', '110000'), ('352', '顺义区', '110000'), ('353', '西城区', '110000'), ('354', '延庆县', '110000'), ('355', '石景山区', '110000'), ('356', '宣武区', '110000'), ('357', '怀柔区', '110000'), ('358', '崇文区', '110000'), ('359', '密云县', '110000'), ('360', '东城区', '110000'), ('361', '和平区', '120000'), ('362', '北辰区', '120000'), ('363', '河北区', '120000'), ('364', '河西区', '120000'), ('365', '西青区', '120000'), ('366', '东丽区', '120000'), ('367', '武清区', '120000'), ('368', '宝坻区', '120000'), ('369', '红桥区', '120000'), ('370', '大港区', '120000'), ('371', '汉沽区', '120000'), ('372', '静海县', '120000'), ('373', '宁河县', '120000'), ('374', '塘沽区', '120000'), ('375', '南开区', '120000');
COMMIT;

-- ----------------------------
--  Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `account` varchar(100) DEFAULT NULL COMMENT '公司人数或规模',
  `logo` varchar(100) DEFAULT NULL COMMENT '公司logo\n',
  `city_id` int(11) NOT NULL,
  `profession_id` int(11) NOT NULL COMMENT '行业',
  `stage` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '融资阶段',
  PRIMARY KEY (`id`),
  KEY `fk_company_city1_idx` (`city_id`),
  KEY `fk_company_profession1_idx` (`profession_id`),
  CONSTRAINT `fk_company_city1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_company_profession1` FOREIGN KEY (`profession_id`) REFERENCES `profession` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公司表';

-- ----------------------------
--  Records of `company`
-- ----------------------------
BEGIN;
INSERT INTO `company` VALUES ('3', '高富帅人才网', '150-500人', 'images/logo.png', '346', '1', '成熟型(D轮及以上) '), ('4', '网约车', '50-150人', 'images/logo.png', '77', '7', '成熟型(C轮) '), ('5', '创意网', '500-2000人', 'images/logo.png', '90', '7', '上市公司');
COMMIT;

-- ----------------------------
--  Table structure for `position`
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，自增长',
  `name` varchar(45) DEFAULT NULL COMMENT '职位名称',
  `salary` varchar(45) DEFAULT NULL COMMENT '职位薪资',
  `education` varchar(45) DEFAULT NULL COMMENT '职位学历要求',
  `description` text COMMENT '职位描述',
  `publish_date` datetime NOT NULL,
  `years_working` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '工作年限',
  `job_nature` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '工作性质，分为不限，兼职，全职',
  `attraction` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '职位诱惑',
  `tags` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '职位关键字',
  `city_id` int(11) NOT NULL COMMENT '职位所在城市',
  `company_id` int(11) NOT NULL COMMENT '公司id',
  PRIMARY KEY (`id`),
  KEY `fk_position_city1_idx` (`city_id`),
  KEY `company_id` (`company_id`),
  KEY `company_id_2` (`company_id`),
  CONSTRAINT `fk_position_city1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='职位表';

-- ----------------------------
--  Records of `position`
-- ----------------------------
BEGIN;
INSERT INTO `position` VALUES ('3', '销售经理', '10k-15k ', '大专', '<p>\n    职位描述：<br/>\n</p>\n<p>\n    - 带领商业服务部业务团队成员完成销售目标；&nbsp;\n</p>\n<p>\n    - 及时发现业务运作中存在的各种问题，提供有效的解决方案；&nbsp;\n</p>\n<p>\n    - 协调部门客户的管理和服务工作；&nbsp;\n</p>\n<p>\n    - 协调部门内部工作，提高团队凝聚力；\n</p>\n<p>\n    - 销售人员培训及各项绩效指标制定；\n</p>\n<p>\n    - 发现及反馈市场信息，提供有建设性的意见。\n</p>\n<p>\n    <br/>\n</p>\n<p>\n    任职要求：\n</p>\n<p>\n    - 专科以上学历；&nbsp;<br/>\n</p>\n<p>\n    - 5年以上销售相关经验；&nbsp;\n</p>\n<p>\n    - 2年以上B2B销售团队管理经验；&nbsp;\n</p>\n<p>\n    - 优秀的执行力，抗压能力和处理复杂事务的能力；&nbsp;\n</p>\n<p>\n    - 良好的人际关系管理能力，善于协调团队成员之间的关系；&nbsp;\n</p>\n<p>\n    - 强烈的进取心，团队精神和高度的责任心。\n</p>\n<p>\n    - 人力资源相关行业经验者优先。\n</p>', '2017-06-02 10:20:00', '经验3-5年 ', '全职', '与优秀的人一起共事 无限发展空间', '企业服务高级 后端开发 分布式 J2EE SOA', '346', '3'), ('4', 'Java工程师', '15k-25k', '本科', '<ol class=\" list-paddingleft-2\">\n    <li>\n        <p>\n            JAVA基础扎实，精通io、多线程、集合等基础框架\n        </p>\n    </li>\n    <li>\n        <p>\n            负责业务模块分析设计并负责完成开发；\n        </p>\n    </li>\n    <li>\n        <p>\n            需要扎实的基础，拥有良好的编码习惯；\n        </p>\n    </li>\n    <li>\n        <p>\n            熟练使用Mybatis，SpringMVC等框架进行项目开发；\n        </p>\n    </li>\n    <li>\n        <p>\n            熟悉SOA，熟练并使用过rpc框架；\n        </p>\n    </li>\n    <li>\n        <p>\n            熟悉MySQL、Redis、消息队列；\n        </p>\n    </li>\n    <li>\n        <p>\n            良好的沟通和学习能力，团队合作精神，能独立承担工作；\n        </p>\n    </li>\n</ol>\n<p>\n    <br/>\n</p>', '2017-06-09 09:25:40', '经验5-10年', '全职', '技术挑战、工作居住证、美味果盘、运动健身', '企业服务高级 后端开发 分布式 J2EE SOA', '346', '3'), ('5', '客户经理 ', '5k-8k', '本科', '<p>\r\n    我们需要你：\r\n</p>\r\n<p>\r\n    1- 通过电话、拜访开发、维护企业客户，分析客户需求，制订招聘解决方案，并按期完成业务指标；\r\n</p>\r\n<p>\r\n    2- 负责与企业客户签订服务合同及合同的实施执行；\r\n</p>\r\n<p>\r\n    3- 定期拜访客户，维护新老客户关系；\r\n</p>\r\n<p>\r\n    4- 收集有效行业信息，分析市场需求；\r\n</p>\r\n<p>\r\n    任职要求：\r\n</p>\r\n<p>\r\n    大专以上学历及至少1年以上电话销售经验，有互联网招聘行业经验者优先；\r\n</p>\r\n<p>\r\n    1-3年一线销售工作经验，有客户开发、维护经验者优先考虑，有责任心和客户服务意识；\r\n</p>\r\n<p>\r\n    熟悉电话销售的基本流程和考核机制，能够适应电销+面销的方式；\r\n</p>\r\n<p>\r\n    良好的人际交往、商务谈判和内部协调能力，注重团队协作；\r\n</p>\r\n<p>\r\n    工作主动性强，有较强的执行力及责任心和客户服务意识；\r\n</p>', '2017-06-10 11:22:02', '经验1-3年', '全职', '爱心两餐、水果下午茶、节日礼物、绩效奖金', '企业服务 顾问', '346', '3'), ('6', '销售专员', '5k-8k', '大专', '<p>\n    有些路 &nbsp;一个人无法走远 &nbsp;总得有人并肩作战！\n</p>\n<p>\n    <br/>\n</p>\n<p>\n    主要职责：\n</p>\n<ol class=\" list-paddingleft-2\">\n    <li>\n        <p>\n            以电话为主要沟通方式，与潜在客户建立连接并陈述产品价值，激发出客户的潜在需求并以价值认同为基础产生好奇心和购买意愿；\n        </p>\n    </li>\n    <li>\n        <p>\n            负责开发、维护公司客户，分析客户需求，制订招聘解决方案，并按期完成业务指标；\n        </p>\n    </li>\n    <li>\n        <p>\n            对各自名下的签约客户提供有效的、可追踪的维护服务，确保并提高有效转化量并与客户签订服务合同及合同的实施执行；\n        </p>\n    </li>\n    <li>\n        <p>\n            收集有效行业信息，分析市场需求，配合Team Leader完成日常工作的分配\n        </p>\n    </li>\n</ol>\n<p>\n    <br/>\n</p>\n<p>\n    任职要求：\n</p>\n<ol class=\" list-paddingleft-2\">\n    <li>\n        <p>\n            大专以上学历及至少1年以上电话销售经验，有互联网招聘行业经验者优先；\n        </p>\n    </li>\n    <li>\n        <p>\n            1-3年一线销售工作经验，有客户开发、维护经验者优先考虑，有责任心和客户服务意识；\n        </p>\n    </li>\n    <li>\n        <p>\n            熟悉电话销售的基本流程和考核机制，能够适应电销+面销的方式；\n        </p>\n    </li>', '2017-06-11 09:54:10', '经验1-3年', '兼职', '节日礼物,年底双薪,绩效奖金,管吃喝', '企业服务 销售 专员', '346', '3'), ('7', '新媒体运营专员', '4k-6k', '本科', '<p>\r\n    岗位职责：\r\n</p>\r\n<p>\r\n    1、独立完成新媒体岗位工作要求，包括粉丝增长、文章阅读数、广告点击率等指标；\r\n</p>\r\n<p>\r\n    2.了解并发掘汽车行业以及用户的阅读喜好；\r\n</p>\r\n<p>\r\n    3.每月完成资讯流量考核指标；\r\n</p>\r\n<p>\r\n    4.配合团队完成团队任务；\r\n</p>\r\n<p>\r\n    任职要求：\r\n</p>\r\n<p>\r\n    1、熟悉微信、今日头条号、百度百家号的运营圈粉流程；\r\n</p>\r\n<p>\r\n    2、了解新媒体商业化的若干方式，熟悉新媒体的广告营销手段；\r\n</p>\r\n<p>\r\n    3、能细数出三五个新媒体账号管理平台的名称；\r\n</p>\r\n<p>\r\n    4、有广告群资源或者新媒体流量资源；\r\n</p>\r\n<p>\r\n    5、了解新媒体商务合作方式，对广告报价、粉丝属性、地域有研究。\r\n</p>', '2017-06-12 16:05:11', '经验1-3年', '全职', '团队活动,节日福利,带薪年假,股票期权', '汽车 新媒体 自媒体 微信开发 专员\r\n', '77', '4'), ('8', '数据挖掘工程师', '12k-24k ', '本科', '<p>\r\n    岗位职责<br/>1、 能够深刻理解需求，撰写数据挖掘项目分析方案；<br/>2、 对海量业务数据进行分析，深度挖掘数据之间关联特征，构建精准的指标体系；\r\n</p>\r\n<p>\r\n    任职资格<br/>\r\n</p>\r\n<p>\r\n    1. 计算机、电子、数学或者统计学相关专业硕士以上学历，2年以上工作经历； &nbsp;\r\n</p>\r\n<p>\r\n    2. 精通一门或多门开发语言（C++、Python和Java等），熟练掌握常用数据结构和算法； &nbsp;&nbsp;\r\n</p>\r\n<p>\r\n    3. 熟悉常用机器学习和数据挖掘算法，包括但不限于决策树、支持向量机、线性回归、逻辑斯谛回归以及神经网络等算法； &nbsp;&nbsp;\r\n</p>\r\n<p>\r\n    4. 熟练掌握一种数据库，例如MySQL，精通SQL语言，并有实际应用和开发经验； &nbsp;\r\n</p>\r\n<p>\r\n    5. 有汽车行业数据挖掘项目工作经验优先； &nbsp;\r\n</p>\r\n<p>\r\n    6. 优秀的沟通能力，有创新精神，乐于接受挑战，能承受工作压力。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '2017-06-19 16:05:11', '经验1-3年', '全职', '五险一金、带薪年假、股票期权、优秀的团队', '汽车 数据 建模 数据挖掘', '81', '4'), ('9', '数据建模 ', '16k-32k ', ' 本科', '<p>\r\n    任职要求：\r\n</p>\r\n<p>\r\n    1.统招本科以上学历，统计、数学、计量经济、数据挖掘、金融工程、计算机等量化分析方向专业毕业；\r\n</p>\r\n<p>\r\n    2.拥有2年以上信用风险建模及成功实践经验；\r\n</p>\r\n<p>\r\n    3.具有扎实的统计学、数据分析、数据挖掘基础，熟练掌握SAS/R/SPSS/Python/MATLAB等模型软件，熟悉机器学习相关算法及理论；\r\n</p>\r\n<p>\r\n    4.了解在线和线下风控技术；\r\n</p>\r\n<p>\r\n    5.有车贷金融相关的工作经历优先考虑。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>\r\n<p>\r\n    岗位需求：\r\n</p>\r\n<p>\r\n    1.负责车贷金融相关的风险模型的开发和模型的搭建及改进；\r\n</p>\r\n<p>\r\n    2.参与团队讨论，并提出自己的建设性意见；\r\n</p>\r\n<p>\r\n    3.建模并撰写算法流程说明书；\r\n</p>\r\n<p>\r\n    4.及时了解风控及建模最近进展及技术，并乐于分享\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '2017-06-20 13:10:30', '经验1-3年', ' 全职', '节日福利,发展空间,晋升空间,股票期权', '数据分析 金融 建模 算法 matlab', '77', '4'), ('10', '数据挖掘-风控方向', '15k-30k', '研究生', '<p>\r\n    岗位职责\r\n</p>\r\n<p>\r\n    1、能够深刻理解需求，撰写数据挖掘项目分析方案；\r\n</p>\r\n<p>\r\n    2、对海量业务数据进行分析，深度挖掘数据之间关联特征，构建精准的指标体系；\r\n</p>\r\n<p>\r\n    3、对文本进行相关分析与挖掘。\r\n</p>\r\n<p>\r\n    任职资格\r\n</p>\r\n<p>\r\n    1、 统计、数学、计算机等专业本科及以上学历（最好是数据挖掘方向）；\r\n</p>\r\n<p>\r\n    2、熟悉建模技术，数据挖掘技术，对构建算法模型有深刻理解，能针对不同的业务需求使用不同的建模分析算法且有自己的见解；\r\n</p>\r\n<p>\r\n    3、 熟悉文本挖掘相关技术，熟练掌握文本挖掘常用包（R、Python），或者熟练掌握SAS EM、SPSS Modeler数据挖掘平台；\r\n</p>\r\n<p>\r\n    4、有汽车行业数据挖掘项目工作经验优先；\r\n</p>\r\n<p>\r\n    5、具备良好的逻辑思维与表达能力；\r\n</p>\r\n<p>\r\n    6、有耐心，对数据敏感，能发现/理解细微的变化代表的含义；\r\n</p>\r\n<p>\r\n    7、性格开朗，责任感强，工作积极主动，具备学习意识，良好的团队协作意识。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '2017-06-21 16:25:11', '经验3-5年 ', ' 全职', '节日福利,发展空间,晋升空间,股票期权', '专家 资深 建模 汽车 数据挖掘 大数据', '81', '4'), ('11', '高级Java工程师 ', '15k-30k ', '本科', '<p>\n    岗位要求：&nbsp;<br/>1.三年以上java开发工作经验；&nbsp;<br/>2.熟练运用Sql语言完成数据库操作，熟悉Oracle、mySQL等数据库；<br/>3.熟悉java web开发，熟悉css，html，javascript，jquery,prototype；<br/>4.熟悉Struts、Spring、hibernate、mybatis等开源框架者；<br/>5.对互联网技术充满兴趣，喜欢学习新技术；<br/>6.带过项目团队，较强的沟通能力及团队协作能力，容易与人相处；&nbsp;<br/>7.能承受一定的工作压力，有责任心和上进心，能通过持续学习完善自身。\n</p>', '2017-06-22 08:35:12', '经验3-5年', ' 全职', '弹性工作制，股票期权，年终奖', 'java', '90', '5'), ('12', '测试工程师 ', '8k-15k', '本科', '<p>\n    岗位职责：<br/>1.负责公司软件产品的全流程测试，保证发布质量；<br/>2.参与需求分析，安排测试计划、测试用例、执行测试，进行缺陷跟踪并给出测试分析报告；<br/>3.配合软件开发团队，准确地定位并跟踪问题，推动问题及时合理地解决，按质按时推进软件研发工作。<br/>岗位要求：<br/>1.本科以上学历，计算机相关专业；<br/>2.熟悉C/C++&nbsp;或Java中至少一种语言；<br/>3.熟悉软件测试理论、测试方法；<br/>4.熟悉数据库相关知识；<br/>5.较好的团队合作精神和责任心。<br/>6.具备自动化测试、测试开发经验者优先。\n</p>', '2017-06-23 11:15:10', '经验1-3年', ' 全职', '弹性工作制，股票期权，年终奖', '测试 java', '90', '5'), ('13', '前端开发', '15k-30k', '本科', '<p>\n    岗位描述：\n</p>\n<p>\n    1、负责公司的微信企业号产品和Web站的页面开发;\n</p>\n<p>\n    2、优化代码并保持良好的浏览器兼容性；\n</p>\n<p>\n    3、与各个环节的工程师紧密配合，高质高效完成开发工作。\n</p>\n<p>\n    职位要求：\n</p>\n<p>\n    1、1年或以上前端开发经验；\n</p>\n<p>\n    2、精通html5/CSS3/JavaScript/Ajax等Web开发技术，处理好各个终端页面的兼容性；\n</p>\n<p>\n    3、熟悉原生 JavaScript，掌握 jQuery/Zepto、Bootstrap、vue.js 等框架；\n</p>\n<p>\n    4、熟悉gulp，webpack，了解前端工程化，模块化，前后端分离；\n</p>\n<p>\n    5、能独立开发常用的前端组件，有与服务端数据交互的经验；\n</p>\n<p>\n    6、处理好页面的前端动态效果，精准匹配原有设计。\n</p>\n<p>\n    <br/>\n</p>', '2017-06-24 09:12:30', '经验3-5年', ' 全职', '弹性工作制，股票期权', '前端 HTML5', '90', '5'), ('14', 'HTML5', '16k-20k', '本科', '<p>\n    能力杠杠的我：\n</p>\n<p>\n    1、可以微信HTML 5开发、移动APP HTML 5混合开发；\n</p>\n<p>\n    2、建设前端系统架构不在话下；\n</p>\n<p>\n    3、可以Web性能优化；\n</p>\n<p>\n    4、当然也能够大规模数据可视化的内部系统的前端开发。\n</p>\n<p>\n    喜欢这样的你：\n</p>\n<p>\n    1、本科以上学历，两年以上移动端网站开发经验；\n</p>\n<p>\n    2、HTML5、CSS3、JavaScript 基础扎实，了解HTTP协议以及浏览器原理；\n</p>\n<p>\n    3、熟悉JQuery、Backbone、Zepto；\n</p>\n<p>\n    4、在GitHub或其他平台上有过开源项目 / 有个人技术博客，公开发布过技术文章、论文等优先。\n</p>\n<p>\n    <br/>\n</p>', '2017-06-24 10:10:10', '经验3-5年', ' 全职', '弹性工作 一群文艺小骚年们等着你的加入', '教育 音乐 直播 B2C web php', '90', '5');
COMMIT;

-- ----------------------------
--  Table structure for `postion_apply`
-- ----------------------------
DROP TABLE IF EXISTS `postion_apply`;
CREATE TABLE `postion_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL COMMENT '申请时间',
  `position_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_apply_records_position1_idx` (`position_id`),
  KEY `fk_apply_records_user1_idx` (`user_id`),
  KEY `resume_id` (`resume_id`),
  CONSTRAINT `fk_apply_records_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_apply_records_resume` FOREIGN KEY (`resume_id`) REFERENCES `resume_basic` (`id`),
  CONSTRAINT `fk_apply_records_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='职位申请记录表';

-- ----------------------------
--  Records of `postion_apply`
-- ----------------------------
BEGIN;
INSERT INTO `postion_apply` VALUES ('32', '2017-06-21 19:54:03', '3', '1', '1'), ('33', '2017-06-21 19:57:31', '4', '1', '1'), ('34', '2017-06-22 22:37:48', '14', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `profession`
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT '行业名称',
  `pname_id` int(11) DEFAULT NULL COMMENT '父类别id，没有为0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='行业领域';

-- ----------------------------
--  Records of `profession`
-- ----------------------------
BEGIN;
INSERT INTO `profession` VALUES ('1', '金融', '0'), ('2', 'IT软件', '0'), ('3', '游戏', '0'), ('6', '文化娱乐', '0'), ('7', '移动互联网', '0'), ('8', '教育培训', '0'), ('9', '电子商务', '0'), ('10', '健康医疗', '0'), ('11', '生活服务', '0'), ('12', '信息安全', '0'), ('13', '数据服务', '0'), ('14', '智能硬件', '0'), ('15', '文化娱乐', '0'), ('16', '网络招聘', '0'), ('17', '通信', '0'), ('18', '企业服务', '0');
COMMIT;

-- ----------------------------
--  Table structure for `province`
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `pycode` varchar(45) DEFAULT NULL COMMENT '拼音\n',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='省份表';

-- ----------------------------
--  Records of `province`
-- ----------------------------
BEGIN;
INSERT INTO `province` VALUES ('1', '北京市', '110000'), ('2', '天津市', '120000'), ('3', '河北省', '130000'), ('4', '山西省', '140000'), ('5', '内蒙古自治区', '150000'), ('6', '辽宁省', '210000'), ('7', '吉林省', '220000'), ('8', '黑龙江省', '230000'), ('9', '上海市', '310000'), ('10', '江苏省', '320000'), ('11', '浙江省', '330000'), ('12', '安徽省', '340000'), ('13', '福建省', '350000'), ('14', '江西省', '360000'), ('15', '山东省', '370000'), ('16', '河南省', '410000'), ('17', '湖北省', '420000'), ('18', '湖南省', '430000'), ('19', '广东省', '440000'), ('20', '广西壮族自治区', '450000'), ('21', '海南省', '460000'), ('22', '重庆市', '500000'), ('23', '四川省', '510000'), ('24', '贵州省', '520000'), ('25', '云南省', '530000'), ('26', '西藏自治区', '540000'), ('27', '陕西省', '610000'), ('28', '甘肃省', '620000'), ('29', '青海省', '630000'), ('30', '宁夏回族自治区', '640000'), ('31', '新疆维吾尔自治区', '650000'), ('32', '台湾省', '710000'), ('33', '香港特别行政区', '810000'), ('34', '澳门特别行政区', '820000');
COMMIT;

-- ----------------------------
--  Table structure for `resume_basic`
-- ----------------------------
DROP TABLE IF EXISTS `resume_basic`;
CREATE TABLE `resume_basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resume_title` varchar(100) NOT NULL,
  `name` varchar(45) NOT NULL COMMENT '姓名',
  `sex` int(11) NOT NULL COMMENT '性别，0为女，1为男',
  `birth_date` date NOT NULL,
  `advantage` varchar(140) NOT NULL COMMENT '优势',
  `high_education` varchar(100) NOT NULL,
  `work_years` int(11) NOT NULL,
  `position_now` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_resume_basic_user1_idx` (`user_id`),
  KEY `position_now` (`position_now`),
  CONSTRAINT `fk_resume_basic_position` FOREIGN KEY (`position_now`) REFERENCES `resume_jobs` (`id`),
  CONSTRAINT `fk_resume_basic_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='简历基础表';

-- ----------------------------
--  Records of `resume_basic`
-- ----------------------------
BEGIN;
INSERT INTO `resume_basic` VALUES ('1', '中文简历', '赵小萌', '0', '1987-07-09', '本人工作认真，热爱工作', '硕士', '5', '2', '1'), ('2', '英文简历', 'xiaomeng zhao', '0', '1987-07-09', 'I love work very much!', 'master', '5', '4', '1');
COMMIT;

-- ----------------------------
--  Table structure for `resume_education`
-- ----------------------------
DROP TABLE IF EXISTS `resume_education`;
CREATE TABLE `resume_education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(45) DEFAULT NULL COMMENT '学校名称',
  `major` varchar(45) DEFAULT NULL COMMENT '专业',
  `education` varchar(45) DEFAULT NULL COMMENT '学历',
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `resume_basic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_resume_education_resume_basic1_idx` (`resume_basic_id`),
  CONSTRAINT `fk_resume_education_resume_basic1` FOREIGN KEY (`resume_basic_id`) REFERENCES `resume_basic` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='简历教育经历表';

-- ----------------------------
--  Records of `resume_education`
-- ----------------------------
BEGIN;
INSERT INTO `resume_education` VALUES ('2', '清华大学', '计算机软件与理论', '本科', '2005-09-01', '2009-07-01', '1'), ('3', '北京大学', '金融', '研究生', '2009-09-01', '2012-07-01', '1'), ('4', 'Tsinghua University', 'Computer software and theory', 'Bachelor degree', '2005-09-01', '2009-07-01', '2'), ('5', 'Peking University', 'Financial', 'Master degree', '2009-09-01', '2012-07-01', '2');
COMMIT;

-- ----------------------------
--  Table structure for `resume_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `resume_jobs`;
CREATE TABLE `resume_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(45) DEFAULT NULL COMMENT '公司名称',
  `position_name` varchar(45) DEFAULT NULL COMMENT '职位名称',
  `begin_date` date DEFAULT NULL COMMENT '在职开始时间',
  `end_date` varchar(100) DEFAULT NULL COMMENT '在职结束时间',
  `department` varchar(45) DEFAULT NULL COMMENT '所在部门',
  `work_content` varchar(45) DEFAULT NULL COMMENT '工作内容和业绩',
  `profession` varchar(150) DEFAULT NULL COMMENT '公司行业',
  `resume_basic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_resume_jobs_resume_basic1_idx` (`resume_basic_id`),
  CONSTRAINT `fk_resume_jobs_resume_basic1` FOREIGN KEY (`resume_basic_id`) REFERENCES `resume_basic` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='简历工作经历表';

-- ----------------------------
--  Records of `resume_jobs`
-- ----------------------------
BEGIN;
INSERT INTO `resume_jobs` VALUES ('1', '华为', '研发工程师', '2012-10-01', '2014-03-05', '开发部', '从事产品研发相关工作', 'IT软件', '1'), ('2', '百度总部', '技术总监', '2014-06-05', '至今', '产品部', '对产品研发过程进行指导和监控', '企业服务', '1'), ('3', 'HUAWEI', 'Development Engineer', '2012-10-01', '2014-03-05', 'Development Department', 'Engaged in product research and development r', 'IT', '2'), ('4', 'Baidu', 'Technical director', '2014-06-05', 'now', 'Product department', 'Guide and monitor the product development pro', 'Enterprise service', '2');
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，自增长',
  `telephone` varchar(11) NOT NULL COMMENT '手机号，登录账号',
  `password` varchar(45) NOT NULL COMMENT '密码',
  `email` varchar(200) NOT NULL COMMENT '邮箱',
  `province` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `regist_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_telephone` (`telephone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', '15776554504', 'QWQ', 'lucky@gmail.com', null, null, null, '2018-08-16'), ('2', '18912345678', '@.@', 'apple@gmail.com', null, null, null, '2018-08-16'), ('4', '13812790420', '123456', 'lzhan@163.com', null, null, null, '2018-08-16'), ('5', '13812790421', 'fcea920f7412b5da7be0cf42b8c93759', '', null, null, null, '2018-08-16'), ('8', '13812790422', '888888888', 'lzhan666@163.com', null, null, null, '2018-08-16'), ('17', '13812790438', '666666', 'lzhan@163.cjom', null, null, null, '2018-08-16'), ('21', '13812790481', '666666', 'lzhan@163.cjom', null, null, null, '2018-08-16'), ('22', '13812790482', '666666', 'lzhan@163.cjom', null, null, null, '2018-08-16'), ('23', '13812790483', '666666', 'lzhan@163.cjom', null, null, null, '2018-08-16'), ('34', '13956456286', '55555', '943200156@qq.com', null, null, null, '2018-08-16'), ('36', '13956456289', '55555', '876420807@qq.com', null, null, null, '2018-08-16'), ('37', '13812790484', '666666', 'lzhan@163.cjom', null, null, null, '2018-08-16'), ('38', '13812457888', '123456', 'job@163.cjom', null, null, null, '2018-08-16'), ('39', '13812457889', '123456', '51job@163.cjom', null, null, null, '2018-08-16'), ('40', '13812457999', '123456', '51job@163.cjom', null, null, null, '2018-08-16'), ('42', '13812457111', '123456', '51job@163.cjom', null, null, null, '2018-08-16'), ('44', '13812457000', '123456', '51job@163.cjom', null, null, null, '2018-08-16'), ('45', '13812457333', '123456', '51job@163.cjom', null, null, null, '2018-08-16'), ('46', '13888888888', 'pbkdf2:sha1:2000$66jTOS$1e03e3be2994cee65ccfc', '', null, null, null, '2018-08-16');
COMMIT;

-- ----------------------------
--  Table structure for `user_icon`
-- ----------------------------
DROP TABLE IF EXISTS `user_icon`;
CREATE TABLE `user_icon` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `upload_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `user_icon`
-- ----------------------------
BEGIN;
INSERT INTO `user_icon` VALUES ('7', '5', '15039782143370.9958159086362182.png', '2017-08-29 11:43:34'), ('8', '5', '15039782449140.24034077812770627.jpeg', '2017-08-29 11:44:04'), ('9', '5', '15039784076550.4520871068145529.jpeg', '2017-08-29 11:46:47');
COMMIT;

-- ----------------------------
--  View structure for `position_info`
-- ----------------------------
DROP VIEW IF EXISTS `position_info`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `position_info` AS select `p`.`id` AS `id`,`p`.`name` AS `name`,`p`.`salary` AS `salary`,`p`.`education` AS `education`,`p`.`publish_date` AS `publish_date`,`p`.`years_working` AS `years_working`,`c`.`name` AS `city_name`,`com`.`name` AS `company_name`,`pro`.`name` AS `profession_name` from (((`position` `p` join `city` `c` on((`p`.`city_id` = `c`.`id`))) join `company` `com` on((`p`.`company_id` = `com`.`id`))) join `profession` `pro` on((`com`.`profession_id` = `pro`.`id`)));

-- ----------------------------
--  Procedure structure for `addUserIcon`
-- ----------------------------
DROP PROCEDURE IF EXISTS `addUserIcon`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addUserIcon`(in tel varchar(50),in filename varchar(50),out result int(2))
BEGIN
	DECLARE uid varchar(20) DEFAULT '';
	select id into uid from user where telephone=tel;
	insert into user_icon(user_id,icon,upload_date) values(uid,filename,NOW());
	set result=1;
	select result;
END
 ;;
delimiter ;

-- ----------------------------
--  Procedure structure for `getUsersByCity`
-- ----------------------------
DROP PROCEDURE IF EXISTS `getUsersByCity`;
delimiter ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `getUsersByCity`(in ctname varchar(55),out city_id varchar(55))
begin
		select id into city_id from city where name like ctname;
		select city_id;
end
 ;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
