-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2020-07-03 05:49:59
-- 服务器版本： 10.3.15-MariaDB
-- PHP 版本： 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `library`
--

-- --------------------------------------------------------

--
-- 表的结构 `book`
--

CREATE TABLE `book` (
  `bookcode` varchar(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL,
  `author` varchar(10) DEFAULT NULL,
  `press` varchar(50) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT '在库'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `book`
--

INSERT INTO `book` (`bookcode`, `name`, `category`, `author`, `press`, `status`) VALUES
('9787020040', '傲慢与偏见', '经典文学', '[英]简·奥斯汀', '人民文学出版社', '在库'),
('9787020042', '小王子', '经典文学', '[法]圣埃克苏佩里', '人民文学出版社', '在库'),
('9787020051', '水浒传', '古典文学', '施耐庵', '长春出版社', '在库'),
('9787106020', '动物凶猛', '现代文学', '王朔', '中国电影出版社', '在库'),
('9787108006', '天龙八部', '经典文学', '金庸', '新知三联书店', '已借出'),
('9787201048', '情书', '现代文学', '[日]岩井俊二', '天津人民出版社', '在库'),
('9787208061', '追风筝的人', '现代文学', '[美]卡勒德·胡赛尼', '上海人民出版社', '在库'),
('9787209041', '设计中的设计', '现代文学', '[日]原研哉', '山东人民出版社', '在库'),
('9787500627', '沉默的大多数', '现代文学', '王小波', '中国青年出版社', '在库'),
('9787501600', '茶花女', '经典文学', '[法]小仲马', '外国文学出版社', '在库'),
('9787503915', '我的精神家园', '现代文学·', '王小波', '文化艺术出版社', '在库'),
('9787530211', '人生', '现代文学', '路遥', '北京十月文艺出版社', '在库'),
('9787530640', '呼兰河传', '经典文学', '萧红', '百花文艺出版社', '在库'),
('9787531324', '我与地坛', '现代文学', '史铁生', '春风文艺出版社', '在库'),
('9787532712', '基督山伯爵', '经典文学', '[法]大仲马', '上海译文出版社', '在库'),
('9787532725', '挪威的森林', '现代文学', '[日]村上春树', '上海译文出版社', '在库'),
('9787532731', '不能承受的生命之轻', '现代文学', '[捷克]米兰·昆德拉', '上海译文出版社', '在库'),
('9787532739', '瓦尔登湖', '经典文学', '亨利·戴维·梭罗', '上海译文出版社', '在库'),
('9787532741', '动物农场', '经典文学', '[英]乔治·奥威尔', '上海译文出版社', '在库'),
('9787532751', '局外人', '经典文学', '[法]阿尔贝·加缪', '上海译文出版社', '在库'),
('9787535427', '狼图腾', '现代文学', '姜戎', '长江文艺出版社', '在库'),
('9787535436', '呐喊', '经典文学', '鲁迅', '人民文学出版社', '在库'),
('9787536023', '倾城之恋', '经典文学', '张爱玲', '花城出版社', '在库'),
('9787536025', '黄金时代', '现代文学', '黄小波', '花城出版社', '在库'),
('9787536340', '鲁滨逊漂流记', '经典文学', '[英]丹尼尔·笛福', '广西民族出版社', '在库'),
('9787536692', '三体', '科幻', '刘慈欣', '重庆出版社', '在库'),
('9787540462', '最好的我们', '现代文学', '八月长安', '湖南文艺出版社', '在库'),
('9787542248', '红楼梦', '古典文学', '曹雪芹', '长春出版社', '在库'),
('9787544211', '许三观卖血记', '现代文学', '余华', '作家出版社', '在库'),
('9787544238', '偷书贼', '经典文学', '[澳]马克斯·苏萨克', '南海出版公司', '在库'),
('9787544242', '白夜行', '现代文学', '[日]东野圭吾', '南海出版公司', '在库'),
('9787544270', '解忧杂货店', '现代文学', '[日]东野圭吾', '南海出版公司', '在库'),
('9787544722', '杀死一只知更鸟', '经典文学', '[美]哈珀·李', '译林出版社', '已借出'),
('9787546302', '人间失格', '现代文学', '草月译谭', '吉林出版集团有限责任公司', '在库'),
('9787546329', '全球通史', '历史', '[美]斯塔夫里阿诺斯', '北京大学出版社', '在库'),
('9787549529', '看见', '纪实', '柴静', '广西师范大学出版社', '在库'),
('9787563344', '娱乐至死', '现代文学', '[美]尼尔·波兹曼', '广西师范大学出版社', '在库'),
('9787805678', '荆棘鸟', '经典文学', '[澳]考琳·麦卡洛', '译林出版社', '在库'),
('9787806574', '海底两万里', '经典文学', '[法]儒尔·凡尔纳', '译林出版社', '在库'),
('9787806767', '野火集', '现代文学', '龙应台', '文汇出版社', '在库'),
('9787806812', '麦琪的礼物', '经典文学', '[美]欧·亨利', '上海社会科学院出版社', '在库'),
('9787806859', '爱你就像爱生命', '现代文学', '李银河', '上海锦绣文章出版社', '在库'),
('9787807240', '狂人日记', '经典文学', '鲁迅', '京华出版社', '已借出'),
('9789573305', '撒哈拉的故事', '现代文学', '三毛', '皇冠出版社', '在库');

-- --------------------------------------------------------

--
-- 表的结构 `borrow_list`
--

CREATE TABLE `borrow_list` (
  `bookcode` varchar(10) NOT NULL,
  `card` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `borrow_list`
--

INSERT INTO `borrow_list` (`bookcode`, `card`) VALUES
('9787108006', '1001'),
('9787544722', '1001'),
('9787807240', '1001');

-- --------------------------------------------------------

--
-- 表的结构 `librarian`
--

CREATE TABLE `librarian` (
  `account` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `librarian`
--

INSERT INTO `librarian` (`account`, `password`, `name`) VALUES
('GLY01', 'GLY01', '管舒'),
('GLY02', 'GLY02', '王明');

-- --------------------------------------------------------

--
-- 表的结构 `reader`
--

CREATE TABLE `reader` (
  `card` varchar(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `books` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `reader`
--

INSERT INTO `reader` (`card`, `name`, `gender`, `department`, `class`, `books`) VALUES
('1000', '李明', '男', '高级翻译学院', '18本地化', 3),
('1001', '王莉', '女', '信息科学学院', '18数媒', 3);

--
-- 转储表的索引
--

--
-- 表的索引 `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookcode`);

--
-- 表的索引 `borrow_list`
--
ALTER TABLE `borrow_list`
  ADD PRIMARY KEY (`bookcode`,`card`),
  ADD KEY `card` (`card`);

--
-- 表的索引 `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`account`);

--
-- 表的索引 `reader`
--
ALTER TABLE `reader`
  ADD PRIMARY KEY (`card`);

--
-- 限制导出的表
--

--
-- 限制表 `borrow_list`
--
ALTER TABLE `borrow_list`
  ADD CONSTRAINT `borrow_list_ibfk_1` FOREIGN KEY (`card`) REFERENCES `reader` (`card`),
  ADD CONSTRAINT `borrow_list_ibfk_2` FOREIGN KEY (`bookcode`) REFERENCES `book` (`bookcode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
