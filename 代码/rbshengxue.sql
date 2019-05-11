/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : rbshengxue

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2019-05-09 17:53:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `info`
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id` bigint(12) NOT NULL,
  `name` varchar(5) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `qq` varchar(11) DEFAULT NULL,
  `wechat` varchar(50) DEFAULT NULL,
  `blog` varchar(50) DEFAULT NULL,
  `github` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES ('201560040123', '赵海鸿', '男', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560040202', '李笑容', '女', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560040204', '巴雨静', '女', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560040228', '高海东', '', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560040230', '张凯', '男', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560140111', '叶丽丽', '女', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560140138', '高翔', '男', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560140208', '胡淑娴', '女', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560140214', '郭铮', '男', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560140232', '杨光', '男', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560140307', '习格格', '女', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560140318', '胡桥单', '男', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560140412', '刘丹阳', '女', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560150108', '王翠霞', '女', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560150118', '袁阳可', '男', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560150122', '许名扬', '男', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560150126', '陈茂洲', '男', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560150206', '张培', '女', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560150210', '赵晓静', '女', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560150233', '刘珂', '男', '123', '123', '', '', '');
INSERT INTO `info` VALUES ('201560160113', '栗晓雪', '女', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560160203', '张敏智', '女', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560160204', '张晨跃', '女', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560160237', '徐消波', '男', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560240102', '赵梦园', '女', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560240112', '王文静', '女', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560240117', '邬贵昌', '男', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560240126', '李振宇', '男', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560240134', '裴登辉', '男', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560240136', '朱自强', '男', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560240235', '武二勇', '男', '', '', '', '', '');
INSERT INTO `info` VALUES ('201560240239', '张志成', '', '', '', '', '', '');
INSERT INTO `info` VALUES ('201619140220', '崔烁豪', '男', '13781255018', '1405960637', 'hao1405960637', '', '');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` bigint(12) NOT NULL,
  `name` varchar(5) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('2019', '崔烁豪', '123123', '1405960637@qq.com');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` bigint(12) NOT NULL,
  `name` varchar(5) DEFAULT NULL,
  `politics_score` int(3) DEFAULT NULL,
  `english_subject` varchar(3) DEFAULT NULL,
  `english_score` int(3) DEFAULT NULL,
  `math_subject` varchar(3) DEFAULT NULL,
  `math_score` int(3) DEFAULT NULL,
  `major_subject` varchar(20) DEFAULT NULL,
  `major_score` int(3) DEFAULT NULL,
  `score_year` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('201560150233', '刘珂', '0', '', '0', '', '0', '', '0', '2019');
INSERT INTO `score` VALUES ('201619140220', '崔烁豪', '0', '', '0', '', '0', '', '0', '2020');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` bigint(12) NOT NULL,
  `name` varchar(5) DEFAULT NULL,
  `sch` varchar(20) DEFAULT NULL,
  `college` varchar(20) DEFAULT NULL,
  `major` varchar(20) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `register_sch` varchar(20) DEFAULT NULL,
  `register_major` varchar(20) DEFAULT NULL,
  `register_num` varchar(15) DEFAULT NULL,
  `score_total` int(3) DEFAULT NULL,
  `score_year` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2015013', '张秀玲', '中原工学院', '软件学院', '软件工程', '', '', '', '', '349', '2019');
