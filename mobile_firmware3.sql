/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.7.12-0ubuntu1.1 : Database - mobile_firmware
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mobile_firmware` /*!40100 DEFAULT CHARACTER SET latin1 */;

/*Table structure for table `cms_categories` */

DROP TABLE IF EXISTS `cms_categories`;

CREATE TABLE `cms_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `depth` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_categories` */

insert  into `cms_categories`(`id`,`parent_id`,`lft`,`rgt`,`depth`,`name`,`created_at`,`updated_at`,`deleted_at`) values (1,0,NULL,NULL,NULL,'slider','2016-11-27 20:42:20','2016-11-27 20:42:20',NULL),(2,3,NULL,NULL,NULL,'home','2016-11-27 20:42:42','2016-11-27 20:43:51',NULL),(3,0,NULL,NULL,NULL,'hero image','2016-11-27 20:43:31','2016-11-27 20:43:31',NULL);

/*Table structure for table `cms_pages` */

DROP TABLE IF EXISTS `cms_pages`;

CREATE TABLE `cms_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `banner_type` enum('hero_image','slider') COLLATE utf8_unicode_ci NOT NULL,
  `extras` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_pages` */

insert  into `cms_pages`(`id`,`template`,`name`,`title`,`slug`,`content`,`banner_type`,`extras`,`created_at`,`updated_at`,`deleted_at`) values (1,'firmware','firmwares','www.facebook.com/jams','nimbuzz.com/hello','<p>dsfsf</p>','hero_image','{\"banner_title\":\"\",\"banner_image\":\"\",\"banner_description\":\"\",\"source\":\"\"}','2016-11-28 17:55:13','2016-11-28 18:00:22',NULL),(2,'firmware','sdfsd','sdfdsf','sdfsdf','<p>sdfsdf</p>','hero_image','{\"banner_title\":\"\",\"banner_image\":\"\",\"banner_description\":\"\"}','2016-11-28 21:26:21','2016-11-28 21:26:21',NULL);

/*Table structure for table `cms_posts` */

DROP TABLE IF EXISTS `cms_posts`;

CREATE TABLE `cms_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cms_category_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PUBLISHED',
  `date` date NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_posts` */

insert  into `cms_posts`(`id`,`cms_category_id`,`title`,`slug`,`content`,`image`,`status`,`date`,`featured`,`created_at`,`updated_at`,`deleted_at`,`source`) values (1,3,'test','test','<p>test test test</p>','','DRAFT','2016-11-29',0,'2016-11-29 00:56:11','2016-11-28 21:04:09','2016-11-29 00:56:17','a'),(2,3,'www','www','<p>sdfsdf</p>','','PUBLISHED','2016-11-28',1,'2016-11-28 20:43:28','2016-11-28 21:04:21',NULL,NULL),(4,2,'fsdfsf','fsdfsf','<p>sdfsdfsdf</p>','','PUBLISHED','2016-11-28',0,'2016-11-28 21:18:52','2016-11-28 21:18:52',NULL,NULL),(5,2,'dsfdsf','dsfdsf','<p>sdf</p>','','PUBLISHED','2016-11-28',0,'2016-11-28 21:20:19','2016-11-28 21:20:19',NULL,NULL),(6,2,'dsfdsf','dsfdsf-1','<p>sdf</p>','','PUBLISHED','2016-11-28',0,'2016-11-28 21:22:56','2016-11-28 21:22:56',NULL,NULL),(7,2,'dsfdsf','dsfdsf-2','<p>sdf</p>','','PUBLISHED','2016-11-28',0,'2016-11-28 21:24:15','2016-11-28 21:24:15',NULL,NULL),(8,2,'sdf','sdfsdf','<p>sdfdsf</p>','','PUBLISHED','2016-11-28',0,'2016-11-28 21:24:54','2016-11-28 21:24:54',NULL,NULL);

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `countries_country_code_unique` (`country_code`),
  UNIQUE KEY `countries_country_name_unique` (`country_name`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `countries` */

insert  into `countries`(`id`,`country_code`,`country_name`) values (1,'','All Countries'),(2,'AF','Afghanistan'),(3,'AL','Albania'),(4,'DZ','Algeria'),(5,'DS','American Samoa'),(6,'AD','Andorra'),(7,'AO','Angola'),(8,'AI','Anguilla'),(9,'AQ','Antarctica'),(10,'AG','Antigua and Barbuda'),(11,'AR','Argentina'),(12,'AM','Armenia'),(13,'AW','Aruba'),(14,'AU','Australia'),(15,'AT','Austria'),(16,'AZ','Azerbaijan'),(17,'BS','Bahamas'),(18,'BH','Bahrain'),(19,'BD','Bangladesh'),(20,'BB','Barbados'),(21,'BY','Belarus'),(22,'BE','Belgium'),(23,'BZ','Belize'),(24,'BJ','Benin'),(25,'BM','Bermuda'),(26,'BT','Bhutan'),(27,'BO','Bolivia'),(28,'BA','Bosnia and Herzegovina'),(29,'BW','Botswana'),(30,'BV','Bouvet Island'),(31,'BR','Brazil'),(32,'IO','British Indian Ocean Territory'),(33,'BN','Brunei Darussalam'),(34,'BG','Bulgaria'),(35,'BF','Burkina Faso'),(36,'BI','Burundi'),(37,'KH','Cambodia'),(38,'CM','Cameroon'),(39,'CA','Canada'),(40,'CV','Cape Verde'),(41,'KY','Cayman Islands'),(42,'CF','Central African Republic'),(43,'TD','Chad'),(44,'CL','Chile'),(45,'CN','China'),(46,'CX','Christmas Island'),(47,'CC','Cocos (Keeling) Islands'),(48,'CO','Colombia'),(49,'KM','Comoros'),(50,'CG','Congo'),(51,'CK','Cook Islands'),(52,'CR','Costa Rica'),(53,'HR','Croatia (Hrvatska)'),(54,'CU','Cuba'),(55,'CY','Cyprus'),(56,'CZ','Czech Republic'),(57,'DK','Denmark'),(58,'DJ','Djibouti'),(59,'DM','Dominica'),(60,'DO','Dominican Republic'),(61,'TP','East Timor'),(62,'EC','Ecuador'),(63,'EG','Egypt'),(64,'SV','El Salvador'),(65,'GQ','Equatorial Guinea'),(66,'ER','Eritrea'),(67,'EE','Estonia'),(68,'ET','Ethiopia'),(69,'FK','Falkland Islands (Malvinas)'),(70,'FO','Faroe Islands'),(71,'FJ','Fiji'),(72,'FI','Finland'),(73,'FR','France'),(74,'FX','France, Metropolitan'),(75,'GF','French Guiana'),(76,'PF','French Polynesia'),(77,'TF','French Southern Territories'),(78,'GA','Gabon'),(79,'GM','Gambia'),(80,'GE','Georgia'),(81,'DE','Germany'),(82,'GH','Ghana'),(83,'GI','Gibraltar'),(84,'GK','Guernsey'),(85,'GR','Greece'),(86,'GL','Greenland'),(87,'GD','Grenada'),(88,'GP','Guadeloupe'),(89,'GU','Guam'),(90,'GT','Guatemala'),(91,'GN','Guinea'),(92,'GW','Guinea-Bissau'),(93,'GY','Guyana'),(94,'HT','Haiti'),(95,'HM','Heard and Mc Donald Islands'),(96,'HN','Honduras'),(97,'HK','Hong Kong'),(98,'HU','Hungary'),(99,'IS','Iceland'),(100,'IN','India'),(101,'IM','Isle of Man'),(102,'ID','Indonesia'),(103,'IR','Iran (Islamic Republic of)'),(104,'IQ','Iraq'),(105,'IE','Ireland'),(106,'IL','Israel'),(107,'IT','Italy'),(108,'CI','Ivory Coast'),(109,'JE','Jersey'),(110,'JM','Jamaica'),(111,'JP','Japan'),(112,'JO','Jordan'),(113,'KZ','Kazakhstan'),(114,'KE','Kenya'),(115,'KI','Kiribati'),(116,'KP','Korea, Democratic People\'s Republic of'),(117,'KR','Korea, Republic of'),(118,'XK','Kosovo'),(119,'KW','Kuwait'),(120,'KG','Kyrgyzstan'),(121,'LA','Lao People\'s Democratic Republic'),(122,'LV','Latvia'),(123,'LB','Lebanon'),(124,'LS','Lesotho'),(125,'LR','Liberia'),(126,'LY','Libyan Arab Jamahiriya'),(127,'LI','Liechtenstein'),(128,'LT','Lithuania'),(129,'LU','Luxembourg'),(130,'MO','Macau'),(131,'MK','Macedonia'),(132,'MG','Madagascar'),(133,'MW','Malawi'),(134,'MY','Malaysia'),(135,'MV','Maldives'),(136,'ML','Mali'),(137,'MT','Malta'),(138,'MH','Marshall Islands'),(139,'MQ','Martinique'),(140,'MR','Mauritania'),(141,'MU','Mauritius'),(142,'TY','Mayotte'),(143,'MX','Mexico'),(144,'FM','Micronesia, Federated States of'),(145,'MD','Moldova, Republic of'),(146,'MC','Monaco'),(147,'MN','Mongolia'),(148,'ME','Montenegro'),(149,'MS','Montserrat'),(150,'MA','Morocco'),(151,'MZ','Mozambique'),(152,'MM','Myanmar'),(153,'NA','Namibia'),(154,'NR','Nauru'),(155,'NP','Nepal'),(156,'NL','Netherlands'),(157,'AN','Netherlands Antilles'),(158,'NC','New Caledonia'),(159,'NZ','New Zealand'),(160,'NI','Nicaragua'),(161,'NE','Niger'),(162,'NG','Nigeria'),(163,'NU','Niue'),(164,'NF','Norfolk Island'),(165,'MP','Northern Mariana Islands'),(166,'NO','Norway'),(167,'OM','Oman'),(168,'PK','Pakistan'),(169,'PW','Palau'),(170,'PS','Palestine'),(171,'PA','Panama'),(172,'PG','Papua New Guinea'),(173,'PY','Paraguay'),(174,'PE','Peru'),(175,'PH','Philippines'),(176,'PN','Pitcairn'),(177,'PL','Poland'),(178,'PT','Portugal'),(179,'PR','Puerto Rico'),(180,'QA','Qatar'),(181,'RE','Reunion'),(182,'RO','Romania'),(183,'RU','Russian Federation'),(184,'RW','Rwanda'),(185,'KN','Saint Kitts and Nevis'),(186,'LC','Saint Lucia'),(187,'VC','Saint Vincent and the Grenadines'),(188,'WS','Samoa'),(189,'SM','San Marino'),(190,'ST','Sao Tome and Principe'),(191,'SA','Saudi Arabia'),(192,'SN','Senegal'),(193,'RS','Serbia'),(194,'SC','Seychelles'),(195,'SL','Sierra Leone'),(196,'SG','Singapore'),(197,'SK','Slovakia'),(198,'SI','Slovenia'),(199,'SB','Solomon Islands'),(200,'SO','Somalia'),(201,'ZA','South Africa'),(202,'GS','South Georgia South Sandwich Islands'),(203,'ES','Spain'),(204,'LK','Sri Lanka'),(205,'SH','St. Helena'),(206,'PM','St. Pierre and Miquelon'),(207,'SD','Sudan'),(208,'SR','Suriname'),(209,'SJ','Svalbard and Jan Mayen Islands'),(210,'SZ','Swaziland'),(211,'SE','Sweden'),(212,'CH','Switzerland'),(213,'SY','Syrian Arab Republic'),(214,'TW','Taiwan'),(215,'TJ','Tajikistan'),(216,'TZ','Tanzania, United Republic of'),(217,'TH','Thailand'),(218,'TG','Togo'),(219,'TK','Tokelau'),(220,'TO','Tonga'),(221,'TT','Trinidad and Tobago'),(222,'TN','Tunisia'),(223,'TR','Turkey'),(224,'TM','Turkmenistan'),(225,'TC','Turks and Caicos Islands'),(226,'TV','Tuvalu'),(227,'UG','Uganda'),(228,'UA','Ukraine'),(229,'AE','United Arab Emirates'),(230,'GB','United Kingdom'),(231,'US','United States'),(232,'UM','United States minor outlying islands'),(233,'UY','Uruguay'),(234,'UZ','Uzbekistan'),(235,'VU','Vanuatu'),(236,'VA','Vatican City State'),(237,'VE','Venezuela'),(238,'VN','Vietnam'),(239,'VG','Virgin Islands (British)'),(240,'VI','Virgin Islands (U.S.)'),(241,'WF','Wallis and Futuna Islands'),(242,'EH','Western Sahara'),(243,'YE','Yemen'),(244,'ZR','Zaire'),(245,'ZM','Zambia'),(246,'ZW','Zimbabwe');

/*Table structure for table `devices` */

DROP TABLE IF EXISTS `devices`;

CREATE TABLE `devices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introductions` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'images/default_mobile.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `devices` */

insert  into `devices`(`id`,`name`,`introductions`,`image`,`created_at`,`updated_at`) values (1,'Nokia',NULL,'uploads/Penguins.jpg',NULL,'2016-11-12 01:04:27'),(2,'SAMSUNG',NULL,'uploads/Penguins.jpg',NULL,'2016-11-12 01:16:37'),(4,'Symphony',NULL,'uploads/Penguins.jpg','2016-11-12 01:28:23','2016-11-12 12:14:17'),(5,'I-phone',NULL,'uploads/Penguins.jpg','2016-11-12 12:14:42','2016-11-12 12:14:42'),(6,'dd','sss','uploads/Penguins.jpg','2016-11-12 22:42:00','2016-11-12 22:42:00');

/*Table structure for table `driver_names` */

DROP TABLE IF EXISTS `driver_names`;

CREATE TABLE `driver_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introductions` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'images/default_driver.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `driver_names` */

insert  into `driver_names`(`id`,`name`,`introductions`,`image`,`created_at`,`updated_at`) values (1,'OnePlus',NULL,'uploads/Penguins.jpg','2016-11-12 08:15:34','2016-11-12 08:23:46'),(2,'Dell',NULL,'uploads/Penguins.jpg','2016-11-12 12:15:23','2016-11-12 12:15:36');

/*Table structure for table `driver_types` */

DROP TABLE IF EXISTS `driver_types`;

CREATE TABLE `driver_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `driver_types` */

