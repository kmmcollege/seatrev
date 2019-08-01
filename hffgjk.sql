/*
SQLyog Community v13.1.2 (64 bit)
MySQL - 5.7.26 : Database - seatrev
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`seatrev` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `seatrev`;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`user_id`,`email`,`password`,`type`,`status`) values 
(3,'asr@gmail.com','123','user',0),
(4,'aadth@gmail.com','gjdfk','user',0),
(5,'abhi@gmail.com','gffshj','user',0),
(6,'dgjdfgyk@gmail.com','qwerty','user',0),
(7,'sfsdfsdfsdfd@ssgdgsg.com','123456789','user',0),
(8,'asdfasfafa@fgsfg.com','123456','user',0),
(9,'asdfadsffdfsfafa@fgsfg.com','12345678','user',0),
(1,'Admin@kmm.com','adminkmm','admin',2);

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` bigint(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`name`,`address`,`contact`,`gender`,`user_id`) values 
('aads','afsegh',98876543211,'Female',3),
('wgw','thaiparambil(h) west kadungalloor p.o aluva 683110',556677889,'Male',4),
('abhi','eajhfjk',12304587,'Male',5),
('kelvin','dfydgk',369978,'Male',6),
('aads','agsgnrsgr',458721,'Male',7),
('wgw','dagsghser',54646654554,'Male',8);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `index` int(40) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `faname` varchar(100) DEFAULT NULL,
  `moname` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `mobile` bigint(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`index`,`fname`,`lname`,`faname`,`moname`,`dob`,`address`,`mobile`,`email`) values 
(1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
