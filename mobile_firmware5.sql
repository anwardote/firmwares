/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.7.12-0ubuntu1.1 : Database - mobile_firmware
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Data for the table `cms_categories` */

insert  into `cms_categories`(`id`,`parent_id`,`lft`,`rgt`,`depth`,`name`,`created_at`,`updated_at`,`deleted_at`) values (1,0,NULL,NULL,NULL,'home','2016-11-30 20:03:20','2016-11-30 20:03:20',NULL),(2,0,NULL,NULL,NULL,'firmware','2016-11-30 20:03:47','2016-11-30 20:03:47',NULL),(3,0,NULL,NULL,NULL,'driver','2016-11-30 20:04:00','2016-11-30 20:04:00',NULL),(4,0,NULL,NULL,NULL,'tools','2016-11-30 20:04:18','2016-11-30 20:04:18',NULL),(5,0,NULL,NULL,NULL,'tutorials','2016-11-30 20:04:40','2016-11-30 20:04:40',NULL),(6,1,NULL,NULL,NULL,'slider_home','2016-11-30 20:07:26','2016-11-30 20:07:26',NULL);

/*Data for the table `cms_posts` */

insert  into `cms_posts`(`id`,`cms_category_id`,`title`,`slug`,`content`,`image`,`status`,`date`,`featured`,`created_at`,`updated_at`,`deleted_at`,`source`) values (1,6,'.','home-slider','','uploads/test-banner2.jpg','PUBLISHED','2016-11-30',0,'2016-11-30 20:08:57','2016-11-30 21:37:59',NULL,NULL),(2,6,'.','','','uploads/mobile_slide2.png','PUBLISHED','2016-11-30',0,'2016-11-30 21:32:17','2016-11-30 21:33:59',NULL,NULL),(3,6,'.','-1','','uploads/slide2.jpg','PUBLISHED','2016-11-30',0,'2016-11-30 21:32:41','2016-11-30 21:32:41',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