insert  into `driver_types`(`id`,`name`,`created_at`,`updated_at`) values (1,'Generalx',NULL,'2016-11-12 17:23:14'),(2,'official','2016-11-12 17:33:13','2016-11-12 17:33:13');

/*Table structure for table `drivers` */

DROP TABLE IF EXISTS `drivers`;

CREATE TABLE `drivers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `st_instruct` text COLLATE utf8_unicode_ci,
  `driver_id` int(10) unsigned NOT NULL,
  `driver_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `driver_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supports` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tutorial_id` int(10) unsigned DEFAULT NULL,
  `d_links` text COLLATE utf8_unicode_ci,
  `d_sizes` text COLLATE utf8_unicode_ci,
  `noted` text COLLATE utf8_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING','HIDDEN') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PUBLISHED',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `drivers_driver_id_foreign` (`driver_id`),
  KEY `drivers_tutorial_id_foreign` (`tutorial_id`),
  KEY `drivers_user_id_foreign` (`user_id`),
  CONSTRAINT `drivers_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `driver_names` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `drivers_tutorial_id_foreign` FOREIGN KEY (`tutorial_id`) REFERENCES `tutorials` (`id`),
  CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `drivers` */

insert  into `drivers`(`id`,`st_instruct`,`driver_id`,`driver_model`,`driver_type`,`supports`,`tutorial_id`,`d_links`,`d_sizes`,`noted`,`status`,`featured`,`user_id`,`created_at`,`updated_at`) values (1,'test test',1,'4545','www','windows xp',1,NULL,NULL,NULL,'PUBLISHED',0,1,NULL,NULL),(2,'<p>test</p>',1,'25654','1,2',NULL,1,'www.google.com,www.googl.com','35mb','test','DRAFT',1,1,'2016-11-12 17:59:05','2016-11-12 17:59:05'),(3,'<p>test test</p>',2,'test model','1,2',NULL,1,'www.google.com,www.google.com','500mb','test','PENDING',1,1,'2016-11-12 18:21:16','2016-11-12 18:21:16'),(4,'<p>start</p>',2,'model','1,2',NULL,1,'www.google.com,www.googl.com','545mb','dr','HIDDEN',1,1,'2016-11-12 18:26:26','2016-11-12 18:26:26');

/*Table structure for table `fcategories` */

DROP TABLE IF EXISTS `fcategories`;

