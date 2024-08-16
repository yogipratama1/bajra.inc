/*
SQLyog Community v13.0.1 (32 bit)
MySQL - 8.3.0 : Database - web_scrapper
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`web_scrapper` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `web_scrapper`;

/*Table structure for table `additional_data` */

DROP TABLE IF EXISTS `additional_data`;

CREATE TABLE `additional_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori` text,
  `pre_order` text,
  `berat` text,
  `min_stok` text,
  `filter_harga_min` text,
  `filter_harga_max` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `kata_melanggar` */

DROP TABLE IF EXISTS `kata_melanggar`;

CREATE TABLE `kata_melanggar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kata_melanggar` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `scrap_detail` */

DROP TABLE IF EXISTS `scrap_detail`;

CREATE TABLE `scrap_detail` (
  `scrapname_id` int NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `photourl_1` mediumtext NOT NULL,
  `photourl_2` mediumtext NOT NULL,
  `photourl_3` mediumtext NOT NULL,
  `photourl_4` mediumtext NOT NULL,
  `photourl_5` mediumtext NOT NULL,
  `video_url` mediumtext NOT NULL,
  `product_status` varchar(255) NOT NULL,
  `product_stock` int NOT NULL,
  `product_price` int NOT NULL,
  `rating` varchar(5) NOT NULL,
  `new_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Table structure for table `scrap_name` */

DROP TABLE IF EXISTS `scrap_name`;

CREATE TABLE `scrap_name` (
  `id` varchar(255) NOT NULL,
  `scrap_name` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `setting_price` */

DROP TABLE IF EXISTS `setting_price`;

CREATE TABLE `setting_price` (
  `scrapname_id` int NOT NULL,
  `editted_by` varchar(255) NOT NULL,
  `price_under` varchar(20) NOT NULL,
  `price_betweenstart` varchar(20) NOT NULL,
  `price_betweenfinish` varchar(20) NOT NULL,
  `price_above` varchar(20) NOT NULL,
  `adjustment_under` varchar(20) NOT NULL,
  `adjustment_between` varchar(20) NOT NULL,
  `adjustment_above` varchar(20) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `setup_data` */

DROP TABLE IF EXISTS `setup_data`;

CREATE TABLE `setup_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hb_min` int DEFAULT NULL,
  `hb_max` int DEFAULT NULL,
  `type` tinytext,
  `hj_min` int DEFAULT NULL,
  `hj_max` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `shuffle` */

DROP TABLE IF EXISTS `shuffle`;

CREATE TABLE `shuffle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `awal_judul` text,
  `awal_deskripsi` text,
  `deskripsi_tambahan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
