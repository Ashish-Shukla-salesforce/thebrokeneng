-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.45-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema cafe1
--

CREATE DATABASE IF NOT EXISTS cafe1;
USE cafe1;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `branch_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `fk80` (`branch_id`),
  CONSTRAINT `fk80` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`username`,`password`,`branch_id`) VALUES 
 ('ashish_shukla','qwerty','B001');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE `branch` (
  `branch_id` varchar(10) NOT NULL,
  `branch_name` varchar(20) DEFAULT NULL,
  `branch_address` varchar(100) DEFAULT NULL,
  `branch_time` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'Active',
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` (`branch_id`,`branch_name`,`branch_address`,`branch_time`,`status`) VALUES 
 ('B001','Aashiyana(01)','Adj. to vishwanath academy','10 am-10 Pm','Active'),
 ('B002','Hazratganj','sapru marg','10 am-10 Pm','Active');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;


--
-- Definition of table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT '1',
  `Total_price` float DEFAULT NULL,
  `customer_id` varchar(10) DEFAULT NULL,
  `product_id` varchar(10) DEFAULT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `product_img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `fk5` (`product_id`),
  CONSTRAINT `fk5` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`cart_id`,`quantity`,`Total_price`,`customer_id`,`product_id`,`unit_price`,`product_img`) VALUES 
 (14,1,100,'cust01','P03',100,'dal_tadka.jpg');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;


--
-- Definition of table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` varchar(10) NOT NULL,
  `category_name` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'active',
  `sub_cat` varchar(20) DEFAULT NULL,
  `branch_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`category_id`,`category_name`,`status`,`sub_cat`,`branch_id`) VALUES 
 ('C001','Dal','active','NA','b001'),
 ('C002','Green Vegetables','active','NA','b001'),
 ('C003','Green Vegetables','active','NA','B002');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Definition of table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` varchar(10) NOT NULL,
  `customer_name` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`customer_id`,`customer_name`,`Email`,`mobile`,`Address`,`gender`,`password`) VALUES 
 ('cust01','Arun Kumar Shukla','as10291998@gmail.com','8840585937','Near rajdhani hall, Manak nagar, Rdso colony, Alambagh, Lucknow','M','1234'),
 ('cust02','Ashish Shukla','as10291998@gmail.com','08840585937','B-70/1','M','qwerty');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Definition of table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` varchar(10) NOT NULL,
  `customer_id` varchar(10) DEFAULT NULL,
  `product_id` varchar(10) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Total_Price` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk1` (`customer_id`),
  KEY `fk2` (`product_id`),
  CONSTRAINT `fk1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


--
-- Definition of table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` varchar(10) NOT NULL,
  `category_id` varchar(10) DEFAULT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `total_units` int(11) DEFAULT NULL,
  `product_img` varchar(100) DEFAULT NULL,
  `product_desc` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'Active',
  `branch_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk` (`category_id`),
  CONSTRAINT `fk` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`product_id`,`category_id`,`product_name`,`price`,`total_units`,`product_img`,`product_desc`,`status`,`branch_id`) VALUES 
 ('P01','C001','Dal Fry',100,1,'','The flavour of dal that my change the nature of the taste from nice to best.','Active','B001'),
 ('P02','C001','Jeera Dal',100,1,'jeera-dal.jpg','The flavour which changes the tatse of food.','Active','B001'),
 ('P03','C001','Dal Tadka',100,1,'dal_tadka.jpg','The tadka that changes the color and taste of dal. ','Active','B001'),
 ('P04','C001','Dal Makhani',120,1,'dal_makhani.jpg','The overall beautiful and tasty that may make anyone fall in love with it..','Active','B001'),
 ('P05','C001','Handi Dal',140,1,'handi dal.jpg','The dal which changes the nature of your husband or lover from bad to good and happy.','Active','B001');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