CREATE TABLE `fcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `fcategories` */

insert  into `fcategories`(`id`,`title`,`created_at`,`updated_at`) values (1,'Android Firmware',NULL,NULL),(2,'Normal Firmware',NULL,NULL);

/*Table structure for table `firmwares` */

DROP TABLE IF EXISTS `firmwares`;

CREATE TABLE `firmwares` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fcategory_id` int(10) unsigned NOT NULL,
  `st_instruct` text COLLATE utf8_unicode_ci,
  `device_id` int(10) unsigned NOT NULL,
  `device_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tutorial_id` int(10) unsigned DEFAULT NULL,
  `country_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d_links` text COLLATE utf8_unicode_ci,
  `d_sizes` text COLLATE utf8_unicode_ci,
  `noted` text COLLATE utf8_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING','HIDDEN') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PUBLISHED',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `firmwares_fcategory_id_foreign` (`fcategory_id`),
  KEY `firmwares_device_id_foreign` (`device_id`),
  KEY `firmwares_tutorial_id_foreign` (`tutorial_id`),
  KEY `firmwares_country_id_foreign` (`country_id`),
  KEY `firmwares_user_id_foreign` (`user_id`),
  CONSTRAINT `firmwares_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `devices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `firmwares_fcategory_id_foreign` FOREIGN KEY (`fcategory_id`) REFERENCES `fcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `firmwares_tutorial_id_foreign` FOREIGN KEY (`tutorial_id`) REFERENCES `tutorials` (`id`),
  CONSTRAINT `firmwares_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `firmwares` */

insert  into `firmwares`(`id`,`fcategory_id`,`st_instruct`,`device_id`,`device_model`,`device_version`,`tutorial_id`,`country_id`,`d_links`,`d_sizes`,`noted`,`status`,`featured`,`user_id`,`created_at`,`updated_at`) values (3,2,'<p>test test test</p>',2,'2305','32.02.51',1,'3,5,7','www.googl.com','562mb','sdfsdf','PUBLISHED',0,1,'2016-11-11 13:22:15','2016-11-11 13:22:15'),(4,2,'<p>test</p>',2,'dfsdf','sdfsdf',1,NULL,'www.yahoo.com,facebook.com,www.nimbuzz.com','54mb','','PUBLISHED',0,1,'2016-11-11 13:26:08','2016-11-11 13:26:08'),(6,1,'<p>ghgf</p>',1,'sdfsdf','sdfsdf',1,NULL,'456','4','','PUBLISHED',0,4,'2016-11-11 14:28:16','2016-11-11 14:28:16'),(15,1,'',1,'dfg','dfgdfg',NULL,'2','ddd','','','PUBLISHED',0,1,'2016-11-11 20:00:30','2016-11-11 20:00:30'),(16,2,'',2,'anwar-4','anwar5',1,'7','www.google.com,www.raj.com','35MB','','HIDDEN',0,1,'2016-11-11 20:01:38','2016-11-12 12:18:06'),(17,2,'<p>dsf</p>',2,'dfdsf','sdfdsf',1,'3,6,7,8,11,18,42','dd,aaaaaaaa','555','aaaaaaaaaaa','PENDING',0,1,'2016-11-11 20:33:06','2016-11-11 20:48:15'),(21,2,'<p>test.</p>',5,'55555','v.325',1,'3,7','www.google.com,www.googl.com','35mb','00','DRAFT',1,1,'2016-11-12 12:20:00','2016-11-12 12:20:00');

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `groups` */

insert  into `groups`(`id`,`name`,`permissions`,`protected`,`created_at`,`updated_at`) values (1,'superadmin','{\"_superadmin\":1,\"_user-editor\":1,\"_group-editor\":1,\"_permission-editor\":1,\"_profile-editor\":1,\"_tutorial-editor\":1,\"_firmware-editor\":1,\"_driver-editor\":1,\"_tool-editor\":1,\"_delete\":1,\"_setup\":1,\"_cms\":1}',0,'2016-11-07 14:09:39','2016-11-22 18:56:37'),(2,'admin','{\"_superadmin\":1}',0,'2016-11-07 14:09:39','2016-11-09 14:32:23'),(3,'editor','{\"_tool-editor\":1,\"_driver-editor\":1,\"_firmware-editor\":1,\"_tutorial-editor\":1,\"_profile-editor\":1}',0,'2016-11-07 14:09:39','2016-11-09 14:46:56'),(4,'manager',NULL,0,'2016-11-09 14:20:09','2016-11-09 14:22:03'),(5,'diamon',NULL,0,'2016-11-09 14:24:51','2016-11-09 14:24:51'),(6,'golden',NULL,0,'2016-11-09 14:25:00','2016-11-09 14:26:45'),(7,'sliver',NULL,0,'2016-11-09 14:25:27','2016-11-09 14:26:52'),(8,'beginner',NULL,0,'2016-11-09 14:25:47','2016-11-09 14:25:47'),(9,'register','{\"_firmware-editor\":1}',0,'2016-11-09 14:26:03','2016-11-11 13:51:39'),(10,'banned',NULL,0,'2016-11-09 14:26:14','2016-11-09 14:26:14'),(11,'safe editor',NULL,0,'2016-11-11 18:47:57','2016-11-11 18:47:57');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2012_12_06_225988_migration_cartalyst_sentry_install_throttle',1),(2,'2014_02_19_095545_create_users_table',1),(3,'2014_02_19_095623_create_user_groups_table',1),(4,'2014_02_19_095637_create_groups_table',1),(5,'2014_02_19_160516_create_permission_table',1),(6,'2014_02_26_165011_create_user_profile_table',1),(7,'2014_05_06_122145_create_profile_field_types',1),(8,'2014_05_06_122155_create_profile_field',1),(9,'2014_10_12_100000_create_password_resets_table',1),(10,'2015_08_04_130507_create_article_tag_table',2),(11,'2015_08_04_130520_create_articles_table',2),(12,'2015_08_04_130551_create_categories_table',2),(13,'2015_08_04_131626_create_tags_table',2),(14,'2016_05_25_121918_create_pages_table',2),(15,'2016_07_24_060017_add_slug_to_categories_table',2),(16,'2016_07_24_060101_add_slug_to_tags_table',2),(17,'2016_11_09_194700_create_devices_table',3),(18,'2016_11_09_194710_create_tutorials_table',3),(19,'2016_11_09_194720_create_countries_table',3),(20,'2016_11_09_194725_create_fcategories_table',3),(21,'2016_11_09_194730_create_firmwares_table',3),(22,'2016_11_11_232256_add_user_id_to_tutorails_table',4),(23,'2016_11_12_073312_create_driver_names_table',5),(24,'2016_11_12_102925_create_drivers_table',6),(25,'2016_11_12_122553_create_driver_types_table',7),(26,'2016_11_12_193739_create_tools_table',8);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permission` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permission` */

insert  into `permission`(`id`,`description`,`permission`,`protected`,`created_at`,`updated_at`) values (1,'superadmin','_superadmin',0,'2016-11-07 14:09:39','2016-11-07 14:09:39'),(2,'user editor','_user-editor',0,'2016-11-07 14:09:39','2016-11-07 14:09:39'),(3,'group editor','_group-editor',0,'2016-11-07 14:09:39','2016-11-07 14:09:39'),(4,'permission editor','_permission-editor',0,'2016-11-07 14:09:39','2016-11-07 14:09:39'),(5,'profile type editor','_profile-editor',0,'2016-11-07 14:09:39','2016-11-07 14:09:39'),(6,'tutorials editor','_tutorial-editor',0,'2016-11-07 14:10:12','2016-11-07 14:10:12'),(7,'firmware editor','_firmware-editor',0,'2016-11-07 14:10:12','2016-11-07 14:10:12'),(8,'driver editor','_driver-editor',0,'2016-11-07 14:10:12','2016-11-07 14:10:12'),(9,'tool editor','_tool-editor',0,'2016-11-09 14:36:05','2016-11-09 14:36:05'),(10,'delete','_delete',0,'2016-11-11 18:45:27','2016-11-11 18:51:06'),(11,'setup','_setup',0,'2016-11-12 00:08:24','2016-11-12 00:08:24'),(12,'cms','_cms',0,'2016-11-12 23:04:00','2016-11-12 23:04:00');

/*Table structure for table `profile_field` */

DROP TABLE IF EXISTS `profile_field`;

CREATE TABLE `profile_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) unsigned NOT NULL,
  `profile_field_type_id` int(10) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile_field_profile_id_profile_field_type_id_unique` (`profile_id`,`profile_field_type_id`),
  KEY `profile_field_profile_field_type_id_foreign` (`profile_field_type_id`),
  CONSTRAINT `profile_field_profile_field_type_id_foreign` FOREIGN KEY (`profile_field_type_id`) REFERENCES `profile_field_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `profile_field_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `user_profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `profile_field` */

/*Table structure for table `profile_field_type` */

DROP TABLE IF EXISTS `profile_field_type`;

CREATE TABLE `profile_field_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `profile_field_type` */

