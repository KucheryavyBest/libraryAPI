/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100406
Source Host           : localhost:3306
Source Database       : library_test_task

Target Server Type    : MYSQL
Target Server Version : 100406
File Encoding         : 65001

Date: 2019-09-03 10:40:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for author
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id_autors` int(15) NOT NULL,
  `name_author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_autors`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of author
-- ----------------------------
INSERT INTO `author` VALUES ('1', 'Abhishek Manu Singhvi');
INSERT INTO `author` VALUES ('2', 'Gyan Bhushan');
INSERT INTO `author` VALUES ('3', 'Harinder S. Sikka');
INSERT INTO `author` VALUES ('4', 'Dr. Samir Sharma');
INSERT INTO `author` VALUES ('5', 'C. H. Hanumantha Rao');
INSERT INTO `author` VALUES ('6', 'Meeta Pandit');
INSERT INTO `author` VALUES ('7', 'Prabhakiran Jain');
INSERT INTO `author` VALUES ('8', 'Minister of India Narendra Modi');
INSERT INTO `author` VALUES ('9', 'Sourav Ganguly.');
INSERT INTO `author` VALUES ('10', 'Sanjay Manjrekar');
INSERT INTO `author` VALUES ('11', 'Former Delhi Chief Minister Sheila Dikshit');
INSERT INTO `author` VALUES ('12', 'Dr. Miniya Chatterji');
INSERT INTO `author` VALUES ('13', 'Shilpa Shetty');
INSERT INTO `author` VALUES ('14', 'Sujata Massey');
INSERT INTO `author` VALUES ('15', 'Arvind Mohan (released by Bihar CM Nitish Kumar)');
INSERT INTO `author` VALUES ('16', 'Union Road Transport Minister Gadkari inaugurated this book.');
INSERT INTO `author` VALUES ('17', 'Launched by the Amitabh Bachchan (Co-authored by S.M.M. Ausaja, Karan Bali, Rajesh Devraj and Tanul Thakur)');
INSERT INTO `author` VALUES ('18', 'Pranab Mukherjee (Former President of India)');
INSERT INTO `author` VALUES ('19', 'Salman Rushdie');
INSERT INTO `author` VALUES ('20', 'Rajiv Mehrishi');
INSERT INTO `author` VALUES ('21', 'Raghuram Rajan (former RBI Governor)');
INSERT INTO `author` VALUES ('22', 'Amish Tripathi');
INSERT INTO `author` VALUES ('23', 'David Grossman (Winner – Man Booker International Prize 2017)');
INSERT INTO `author` VALUES ('24', 'Shyam Saran');
INSERT INTO `author` VALUES ('25', 'Satya Nadella');
INSERT INTO `author` VALUES ('26', 'Maria Sharapova');
INSERT INTO `author` VALUES ('27', 'Deepak Surana (Biography of Kargil war hero – Late Captain Vikram Batra)');
INSERT INTO `author` VALUES ('28', 'Tarun Sagar Maharaj');
INSERT INTO `author` VALUES ('29', 'Jayanta Kalita');
INSERT INTO `author` VALUES ('30', 'Amit Bhardwaj');
INSERT INTO `author` VALUES ('31', 'Bindeshawr Pathak');
INSERT INTO `author` VALUES ('32', 'Kiran Chadha');
INSERT INTO `author` VALUES ('33', 'Katie Price');
INSERT INTO `author` VALUES ('34', 'C. Raj Kumar');
INSERT INTO `author` VALUES ('35', 'Arundhati Roy');
INSERT INTO `author` VALUES ('36', 'Ganesh Devy');
INSERT INTO `author` VALUES ('37', 'Jairam Ramesh');
INSERT INTO `author` VALUES ('38', 'J.R.R. Tolkien');
INSERT INTO `author` VALUES ('39', 'Ramesh Pokhriyal “Nishank”.');
INSERT INTO `author` VALUES ('40', 'Lok Sabha Speaker Sumitra Mahajan');
INSERT INTO `author` VALUES ('41', 'Anuradha Roy');
INSERT INTO `author` VALUES ('42', 'Vishwanath Tripath');
INSERT INTO `author` VALUES ('43', 'J S Rajput');
INSERT INTO `author` VALUES ('45', 'Amitav Ghosh');
INSERT INTO `author` VALUES ('46', 'Saptarshi Sarkar');
INSERT INTO `author` VALUES ('48', 'Ali Smith');
INSERT INTO `author` VALUES ('49', 'Sudha Pai and Avinash Kumar');
INSERT INTO `author` VALUES ('51', 'Javier Moro');
INSERT INTO `author` VALUES ('52', 'Kapil Isapuri');
INSERT INTO `author` VALUES ('53', 'Khurshid M Kasuri');
INSERT INTO `author` VALUES ('54', 'PR Mohana Rao');
INSERT INTO `author` VALUES ('55', 'Govind Pansare');
INSERT INTO `author` VALUES ('56', 'Akhil Sharma');
INSERT INTO `author` VALUES ('57', 'Rudrangshu Mukherjee');
INSERT INTO `author` VALUES ('58', 'Vinod Mehta');
INSERT INTO `author` VALUES ('59', 'Arunima Sinha');
INSERT INTO `author` VALUES ('60', 'Gerald Posner');
INSERT INTO `author` VALUES ('61', 'Shri Tarun Vijay.');
INSERT INTO `author` VALUES ('62', 'Gina Rinehart');
INSERT INTO `author` VALUES ('63', 'Dr.A.P.J.Abdul Kalam');
INSERT INTO `author` VALUES ('64', 'Amiya Chandra');
INSERT INTO `author` VALUES ('65', 'Teesta setalvad');
INSERT INTO `author` VALUES ('66', 'Meera Kumar');
INSERT INTO `author` VALUES ('67', 'Aamer hussain');
INSERT INTO `author` VALUES ('68', 'Khagesh Dev Burman');
INSERT INTO `author` VALUES ('69', 'Shri A.S. Dulat');
INSERT INTO `author` VALUES ('70', 'Chetan Bhagat');
INSERT INTO `author` VALUES ('71', 'Akshay Kumar');
INSERT INTO `author` VALUES ('72', 'Nitin Gokhale');
INSERT INTO `author` VALUES ('73', 'Prof. Mool Chand Sharma');
INSERT INTO `author` VALUES ('74', 'Rachna Bisht Rawat');
INSERT INTO `author` VALUES ('75', 'Air Marshal Bharat Kumar');
INSERT INTO `author` VALUES ('76', 'Jairam Ramesh');
INSERT INTO `author` VALUES ('77', 'Dr. Kapila Vatsyayan');
INSERT INTO `author` VALUES ('78', 'Union Home Minister,Rajnath Singh(');
INSERT INTO `author` VALUES ('79', 'Maithili Rao');
INSERT INTO `author` VALUES ('80', 'Radha Kant Bharati');
INSERT INTO `author` VALUES ('81', 'P V Manoranjan Rao – ISRO');
INSERT INTO `author` VALUES ('82', 'C Raj Kumar');
INSERT INTO `author` VALUES ('83', 'Nandan Nilekani & Viral Shah');
INSERT INTO `author` VALUES ('84', 'AnujDhar');
INSERT INTO `author` VALUES ('85', 'Mr. Neville Hodgkinson');
INSERT INTO `author` VALUES ('86', 'Ms. Liz Hodgkinson');

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id_book` int(15) NOT NULL,
  `id_publishing_house` int(15) NOT NULL,
  `name_book` varchar(255) NOT NULL,
  `first_pub_year` int(4) NOT NULL,
  `word_count` int(9) NOT NULL,
  `avarage_price` float(9,2) NOT NULL,
  PRIMARY KEY (`id_book`),
  KEY `fk_publishing_house` (`id_publishing_house`),
  CONSTRAINT `fk_publishing_house` FOREIGN KEY (`id_publishing_house`) REFERENCES `publishing_house` (`id_publishing_house`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('2', '3', 'The Adventures of Huckleberry Finn', '1798', '7844', '2.35');
INSERT INTO `books` VALUES ('3', '86', 'Don Quixote', '1845', '24789', '58.54');
INSERT INTO `books` VALUES ('4', '6', 'Pride and Prejudice ', '1820', '43534', '2.12');
INSERT INTO `books` VALUES ('5', '8', 'The Book Thief ', '1974', '344343', '332.14');
INSERT INTO `books` VALUES ('7', '8', 'Memoirs of a Geisha ', '1454', '5487964', '47.25');
INSERT INTO `books` VALUES ('8', '8', 'Memoirs of a Geisha ', '1454', '5487964', '47.25');
INSERT INTO `books` VALUES ('9', '20', 'asewaassas', '1111', '100', '47.25');
INSERT INTO `books` VALUES ('10', '8', 'Memoirs of a Geisha ', '1454', '5487964', '47.25');
INSERT INTO `books` VALUES ('11', '20', 'updated name', '1999', '100', '111.11');
INSERT INTO `books` VALUES ('12', '8', 'Memoirs of a Geisha ', '1454', '5487964', '47.25');
INSERT INTO `books` VALUES ('14', '8', 'Memoirs of a Geisha ', '1454', '5487964', '47.25');
INSERT INTO `books` VALUES ('15', '8', 'Memoirs of a Geisha ', '1454', '5487964', '47.25');
INSERT INTO `books` VALUES ('16', '8', 'Memoirs of a Geisha ', '1454', '5487964', '47.25');
INSERT INTO `books` VALUES ('17', '8', 'Memoirs of a Geisha ', '1454', '5487964', '47.25');
INSERT INTO `books` VALUES ('18', '8', 'Memoirs of a Geisha ', '1454', '5487964', '47.25');
INSERT INTO `books` VALUES ('19', '8', 'Memoirs of a Geisha ', '1454', '5487964', '47.25');
INSERT INTO `books` VALUES ('20', '20', 'asewaassas', '1111', '100', '47.25');
INSERT INTO `books` VALUES ('21', '8', 'Memoirs of a Geisha ', '1454', '5487964', '47.25');
INSERT INTO `books` VALUES ('22', '8', 'Memoirs of a Geisha ', '1454', '5487964', '47.25');
INSERT INTO `books` VALUES ('23', '8', 'Memoirs of a Geisha ', '1454', '5487964', '47.25');
INSERT INTO `books` VALUES ('24', '8', 'test posr new ', '1111', '5487964', '47.25');
INSERT INTO `books` VALUES ('25', '8', 'test posr new ', '1111', '5487964', '47.25');
INSERT INTO `books` VALUES ('26', '8', 'test posr new ', '1111', '5487964', '47.25');
INSERT INTO `books` VALUES ('27', '8', 'test posr new ', '1111', '5487964', '47.25');
INSERT INTO `books` VALUES ('28', '8', 'test posr new ', '1111', '5487964', '47.25');
INSERT INTO `books` VALUES ('29', '8', 'test posr new ', '1111', '5487964', '47.25');
INSERT INTO `books` VALUES ('30', '8', 'test posr new ', '1111', '5487964', '47.25');
INSERT INTO `books` VALUES ('31', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('32', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('33', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('34', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('35', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('36', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('37', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('38', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('39', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('40', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('41', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('42', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('43', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('44', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('45', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('46', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('47', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('48', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('49', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('50', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('51', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('52', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('53', '18', 'aaaaaaa ', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('54', '18', 'new Book name', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('55', '18', 'new Book name', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('56', '18', 'new Book name', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('57', '18', 'new Book name', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('58', '18', 'new Book name', '1978', '5487964', '47.25');
INSERT INTO `books` VALUES ('59', '18', 'new Book name', '1978', '5487964', '47.25');

-- ----------------------------
-- Table structure for book_author_rel
-- ----------------------------
DROP TABLE IF EXISTS `book_author_rel`;
CREATE TABLE `book_author_rel` (
  `id_books` int(15) NOT NULL,
  `id_autor` int(15) NOT NULL,
  KEY `fk_author_books` (`id_books`),
  KEY `fk_books_author` (`id_autor`),
  CONSTRAINT `fk_author_books` FOREIGN KEY (`id_books`) REFERENCES `books` (`id_book`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_books_author` FOREIGN KEY (`id_autor`) REFERENCES `author` (`id_autors`) ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_author_rel
-- ----------------------------
INSERT INTO `book_author_rel` VALUES ('2', '7');
INSERT INTO `book_author_rel` VALUES ('2', '16');
INSERT INTO `book_author_rel` VALUES ('3', '19');
INSERT INTO `book_author_rel` VALUES ('3', '1');
INSERT INTO `book_author_rel` VALUES ('2', '32');
INSERT INTO `book_author_rel` VALUES ('12', '1');
INSERT INTO `book_author_rel` VALUES ('12', '56');
INSERT INTO `book_author_rel` VALUES ('14', '1');
INSERT INTO `book_author_rel` VALUES ('14', '56');
INSERT INTO `book_author_rel` VALUES ('15', '1');
INSERT INTO `book_author_rel` VALUES ('15', '56');
INSERT INTO `book_author_rel` VALUES ('16', '1');
INSERT INTO `book_author_rel` VALUES ('16', '56');
INSERT INTO `book_author_rel` VALUES ('17', '1');
INSERT INTO `book_author_rel` VALUES ('17', '56');
INSERT INTO `book_author_rel` VALUES ('18', '1');
INSERT INTO `book_author_rel` VALUES ('18', '56');
INSERT INTO `book_author_rel` VALUES ('19', '1');
INSERT INTO `book_author_rel` VALUES ('19', '56');
INSERT INTO `book_author_rel` VALUES ('9', '5');
INSERT INTO `book_author_rel` VALUES ('9', '6');
INSERT INTO `book_author_rel` VALUES ('9', '7');
INSERT INTO `book_author_rel` VALUES ('21', '1');
INSERT INTO `book_author_rel` VALUES ('21', '4');
INSERT INTO `book_author_rel` VALUES ('21', '56');
INSERT INTO `book_author_rel` VALUES ('22', '1');
INSERT INTO `book_author_rel` VALUES ('22', '4');
INSERT INTO `book_author_rel` VALUES ('22', '56');
INSERT INTO `book_author_rel` VALUES ('23', '1');
INSERT INTO `book_author_rel` VALUES ('23', '4');
INSERT INTO `book_author_rel` VALUES ('23', '56');
INSERT INTO `book_author_rel` VALUES ('24', '56');
INSERT INTO `book_author_rel` VALUES ('25', '56');
INSERT INTO `book_author_rel` VALUES ('26', '56');
INSERT INTO `book_author_rel` VALUES ('27', '56');
INSERT INTO `book_author_rel` VALUES ('28', '56');
INSERT INTO `book_author_rel` VALUES ('30', '31');
INSERT INTO `book_author_rel` VALUES ('30', '11');
INSERT INTO `book_author_rel` VALUES ('30', '17');
INSERT INTO `book_author_rel` VALUES ('31', '31');
INSERT INTO `book_author_rel` VALUES ('31', '11');
INSERT INTO `book_author_rel` VALUES ('31', '17');
INSERT INTO `book_author_rel` VALUES ('32', '31');
INSERT INTO `book_author_rel` VALUES ('32', '11');
INSERT INTO `book_author_rel` VALUES ('32', '17');
INSERT INTO `book_author_rel` VALUES ('33', '31');
INSERT INTO `book_author_rel` VALUES ('33', '11');
INSERT INTO `book_author_rel` VALUES ('33', '17');
INSERT INTO `book_author_rel` VALUES ('34', '31');
INSERT INTO `book_author_rel` VALUES ('34', '11');
INSERT INTO `book_author_rel` VALUES ('34', '17');
INSERT INTO `book_author_rel` VALUES ('35', '31');
INSERT INTO `book_author_rel` VALUES ('35', '11');
INSERT INTO `book_author_rel` VALUES ('35', '17');
INSERT INTO `book_author_rel` VALUES ('36', '31');
INSERT INTO `book_author_rel` VALUES ('36', '2');
INSERT INTO `book_author_rel` VALUES ('36', '12');
INSERT INTO `book_author_rel` VALUES ('37', '31');
INSERT INTO `book_author_rel` VALUES ('37', '2');
INSERT INTO `book_author_rel` VALUES ('37', '12');
INSERT INTO `book_author_rel` VALUES ('38', '31');
INSERT INTO `book_author_rel` VALUES ('38', '2');
INSERT INTO `book_author_rel` VALUES ('38', '12');
INSERT INTO `book_author_rel` VALUES ('39', '31');
INSERT INTO `book_author_rel` VALUES ('39', '2');
INSERT INTO `book_author_rel` VALUES ('39', '12');
INSERT INTO `book_author_rel` VALUES ('40', '31');
INSERT INTO `book_author_rel` VALUES ('40', '2');
INSERT INTO `book_author_rel` VALUES ('40', '12');
INSERT INTO `book_author_rel` VALUES ('41', '31');
INSERT INTO `book_author_rel` VALUES ('41', '2');
INSERT INTO `book_author_rel` VALUES ('41', '12');
INSERT INTO `book_author_rel` VALUES ('42', '31');
INSERT INTO `book_author_rel` VALUES ('42', '2');
INSERT INTO `book_author_rel` VALUES ('42', '12');
INSERT INTO `book_author_rel` VALUES ('43', '31');
INSERT INTO `book_author_rel` VALUES ('43', '2');
INSERT INTO `book_author_rel` VALUES ('43', '12');
INSERT INTO `book_author_rel` VALUES ('44', '31');
INSERT INTO `book_author_rel` VALUES ('44', '2');
INSERT INTO `book_author_rel` VALUES ('44', '12');
INSERT INTO `book_author_rel` VALUES ('45', '31');
INSERT INTO `book_author_rel` VALUES ('45', '2');
INSERT INTO `book_author_rel` VALUES ('45', '12');
INSERT INTO `book_author_rel` VALUES ('46', '31');
INSERT INTO `book_author_rel` VALUES ('46', '2');
INSERT INTO `book_author_rel` VALUES ('46', '12');
INSERT INTO `book_author_rel` VALUES ('47', '31');
INSERT INTO `book_author_rel` VALUES ('47', '2');
INSERT INTO `book_author_rel` VALUES ('47', '12');
INSERT INTO `book_author_rel` VALUES ('48', '31');
INSERT INTO `book_author_rel` VALUES ('48', '2');
INSERT INTO `book_author_rel` VALUES ('48', '12');
INSERT INTO `book_author_rel` VALUES ('49', '31');
INSERT INTO `book_author_rel` VALUES ('49', '2');
INSERT INTO `book_author_rel` VALUES ('49', '12');
INSERT INTO `book_author_rel` VALUES ('50', '31');
INSERT INTO `book_author_rel` VALUES ('50', '2');
INSERT INTO `book_author_rel` VALUES ('50', '12');
INSERT INTO `book_author_rel` VALUES ('51', '31');
INSERT INTO `book_author_rel` VALUES ('51', '2');
INSERT INTO `book_author_rel` VALUES ('51', '12');
INSERT INTO `book_author_rel` VALUES ('52', '31');
INSERT INTO `book_author_rel` VALUES ('52', '2');
INSERT INTO `book_author_rel` VALUES ('52', '12');
INSERT INTO `book_author_rel` VALUES ('53', '31');
INSERT INTO `book_author_rel` VALUES ('53', '2');
INSERT INTO `book_author_rel` VALUES ('53', '12');
INSERT INTO `book_author_rel` VALUES ('54', '31');
INSERT INTO `book_author_rel` VALUES ('54', '2');
INSERT INTO `book_author_rel` VALUES ('54', '12');
INSERT INTO `book_author_rel` VALUES ('55', '31');
INSERT INTO `book_author_rel` VALUES ('55', '2');
INSERT INTO `book_author_rel` VALUES ('55', '12');
INSERT INTO `book_author_rel` VALUES ('56', '31');
INSERT INTO `book_author_rel` VALUES ('56', '2');
INSERT INTO `book_author_rel` VALUES ('56', '12');
INSERT INTO `book_author_rel` VALUES ('57', '31');
INSERT INTO `book_author_rel` VALUES ('57', '2');
INSERT INTO `book_author_rel` VALUES ('57', '12');
INSERT INTO `book_author_rel` VALUES ('58', '31');
INSERT INTO `book_author_rel` VALUES ('58', '2');
INSERT INTO `book_author_rel` VALUES ('58', '12');
INSERT INTO `book_author_rel` VALUES ('59', '31');
INSERT INTO `book_author_rel` VALUES ('59', '2');
INSERT INTO `book_author_rel` VALUES ('59', '12');
INSERT INTO `book_author_rel` VALUES ('11', '1');
INSERT INTO `book_author_rel` VALUES ('11', '2');
INSERT INTO `book_author_rel` VALUES ('11', '3');
INSERT INTO `book_author_rel` VALUES ('11', '4');
INSERT INTO `book_author_rel` VALUES ('11', '5');

-- ----------------------------
-- Table structure for book_genre_rel
-- ----------------------------
DROP TABLE IF EXISTS `book_genre_rel`;
CREATE TABLE `book_genre_rel` (
  `id_book` int(15) NOT NULL,
  `id_genre` int(15) NOT NULL,
  KEY `fk_books` (`id_book`),
  KEY `fk_genre` (`id_genre`),
  CONSTRAINT `fk_books` FOREIGN KEY (`id_book`) REFERENCES `books` (`id_book`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_genre` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`) ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_genre_rel
-- ----------------------------
INSERT INTO `book_genre_rel` VALUES ('2', '11');
INSERT INTO `book_genre_rel` VALUES ('2', '13');
INSERT INTO `book_genre_rel` VALUES ('2', '6');
INSERT INTO `book_genre_rel` VALUES ('3', '1');
INSERT INTO `book_genre_rel` VALUES ('3', '8');
INSERT INTO `book_genre_rel` VALUES ('12', '1');
INSERT INTO `book_genre_rel` VALUES ('12', '3');
INSERT INTO `book_genre_rel` VALUES ('12', '8');
INSERT INTO `book_genre_rel` VALUES ('12', '10');
INSERT INTO `book_genre_rel` VALUES ('14', '1');
INSERT INTO `book_genre_rel` VALUES ('14', '8');
INSERT INTO `book_genre_rel` VALUES ('14', '10');
INSERT INTO `book_genre_rel` VALUES ('15', '1');
INSERT INTO `book_genre_rel` VALUES ('15', '8');
INSERT INTO `book_genre_rel` VALUES ('15', '10');
INSERT INTO `book_genre_rel` VALUES ('16', '1');
INSERT INTO `book_genre_rel` VALUES ('16', '8');
INSERT INTO `book_genre_rel` VALUES ('16', '10');
INSERT INTO `book_genre_rel` VALUES ('17', '1');
INSERT INTO `book_genre_rel` VALUES ('17', '8');
INSERT INTO `book_genre_rel` VALUES ('17', '10');
INSERT INTO `book_genre_rel` VALUES ('18', '1');
INSERT INTO `book_genre_rel` VALUES ('18', '8');
INSERT INTO `book_genre_rel` VALUES ('18', '10');
INSERT INTO `book_genre_rel` VALUES ('19', '1');
INSERT INTO `book_genre_rel` VALUES ('19', '8');
INSERT INTO `book_genre_rel` VALUES ('19', '10');
INSERT INTO `book_genre_rel` VALUES ('9', '1');
INSERT INTO `book_genre_rel` VALUES ('9', '2');
INSERT INTO `book_genre_rel` VALUES ('9', '3');
INSERT INTO `book_genre_rel` VALUES ('9', '4');
INSERT INTO `book_genre_rel` VALUES ('21', '1');
INSERT INTO `book_genre_rel` VALUES ('21', '8');
INSERT INTO `book_genre_rel` VALUES ('21', '10');
INSERT INTO `book_genre_rel` VALUES ('22', '1');
INSERT INTO `book_genre_rel` VALUES ('22', '8');
INSERT INTO `book_genre_rel` VALUES ('22', '10');
INSERT INTO `book_genre_rel` VALUES ('23', '1');
INSERT INTO `book_genre_rel` VALUES ('23', '8');
INSERT INTO `book_genre_rel` VALUES ('23', '10');
INSERT INTO `book_genre_rel` VALUES ('24', '7');
INSERT INTO `book_genre_rel` VALUES ('25', '7');
INSERT INTO `book_genre_rel` VALUES ('26', '7');
INSERT INTO `book_genre_rel` VALUES ('27', '7');
INSERT INTO `book_genre_rel` VALUES ('28', '10');
INSERT INTO `book_genre_rel` VALUES ('28', '1');
INSERT INTO `book_genre_rel` VALUES ('28', '7');
INSERT INTO `book_genre_rel` VALUES ('29', '10');
INSERT INTO `book_genre_rel` VALUES ('29', '1');
INSERT INTO `book_genre_rel` VALUES ('29', '7');
INSERT INTO `book_genre_rel` VALUES ('30', '10');
INSERT INTO `book_genre_rel` VALUES ('30', '1');
INSERT INTO `book_genre_rel` VALUES ('30', '7');
INSERT INTO `book_genre_rel` VALUES ('31', '10');
INSERT INTO `book_genre_rel` VALUES ('31', '1');
INSERT INTO `book_genre_rel` VALUES ('31', '7');
INSERT INTO `book_genre_rel` VALUES ('32', '10');
INSERT INTO `book_genre_rel` VALUES ('32', '1');
INSERT INTO `book_genre_rel` VALUES ('32', '7');
INSERT INTO `book_genre_rel` VALUES ('33', '10');
INSERT INTO `book_genre_rel` VALUES ('33', '1');
INSERT INTO `book_genre_rel` VALUES ('33', '7');
INSERT INTO `book_genre_rel` VALUES ('34', '10');
INSERT INTO `book_genre_rel` VALUES ('34', '1');
INSERT INTO `book_genre_rel` VALUES ('34', '7');
INSERT INTO `book_genre_rel` VALUES ('35', '10');
INSERT INTO `book_genre_rel` VALUES ('35', '1');
INSERT INTO `book_genre_rel` VALUES ('35', '7');
INSERT INTO `book_genre_rel` VALUES ('36', '10');
INSERT INTO `book_genre_rel` VALUES ('36', '4');
INSERT INTO `book_genre_rel` VALUES ('36', '6');
INSERT INTO `book_genre_rel` VALUES ('37', '10');
INSERT INTO `book_genre_rel` VALUES ('37', '4');
INSERT INTO `book_genre_rel` VALUES ('37', '6');
INSERT INTO `book_genre_rel` VALUES ('38', '10');
INSERT INTO `book_genre_rel` VALUES ('38', '4');
INSERT INTO `book_genre_rel` VALUES ('38', '6');
INSERT INTO `book_genre_rel` VALUES ('39', '10');
INSERT INTO `book_genre_rel` VALUES ('39', '4');
INSERT INTO `book_genre_rel` VALUES ('39', '6');
INSERT INTO `book_genre_rel` VALUES ('40', '10');
INSERT INTO `book_genre_rel` VALUES ('40', '4');
INSERT INTO `book_genre_rel` VALUES ('40', '6');
INSERT INTO `book_genre_rel` VALUES ('41', '10');
INSERT INTO `book_genre_rel` VALUES ('41', '4');
INSERT INTO `book_genre_rel` VALUES ('41', '6');
INSERT INTO `book_genre_rel` VALUES ('42', '10');
INSERT INTO `book_genre_rel` VALUES ('42', '4');
INSERT INTO `book_genre_rel` VALUES ('42', '6');
INSERT INTO `book_genre_rel` VALUES ('43', '10');
INSERT INTO `book_genre_rel` VALUES ('43', '4');
INSERT INTO `book_genre_rel` VALUES ('43', '6');
INSERT INTO `book_genre_rel` VALUES ('44', '10');
INSERT INTO `book_genre_rel` VALUES ('44', '4');
INSERT INTO `book_genre_rel` VALUES ('44', '6');
INSERT INTO `book_genre_rel` VALUES ('45', '10');
INSERT INTO `book_genre_rel` VALUES ('45', '4');
INSERT INTO `book_genre_rel` VALUES ('45', '6');
INSERT INTO `book_genre_rel` VALUES ('46', '10');
INSERT INTO `book_genre_rel` VALUES ('46', '4');
INSERT INTO `book_genre_rel` VALUES ('46', '6');
INSERT INTO `book_genre_rel` VALUES ('47', '10');
INSERT INTO `book_genre_rel` VALUES ('47', '4');
INSERT INTO `book_genre_rel` VALUES ('47', '6');
INSERT INTO `book_genre_rel` VALUES ('48', '10');
INSERT INTO `book_genre_rel` VALUES ('48', '4');
INSERT INTO `book_genre_rel` VALUES ('48', '6');
INSERT INTO `book_genre_rel` VALUES ('49', '10');
INSERT INTO `book_genre_rel` VALUES ('49', '4');
INSERT INTO `book_genre_rel` VALUES ('49', '6');
INSERT INTO `book_genre_rel` VALUES ('50', '10');
INSERT INTO `book_genre_rel` VALUES ('50', '4');
INSERT INTO `book_genre_rel` VALUES ('50', '6');
INSERT INTO `book_genre_rel` VALUES ('51', '10');
INSERT INTO `book_genre_rel` VALUES ('51', '4');
INSERT INTO `book_genre_rel` VALUES ('51', '6');
INSERT INTO `book_genre_rel` VALUES ('52', '10');
INSERT INTO `book_genre_rel` VALUES ('52', '4');
INSERT INTO `book_genre_rel` VALUES ('52', '6');
INSERT INTO `book_genre_rel` VALUES ('53', '10');
INSERT INTO `book_genre_rel` VALUES ('53', '4');
INSERT INTO `book_genre_rel` VALUES ('53', '6');
INSERT INTO `book_genre_rel` VALUES ('54', '10');
INSERT INTO `book_genre_rel` VALUES ('54', '4');
INSERT INTO `book_genre_rel` VALUES ('54', '6');
INSERT INTO `book_genre_rel` VALUES ('55', '10');
INSERT INTO `book_genre_rel` VALUES ('55', '4');
INSERT INTO `book_genre_rel` VALUES ('55', '6');
INSERT INTO `book_genre_rel` VALUES ('56', '10');
INSERT INTO `book_genre_rel` VALUES ('56', '4');
INSERT INTO `book_genre_rel` VALUES ('56', '6');
INSERT INTO `book_genre_rel` VALUES ('57', '10');
INSERT INTO `book_genre_rel` VALUES ('57', '4');
INSERT INTO `book_genre_rel` VALUES ('57', '6');
INSERT INTO `book_genre_rel` VALUES ('58', '10');
INSERT INTO `book_genre_rel` VALUES ('58', '4');
INSERT INTO `book_genre_rel` VALUES ('58', '6');
INSERT INTO `book_genre_rel` VALUES ('59', '10');
INSERT INTO `book_genre_rel` VALUES ('59', '4');
INSERT INTO `book_genre_rel` VALUES ('59', '6');
INSERT INTO `book_genre_rel` VALUES ('11', '1');
INSERT INTO `book_genre_rel` VALUES ('11', '2');
INSERT INTO `book_genre_rel` VALUES ('11', '3');
INSERT INTO `book_genre_rel` VALUES ('11', '4');
INSERT INTO `book_genre_rel` VALUES ('11', '5');
INSERT INTO `book_genre_rel` VALUES ('11', '6');

-- ----------------------------
-- Table structure for genre
-- ----------------------------
DROP TABLE IF EXISTS `genre`;
CREATE TABLE `genre` (
  `id_genre` int(15) NOT NULL,
  `name_genre` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of genre
-- ----------------------------
INSERT INTO `genre` VALUES ('1', 'Fantasy');
INSERT INTO `genre` VALUES ('2', 'Science fiction');
INSERT INTO `genre` VALUES ('3', 'Western');
INSERT INTO `genre` VALUES ('4', 'Romance');
INSERT INTO `genre` VALUES ('5', 'Thriller');
INSERT INTO `genre` VALUES ('6', 'Mystery');
INSERT INTO `genre` VALUES ('7', 'Detective story');
INSERT INTO `genre` VALUES ('8', 'Dystopia');
INSERT INTO `genre` VALUES ('9', 'Memoir');
INSERT INTO `genre` VALUES ('10', 'Biography');
INSERT INTO `genre` VALUES ('11', 'Play');
INSERT INTO `genre` VALUES ('12', 'Musical');
INSERT INTO `genre` VALUES ('13', 'Satire');
INSERT INTO `genre` VALUES ('14', 'Haiku');
INSERT INTO `genre` VALUES ('15', 'Horror');
INSERT INTO `genre` VALUES ('16', 'DIY (Do It Yourself)');
INSERT INTO `genre` VALUES ('17', 'Dictionary');

-- ----------------------------
-- Table structure for publishing_house
-- ----------------------------
DROP TABLE IF EXISTS `publishing_house`;
CREATE TABLE `publishing_house` (
  `id_publishing_house` int(15) NOT NULL,
  `name_publishing_house` varchar(255) NOT NULL,
  PRIMARY KEY (`id_publishing_house`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of publishing_house
-- ----------------------------
INSERT INTO `publishing_house` VALUES ('1', 'Bloomsbury Publishing Plc');
INSERT INTO `publishing_house` VALUES ('2', 'A. S. Barnes');
INSERT INTO `publishing_house` VALUES ('3', 'Addison–Wesley');
INSERT INTO `publishing_house` VALUES ('4', 'Adis International');
INSERT INTO `publishing_house` VALUES ('5', 'Airiti Press');
INSERT INTO `publishing_house` VALUES ('6', 'Airiti Inc');
INSERT INTO `publishing_house` VALUES ('7', 'Aladdin Paperbacks');
INSERT INTO `publishing_house` VALUES ('8', 'Allison and Busby');
INSERT INTO `publishing_house` VALUES ('9', 'Anova Books');
INSERT INTO `publishing_house` VALUES ('10', 'Atheneum Publishers');
INSERT INTO `publishing_house` VALUES ('11', 'ATOM Books');
INSERT INTO `publishing_house` VALUES ('12', 'Little, Brown');
INSERT INTO `publishing_house` VALUES ('13', 'Augsburg Fortress');
INSERT INTO `publishing_house` VALUES ('14', 'Avon Publications');
INSERT INTO `publishing_house` VALUES ('15', 'B & W Publishing');
INSERT INTO `publishing_house` VALUES ('16', 'Baker Book House');
INSERT INTO `publishing_house` VALUES ('17', 'Bloomsbury Publishing Plc');
INSERT INTO `publishing_house` VALUES ('18', 'Bison Books');
INSERT INTO `publishing_house` VALUES ('19', 'Blackie and Son Limited');
INSERT INTO `publishing_house` VALUES ('20', 'Blackwell Publishing');
INSERT INTO `publishing_house` VALUES ('21', 'Blake Publishing');
INSERT INTO `publishing_house` VALUES ('22', 'Bloomsbury Publishing Plc');
INSERT INTO `publishing_house` VALUES ('23', 'Blue Ribbon Books');
INSERT INTO `publishing_house` VALUES ('24', 'Howard W. Sams Company');
INSERT INTO `publishing_house` VALUES ('25', 'Carlton Books');
INSERT INTO `publishing_house` VALUES ('26', 'Cengage Learning');
INSERT INTO `publishing_house` VALUES ('27', 'Century');
INSERT INTO `publishing_house` VALUES ('28', 'Chatto and Windus');
INSERT INTO `publishing_house` VALUES ('29', 'Chick Publications');
INSERT INTO `publishing_house` VALUES ('30', 'City Lights Publishers');
INSERT INTO `publishing_house` VALUES ('31', 'Constable & Co Ltd');
INSERT INTO `publishing_house` VALUES ('32', 'David & Charles');
INSERT INTO `publishing_house` VALUES ('33', 'Delacorte Press');
INSERT INTO `publishing_house` VALUES ('34', 'Deseret Book');
INSERT INTO `publishing_house` VALUES ('35', 'Dick and Fitzgerald');
INSERT INTO `publishing_house` VALUES ('36', 'Dobson Books');
INSERT INTO `publishing_house` VALUES ('37', 'Dodd, Mead and Company');
INSERT INTO `publishing_house` VALUES ('38', 'Dorling Kindersley');
INSERT INTO `publishing_house` VALUES ('39', 'Dundurn Group');
INSERT INTO `publishing_house` VALUES ('40', 'Eerdmans Publishing');
INSERT INTO `publishing_house` VALUES ('41', 'Reed Elsevier');
INSERT INTO `publishing_house` VALUES ('42', 'Farrar, Straus & Giroux');
INSERT INTO `publishing_house` VALUES ('43', 'George Routledge & Sons');
INSERT INTO `publishing_house` VALUES ('44', 'Goops Unlimited');
INSERT INTO `publishing_house` VALUES ('45', 'Greenwillow Books');
INSERT INTO `publishing_house` VALUES ('46', 'Atlantic Monthly Press');
INSERT INTO `publishing_house` VALUES ('47', 'Hachette Book Group USA');
INSERT INTO `publishing_house` VALUES ('48', 'Harcourt Trade Publishers');
INSERT INTO `publishing_house` VALUES ('49', 'Harlequin Enterprises Ltd');
INSERT INTO `publishing_house` VALUES ('50', 'Harper & Brothers');
INSERT INTO `publishing_house` VALUES ('51', 'Harper & Row');
INSERT INTO `publishing_house` VALUES ('52', 'HarperPrism');
INSERT INTO `publishing_house` VALUES ('53', 'HarperTrophy');
INSERT INTO `publishing_house` VALUES ('54', 'Harry N. Abrams, Inc.');
INSERT INTO `publishing_house` VALUES ('55', 'Harvill Press at Random House');
INSERT INTO `publishing_house` VALUES ('56', 'Haynes Manuals');
INSERT INTO `publishing_house` VALUES ('57', 'Heinemann');
INSERT INTO `publishing_house` VALUES ('58', 'Harcourt Education');
INSERT INTO `publishing_house` VALUES ('59', 'Reed Elsevier');
INSERT INTO `publishing_house` VALUES ('60', 'Herbert Jenkins');
INSERT INTO `publishing_house` VALUES ('61', 'HMSO');
INSERT INTO `publishing_house` VALUES ('62', 'Hodder Headline');
INSERT INTO `publishing_house` VALUES ('63', 'Horizon Scientific Press');
INSERT INTO `publishing_house` VALUES ('64', 'Houghton Mifflin');
INSERT INTO `publishing_house` VALUES ('65', 'The House of Murky Depths');
INSERT INTO `publishing_house` VALUES ('66', 'Huffington Post');
INSERT INTO `publishing_house` VALUES ('67', 'Hyperion');
INSERT INTO `publishing_house` VALUES ('68', 'Informa Healthcare');
INSERT INTO `publishing_house` VALUES ('69', 'Jarrolds Publishing');
INSERT INTO `publishing_house` VALUES ('70', 'Jarrolds');
INSERT INTO `publishing_house` VALUES ('71', 'John Wiley & Sons');
INSERT INTO `publishing_house` VALUES ('72', 'Jones and Bartlett Learning');
INSERT INTO `publishing_house` VALUES ('73', 'Legend Books');
INSERT INTO `publishing_house` VALUES ('74', 'Lion Publishing');
INSERT INTO `publishing_house` VALUES ('75', 'Lutterworth Press');
INSERT INTO `publishing_house` VALUES ('76', 'McClelland and Stewart');
INSERT INTO `publishing_house` VALUES ('77', 'McGraw Hill Financial');
INSERT INTO `publishing_house` VALUES ('78', 'The Miegunyah Press');
INSERT INTO `publishing_house` VALUES ('79', 'NavPress');
INSERT INTO `publishing_house` VALUES ('80', 'NYRB Classics');
INSERT INTO `publishing_house` VALUES ('81', 'Open University Press');
INSERT INTO `publishing_house` VALUES ('82', 'Orchard Books');
INSERT INTO `publishing_house` VALUES ('83', 'Orion Books');
INSERT INTO `publishing_house` VALUES ('84', 'Packt Publishing');
INSERT INTO `publishing_house` VALUES ('85', 'Pan Macmillan');
INSERT INTO `publishing_house` VALUES ('86', 'Pantheon Books at Random House');
INSERT INTO `publishing_house` VALUES ('87', 'Pathfinder Press');
INSERT INTO `publishing_house` VALUES ('88', 'Paulist Press');
INSERT INTO `publishing_house` VALUES ('89', 'Peace Hill Press');
INSERT INTO `publishing_house` VALUES ('90', 'Penguin Putnam Inc.');
INSERT INTO `publishing_house` VALUES ('91', 'Peter Lang');
INSERT INTO `publishing_house` VALUES ('92', 'Pimlico Books at Random House');
INSERT INTO `publishing_house` VALUES ('93', 'Que Publishing');
INSERT INTO `publishing_house` VALUES ('94', 'Reed Elsevier');
INSERT INTO `publishing_house` VALUES ('95', 'Robert Hale Publishing');
INSERT INTO `publishing_house` VALUES ('96', 'Robson Books');
INSERT INTO `publishing_house` VALUES ('97', 'Rodopi');
INSERT INTO `publishing_house` VALUES ('98', 'SAGE Publications');
INSERT INTO `publishing_house` VALUES ('99', 'Scholastic Press');
INSERT INTO `publishing_house` VALUES ('100', 'Secker & Warburg');
INSERT INTO `publishing_house` VALUES ('101', 'Shoemaker & Hoard Publishers');
INSERT INTO `publishing_house` VALUES ('102', 'Signet Books');
INSERT INTO `publishing_house` VALUES ('103', 'Sinclair-Stevenson Ltd');
INSERT INTO `publishing_house` VALUES ('104', 'SPCK');
INSERT INTO `publishing_house` VALUES ('105', 'SUNY Press');
INSERT INTO `publishing_house` VALUES ('106', 'Sylvan Dell Publishing');
INSERT INTO `publishing_house` VALUES ('107', 'T & T Clark');
INSERT INTO `publishing_house` VALUES ('108', 'Tammi');
INSERT INTO `publishing_house` VALUES ('109', 'Thames & Hudson USA');
INSERT INTO `publishing_house` VALUES ('110', 'Titan Books');
INSERT INTO `publishing_house` VALUES ('111', 'Triangle Books');
INSERT INTO `publishing_house` VALUES ('112', 'SPCK');
INSERT INTO `publishing_house` VALUES ('113', 'UCL Press');
INSERT INTO `publishing_house` VALUES ('114', 'Velazquez Press');
INSERT INTO `publishing_house` VALUES ('115', 'Vintage Books at Random House');
INSERT INTO `publishing_house` VALUES ('116', 'Virgin Publishing');
INSERT INTO `publishing_house` VALUES ('117', 'Voyager Books');
INSERT INTO `publishing_house` VALUES ('118', 'W. H. Allen Ltd');
INSERT INTO `publishing_house` VALUES ('119', 'WBusiness Books');
INSERT INTO `publishing_house` VALUES ('120', 'WestBow Press');
INSERT INTO `publishing_house` VALUES ('121', 'Wisdom Publications');
INSERT INTO `publishing_house` VALUES ('122', 'Witherby Seamanship');
INSERT INTO `publishing_house` VALUES ('123', 'Workman Publishing');
INSERT INTO `publishing_house` VALUES ('124', 'World Scientific Publishing');
INSERT INTO `publishing_house` VALUES ('125', 'John Wiley & Sons');
INSERT INTO `publishing_house` VALUES ('126', 'Xoanon Publishing');
INSERT INTO `publishing_house` VALUES ('127', 'Ziff Davis Media');
INSERT INTO `publishing_house` VALUES ('128', 'List of English language small presses');
INSERT INTO `publishing_house` VALUES ('129', 'List of largest UK book publishers');
