/*
 Navicat Premium Data Transfer

 Source Server         : 10.130.30.32
 Source Server Type    : MySQL
 Source Server Version : 50650
 Source Host           : 10.130.30.32:3306
 Source Schema         : hq

 Target Server Type    : MySQL
 Target Server Version : 50650
 File Encoding         : 65001

 Date: 30/03/2021 20:07:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '花车id',
  `pingpai` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '花车品牌',
  `style` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '花车类型',
  `price` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价格',
  `color` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `count` int(3) NULL DEFAULT 5 COMMENT '容纳人数',
  `people` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '司机',
  `baoxian` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保险',
  `weizhang` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '违章记录',
  `youhao` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'L/百公里' COMMENT '百公里油耗',
  `jing` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经销商',
  `shangbiao` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商标',
  `shache` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '米' COMMENT '刹车时间',
  `jiasu` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'S' COMMENT '加速时间',
  `panduan` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '判断',
  `beizhu` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `shop` date NULL DEFAULT NULL COMMENT '购买时间',
  `image` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆图片',
  `jibie` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '三级' COMMENT '级别',
  `shuxing` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '国产' COMMENT '车辆属性',
  `zhuangtai` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '未用' COMMENT '车辆状态',
  `carid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '车牌号码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('2021031900001', '福克斯', '豪华运动型', '16', '黑色', 5, '侯鹏飞', '3', '1', '7', '爱车', '豪车', '3', '10', '1', '好车\r\n   					 \r\n   					 \r\n   					 ', '2021-03-19', '1271056278.gif', '三', '国产', '未用', '冀A45691');
INSERT INTO `car` VALUES ('2021031900002', '上海大众', '豪华运动型', '20', '银色', 5, '张月', '3', '0', '6', '爱车', '豪车', '4', '8', '1', '好车', '2021-03-19', '1271037408.gif', '二', '国产', '未用', '冀A15422');
INSERT INTO `car` VALUES ('2021031900003', '奥迪', '婚庆轿车', '36', '红色', 5, '张克科', '6', '1', '6', '爱车', '豪车', '6', '6', '1', '好车', '2021-03-19', 'fut.jpg', '一', '国产', '未用', '冀A45693');
INSERT INTO `car` VALUES ('2021031900004', '别克', '婚庆轿车', '20', '白色', 2, '刘玲燕', '2', '2', '2', '爱车', '豪车', '2', '2', '1', '好车', '2021-03-19', 'rongwei.jpg', '一', '国产', '未用', '冀A15424');
INSERT INTO `car` VALUES ('2021031900005', '桑塔纳', '婚庆轿车', '26', '黄色', 4, '陈梦月', '4', '4', '4', '爱车', '豪车', '4', '4', '1', '好车', '2021-03-19', 'tongyongbieke.jpg', '二', '国产', '未用', '冀A45695');
INSERT INTO `car` VALUES ('2021031900006', '雪弗莱', '婚庆轿车', '27', '绿色', 4, '张德凯', '7', '1', '7', '爱车', '豪车', '7', '7', '1', '好车', '2021-03-19', 'fut.jpg', '三', '国产', '未用', '冀A45696');
INSERT INTO `car` VALUES ('2021031900007', '现代', '婚庆轿车', '17', '黑色', 4, '赵洁洁', '7', '0', '7', '爱车', '豪车', '7', '7', '1', '好车', '2021-03-19', 'aodi.jpg', '一', '国产', '未用', '冀A15427');
INSERT INTO `car` VALUES ('2021031900008', '兰博基尼', '婚庆轿车', '400', '红色', 4, '苏摩', '4', '4', '4', '爱车', '豪车', '4', '4', '1', '好车', '2021-03-19', 'mengdio.jpg', '二', '国产', '未用', '冀A45698');
INSERT INTO `car` VALUES ('2021032900009', '奥迪', '轿车', '400', '白色', 5, '侯鹏飞', '1', '4', '5', '小花爱车销售处', '豪车', '10', '8', '1', '很好的车\r\n   					 ', '2021-03-29', 'aodi.png', '一', '国产', '未用', '冀S45474');

-- ----------------------------
-- Table structure for dingdan
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan`  (
  `d_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `d_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '预约人姓名',
  `d_sex` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '预约人性别',
  `d_riqi` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '预约时间',
  `d_careid` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '身份证号',
  `d_address` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '家庭住址',
  `d_email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `d_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电话',
  `panduan` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '判断',
  PRIMARY KEY (`d_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('2021031900001', '李观', '男', '2021-03-25', '411524199212051546', '河南省郑州市', '7895468244@qq.com', '18749683956', '1');
INSERT INTO `dingdan` VALUES ('2021031900002', '赵少宁', '女', '2021-03-25', '410928199207189081', '河南省濮阳市', 'zhangshaning@163.com', '18749683881', '1');
INSERT INTO `dingdan` VALUES ('2021031900003', '何淑欣', '女', '2021-03-25', '410928199108177089', '河南省商丘市', 'heshuxin@qq.com', '18749689371', '1');
INSERT INTO `dingdan` VALUES ('2021031900004', '张世洁', '女', '2021-03-25', '411524199707131482', '河南省信阳市', 'zsj12345@163.com', '18749685186', '0');
INSERT INTO `dingdan` VALUES ('2021031900005', '爱德华', '男', '2021-03-25', '130132188510251475', '四川省遂宁市', '11945745@qq.com', '18749692541', '0');
INSERT INTO `dingdan` VALUES ('2021033000006', '侯鹏飞', '男', '2021-03-30', '130132199308102571', '四川省自贡市', '1183446546@qq.com', '15766452358', '1');
INSERT INTO `dingdan` VALUES ('2021033000007', '赵奎', '男', '2021-03-30', '130132199365478541', '四川省攀枝花市', '164328566@qq.com', '18749693650', '1');

-- ----------------------------
-- Table structure for fuzhuang
-- ----------------------------
DROP TABLE IF EXISTS `fuzhuang`;
CREATE TABLE `fuzhuang`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '礼服编号',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '礼服类型',
  `jianjie` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `money` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价格',
  `panduan` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '判断',
  `lipin` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '礼服大小号',
  `photo` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `zhaopian` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fuzhuang
-- ----------------------------
INSERT INTO `fuzhuang` VALUES ('2021031900002', '西服', '帅呆了', '500', '1', 'S', '白色', 'baise.png');
INSERT INTO `fuzhuang` VALUES ('2021031900003', '婚纱服', '美丽', '200', '1', 'L', '紫色', 'zise.png');
INSERT INTO `fuzhuang` VALUES ('2021031900004', '和服', '日本的', '350', '1', 'XXL', '黑色', 'hefu.png');
INSERT INTO `fuzhuang` VALUES ('2021031900006', '婚纱服', '大气					', '200', '0', 'S', '红色', 'red.png');
INSERT INTO `fuzhuang` VALUES ('2021032700007', '婚纱服', '红色好看', '350', '1', 'M', '红色', 'red.png');

-- ----------------------------
-- Table structure for kehu
-- ----------------------------
DROP TABLE IF EXISTS `kehu`;
CREATE TABLE `kehu`  (
  `k_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '客户编号',
  `k_name` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '客户姓名',
  `k_sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '性别',
  `k_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电话',
  `k_address` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `k_tx` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `k_careid` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `k_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `panduan` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '判断',
  `k_date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '结婚时间',
  PRIMARY KEY (`k_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kehu
-- ----------------------------
INSERT INTO `kehu` VALUES ('2021032800001', '冷清秋', '男', '15098674218', '河南省洛阳市', 'dyx.png', '410728199103119808', '982046619@qq.com', '1', '2021-03-28');
INSERT INTO `kehu` VALUES ('2021032800002', '马玉龙', '男', '15609875813', '河南省洛阳市', 'zdk.png', '410328199002190817', 'mayulong@qq.com', '1', '2021-03-28');
INSERT INTO `kehu` VALUES ('2021032800003', '侯鹏飞', '男', '18749693650', '河北省石家庄市', 'dyx.png', '130132199308102571', '1194803519@qq.com', '1', '2021-03-28');
INSERT INTO `kehu` VALUES ('2021033000004', '侯鹏飞', '男', '15766452358', '四川省自贡市', NULL, '130132199308102571', '1183446546@qq.com', '1', '2021-03-30');
INSERT INTO `kehu` VALUES ('2021033000005', '侯鹏飞', '男', '15766452358', '四川省自贡市', NULL, '130132199308102571', '1183446546@qq.com', '1', '2021-03-30');
INSERT INTO `kehu` VALUES ('2021033000006', '侯鹏飞', '男', '15766452358', '四川省自贡市', NULL, '130132199308102571', '1183446546@qq.com', '1', '2021-03-30');
INSERT INTO `kehu` VALUES ('2021033000007', '爱德华', '男', '18749692541', '四川省遂宁市', NULL, '130132188510251475', '11945745@qq.com', '1', '2021-03-25');

-- ----------------------------
-- Table structure for livemessage
-- ----------------------------
DROP TABLE IF EXISTS `livemessage`;
CREATE TABLE `livemessage`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '留言编号',
  `livep` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言人',
  `liveh` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收人',
  `livecon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言内容',
  `livezhu` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '未读' COMMENT '留言状态',
  `livere` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复内容',
  `panduan` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '判断',
  `recon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `livetime` date NULL DEFAULT NULL COMMENT '留言时间',
  `retime` date NULL DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of livemessage
-- ----------------------------
INSERT INTO `livemessage` VALUES ('2021031900001', '侯鹏飞', '李倩', '进货了吗？', '已读', '还没有！', '1', NULL, '2021-03-19', '2021-03-19');
INSERT INTO `livemessage` VALUES ('2021031900002', '张克科', '侯鹏飞', '明天休息吗？', '已读', '不休息，正常营业！', '1', NULL, '2021-03-19', '2021-03-19');
INSERT INTO `livemessage` VALUES ('2021031900003', '赵洁洁', '李倩', '赵洁洁再次嫁人 二婚', '已读', '太好了', '1', NULL, '2021-03-19', '2021-03-19');
INSERT INTO `livemessage` VALUES ('2021031900004', '张杰', '侯鹏飞', '我爱你！', '已读', '我也爱你！', '1', NULL, '2021-03-19', '2021-03-19');
INSERT INTO `livemessage` VALUES ('2021033000005', '侯鹏飞', '李倩', '还有白色服装吗', '已读', '没有了，下次再来看看吧', '1', NULL, '2021-03-30', '2021-03-30');
INSERT INTO `livemessage` VALUES ('2021033000006', '侯鹏飞', '张克楠', '明天放假吗？', '未读', '无回复', '1', NULL, '2021-03-30', NULL);
INSERT INTO `livemessage` VALUES ('2021033000007', '李倩', '侯鹏飞', '侯鹏飞，你还好吗？', '未读', '无回复', '1', NULL, '2021-03-30', NULL);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '公告id',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '公告标题',
  `qtime` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布时间',
  `jtime` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结束时间',
  `content` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告类型',
  `name` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '发布人',
  `panduan` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '判断',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('2021031900001', '张杰结婚啦！', '2021-03-19', '2021-05-21', '希望他们幸福！', '娱乐', '侯鹏飞', '1');
INSERT INTO `notice` VALUES ('2021031900002', '小鱼恋爱啦！', '2021-03-19', '2021-05-21', '恋爱好好的！', '喜讯', '董一雄', '1');
INSERT INTO `notice` VALUES ('2021031900003', '小阳结婚纪念日！', '2021-03-19', '2021-05-21', '结婚一周年纪念日！', '纪念日', '刘云昊', '1');
INSERT INTO `notice` VALUES ('2021032700004', '董一雄今年要订婚', '2021-03-27', '2021-04-10', '终于要订婚了！', '喜讯', '侯鹏飞', '1');

-- ----------------------------
-- Table structure for tuidang
-- ----------------------------
DROP TABLE IF EXISTS `tuidang`;
CREATE TABLE `tuidang`  (
  `t_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '退单编号',
  `t_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退单人姓名',
  `t_sex` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退单人性别',
  `t_date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `t_beizhu` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `t_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `t_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `t_address` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `t_careid` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  PRIMARY KEY (`t_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tuidang
-- ----------------------------
INSERT INTO `tuidang` VALUES ('2021031900003', '何淑欣', '女', '2021-03-19', '不同意', '18749689371', 'heshuxin@qq.com', '河南省商丘市', '410928199108177089');
INSERT INTO `tuidang` VALUES ('2021033000004', '张世洁', '女', '2021-03-25', '不好', '18749685186', 'zsj12345@163.com', '河南省信阳市', '411524199707131482');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `pass` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出生年月',
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `phone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `shengfen` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `xueli` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `minzu` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  `panduan` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '判断',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `photo` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `qq` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq',
  `jianjie` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2021032700001', '123456', '侯鹏飞', '男', '1993-08-10', '四川省成都市', '17736483396', '130132199308102574', '本科', '汉族', '1', 'houpf@autoai.com', 'zdk.png', '1194803519', '管理员身份');
INSERT INTO `user` VALUES ('2021032700002', '123456', '董一雄', '男', '1993-02-15', '河南省平顶山市', '17736483396', '130132199302154532', '大专', '汉族', '1', 'houpf@autoai.com', 'dyx.png', '1194803519', '管理员身份');
INSERT INTO `user` VALUES ('2021032700003', '123456', '刘云昊', '男', '1993-01-19', '北京北京', '17736483396', '130132199301192562', '本科', '汉族', '1', 'houpf@autoai.com', 'dyx.png', '1194803519', '管理员身份');
INSERT INTO `user` VALUES ('2021032700004', '123456', '李倩', '女', '1993-02-07', '四川省成都市', '15632119654', '130132199302071245', '本科', '汉族', '0', '45654324@qq.com', 'hpf.jpg', '45654324', '普通用户身份');
INSERT INTO `user` VALUES ('2021033000005', '123456', '安昊', '男', '1993-08-10', '山西省太原市', '17736483396', '130132199302154597', '本科', '汉族', '1', 'anhao@autoai.com', 'anhao.png', '524545645', '人不错！');

-- ----------------------------
-- Table structure for ygjbxxb
-- ----------------------------
DROP TABLE IF EXISTS `ygjbxxb`;
CREATE TABLE `ygjbxxb`  (
  `yid` int(30) NOT NULL COMMENT '员工id',
  `yname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `yold` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `yin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入职日期',
  `yposition` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `ydepartment` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `ysex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `yface` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `yaddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `ynowaddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现住址',
  `yphone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `luoji` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '逻辑',
  `yemail` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `beizhu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `pass` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`yid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ygjbxxb
-- ----------------------------
INSERT INTO `ygjbxxb` VALUES (1001, '侯鹏飞', '29', '2021-03-29', '化妆技术员', '化妆部', '男', '党员', '石家庄', '北京', '15932119398', '1', '1456581@qq.com', '新员工', '123456');
INSERT INTO `ygjbxxb` VALUES (1002, '李四', '23', '2021-03-28', '领班', '销售部', '男', '团员', '北京', '北京', '13336483396', '1', '4646496@qq.com', '新员工', '123456');
INSERT INTO `ygjbxxb` VALUES (1003, '王五', '30', '2021-03-29', '化妆师', '化妆部', '女', '党员', '河南', '河南', '17032149654', '1', '579646@qq.com', '新员工', '123456');
INSERT INTO `ygjbxxb` VALUES (1004, '赵六', '25', '2021-03-23', '司仪师', '司仪部', '男', '党员', '平顶山', '承德', '13336483396', '0', '466644@qq.com', '新员工', '123456');

SET FOREIGN_KEY_CHECKS = 1;