/*Table structure for table `throttle` */

DROP TABLE IF EXISTS `throttle`;

CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `throttle` */

insert  into `throttle`(`id`,`user_id`,`ip_address`,`attempts`,`suspended`,`banned`,`last_attempt_at`,`suspended_at`,`banned_at`) values (1,1,'127.0.0.1',0,0,0,NULL,NULL,NULL),(2,2,'127.0.0.1',0,0,0,NULL,NULL,NULL),(3,3,'127.0.0.1',0,0,0,NULL,NULL,NULL),(4,1,'192.168.10.1',0,0,0,NULL,NULL,NULL),(5,4,'127.0.0.1',0,0,0,NULL,NULL,NULL);

/*Table structure for table `tools` */

DROP TABLE IF EXISTS `tools`;

CREATE TABLE `tools` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `supports` enum('ALL VERSIONS','NA') COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci,
  `d_links` text COLLATE utf8_unicode_ci,
  `d_sizes` text COLLATE utf8_unicode_ci,
  `noted` text COLLATE utf8_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING','HIDDEN') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PUBLISHED',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tools_user_id_foreign` (`user_id`),
  CONSTRAINT `tools_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tools` */

insert  into `tools`(`id`,`title`,`supports`,`instructions`,`d_links`,`d_sizes`,`noted`,`status`,`featured`,`user_id`,`created_at`,`updated_at`) values (2,'SonyX','NA','<p>test test test</p>','www.google.com,www.google.com','30mb','tttt','PUBLISHED',1,1,'2016-11-12 20:47:08','2016-11-12 20:53:43'),(3,'Nokia','NA','<p>test test test</p>','www.google.com,www.googl.com','54mb','','DRAFT',1,1,'2016-11-12 21:49:11','2016-11-12 21:49:11');

/*Table structure for table `tutorials` */

DROP TABLE IF EXISTS `tutorials`;

CREATE TABLE `tutorials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `st_instruct` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requirements` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `noted` text COLLATE utf8_unicode_ci,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tutorials_user_id_foreign` (`user_id`),
  CONSTRAINT `tutorials_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tutorials` */

insert  into `tutorials`(`id`,`st_instruct`,`requirements`,`title`,`description`,`noted`,`user_id`,`created_at`,`updated_at`) values (1,'test','test','test','test','test',1,NULL,NULL);

/*Table structure for table `user_profile` */

DROP TABLE IF EXISTS `user_profile`;