INSERT INTO `student` VALUES ('201560040123', '赵海鸿', '中原工学院', '软件学院', '软件工程', 'RB软工网151', '北京工业大学', '软件工程', '大数据与信息服务工程', '317', '2019');
INSERT INTO `student` VALUES ('201560040202', '李笑容', '中原工学院', '软件学院', '软件工程', '卓越151', '东华大学', '软件工程', '数据库与信息系统', '343', '2019');
INSERT INTO `student` VALUES ('201560040204', '巴雨静', '中原工学院', '软件学院', '软件工程', 'RB软工网152', '厦门大学', '计算机技术', '自然语言处理', '300', '2019');
INSERT INTO `student` VALUES ('201560040208', '王奥平', '中原工学院', '软件学院', '软件工程', '卓越151', '北京交通大学', '软件工程', '云计算与大数据', '365', '2019');
INSERT INTO `student` VALUES ('201560040219', '李想', '中原工学院', '软件学院', '软件工程', 'RB软工网152', '华南师范大学', '软件工程', '人工智能与智能软件技术', '348', '2019');
INSERT INTO `student` VALUES ('201560040228', '高海东', '中原工学院', '软件学院', '软件工程', 'RB软工网151', '广东工业大学', '软件工程', '不区分研究方向', '381', '2019');
INSERT INTO `student` VALUES ('201560040230', '张凯', '中原工学院', '软件学院', '软件工程', 'RB软工网152', '河海大学', '计算机技术', '计算机技术', '301', '2019');
INSERT INTO `student` VALUES ('201560140111', '叶丽丽', '中原工学院', '软件学院', '软件工程', '卓越151', '杭州师范大学', '软件工程', '虚拟现实与人机交互工程', '328', '2019');
INSERT INTO `student` VALUES ('201560140121', '赵凌昊', '中原工学院', '软件学院', '软件工程', 'RB软工移151', '河南科技大学', '计算机技术', '物联网技术', '347', '2019');
INSERT INTO `student` VALUES ('201560140132', '贾智彬', '中原工学院', '软件学院', '软件工程', '卓越151', '北京理工大学', '计算机技术', '不区分研究方向', '368', '2019');
INSERT INTO `student` VALUES ('201560140138', '高翔', '中原工学院', '软件学院', '软件工程', 'RB软工移151', '杭州师范大学', '软件工程', '数字医疗与健康管理工程', '320', '2019');
INSERT INTO `student` VALUES ('201560140208', '胡淑娴', '中原工学院', '软件学院', '软件工程', 'RB软工移152', '广东工业大学', '软件工程', '不区分研究方向', '313', '2019');
INSERT INTO `student` VALUES ('201560140214', '郭铮', '中原工学院', '软件学院', '软件工程', 'RB软工移152', '北京工业大学', '软件工程', '智能媒体技术与应用', '302', '2019');
INSERT INTO `student` VALUES ('201560140232', '杨光', '中原工学院', '软件学院', '软件工程', 'RB软工移152', '天津大学', '软件工程', '软件工程', '328', '2019');
INSERT INTO `student` VALUES ('201560140302', '张薇薇', '中原工学院', '软件学院', '软件工程', 'RB软工移153', '暨南大学', '计算机技术', '图像处理技术及应用', '380', '2019');
INSERT INTO `student` VALUES ('201560140305', '宋丽娟', '中原工学院', '软件学院', '软件工程', 'RB软工移153', '重庆邮电大学', '计算机技术', '智能信息处理及应用', '369', '2019');
INSERT INTO `student` VALUES ('201560140307', '习格格', '中原工学院', '软件学院', '软件工程', 'RB软工移153', '上海理工大学', '英语笔译', '英语笔译', '323', '2019');
INSERT INTO `student` VALUES ('201560140318', '胡桥单', '中原工学院', '软件学院', '软件工程', 'RB软工移153', '东北大学', '软件工程', '移动互联网技术与应用', '335', '2019');
INSERT INTO `student` VALUES ('201560140405', '吕玥', '中原工学院', '软件学院', '软件工程', 'RB软工移154', '北京林业大学', '行政管理', '组织与人力资源管理', '360', '2019');
INSERT INTO `student` VALUES ('201560140412', '刘丹阳', '中原工学院', '软件学院', '软件工程', 'RB软工移154', '郑州大学', '计算机技术', '机器学习与数据挖掘（研究所4)', '328', '2019');
INSERT INTO `student` VALUES ('201560150108', '王翠霞', '中原工学院', '软件学院', '软件工程', 'RB软工金151', '西北大学', '软件工程', '不区分研究方向', '307', '2019');
INSERT INTO `student` VALUES ('201560150118', '袁阳可', '中原工学院', '软件学院', '软件工程', 'RB软工金151', '北京工业大学', '软件工程', '软件工程技术与网络安全', '325', '2019');
INSERT INTO `student` VALUES ('201560150122', '许名扬', '中原工学院', '软件学院', '软件工程', 'RB软工金151', '南京工业大学', '计算机技术', '计算机应用技术', '320', '2019');
INSERT INTO `student` VALUES ('201560150126', '陈茂洲', '中原工学院', '软件学院', '软件工程', 'RB软工金151', '暨南大学', '计算机技术', '计算机软件工程', '345', '2019');
INSERT INTO `student` VALUES ('201560150206', '张培', '中原工学院', '软件学院', '软件工程', 'RB软工金152', '北京工业大学', '软件工程', '软件工程技术与网络安全', '310', '2019');
INSERT INTO `student` VALUES ('201560150210', '赵晓静', '中原工学院', '软件学院', '软件工程', 'RB软工金152', '天津大学', '软件工程', '软件工程', '307', '2019');
INSERT INTO `student` VALUES ('201560150233', '刘珂', '中原工学院', '软件学院', '软件工程', '卓越151', '暨南大学', '计算机技术', '计算机软件工程', '386', '2019');
INSERT INTO `student` VALUES ('201560160113', '栗晓雪', '中原工学院', '软件学院', '软件工程', 'RB软工互151', '上海理工大学', '软件工程', '软件开发技术与软件架构', '312', '2019');
INSERT INTO `student` VALUES ('201560160123', '褚浩宇', '中原工学院', '软件学院', '软件工程', 'RB软工互151', '中原工学院', '科学技术哲学', '科学技术与社会发展研究', '372', '2019');
INSERT INTO `student` VALUES ('201560160203', '张敏智', '中原工学院', '软件学院', '软件工程', 'RB软工互152', '南京邮电大学', '软件工程', '网络软件与数据安全', '301', '2019');
INSERT INTO `student` VALUES ('201560160204', '张晨跃', '中原工学院', '软件学院', '软件工程', 'RB软工互152', '武汉工程大学', '计算机技术', '大数据与云计算', '317', '2019');
INSERT INTO `student` VALUES ('201560160237', '徐消波', '中原工学院', '软件学院', '软件工程', 'RB软工互152', '西安理工大学', '软件工程', '软件可靠性与软件测试', '346', '2019');
INSERT INTO `student` VALUES ('201560160239', '余竞', '中原工学院', '软件学院', '软件工程', '卓越151', '浙江大学', '软件工程', '专业学位', '371', '2019');
INSERT INTO `student` VALUES ('201560160242', '田壮', '中原工学院', '软件学院', '软件工程', 'RB软工互152', '武汉科技大学', '软件工程', '软件架构设计', '356', '2019');
INSERT INTO `student` VALUES ('201560240102', '赵梦园', '中原工学院', '软件学院', '软件工程', 'RB软工数151', '河南财经政法大学', '农业管理', '不区分研究方向', '330', '2019');
INSERT INTO `student` VALUES ('201560240112', '王文静', '中原工学院', '软件学院', '软件工程', 'RB软工数151', '华东师范大学', '环境科学', '环境规划与管理', '310', '2019');
INSERT INTO `student` VALUES ('201560240117', '邬贵昌', '中原工学院', '软件学院', '软件工程', 'RB软工数151', '西安理工大学', '计算机技术', '网络安全技术与应用', '302', '2019');
INSERT INTO `student` VALUES ('201560240126', '李振宇', '中原工学院', '软件学院', '软件工程', 'RB软工数151', '吉林大学', '地球探测与信息技术', '遥感与地理信息系统', '320', '2019');
INSERT INTO `student` VALUES ('201560240134', '裴登辉', '中原工学院', '软件学院', '软件工程', 'RB软工数151', '武汉纺织大学', '计算机科学与技术', '大数据分析与云计算', '309', '2019');
INSERT INTO `student` VALUES ('201560240136', '朱自强', '中原工学院', '软件学院', '软件工程', 'RB软工数151', '安徽大学', '计算机技术', '不区分研究方向', '311', '2019');
INSERT INTO `student` VALUES ('201560240235', '武二勇', '中原工学院', '软件学院', '软件工程', 'RB软工数152', '重庆邮电大学', '计算机技术', '数据挖掘及模式识别', '312', '2019');
INSERT INTO `student` VALUES ('201560240239', '张志成', '中原工学院', '软件学院', '软件工程', 'RB软工数152', '华南理工大学', '体育学', '体育教学训练理论与实践', '381', '2019');
INSERT INTO `student` VALUES ('201619140220', '崔烁豪', '中原工学院', '软件学院', '软件工程', '卓越161', '深圳大学', '计算机技术', '专硕', '350', '2020');