CREATE TABLE `user_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` blob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_profile_user_id_foreign` (`user_id`),
  CONSTRAINT `user_profile_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user_profile` */

insert  into `user_profile`(`id`,`user_id`,`code`,`vat`,`first_name`,`last_name`,`phone`,`state`,`city`,`country`,`zip`,`address`,`avatar`,`created_at`,`updated_at`) values (1,1,'',NULL,'Anwar','','','','','','','','����\0JFIF\0\0`\0`\0\0��\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 90\n��\0C\0\n\n\n\r\r��\0C		\r\r��\0\0�\0�\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0��>��ώ��k۾��kA�]h�)����\r�3;����h�>�S�B>�+���B�aZ.IIe����1q%����{�a���K6\0Ky�ʗ(Nw�s���\n`���Ժ�~����r������{�KMz���Z�[߳�ڻ�k+x9��8�MpBr�VPt�䗽Ӿ��4��9���^������ܕ�=2�\"�I�gr�������Br�T�r9[z�i����7��o\r%��yZ�mb�w��U�w]1rH���\r�\n\n\r괾���#��\'U�[#�4�w��!����ca	�f�n���\r��h�(;��������*V����v��[}�=\r\'JQ�*^���|@�,tS>�}qkcw$k-�F��ڬ��E	�<��VcԤ�Q����*i�+K�J��\'YӬ��lë$�@�60T+r#\0\rÌ���f�rҩ+���p��������\r7Ķzn�p���k��\\�-�u�l��\00[\0�p+���9J\\�������c{�6�Y�ZR����,¶���n�<^ɷ%D�b����rv���S�b�<<�\\�;Y;�oO��uh�|����L�\Z�G��=I�k{�\"0\"��=����e>v!�$���Q�ݿ�m�<�D�U�9=M�5/�j�ƿq�jwXg��y���f#;H�ׯQ�ka�R���[��^UU��>��N�������Z^���t���#8�F�1Uz�T�@#����Hʤ��}���ԝ+��<��ߴ����Ci>��ε��C��`0BHN�9\'��Z�#�X��$���S�)��g�|���O�Z��8t^��-/%�?/��Sh\0b����Bq�W��Q����1�9��M�~���-|Rn��Z�^I,-,n��e��y�*�g)d6Aa�<̧���Q+ͽ�����+I{��ix���|4�t�6��j�$�\\�k9�����2�A\\\"�y.I;N�+	�=��Yy���QJ	4|����F�夏�[ϧo�����)��e\02��2�9�$�*p����zo��R��ȣbƯ�\\�hv��Genږ�X�`LhI\r�����g�&�t�?qz��N�=���f���Ks4��!Õ�Wv��8c���]�MZ�+�i�{7��\0�_�8�!Mfx,4��Sk��&�`�`|��1���<�L�7嬻isjVm\\�i>���^���Rd\rh�\0� ���\0q�+͖mR-�-�wٯ�_y���{ox�F����������\"�7�2n�I;��re� 0Q��&��J���sϣE��cJ����]���P�G��	���p�Y�6��0�s��w�)�?/��[R�%�է��u�J�q��/�n\"�\0\rm�&�G�~�xc��)v�E��?z7;�N+/�*�I:����׺~DϙM�sδ�������ⰽ��wZt�X%\Z���\0���x`���K2t��o���9b��9[s�{�F�=������I���$	g��_r�l,T��\0EqV�)bi7��S���.�K��tI����w��c��E�i/�,$)ҵ�̗SIX���x!��#�+���J�>#�d��^ｎ�˖	�v�8�\\jzݒ���qy�$��[@�1����d]�9ܑ���kb�5k�*��J�Z��vdV�%�r\nֵ��2�zT�e��m¥�2G�e�o�H���[\'$�]�ԨC�y=~�r)�W��Q���+��\0�4�s�3�7VS%�Vi¬��4�#aH�:�%��S���\\��6����~��Zu\"�s�ҭH�kg�W�ڂ�ݴoo��D|�&2��E8U�j!!8U��	T�SQ�*w�i�o��R�iÙ3����:��u�ľ�(_P��y1�ǅ�h���9�u��	�\\�|��x�1���������Χ��z��1ʳ�i�k��g]�U��;H�\0�mۏ��\"�p�5���Z����hJ1I;jw����Mc���^��H����[[��h|��C�v�^Os��y���Z5��|�t�}�c�����\0���ރu�x6i�UPBt�X(�$�]��O	9�sҼ�qW	Y��/w�\Zji�{y�+������5�9%�i��G �.3���ñ9�+�>���;A��zD�]V��\ZƩ3�isȯ$�\r�I�E��~�\'=y�u��F����+;#пe\r���>&��&�.��i�c,����<�*І,Y7q�2;��1x�Qq�/�W��m�z8jn��vH�� ���������������-Ų^G8;�2窍�\Z��<L�����-6�tT�y�H񘮠���I��S[���EU���w;���v\02 �$gނ����kvyӊ�Q���E�j�r��ȱA\"yh���YAb���n���z������1p�~G�_t/xCJ��;����Clu}>٧!�8�����I�\0����	R�M����N��:����IVo,H�Q�Y0��]԰�=�n���u�bkK��ڂ���>Գ,m�lţI$o\n@�Sp����<j�����Φ��=�}��Jn�:��~&�v�\Z[g��C�K*\\*Fp����x� \n�(�u#����8�:�|�؝~$k�犟Uկt��q�E����\n�`�(\0���w\'#\r��0XlB�C��$�eczu���J��\0�����m|S�����2�0�H�l�r���H,˳\'*8��Ur(� ��տԨ�P�eV������l�����X�x����$�#�7AɌ���O��|�jX�Wxl<cN����U������h>=�O\Z^�k�� ��)�-/U�Z�]�f1�7d��8�^�S*x~LEK�u�y���q��	���-��^;�.�RI/�巑�.AݵV.C�ܬÌ|϶��ƌ5��2�9=�����m#U��\"��v�>ǖx�W�ȏ��W��F00Hϭ{����%J��4�3����fΣ_�ۣ�#����2���7���?�qy��I^ca�T�v�ֆ&��\nUi�OGu���V�����׹�ߴ��\0��Csa���iox�/n�0�H�\ny`O9���(W|я+}��ЅE��%��	$��-���Nɘd�Ǯ1�ⶥ�S���P�B��5�&���M�]A�*\\r�$������.zq�2G��<���ok�ZI�\\A�[��хYw\\���=;W��Ȱ����֝�,TyQ�5�\0ƝS�y����:Z+����g���ېv��\0�G8���rW��9\'���Z1�Ijb���x�|[%����M�u6�Y���dQ�<\r�z��%� ��/�\n�f%a*|+f�ߩ��ūC��3�?�5o�p�g�f�M6�ʀȒ�_>hpN��q��h�q���2�,:���.�9S��������ú奾���כ�O�r��+�)P��D?*w\'=�Zt]~EY+��g�C�XEGc������X�4�N]*��~�s4K1,$6c�HT<�I��\0��HF>�x�擜]���^�����8�cH�A�7W�$X�؇a�X��%A���UR�&�g�R#))^��|]⛋})�t�7,����ϒaڟ;n�\nI�zs�V���j���<��c���T��5e���䑚Y畁ڪ	�+��\0��S�\rJ6��MY�#���\"�*��~YȲ�A��Prws��5Ψ�j�*�37^�s⧇tjV�&������ɞ�� \nH_NN\08a��ƾ;	J���RW�1���¿hK}��{�\Z�|+�}�;�U�\nV�F;�T����0�\01_i���F4h}�m]��]u�a%dh|&�f��\ZW��[�\r+���Q�g�[cKD���a���8N���h�7��]5=�<ͼA�xc�O&�3�Ol���g 7f8�j!z��%��*��|�Ë�K�1���D��oE���ۚX�~i2��3�2�]�\n�=��KU�\0\0�h�U�,���/��OW��ﯤm<M\Z[�L뜟(��(#�n�}�f��U\\�VmkugrkR�wG��+�f���V�u7�����	uoxP��m �K��\n�N@���+c!8YI-[��58ۡw�O�/�?��Ï[��������-T�\'\0mV�X�$X��=~��_J7n\\�z/�F�=ާ�����[�o9���b�7ʋ�\n�%eM&��m�ʶ9[�k�J�,�|�1<sLe��aӥ`���*��=���QC��<�C��~���?o\Z6�\"ܭ���y�8�:�� �Wj1��\n�{�Sx����xn��Oܳ�}����:�\r��>��:@zg?�f9L�����jݎj�k޾�⟍��4�-;U���-)��c;8�E��d[�����g=�H�p\\�)rJ�)���b[J<�W�Y���lnn�	\"�4Ę��\r�聏��I�u8&�jjS���9�VU�to_���qx�B��K�R/���:��I�����\0t�8�9ʒI[�4�S�Q�S���P��xM��n���@,Ugr{�r}+��T���w9]ҳ=��^���\0�<�MƯ\r�׈.`e�e�V7����� ����1�훋Om-��Vߡ�	E&���F>\'C+�y�kz��ɨ�Y��?���?��F�S�[cpO���t��\rb��{�θ�獢�K\\���5�B4��$K�P]��ǌn?�ש�J�No���|E��/��Q����k8c[8���)\\����F������:����+�z%��,��VFw�4���귺�ݭ�[G$�t�fX_��>Wb��q����X_��)��u4�59r\\���#I��5Ŷ�m�\"T�9Dm+��o0�\0獪\0\0�4bj)4�ɐ����Gğ/��e����<���U��������;W�풋Ii��i\'fQ�h������c��C�.�[HS���汅j�~�ԪPkރ;�3��ݭ��\Z�Z��NKx�-�(R��8�I�#��\n�=�^�:�l�^����Z��,U���U����:_YxR}2��Gp.�8Q]��$s+ȥ���c��2��Z�%F�p���1��M�k��_5��;�k�M�#�a�e`]�7q���W��x���&ܥՙ8�h�\rb�z�s_C$(�qެaʜ�\0	.�R�AJ��,�x�:*DQ��]��qJ�4jx2�}/\\��)����1ȧ�EE�f}�_��/�G[��uq�(��͝��e|��Hr�G�|�##���qyf*�#�Щhvz�\0�U��v��C���~_��M����ť�[;���Ʊ��ʸ�=�0~��Ԡ�}z�B�)^I��������#�>_:Fڼx�����!n�����S�wQ�Z��J/�c�{r��c<7�ǽy-�u[Q�������5?��ԮD66�^H\n��e\ZF�ہ�1׷S�rj���MG`����͇�{��v�+{%t�g��VԖ\nL��\'9���8$WtTj����j\\)�OEc��&��~���z{�\"ԊO�F�]�\"��2�O>a�\\䎵�`�6ӵ�\03٦�(j|��~�Wwz���I���,���!��jX��s��zUo&�Y����c��,��̞ �,M��jR[�\0gK%ګ�@#l��`v��㟚��N���e����t:Q���c�)o���Č�	av�qiwl#+.B�/��c�����:!h��o}Y�˕���Ym����Z��H��0Ĭ6Ȭр�;�¨�S��^G\'�����n�}������Ŀ�5ݖ�m9��@�7�.Iݘ��$�x�&���K�6��N�Ԥ�KSơ�u}�/j%u94EKY$��X�GdbP\'\0|�$�y��J8�N	B<ϭ�S��_��h���)m��I\rћ{�2\0��F����S�f��k��~YGs��j�&��V�h�5ζM���[7��5�v��Ei�\0I*0�5\'�G�Q��N�;���c�Ĭ�[�2�iv~��>ڌW��%i;����wp���wn��}+:��=؝Ti)+����6�N�� �b��&K�ְ�]\r�i�D3l�s�qP�S��\rZ�4]�%iR�6\'V��+��+�o��_k��`a{���YT|�9�M{NVbx�E���Ako�S2N�WE)�Q�0�Y�}Q�+�޿���,��[G�����b�Ǵ���	�<��j�IK�:\'��y8�4�>�<چ��[;i�L��I%����A(΀�NARGLk��禍nx�玮WL�tm_L���o�$	�r��}x��~��$�W9���c��B�_�,�[�㶵�1�]����X��Aϡ\'t9��\0o���k��Dr�ݽOd��/j����^����%��G��e�_/cɰ1�2�9;�l�=+�)`�Z�kg���*\\�J,��\0|!�M?�_\n��R�5��W��`��E�ܱ����f\n�Ա q�ap�P滽�:�G�<����s���U𵦹,Ӗ(c����Uc^0���,	��V8�M[V�k]���K}K�+o>IHQ�}Q�7N�?굞��:��чP�|���s�$�J�7k/���ڌ�AN��8\Z��t�Nd�>�.T��V����t=sư�%��oJ��1%����p�9C${ě�PI,��|���R�/�k���\06\n0��\0x�hv\Z���|5Դ���:� ���o9�]Ӄ�٣RWvF�*9��yT���Ҍ�k��撵t�2�ya�\r;ÖskrO�\\ȭ ��<�BP�FSt��0w{�qVr����ӡ��)SSl����>\'��ԗF�1�j\n@��M�F� �S���[�$c=�<J�ҷ�/_�к:��d]��v��_i��P]�6Lm����y���?xs��b���o����ê������P�[M��Mc��,��{A�ӗ����k@$v\n�\Z?�:�d�!X���S�\"�ݢ޶����]���~Gx�\0Oh�k���	�t���1��X+G\r�.\\�u;\r*�[ZF����O�W=JJ��I��`t9��rJL聯C��G�h�I��s�Z˘�QC�BB�mU�\0)�=��X�w�#��f�FH�)��\' Wo��R8�.Y7ܻ��vZv���@3��w-Zқ�֧-Ux;�8��T����n!�n��N��c��v�G\\�e����+�x������~9�^��>\"\Zf�}���A/���H�4jI����׏NnR�k�pՏ4#n��i�M������,;x�̈���@BNS����=�\nO�g,j(��lx���օ�iEhV�yݲ0�z���9��1�x԰�x�b��������x��~*����&����][F��-�mb�(��W��pH�xt����Mr�C�\n��+�������;������j!-�6ֱe`DY�L,��p	=~\\Wmj�K�%��ԗ,RG��Ο�������2�Z�Vi,ڌ�n��C���� ��t\'\ZT�k͜j1��>İ��<	gco\\�J�F�\\�_1��ީ�+%�c�|C�V�ޘ5I���v:��\"�2��!��N\'(������#k.�����z��~%����%Ӵ�n\"���3F��O4>Y\ZLm\\�0\0\0t#��Vx|EJ����\0ÝtjsZ/~�(�|K�/�A�$����Qw�5Ŕmot�X4�fUe;� ��\0c,�B�Z~xVu�Y�X�k~:�����r�hڕ��7kk]���2�\n��@V�g���:���*�6��{�ؼ-�|1uw�����pj�$���W�� \'˴�vF3�n�\"�[,��`ե�N��z����c�_�1�~jsh��,�ߵ�\rB��,��>w\0�Y8$�<\0(MsJ^�[Y>�.ǝY�ͨh����i������H���qY1�p�׊�P���G�䦝Ϛ~&�w6�� V��N�G_�G�5�8��<���&�ѣ�\rV-0\"\0ZB�j��T`�n{>Ӑn��{y#[�;x�i<%��ͩ��G�i6������ּ���ٞ�:�����A�F%��\0�\0�Da)�΢��ៈ�O��3.�f�I�]�8�pOlw,N��3�b����wn�F?�2���k��\"�ºF�e��_in�����q��Vh��pv�r��=OgRz�w��5*FRm���e��_&��ͬE2����m9����cv���QU����V�Jԝ$��x��\'6�X�;v��b�J�:Ҫ�9��69%�=���¯\r?���x�L��95u��wQ���D�=]��$��\0������t#�����\0;��&�eO��k�֛����.�en�iko�CmkN��e�󵘌�淣���#^{[Kk�\0��	+��ʿI,�5k���Z���hE�Hc���v�*w�L��@���f���\nuU���쏦�G�	�e����֮!��\\1�E.�˹_P\0�g�I�[�ӥ�uAůt��nb��%�D�\'P��A ��W]�g�_��:�kK>�p�L\Zhf*>R�\"�\r�F��_��)B��׼�>}���G��/���oIm3S��S����{p�\\�Xո����5ԪO��KU�c��#���e�4�\0x>�=SG���\"�ʽ�o.$�Q�I��ƦuwA)C�%[��!����تN7od���W:�����z��{c�j���n��0C-���vL8!erp�!�:#�Pxz7����:���NCü[g��ĩ����\r��n\ny`�#F\r���|ބ���_#W0u���~࿻�އ������f�-����V���nۑ]q���Y�_C]�r�fyM���C�]j�)��+y��[Di����$)8J�\"�b��FP��f�<CŚS�x���Q����W�aj�\0��_V�b�ȴv��I���N�®����E5mmv\\�k�ib{kG�zʃ��@�9ϥm�k�;�3�ܦǅ�u �0Hʁ�Wx��=:\Z�?.bO.(�1\0bA�58x��{rݣ#�v�vs]K���M��I�[=89?�5�QJ;H�a8J\\�\'����n|�}��,G�#\"E8>��z��|��i*7v]N�R���\0	׌�9�����~�f�Xi����1���#\'p��=r	�K\Z�v�{l���R��b�H�?�8<_q�Oa�Bg�C\Zjmh�+*�;�S��6c,sYᚯ�۳���d���*ǒ�7�ա���I&�$�g�U-�R��)\'wm�q^>a���e�t��}�56�{:���X�{�ZL+g��\"��Y��L�5��%���s&T�3��)�*7W&�N��7|���.��ROj�jV��I\'mIY�v6��d@���\n����z4׳����(�s*��s���/<Ow}�}��F����!Z,���U]��m?�{��N��𹓛�r�����?�|-�f�.���:��������]��kH��X�\Z�\0�A���y���T�V���(�R��D��G����%����U@{;d��(9�&W�#��O\rw���k�1�̺S��K��Y�����e����0p\0�͜���iԕ(�����B	�.���}>�=6��=J�7����+�v�pV �R0v���?�F������*�J�l�sԼ5s��r�G�`��!�o\'���Y�m�cP�P���fm�I��kJw��^��J��i�Ӗ���j���v��h\"f�� 	o�M�\r�������Ѧ���ռ�*�u>-w�ǈ�5k��ڬG[��Pc���8}�;1Ub�(P6���N�\\x�<&��=����/u�p>!�<?�+�L�#� �V�b`�\'�g<q�l�m*�SnOa�g��x3g��J_C<Z����oc,�[��J]q�X�\0�+e����ҩ����(��v|��_Òxs▥��$2��g�[���9#i�0k��J�}�c��+��cZi13|��k�N�RL�>���\0��\Z~ѝ�[Q����Y�oZ��%��8�ǲ������d7�f��=/sb���9}#L�N��a�����lթ�;6e([D�_�FUТ��y���\ZlQ�N�@�����9�ڨ�c��xH���Z/�4�t=Z�KM1�F#��yr�ĈJHbځ�����Jt��|��RR��eO��ᤞ�D�A�K(��;�����2�FH��d�J�\07��pyq�}����m�9�4��އ�7�/�����6�=�P�̱n�������אI\0�Ȭ7�������b�\'���>:K�����e�,�U�>yXI�Wv,ĶF�:\0����s6�H锢��͍R��)om��h̪����9���8���A��EF*���Ӽd�=��\Z��\r��t�s���S4V�7���p���f�+��J\\׻�_�tF��[�?�[߆>y��n,�[{��!�\0x����# (�<��Ђ�(��$v-��Gu�鶖	k-��Đ	�x����u8ɪ�����[k��%���W�@a�3y���cʊ����o�~a_�O��<�wn��NJ1�[��v�^;�mn�^E��[D4��f�+<�����T�\r�1���,^&rvi���\0/�u�V�G]��kA��%���F�Qm.?��^LX!\0�Vl�R͜����������,�mx�}l�c\ZQ�T�������!��2��ݽ��!�L�e�|�wp\\�_1�M����*�79[��}t-��՟.�����\ZD|#7�t��n���;��������s�_A�E�j��ƪOX�3�t-,t�/W�0��j�2�[�O<�ӚQ�gK�Ak��\0��^^�i���W���A�Iwk�k��-ŕ���c#�o;ym�>Im��rz��~�4�K7���}��iZ��ֿ\n��ϊ���4�I%���h���N%�\"�\n��B��@���\"�%ғ�_���a�M�S{#�	�WqzW����f�E�kp,\r���kjp��Ʋ��c�!�X-u#�n����Ƶ����G�g���������-�S�����<\n�q�V��R\r��t{a��Wz���撕�U�#Լiiz�i�t�p���/�`�j��c�����<�l��YR����͝�������vd��[��!�	�L,01b�.һ�c��כG:���ug�:��1�=���q\\�Z�<����{�C[��4�o!���o*w�bo$�bADc�A��T�~��-⒅����3���^Ǆ�I��_|4��a���[I�+���Ub~X�$``��K�1�*8�tj{��MA�x?�Λ�_4z�Ԗ0/̒En�p�Q�g��^�HJ��I\ZJ�sWر�x���R���n�f}��y��Ջ�Pv�Tm�p{UU�/v�X��F駱�������H�3�i�jS���7�K<�\"4��6�,o\' ���_�A�ݘZI9@�/�����,��<��Ė�����-d��a\'#�������S�T��㭁�MZ�?�A<�ϯYy��d��n���A�Z�x�7{�z�[5�ڝ����$��������\\2Ax���f9����H���>SZ��Uݽs).Y|y���?���d�.&���/4v�89$�8�p9�V\"�J�U��-�D�j)����s�M*m{�����,���X��	�_�����5�df�K�G�Ǣ�p�*9F{%��NR��[_#����iW:����i[���lRD��RA��K+���p�p��:���&�M�ɼ���g�\"�B�ln.u\r5���y�^]\\3D6vl.<΀����{WMOh�%o-�	�ݵw�wc�6�����&�CI$6��aUfT�\0z�z֔�\n4�3��s��\Z��9#��ͭ�Èt�?\r�c\r�wwz��n�/�x`>w�UI�wc���O{B���GMԜ9��O���t�ݶ��\\��%�\\���ʂd�F�ǆR�a��F	�å\n�s�o���)P�\'�>TF*�9�{�W�%s��Z�$���s��]�ߩ1���KN�{���P���8&����R��H��a�O�YZ�Y@����⥙U���c�kM�Ƥ��#�ƹj;��\r������=/\'��C�n���Y�$t�ǟ��@�>r0H�����\n��)=�y�?�Nm����A�ox?W���Ժ֑�\\3�q:���nH��]�۸���:�a��R�i5˿����49���Dp��&\ZG���_Y�KtVs=��$X���+�X8{�s�_���I��_ ��(�C�5_x/R���=�ݵ����d-�I&Q�i�Fw7r\0�H�<c�V��)�ٟ.x�GѾ$j����kfѤ�$��_s#)oA�:�k_��«����Zir�^�;��\n�����ҵ��3���� ʌAMÎ�s�l�1�T�UV�֝{�͡���x��Z��O{�I4-$P��q�~ z\n�)M\'sGg#�>\ZxZ������T��	p�aEu���q��@HbğZ�kbh�}�nb�\ZR�V�����w$�u����O�Yg��H�yfo�I�<k������~���<���5�4�N������<�~�+�:6���n���w�o5*Q��\"��4乣�=^)l��~�F�g�]��g��wHw���@c���|��\0{����)�)~��5\Z��������`�e�n���g��cl�����m%� �^�4�e͡RS����ٳ��<H-�/%���l���wr8�1�^s^eF�^[so�0S�+C~���]����H�[�3+nQ�0F\rMx�Ե7k�.iݞ��?��{k��o\ri:4�)o�QM��m>PGl\r���gor)�#WEBpI��zԤڼL�v���V\Z��\r�� ���\\���m�!PA/�\0�A�j��T�__�r�m��<o���b/�5xD�3�N���c��A9ۏ@2�V�\ZU-Vi\\�9Nq�w��g�\Z A��\Z��A4}b���j�PD$�̙�(������Ks}<F	�!�)-7F�r�,��!���g�&;z�sN.�\Zs��o��έ�7�	�谉�H����a���z�\0�&���\Zr�#v�v9�V�8�3��/�/��1�4���k	5f����$�H�#�2\09<\n�\\�V��6�����n�\0q�jW�=�:�\0�B��y�ރdb�|�m����\Z�7����1��\'#5�O<���tԽ�}��8{ʖ���>\r�Ʃ6�s���i�͆��KJѷw\nrq�9�^,�����N�p�+��\0�t*q���|i�ĺ-���gH�,�m&����E��I��N��l̬~�X����\n4#7�[���a&����������&�g�|E��ot�gr.,|���b��s�@G	� a��|�¬q�xz+����|�:�FTm&`���V�����h�~��2�o��,��u̬���n�@��\0���W�SgU���mo��\"	�ݎ�N_���]+P���e��A$����$!l��\0�I�\'R�Թ=��i9&������_F��_�q3D����\n�BAĥ��	\0���u�^�I���+)J�ٟJ���P�[������V5Y�c.^@>f?)�rk��}y͸ЃW�Tz�0KZ�����=Ϋ�Oɹ��m��j�.���T|�7m����3���x�5!.E��S�97�:�w�^��(��B{t�`�/��MX.���G!R��\0��q�`q�\\ܔ�N���X�Ў�nŏ�_��E�N�\r�������+��Q�<lJH.�׎�~OJ?{Q�����*��\\��E>�mes�� $��_�_���*/ٹ%v�nw��I.��\r�S��Z�I�M͘�!�	*Lc,̠�3�k�Jr�V���la*дZ��l��7��>�r���E\rˣ���s)#\r�^��85x�S���Q$�����Ԋ�z\"������Co.�u%��j�+G�\\�rÁ����;�:a���s\'t��)B�G��ڷ������#���H�0N�(>�J�!I�������ɷ�[�a�ku7}�q�� c�^�}k�WV�������t�Q�F$*���)��u��k�\Z����[��\',G�k)T�V�ѡ9|L��׉�>���h�Ye��	���[���Ae���	�C�J�qu�S��~�y͘ES��t���}o�Y��?�z�Z\\%��s_Gl���lʹ��>�\r��`x�����ӊv~�,|�2zsj]���}w�z$�\Z��S�t��m�t��)\'C���f�\'�f\\��?=jxڒ�\r�͔�������w��?F𕝆������E{t�đ�Uv��[r����⾟	����^h��w��R���;��.��g[�>����.��P�i�s�U(Ac�=ARK\0\rx����%e��z���ѝ꯲Z#��S��� ���_VѠY�v\n��fR���2���mѣJ��^�����,[�������2\r#��3�خ��؛Kw���w2���Ug�89!z¦�dʤ��II;;n��gu��-�[�,>��Ԭ���i4�-\"	�P�o��#�P���3��27�P�g��/KF���O��#IB:����>)���\'�� 3�\0mM\Z��&,]C2�����	<�p:wQ�S�T�T��Ֆ�O��������C�^�Z>�m�	\Z&�k(9S�F�W���,�̯i#�;-I|si�����������ċ\"�����p�*r1��q�5���:pP�*i��-<am}i{�+Z���2\"��7�v�#b�33�l�&�eO��Iu�ٓ��9o�cE����\0H�B�Z�=��so�Ot#w��+D�ΡՀ8^�rA�z����(AT�(5w�歴�.,ll0йE?\\pq�������9}�OS����K{k;�\"{H�ݙ�C�>��L��k��_YMUP��c- �+�I��{�Y��6�s�=��q�*\"���F�:�kގKNrR���QFr_�g��#���>{�%X$�Lq����8�s_C\nP�y`�k���<�h�:�G2=�f��Տ&��A���:m>�A�I��I�qZ��q�j.Z]���v�\r��\'�Y9�v� �0��}*/r�u����9a�\\�\"�h����u�FO`p=Ϸ�l-����811U#khzo���ĚLW�0G��N)!�K�1�\r��)��1� \Z��e�z���~G��R��x����Ǫ���K��jK�ƹFL�v���*pɎ8��S�op�3>x�rǭݟ�2t��և�x��VU�u]OQҵ��K`�%��H�2G$\0W��2�gQJ��gN�\n�/��\ZV�nG������妿oq�&��H�P�n�>D�r����6���d�ak�d�r�z:^���OF3���ǿ�_P�m��}.�6��cC���il�,J�i�J2�-�M֋�[�Ы�\'(�zǳ��s�ӭ4)�I\'ӥ�kǞY�O6=��$8�rq�s��^�LD��Mr�-�l�5ࠡ���h]�K�L�[�/u{v������T\r�G�@�Lc\0�\n|�z+�V�{�+I.]�b�$�Q��v��{�E�o�_�(�|�#�`M��2@��p2{��m�����sR������M?@ԭa��[ki�exC���ǒz���R�]�N�j}S�-���A���t�{�KIs+_(.v��V3&D�A,⤎>jP�I����9UGɪ</R���}���H�vse�N$,��=q]0jvWL����봻Kk\rF���$@�$ʪa���$|�laJ��A�8�|%LL��f�)�˝h�Aw�-*����{�W-��rO=\0�\\��\\�_��g>vߡ��Ż������eٗ�A��^\0��1^�`����U��)�����J��U���?ҝ�6�e4�!TO5K?�K+�OD	�x.�G,�+��k)ӍX٣Zu%I�%s�v�f�w�\r�m�*x_�����դ����c�-��+���:xy�Fz1�+�LeP��:��8�k�TjoceR/K�֚ʘ��*�c�.K����$v�oF�߽�s:�c����׺���Ǘ	m�\0g-���?1���0�G�Ss������z��5P,��bR�\\:�>dt��\0�k�G�͋�Og�6�h�cs\npVA�g�}1W���Vp�ֽc�+���YB�/��~��@�*tx�\0�<�\0����^��_u��*i蝏0��mL�,�t�F����ص\r1<���\0=P�A��H漪�uJR�WG�,3���a�G�^(�{�y��X��2�+�4�n!`�Te�t�ǌ��םha����8E(�Hg��Ƽ�-���쥒�S|:<�J�	|�`9�#�p;Tn}�FQ�V�M�I�����ٽ\0dGn�4D�u,Cq��qԚ撅J������>n..Pg�|4񦿧�yl���Ռ6ֲ1!]YJx����ׯ�Ia�9s��{+��;ۡП\Z�d��0�����_b|���J�2�o���b��s�<?�x>�K���<0x~��[h�e��G���>Xໃ���)*IQ�p��,�Nm�{��x���IԮu�aox�A%���,�cۆۂA9����Jr�,W/�kAJ��<jq%��G?v1��Z�*T�MZ(�쒲/��%��H$��WR@$�#��C�2�A��J��s|���������34�<�@�zP�4��\r���\'�v�ى\'u��N�6^��P���@��Ϸ4�S�jMlɭ�O�?ʧ�+dW���o�z�𴥊\"|���$+�����k�;`8�v�{7A����xJ��Wv�ن�r�#��~�д+����,Rv&��H��ߏJ�z�\0��)$��Ķ���^6�P��G�{��I�pK�&��k�N�L�t��	a`H�������.�j�]&��+G��Ԣ�N���E�S��H��_1H!�p{|W+K�՟s9E3��~\0��}��#��um����hb^0�e@���J�`���R�~�Q��QBN�qoC��W����M���<K����&����\0��ʮ�OVܩ^�=j.M�%cΩZ4�v�ŏ�&�an�,-��2L�6�X\0�9&��F�����L)K�W��4��_\rO:��/�c�ǯ\r�}�~�}[�N�?\"\")�i�!�����ԢG�]l�Bb}˔\'��� �s�;�V�9�鿻C�­��3�#����Ms�W�����$�s�W�s������p�s�1䏙�b��Ʋ\0��$}+ҊOv� ��v\0�J���[�o���Zu�}�P1����\ZZ��[H�e��۟R:�lZ�J�U�K�X���}�%��Enc�`�@D�o>�f�ܑF2��L	U˹_�s���\ZZ0�\0Q���O��3���\"��Y���X$,a����ԣ�ҏ�V�F2ya�Ӱ�R [�YY�y,`��8|��w�I���˸[e���HN	���8��D���z��O�~����N0*�&#�<S�K�?�4��R��Ot᷀r��\0�8��J������tK[��ɷ���v�Z�V���R�dޥUAh�a��	�}��ܢ�%�&�5yF����B\r~�4�mb�X�<�9tH�&T�+�Y�n�����x�nV��)Ђw�{ޗ�6|E�̴ǅodJaƣ\r�~�u}BoWE��l�p?4/�_Ai�b[jr�Y��B�|�˵�P��k��5icR���GuUR�wG����`��+袌K����_�\'��+WR.�*��&����i�CN�����7��!���G?q�i�7qCu#�<�Z�WN��+\\��A\\ռ�Ϧ�C5��g)h>F-��q�3�^�p<�k�c��yRv�����\r�<o�5��I�8�7*�g�\'�\Z�����z�)b]et��~x|A�[���	�r\0�#�W2�soh���D���Y���qޓ�b�\'drc���\Z$���H��S�t�S����p�����Q�˫r���Cy\n.T���y����\0�uR�ڋ�N�[���ޗ�&�\0P[ˀ�љe�C�˜d�]tp�%Ԋ��J.R[?�-?|~dR�N��G���%��&yQΨ?�4ki>6���{�,�FRGȮI�x�o�p�0�6���[��eu�����,�X}��b>���A���sԋRWLĞ����p,���`W��+sGD�eޭ`>��z������=�/>�����n\\BN~�O_��.�	���>8�cQ�WŽV����./,�|�\nF�@;�n��x��W�qө�\"s�����kg}�����\Zj�3\\�<z��P2J�GK�0(u|6C\0q��^7\n3q��孻��,���NR���cK�n���z���W�;^���FNN{w�8ʳJR�ߛ2i]�G;�o�2���A`a�S�A�,?ҿSJ�Y��p���\0l?J�c������1+�}��LT���%��}�����C/]��R7.zu,i�Z�s�\0th�;8�\"2Я� @\\�x#\'�8�ayg�k�|�<���u�w���}:O��7�\n���y9bq�UQ��\':��c3����UL�N�rʢ���-��0\'<�s��\0�k�M�ƥ�,-T��s�~��A��]�[� ��@8�\0�U�b��Eٴ/�> ?�4�{x�R���s�Ev�\0<W��xi�q��h�1��XH�Z휟�>\"O�mV;hÙ|�Nq���׉G,q��{�K2�!��6g��\"�3=��^Ryc�ϵ}�\n�H-��*����Cⵗ�Z=�;D�N���x�����eQn�5�c�̤�&�>i��n�Q|�C���\"0G9����ݴ����I�������Ѝ�L�j������j�ы�.�ڌ�ZJ�U�>������P�J�R0�����O��֬�I����t����ck����*��v��!K)?U���X�5��\n�C$����\'�\r+��+x�T:t�_��*LC��י�ߴ�ڭ|�vT�wg\"c���^qG�*�jd���g/��k{okQ[[���=�-Й��I�6\0\0$,�Ű88�����Eb\\��;��S�rZ�\Z��J�c�D�Z��p����3j�VSˌ�pI��ǃ՘�4..&��X1$d{�_�j���q��KgT��5F|Oh�]�kM *@w_\r�~�ϯ��%�`�i�pX�v�{`}�=0]�_xj�U��M��U��7&\'V����}EtP��=v1�h��h��<7L�PL�rq�5���>YI.�w(�O��?<D��l�gc��Wz��Ҭ?-_F�\Z��o���yѩGn��~�|v)e�:�.2$M�kz��|��6��_[ǩ�v��/m=����d�p�c;Hz7|t5�:jOTvF�*�*�g�|\Z�a�V��_Oh�n!T\n[�ۨ�緥b���z��4���O����k�|�R���r�`%q���?�w+4xU)N��d|���#�^+�A1�Y��ٻ��Hr?�[�,׹���t���=��=W�[����h�S�1H��d�8���W���FI)hϞ�a��Q�t��ܴ���-���,�u�g��\ZJ�z����,<�U�kDz양X]Iko7ڣ�lTʪ	ێ�9ھ�>�����mVyB﷓�� ���B�AM6�ܣ��Ŭٕa��q�	��C��m���ZG�!cޣ�����\"[.��+M���\Z��o$�J	ڃ(q��\r\\��S�v�c��N\r3���}}\\�iL�ƨ��I�&�*:`���8�Ѓ_Q��|��<�Tj<�f�����hz}�U\0��2q����5���\0������n!8�B[��c���.?���������R�dO���\nlE��^�s3��4��;;�\r�{�$�^M�x��m�\0�s|��Q_o�o�D�lO�dZ��`]�fYs��\Z驢���GYY�>��|�����HF������,�Ob���\rAD:5Ȍ\rf��O��{��O��O2��������{4���/��o\r�\0�I�\0�e��_�|r����ē��{�/�_�>[�?��Ӊ۶~a;\0{����ɷ�ϧ�D�k>QNCg#�̵�y��ͼ���?�~f���t�~Q�/J��躜f��=�y�[��\0}�����{㓑�5,d���0g�I��Hq>��C3~���$���`��h����63�竱�>�3�]�������g󯓜T����5���>��|#�>�d͢�Ō(I6����ڥS��k#��','2016-11-07 14:09:39','2016-11-09 10:01:17'),(2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-07 14:13:41','2016-11-07 14:13:41'),(3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-09 14:47:33','2016-11-09 14:47:33'),(4,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-11 13:48:00','2016-11-11 13:48:00');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_activation_code_index` (`activation_code`),
  KEY `users_reset_password_code_index` (`reset_password_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`email`,`password`,`permissions`,`activated`,`banned`,`activation_code`,`activated_at`,`last_login`,`persist_code`,`reset_password_code`,`protected`,`created_at`,`updated_at`) values (1,'admin@admin.com','$2y$10$cUX9XqwMVOiLu1bYG1i6r.yLQcm2imTS4Rk5MYVr0EAvrCFFFPd9y','',1,0,NULL,NULL,'2016-11-28 17:14:16','$2y$10$thhR/d6.952Ak6hn7d.sOuK/5EhI6PDF30OGIZMtuuRGjTaMp6ODC',NULL,0,'2016-11-07 14:09:39','2016-11-28 17:14:16'),(2,'anwar@gmail.com','$2y$10$1rAvLLh1lsZZLWeHP7jERuGmImtZAo.khs.7Mssepx6ARJzZgys1i','{\"_profile-editor\":1}',1,0,NULL,NULL,'2016-11-11 13:38:50','$2y$10$QAKizUkVehXCJVsV3OpcU.MsOvEjeNKZOY5QTR0cIAV2kKkGmZvaq',NULL,0,'2016-11-07 14:13:41','2016-11-11 13:38:50'),(3,'user@gmail.com','$2y$10$AWt8auh7RooR44l5EFTryOSg0M0VOJWQmV/xOTUHE0oxlEGVMy3ze',NULL,1,0,NULL,NULL,'2016-11-09 14:47:59','$2y$10$T.bOvecobussiCZHRuZa0efz5hYet3uGrqCGD5kxZUCBOBsMJkJve',NULL,0,'2016-11-09 14:47:33','2016-11-09 14:47:59'),(4,'firmware@gmail.com','$2y$10$q/jkmud8FKeMP1VxzPgWKuf1umb6wSRV7mBeveJDrW91d4q1eAyam',NULL,1,0,NULL,NULL,'2016-11-11 13:51:47','$2y$10$qZGAaquhZvm8ucpZClI2quaW7GI5BF.KHKcs4kxkYB3thlodG6iMi',NULL,0,'2016-11-11 13:48:00','2016-11-11 13:51:47');

/*Table structure for table `users_groups` */

DROP TABLE IF EXISTS `users_groups`;

CREATE TABLE `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users_groups` */

insert  into `users_groups`(`user_id`,`group_id`) values (1,1),(2,9),(3,9),(4,9);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
