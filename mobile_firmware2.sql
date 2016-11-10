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

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `countries_country_code_unique` (`country_code`),
  UNIQUE KEY `countries_country_name_unique` (`country_name`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `countries` */

insert  into `countries`(`id`,`country_code`,`country_name`) values (1,'AF','Afghanistan'),(2,'AL','Albania'),(3,'DZ','Algeria'),(4,'DS','American Samoa'),(5,'AD','Andorra'),(6,'AO','Angola'),(7,'AI','Anguilla'),(8,'AQ','Antarctica'),(9,'AG','Antigua and Barbuda'),(10,'AR','Argentina'),(11,'AM','Armenia'),(12,'AW','Aruba'),(13,'AU','Australia'),(14,'AT','Austria'),(15,'AZ','Azerbaijan'),(16,'BS','Bahamas'),(17,'BH','Bahrain'),(18,'BD','Bangladesh'),(19,'BB','Barbados'),(20,'BY','Belarus'),(21,'BE','Belgium'),(22,'BZ','Belize'),(23,'BJ','Benin'),(24,'BM','Bermuda'),(25,'BT','Bhutan'),(26,'BO','Bolivia'),(27,'BA','Bosnia and Herzegovina'),(28,'BW','Botswana'),(29,'BV','Bouvet Island'),(30,'BR','Brazil'),(31,'IO','British Indian Ocean Territory'),(32,'BN','Brunei Darussalam'),(33,'BG','Bulgaria'),(34,'BF','Burkina Faso'),(35,'BI','Burundi'),(36,'KH','Cambodia'),(37,'CM','Cameroon'),(38,'CA','Canada'),(39,'CV','Cape Verde'),(40,'KY','Cayman Islands'),(41,'CF','Central African Republic'),(42,'TD','Chad'),(43,'CL','Chile'),(44,'CN','China'),(45,'CX','Christmas Island'),(46,'CC','Cocos (Keeling) Islands'),(47,'CO','Colombia'),(48,'KM','Comoros'),(49,'CG','Congo'),(50,'CK','Cook Islands'),(51,'CR','Costa Rica'),(52,'HR','Croatia (Hrvatska)'),(53,'CU','Cuba'),(54,'CY','Cyprus'),(55,'CZ','Czech Republic'),(56,'DK','Denmark'),(57,'DJ','Djibouti'),(58,'DM','Dominica'),(59,'DO','Dominican Republic'),(60,'TP','East Timor'),(61,'EC','Ecuador'),(62,'EG','Egypt'),(63,'SV','El Salvador'),(64,'GQ','Equatorial Guinea'),(65,'ER','Eritrea'),(66,'EE','Estonia'),(67,'ET','Ethiopia'),(68,'FK','Falkland Islands (Malvinas)'),(69,'FO','Faroe Islands'),(70,'FJ','Fiji'),(71,'FI','Finland'),(72,'FR','France'),(73,'FX','France, Metropolitan'),(74,'GF','French Guiana'),(75,'PF','French Polynesia'),(76,'TF','French Southern Territories'),(77,'GA','Gabon'),(78,'GM','Gambia'),(79,'GE','Georgia'),(80,'DE','Germany'),(81,'GH','Ghana'),(82,'GI','Gibraltar'),(83,'GK','Guernsey'),(84,'GR','Greece'),(85,'GL','Greenland'),(86,'GD','Grenada'),(87,'GP','Guadeloupe'),(88,'GU','Guam'),(89,'GT','Guatemala'),(90,'GN','Guinea'),(91,'GW','Guinea-Bissau'),(92,'GY','Guyana'),(93,'HT','Haiti'),(94,'HM','Heard and Mc Donald Islands'),(95,'HN','Honduras'),(96,'HK','Hong Kong'),(97,'HU','Hungary'),(98,'IS','Iceland'),(99,'IN','India'),(100,'IM','Isle of Man'),(101,'ID','Indonesia'),(102,'IR','Iran (Islamic Republic of)'),(103,'IQ','Iraq'),(104,'IE','Ireland'),(105,'IL','Israel'),(106,'IT','Italy'),(107,'CI','Ivory Coast'),(108,'JE','Jersey'),(109,'JM','Jamaica'),(110,'JP','Japan'),(111,'JO','Jordan'),(112,'KZ','Kazakhstan'),(113,'KE','Kenya'),(114,'KI','Kiribati'),(115,'KP','Korea, Democratic People\'s Republic of'),(116,'KR','Korea, Republic of'),(117,'XK','Kosovo'),(118,'KW','Kuwait'),(119,'KG','Kyrgyzstan'),(120,'LA','Lao People\'s Democratic Republic'),(121,'LV','Latvia'),(122,'LB','Lebanon'),(123,'LS','Lesotho'),(124,'LR','Liberia'),(125,'LY','Libyan Arab Jamahiriya'),(126,'LI','Liechtenstein'),(127,'LT','Lithuania'),(128,'LU','Luxembourg'),(129,'MO','Macau'),(130,'MK','Macedonia'),(131,'MG','Madagascar'),(132,'MW','Malawi'),(133,'MY','Malaysia'),(134,'MV','Maldives'),(135,'ML','Mali'),(136,'MT','Malta'),(137,'MH','Marshall Islands'),(138,'MQ','Martinique'),(139,'MR','Mauritania'),(140,'MU','Mauritius'),(141,'TY','Mayotte'),(142,'MX','Mexico'),(143,'FM','Micronesia, Federated States of'),(144,'MD','Moldova, Republic of'),(145,'MC','Monaco'),(146,'MN','Mongolia'),(147,'ME','Montenegro'),(148,'MS','Montserrat'),(149,'MA','Morocco'),(150,'MZ','Mozambique'),(151,'MM','Myanmar'),(152,'NA','Namibia'),(153,'NR','Nauru'),(154,'NP','Nepal'),(155,'NL','Netherlands'),(156,'AN','Netherlands Antilles'),(157,'NC','New Caledonia'),(158,'NZ','New Zealand'),(159,'NI','Nicaragua'),(160,'NE','Niger'),(161,'NG','Nigeria'),(162,'NU','Niue'),(163,'NF','Norfolk Island'),(164,'MP','Northern Mariana Islands'),(165,'NO','Norway'),(166,'OM','Oman'),(167,'PK','Pakistan'),(168,'PW','Palau'),(169,'PS','Palestine'),(170,'PA','Panama'),(171,'PG','Papua New Guinea'),(172,'PY','Paraguay'),(173,'PE','Peru'),(174,'PH','Philippines'),(175,'PN','Pitcairn'),(176,'PL','Poland'),(177,'PT','Portugal'),(178,'PR','Puerto Rico'),(179,'QA','Qatar'),(180,'RE','Reunion'),(181,'RO','Romania'),(182,'RU','Russian Federation'),(183,'RW','Rwanda'),(184,'KN','Saint Kitts and Nevis'),(185,'LC','Saint Lucia'),(186,'VC','Saint Vincent and the Grenadines'),(187,'WS','Samoa'),(188,'SM','San Marino'),(189,'ST','Sao Tome and Principe'),(190,'SA','Saudi Arabia'),(191,'SN','Senegal'),(192,'RS','Serbia'),(193,'SC','Seychelles'),(194,'SL','Sierra Leone'),(195,'SG','Singapore'),(196,'SK','Slovakia'),(197,'SI','Slovenia'),(198,'SB','Solomon Islands'),(199,'SO','Somalia'),(200,'ZA','South Africa'),(201,'GS','South Georgia South Sandwich Islands'),(202,'ES','Spain'),(203,'LK','Sri Lanka'),(204,'SH','St. Helena'),(205,'PM','St. Pierre and Miquelon'),(206,'SD','Sudan'),(207,'SR','Suriname'),(208,'SJ','Svalbard and Jan Mayen Islands'),(209,'SZ','Swaziland'),(210,'SE','Sweden'),(211,'CH','Switzerland'),(212,'SY','Syrian Arab Republic'),(213,'TW','Taiwan'),(214,'TJ','Tajikistan'),(215,'TZ','Tanzania, United Republic of'),(216,'TH','Thailand'),(217,'TG','Togo'),(218,'TK','Tokelau'),(219,'TO','Tonga'),(220,'TT','Trinidad and Tobago'),(221,'TN','Tunisia'),(222,'TR','Turkey'),(223,'TM','Turkmenistan'),(224,'TC','Turks and Caicos Islands'),(225,'TV','Tuvalu'),(226,'UG','Uganda'),(227,'UA','Ukraine'),(228,'AE','United Arab Emirates'),(229,'GB','United Kingdom'),(230,'US','United States'),(231,'UM','United States minor outlying islands'),(232,'UY','Uruguay'),(233,'UZ','Uzbekistan'),(234,'VU','Vanuatu'),(235,'VA','Vatican City State'),(236,'VE','Venezuela'),(237,'VN','Vietnam'),(238,'VG','Virgin Islands (British)'),(239,'VI','Virgin Islands (U.S.)'),(240,'WF','Wallis and Futuna Islands'),(241,'EH','Western Sahara'),(242,'YE','Yemen'),(243,'ZR','Zaire'),(244,'ZM','Zambia'),(245,'ZW','Zimbabwe');

/*Table structure for table `devices` */

DROP TABLE IF EXISTS `devices`;

CREATE TABLE `devices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'images/default_mobile.png',
  `type` enum('ANDROID','SYMBIAN','JAR','OTHER') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ANDROID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `devices` */

insert  into `devices`(`id`,`name`,`image`,`type`,`created_at`,`updated_at`) values (1,'Nokia','images/default_mobile.png','ANDROID',NULL,NULL),(2,'SAMSUNG','images/default_mobile.png','SYMBIAN',NULL,NULL);

/*Table structure for table `fcategories` */

DROP TABLE IF EXISTS `fcategories`;

CREATE TABLE `fcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `fcategories` */

insert  into `fcategories`(`id`,`title`,`created_at`,`updated_at`) values (1,'Android Firmware',NULL,NULL),(2,'Normal Firmware',NULL,NULL),(3,'Driver',NULL,NULL),(4,'Tools',NULL,NULL);

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
  `country_id` int(10) unsigned DEFAULT NULL,
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
  CONSTRAINT `firmwares_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `firmwares_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `devices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `firmwares_fcategory_id_foreign` FOREIGN KEY (`fcategory_id`) REFERENCES `fcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `firmwares_tutorial_id_foreign` FOREIGN KEY (`tutorial_id`) REFERENCES `tutorials` (`id`),
  CONSTRAINT `firmwares_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `firmwares` */

insert  into `firmwares`(`id`,`fcategory_id`,`st_instruct`,`device_id`,`device_model`,`device_version`,`tutorial_id`,`country_id`,`d_links`,`d_sizes`,`noted`,`status`,`featured`,`user_id`,`created_at`,`updated_at`) values (2,1,'<p>dd</p>',1,'52','2131',NULL,2,'sdfdsf','545','dsfdsf','PUBLISHED',1,1,'2016-11-10 23:32:34','2016-11-10 23:32:34'),(3,1,'<p>dd</p>',1,'52','2131',NULL,2,'sdfdsf','545','dsfdsf','PUBLISHED',1,1,'2016-11-10 23:33:16','2016-11-10 23:33:16'),(4,1,'<p>dd</p>',1,'52','2131',NULL,2,'sdfdsf','545','dsfdsf','PUBLISHED',1,1,'2016-11-10 23:34:58','2016-11-10 23:34:58'),(5,1,'<p>dd</p>',1,'52','2131',NULL,2,'sdfdsf','545','dsfdsf','PUBLISHED',1,1,'2016-11-10 23:35:36','2016-11-10 23:35:36');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `groups` */

insert  into `groups`(`id`,`name`,`permissions`,`protected`,`created_at`,`updated_at`) values (1,'superadmin','{\"_superadmin\":1}',0,'2016-11-07 14:09:39','2016-11-09 14:31:53'),(2,'admin','{\"_superadmin\":1}',0,'2016-11-07 14:09:39','2016-11-09 14:32:23'),(3,'editor','{\"_tool-editor\":1,\"_driver-editor\":1,\"_firmware-editor\":1,\"_tutorial-editor\":1,\"_profile-editor\":1}',0,'2016-11-07 14:09:39','2016-11-09 14:46:56'),(4,'manager',NULL,0,'2016-11-09 14:20:09','2016-11-09 14:22:03'),(5,'diamon',NULL,0,'2016-11-09 14:24:51','2016-11-09 14:24:51'),(6,'golden',NULL,0,'2016-11-09 14:25:00','2016-11-09 14:26:45'),(7,'sliver',NULL,0,'2016-11-09 14:25:27','2016-11-09 14:26:52'),(8,'beginner',NULL,0,'2016-11-09 14:25:47','2016-11-09 14:25:47'),(9,'register',NULL,0,'2016-11-09 14:26:03','2016-11-09 14:26:03'),(10,'banned',NULL,0,'2016-11-09 14:26:14','2016-11-09 14:26:14');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2012_12_06_225988_migration_cartalyst_sentry_install_throttle',1),(2,'2014_02_19_095545_create_users_table',1),(3,'2014_02_19_095623_create_user_groups_table',1),(4,'2014_02_19_095637_create_groups_table',1),(5,'2014_02_19_160516_create_permission_table',1),(6,'2014_02_26_165011_create_user_profile_table',1),(7,'2014_05_06_122145_create_profile_field_types',1),(8,'2014_05_06_122155_create_profile_field',1),(9,'2014_10_12_100000_create_password_resets_table',1),(10,'2015_08_04_130507_create_article_tag_table',2),(11,'2015_08_04_130520_create_articles_table',2),(12,'2015_08_04_130551_create_categories_table',2),(13,'2015_08_04_131626_create_tags_table',2),(14,'2016_05_25_121918_create_pages_table',2),(15,'2016_07_24_060017_add_slug_to_categories_table',2),(16,'2016_07_24_060101_add_slug_to_tags_table',2),(17,'2016_11_09_194700_create_devices_table',3),(18,'2016_11_09_194710_create_tutorials_table',3),(19,'2016_11_09_194720_create_countries_table',3),(20,'2016_11_09_194725_create_fcategories_table',3),(21,'2016_11_09_194730_create_firmwares_table',3);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permission` */

insert  into `permission`(`id`,`description`,`permission`,`protected`,`created_at`,`updated_at`) values (1,'superadmin','_superadmin',0,'2016-11-07 14:09:39','2016-11-07 14:09:39'),(2,'user editor','_user-editor',0,'2016-11-07 14:09:39','2016-11-07 14:09:39'),(3,'group editor','_group-editor',0,'2016-11-07 14:09:39','2016-11-07 14:09:39'),(4,'permission editor','_permission-editor',0,'2016-11-07 14:09:39','2016-11-07 14:09:39'),(5,'profile type editor','_profile-editor',0,'2016-11-07 14:09:39','2016-11-07 14:09:39'),(6,'tutorials editor','_tutorial-editor',0,'2016-11-07 14:10:12','2016-11-07 14:10:12'),(7,'firmware editor','_firmware-editor',0,'2016-11-07 14:10:12','2016-11-07 14:10:12'),(8,'driver editor','_driver-editor',0,'2016-11-07 14:10:12','2016-11-07 14:10:12'),(9,'tool editor','_tool-editor',0,'2016-11-09 14:36:05','2016-11-09 14:36:05');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `throttle` */

insert  into `throttle`(`id`,`user_id`,`ip_address`,`attempts`,`suspended`,`banned`,`last_attempt_at`,`suspended_at`,`banned_at`) values (1,1,'127.0.0.1',0,0,0,NULL,NULL,NULL),(2,2,'127.0.0.1',0,0,0,NULL,NULL,NULL),(3,3,'127.0.0.1',0,0,0,NULL,NULL,NULL),(4,1,'192.168.10.1',0,0,0,NULL,NULL,NULL);

/*Table structure for table `tutorials` */

DROP TABLE IF EXISTS `tutorials`;

CREATE TABLE `tutorials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `st_instruct` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requirements` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `noted` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tutorials` */

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user_profile` */

insert  into `user_profile`(`id`,`user_id`,`code`,`vat`,`first_name`,`last_name`,`phone`,`state`,`city`,`country`,`zip`,`address`,`avatar`,`created_at`,`updated_at`) values (1,1,'',NULL,'Anwar','','','','','','','','ÿØÿà\0JFIF\0\0`\0`\0\0ÿş\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 90\nÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0\0ª\0ª\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RğbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0Õñ>³ãÏÒÚkÛ¾»¼kA¤]h÷)¼¶ûœ\rÉ3;åÊñ¬Ãh¿>©SûB>Ù+¥Ùê¾BŒaZ.IIe¦Ëàû1q%†¹öû{™a¿º±K6\0Ky£Ê—(NwŒsŒ§–\n`«áæÔºİ~¢¯û¥r¾¿£®™—{âKMzÚö´ZØ[ß³ŞÚ»Æk+x9ÆÒ8ùMpBr§VPtıä—½Ó¾‡4èû9İêÊ^¹²šñ¡ÒÜ•Š=2É\"®IÂgr†ÎëĞúœªBr÷T­r9[z¹iğêÛÆ7ş¼o\r%ŸyZÉmb’w˜ÎU™w]1rH \rğ®\n\n\rê´¾»ş¿#®\'UÚ[#Ó4ƒwúŠ!ñ¼óéÍca	ˆfØn·òÇ\r—•h˜(;·ùàõãÆÍ*VÂÁÓåv—Ú[}ı=\r\'JQ—*^éßŞ|@Ñ,tS>Ÿ}qkcw$k-»Fñ–ÉÚ¬«ÖE	ã<×ñ”VcÔ¤ÓQ’¿©Ÿ*iò+Kğ¿Jº\'YÓ¬¢ÔlÃ«$Ä@“60T+r#\0\rÃŒ×ĞàférÒ©+ıæp¦ı¥Çâæ¹â\r7Ä¶znpúåôkçÙ\\Ã-ßu¤líà\00[\0ğp+•9J\\ÉŞÒé÷ïc{ò6£YèZRÂŞ²Ò,Â¶©¼ÁnÖ<^É·%D‘b’˜‘Œrv†ïÀSÂb¥<<Ò\\»;Y;ôoO‘Õuhè|×ñóàLŞ\Z›G¼Ò=Iï£k{\"0\"´–=»ĞïËe>v!ˆ$±æ½ØQİ¿…mò<üDœUö9=MÕ5/ÙjúÆ¿q­jwXg‘¦y˜€‡f#;Hã×¯Qka£RŒ£¿[ù˜^UUÙé>¸ñN‹¬ßÁ£Î×Z^œëÚt—¢#8²F1Uz’T@#ÌÂàİHÊ¤¡·}ÌíÂÔ+¦´<«Æß´ıõíÃCi>“Îµ¶ûC—¶`0BHNà9\'“ÜZô#€X‡Í$­åØS¯)Ë÷g®|ø¥âOêZ·Ä8t^òÕ-/%·?/İÉSh\0b‚¦·¡Bq§WêÓQº¶«ò1£9¹¹M~±ã›û-|RnôÍZû^I,-,níÖe–y’*˜g)d6Aa’<Ì§²ú«Q+Í½ìô¾æõ+I{Éèix×âü|4ğtº6©¤jş$Ö\\›k9¡„­Ë2‡A\\\"¦y.I;NŞ+	í=”éYyú²åQJ	4|¥âø¯Fñå¤§[Ï§o·¼ºÓö)€e\02üª2£9ç$Õ*p„ù¹µzo¡ÅR¥£È£bÆ¯ª\\İhvº‚GenÚ–çXá`LhI\rÈù³÷»g§&³t•?qzÜã»Nç=µ·ˆf°ŒKs4ÉÂ!Ã•ùWvãÇ8cëœú×]åMZû+ƒiê{7ìÿ\0à_í8ï!Mfx,4»¥Skä–É&å`å`|ÛÆ1Œƒ<ÌL¡7å¬»isjVm\\õi>­ëµÂ^øµÒRd\rhÿ\0¹ ó”Â·Ó\0q+Í–mR-Å-wÙ¯ç_y§¢ü{oxF¾ğ¬ú¥­í¬óÙù—\"7©2nÚI;¥reØ 0Q‚ÂÂ&±²JéŞßsÏ£EèÙcJğÍßÂ]æÖÓPñG…µ	¢ÜÃp’YÉ6Ì–0§s¹ów…)Ó?/ı¥[RÔ%£Õ§ø´uÆJ“q‘Î/ƒn\"ÿ\0\rmÚ&¾GÕ~×xc’î)v¼E¤®?z7;†N+/í*ØI:µµ¶Î×º~DÏ™MÊsÎ´éÒø‰¥³Ñâ°½óÌwZtóX%\Z¤›”\0–€x`„ƒÍK2t¦«o²ëó9bäê9[sé‹{İFğ=í•ı‹ë×ŞIºÔï$	g¦®_rªl,TØ\0EqVÌ)bi7†ƒSŸÅÑ.ÖK¯âtI¤¹ºœwˆ¼cáÍEi/î,$)Òµ…Ì—SIX¹‰•x!‚‰#•+«ƒ«J§>#Ôd–^ï½ˆË–	Ôvò8¯\\jzİ’ëÚ³qyá»$Œ´[@·1ÈÁ˜ád]ã9Ü‘Ü÷ôkbğ5kû*—ºJÚZş–vdVœ%ìr\nÖµİÄ2êzTšeô·mÂ¥Ü2G²eÃo‚HùŠå[\'$ƒ]ñ¥Ô¨C™y=~ær)ÓW–çQñÆŞ+ñÿ\0‰4sÄ3é7VS%´ViÂ¬±£4#aHÆ:„%¿ÙSÇÃë\\²Å6›Ò×Õ~İZu\"¥s²Ò­HøkgñWÃÚ‚½İ´ooªè’D|™&2®çE8Uj!!8UÉÜ	T©SQ¥*wåi½o½ÇR¬iÃ™3Ãõ¯ˆ:¿u»Ä¾(_PÜy1‘Ç…çhÉäªõ9àu®ª	Ê\\|°ìxõ1«ÔúÁú¶á•ğÎ§¬éz²ë1Ê³Åißkòâg]ìUö©;HÈ\0ämÛ»¦\"Œpî5ä”ù·ZíòØôhJ1I;jwº‘àMcÀÚÄ^†çH³˜ªÚ[[ıh|ÌâC¹v–^Osã­y™‚ÂZ5°ò|tú}çc³Ôğ‹ÿ\0²¥µŞƒu©x6i®UPBtÙX(Ü$]±¹O	9ÇsÒ¼¬qW	YĞÅ/w£îŒ£\Zji­{y¼+¥½®§¥Â5í9%»i™šG ².3’Œ¸Ã±9Ü+è>°ë´é;A™â“zDçµ]VóÄ\ZÆ©3ÉisÈ¯$—\r÷IÀEİ÷~ñ\'=yÆuÑÂF©„òå+;#Ğ¿e\rø£Ä>&¸ñ&.™§iŞc,º¦¤ó<Õ*Ğ†,Y7q2;‘œ1x™Qq…/ŠW²Ùmæz8jnª»vHìş øßÀú…ıöäÜÊ”°æ-Å²^G8;ñœ2çªÜ\Zğ°Ø<LãûùëÑ-6ètT”yíHñ˜® ¸¼ƒI±—S[™¼İEU…»Âw;ÊÈÁv\02 ÷$gŞ‚åÃó»¦ôkvyÓŠ‹QÜäìE›jér¬€È±A\"yh‰ÚYAb­Áànä÷Åz´àš´´õ1pæ~GØ_t/xCJÔô;Ûû™üClu}>Ù§!í8˜¸™Iç\0õ“­	RçM®«¡ÓN—–:³Íâñ¾¥IVo,H¡QÖY0ãé]Ô°ô=œn¯¢ìuıbkKà¿Ú‚ÆÇÆ>Ô³,më·lÅ£I$o\n@ÜSpœƒÉê<jøŠ•œãÎ¦ÚÑ=¾}ˆJnî:£Í~&üvÕ\Z[g´ñCë‘K*\\*Fp£Ùäxö \nğ(åu#›óßî8ê:‘|ÍØ~$kúçŠŸUÕ¯tûq¡E¶Ñî¥\nã`’(\0À˜Ów\'#\rĞú0XlB•Cšß$ŸeczuÔıÙJæÿ\0‰ô†ğ÷€m|S£áÏÙÍ2Ù0H÷lÇr¦H,Ë³\'*8ã»Ur(â ¬öÕ¿Ô¨ÔP÷eV½´ğõ—lºåş§¯X‹x®¬ô¸$#†7AÉŒ˜¸‚OËÍ|•jX¹Wxl<cNïâ¦åU—³¿Âh>=³O\Z^ÇkáØ Óõ)Ú-/U˜ZÂ]—f1µ7dàõ8¯^S*x~LEKÍuîyª²ºqØõ	ôõÓ-®î^;­.ÃRI/îå·‘•.AİµV.CÀÜ¬ÃŒ|Ï¶ªëÆŒ5åÙ2ç9=‰œ—„õm#UÒî\"ÔÓv•>Ç–xãW’È™W®àF00HÏ­{˜š¸‡%J•ã4î»3š”¢¥fÎ£_øÛ£ü#ğœ—2¦§¤7–ÒÏ?—qyÌä†I^caT®væ¾Ö†&¤£\nUióOGu·™ÕV‹“Œ¢ı×¹äß´íÿ\0àïCsaàÏÅioxˆ/nï0²Hî\ny`O9êÖÊ(W|Ñ+}‰Ğ…E©ó%Ïí	$×ï-…ªØNÉ˜dÈÇ®1Éâ¶¥”S…æPÃBÏü5ˆ&¹…íMº]A†*\\r£$Šê–”•¦´.zq—2G£ü<ıº¼ok¯ZI«\\Aª[•ÏÑ…Yw\\®öã§=;W•ŠÈ°˜˜¸´Ö¿,TyQ÷5ÿ\0ÆSøy¢øƒÃ:Z+Úõ£g¶Üê˜Ûv’Ç\0G8¯‘ÌrW‡Œ9\'î¥ÕZ1’IjbøÛöxĞ|[%åªøªûMÖu6ÒYÉÓç‹dQ <\r»zÇ%€ Šù/í\n™f%a*|+fúß©¤©Å«C¸ù3â?€5oëpøgÆfãM6ò¹‹Ê€È’Â_>hpNü’q‘×hîqö´ñ2,:¾Ï.­9S­©¥ øâëÃºå¥¾œñé×›×O–rÖò¸+•)PÛ…D?*w\'=ëZt]~EY+­ßgäCXEGc–µ²ºÓXÕ4íN]*ÒÑ~Çs4K1,$6cµHT<‚Iù˜\0óîHF>òºx æ“œ]™Íø^úşúòÂ8îcH®A°7W¨$XÕØ‡a¹X®‰%AÛÉïUR&œg§R#))^á¸|]â›‹})¬t»7,“ÅòÊÏ’aÚŸ;nÉ\nIàzsËVª£ëjŞÈÒ<­ècáˆüâT¼Ñ5e‰­í“ä‘šYç•Úª	Á+–Î\0ÉßSš\rJ6ôÙMYó#Ùô\"İ*Îá~YÈ²Â’A¹PrwsŸ¯5Î¨×jê*ß37^§sâ§‡tjVŞ&µöŞâãÉÆÒ \nH_NN\08aƒŸÆ¾;	Jª££RWù1¥«³Â¿hK}İø{ì¾\ZÕ|+«}’;U¦\nVâF;šTû¹Îã€0¤\01_i…Äá¥F4h}•m]õî]u¬a%dh|&Óf‹Å\ZWˆµ[û\r+°‚ãQ¼gŠ[cKD“…ÜaĞƒ•8N¬òıhÅ7¯â]5=¶<Í¼A©xcÅO&›3ÛOlû±‡g 7f8èj!z´ï%¹Ã*“‹|»Ã‹íKÇ1³ÙDº‹oE²›ÛšXâ~i2ì¸ş3€2Ë]¯\n±=ŠÖKUÿ\0\0ôhÎU—,¦ô/ªøOW¼Ğï¯¤m<M\Z[ğLëœŸ(ÊÈ(#•nì}ìf¸åU\\²VmkugrkR”wG´ü+ğfµñÓVøu7ˆ¦Óíà	uoxPÉäm ÕK•†\nÃN@°Àå•+c!8YI-[ı…58Û¡wâOÁ/…?³ŸÃ[øËÆÓßëò…šÑ-TÃ\'\0mV‰Xç$Xà=~º¾_J7n\\Õz/óFœ=Ş§å§ÄÜø—[o9ü€Åbˆ7Ê‹Ø\nú%eM&µêm¥Ê¶9[®kĞJÅ,“|À1<sLeøîaÓ¥`¿½˜*–®=‚ÒñQCïç<çµC‹Ú~øûÄ?o\Z6—\"Ü­çîä‚yÒ8:à— ÌWj1©­\n²{ŸSx—ã© xnÂèOÜ³Ú}‰ô«¼:\r¡ˆ>…‚:@zg?Ÿf9L”¹®jİjŠkŞ¾‡âŸ—¿4Ë-;Uµ–ò-)şÓc;8ûEª„d[±ûÔÊäg=ğH­p\\°)rJê)éĞÉb[J<ûW’Yµ¹®lnn’	\"É4Ä˜™Ã\r¹è™€Iàu8&½jjS…äµò9¥VU¥to_ø¯ÄqxËB¿¾KÍR/İíÔ:ÉÑI—ÜíÀä\0tÂ8Å9Ê’I[ï4©SÜQS‡ŠëP·šxM¹‰nìÂÄ@,Ugr{Ïr}+ª¥T´¶w9]Ò³=÷à^¿àÿ\0ü<ñMÆ¯\rµ×ˆ.`eÓe‘V7”€¡¹ã ÷‰÷¯1§í›‹Om-²×Vß¡µ	E&å¹è¾øF>\'C+Çy¦kzôÖÉ¨ÜYØØ?˜Šä„?åFÙS¹[cpOôåÙtíÉ\rb•ï{êÎ¸Óç¢ÎK\\øâè5­B4†Î$K‰P]Ä€ÇŒn?Ì×©õJËNoÄº’|Eø›/‹¼Q¦º­¸k8c[8İã°)\\üÄïîFìÕùûÃ:õ½¢+Ñz%Úç,›æVFwÇ4¶Ğé’ê·ºÍİ­Û[G$ğ°tÈfX_÷…>WbËùq»™éX_«â)«Åu4Ä59r\\§àİ#I»ğ5Å¶¡mÕ\"T9Dm+²®o0¹\0çª\0\0¹4bj)4ÖÉ’½ºœGÄŸ/†üeş‹¦<ŒñÕU¶–ù”…Èöí;W¡í’‹IiĞÂi\'fQhŞşÚçìæcœC….ª[HSƒŒæ±…j~âÔªPkŞƒ;í3ãÕİ­­´\ZòZøŸNKxÕ-õ(Rğ€8ßI‰#û¹\n=³^¥:õlã^Óëª×ïZ,U“ŒÏU¶ñ™á­:_YxR}2úÊGp.Ú8Q]£$s+È¥ºˆËcåÜ2Œ¡Z–%Fñpûİ1’©MékşÓ_5‰¾;¹kMï#„aåe`]ğ7qÈÇĞWÕåx‡‹«&Ü¥Õ™8òh\rbÎzçs_C$(áqŞ¬aÊœŠ\0	.ìRßAJöÜ,ÙxØ:*DQ‡Ê]ÈüqJè«4jx2æ}/\\¶’)¤¶¸È1È§­EEÍf}í¢_Áã/ƒG[¾øuqâ(´¸Íö§e|ÊĞHrÂGŒ|Ç##ô¯Îqyf*#ÚĞ©hvzÿ\0ÃUŠ”v½ÎCÃ¦×~_ø·Mº²‚îÅ¥[;‹³’Æ±ùŒÊ¸ñƒ=½0~Š†Ô å}zBÃ)^IØñëË÷é­Ø#Ê>_:FÚ¼xéÆ¨¦œ!n‡‹¾ŒîSÃwQÚZ‹½J/µcÏ{rÕĞc<7ôÇ½y-Âu[Q·™Œœ ––5?á½Ô®D66ñ^H\n³Çe\ZF˜Ûò€1×·S’rj¡‹åMG`÷æıâÍ‡Ã{û½vÆ+{%tg”ˆVÔ–\nLŒ\'9äôÁ8$WtTj¦©ëùj\\)ÎOEcôá&…¡~Ïßõz{ı\"ÔŠO‚F]Ú\"‚‚2åO>aö\\äµï`¡6Óµÿ\03Ù¦•(j|ƒ¬~ĞWwzµìğI§ÛÁ,îñÂ!‹÷jX¿s°â¾zUo&ùYÈêÆçc ü,¿ñÌ ‘,M™jR[ÿ\0gK%Ú«ä@#lóŒ`v¶şãŸš©‚N’¨ãeäûíêt:Q»•ÎcÁ)oª½İÄŒ—	avqiwl#+.B–/ØcŒÁà‘…:!hû©o}YæË•ú›‚Ym·éÖöZÌH¶¶0Ä¬6È¬Ñ€ˆ;“Â¨ùSœ‘^G\'°¨åÊÛnö}”ù´µÙÄ¿ê°5İ–©m9Óâ@Ö7™.Iİ˜Ãì$Æx÷&ºœ“K–6—¯N¥Ô¤¡KSÆ¡øu}â/j%u94EKY$·XŞGdbP\'\0|§$áyš½J8…N	B<Ï­ºS¾_ø„h“Çö)m­ôI\rÑ›{2\0°åFâÇÀã¢S…fº»kèÎ~YGsÔşjş&ÔÆV²hï5Î¶MÕı²[7—²5İvÎäEi\0I*0Õ5\'ËGÙQ–Nö;ğóícó§Ä¬ã[½2¬iv~µú>ÚŒW‘Ù%i;šğüwpı¢áwnûª}+:õœ=ØTi)+³ªƒÂ6—N¬Ñ Ğb¸&K©Ö°Ê]\ri’D3l¼s¸qP±S¾æ¯\rZÃ4]Ú%iR6\'V“­+îè+øoÃĞ_k­Å`a{÷ü«YT|—9ãM{NVbx§E·ÒüAko´S2N„WE)ÊQ»0©Yè}Qğ+âŞ¿àêº”,ŞÇ[G·¿–â‘bŒÇ´ÈÅŸ	–<üæ¸jûIK’:\'¹•y8Å4Ï>ñ<Ú†“£[;i‡L‚øI%½Ã²åA(Î€ğNARGLkÈå„ç¦nxÓç®WLçtm_L·óîoš$	ärÎÜ}xéë~•Ù$å¢W9¦¦ícÑßBû_…,µ[Øã¶µ»1ù]·¢“µX’AÏ¡\'t9ùÿ\0oâş¯kËğDrİİ½Odøû/jßíÓÅ^µ·‚Â%ŠÜG©°e–_/cÉ°1à2ï9;¾l¨=+é)`¥Z›kgßşé*\\ÉJ,÷ÿ\0|!·M?Â_\n´íRá5ùßWÖî`›ÊE¶Ü±Ãø‰f\nƒÔ± qèap†Pæ»½Û:ãGÜ<öÇø­s­øÛUğµ¦¹,Ó–(c³¶•ÙUc^0„üù,	ÉéŒV8è©M[VŒk]û¨ñK}KÃ+o>IHQ—}Qƒ7N¯?êµ¼ç:¥çÑ‡PÔ|­èÍs„$ÚJÖ7k/•ËãÚŒìANâµò8\Z˜št…Nd»>ı.TªÚV¹Îêßt=sÆ°Ş%›øoJ½–1%¥¬ëpë9C${Ä›—PI,¤Œ|µ­R”/Ék­êÿ\06\n0œÿ\0xºhv\Z¦|5Ô´«‹ß:® ºÓâo9í]ÓƒµÙ£RWvFä*9èÃyTªÔÅÒŒ­k¯êæ’µt´2¼yaâ\r;Ã–skrO§\\È­ ¸„<°BPŠFSt‰‚0w{ÒqVr‚ººóÓ¡£§)SSl· Øê>\'ÔãÔ—F¶1Ùj\n@öóMâF‹ †S¸µ²[æ$c=ø<JŒÒ·»/_»Ğº:ÆËd]ğüv‹â_i·ÖP]ê6LmíôƒÌy¥ğ?xsÂÌb£oš½ïªÑÃª“›Õôü‚PŒ[MŞçMcñÍ,õ­{A½Ó—ÃÆÈšk@$v\n›\Z?Ş:Ùdê!Xàƒò¿S”\"âİ¢Ş¶ºŒ§]ÁÙè~Gxÿ\0Oh¼k¨Á‚	ºtÁàŒ1×êX+G\rÙ.\\ï™u;\r*Ô[ZF˜Ç¸ªOšW=JJÊÇI¦Å`t9ÀÅrJLï¦—C¢‹GŠh¶I’„sÏZË˜ëQCŸBBmUà\0)ó=ÇÊXøwá#‰ïf¹FHœ)§\' Wo´æ„R8İ.Y7Ü»ñ·ÀvZv•õ´@3Íæ³w-ZÒ›„Ö§-Ux;ü8·›T¸Ñô¸n!³nÈóNû½cİÛvÎG\\Íe‰©ìï+ìxõ¦¬¡Ôè~9ø^ÃÂ>\"\ZfŸ}¬‘ÛA/‹°Hê²4jIşäœç¨×NnRækæpÕ4#n‡áŸi‡MñÅà½ÌÖÛ,;xäÌˆÌÒå@BNSæä€Ç=ï\nO–g,j(§Ìlx·âšÖ…¥iEhVÎyİ²0ƒzäóÁ9ø1ĞxÔ°®x™b·õ¹Œîôµxı~*ø÷ÃŞ&Õá±‚][F¼Ô-æmbŠ(ïWœ†pHÎxt¯°À·MrßC»\næ×+Øö…ø§âø;âŠñÅ“âj!-ä”6Ö±e`DYçL,¯¹p	=~\\Wmjò¥KÚ%©éÔ—,RGƒşÎŸ³õ¿íñóí2ÜZèVi,ÚŒœnû–CŸ˜î‰ ”Œt\'\ZT•kÍœj1Û>Ä°ı„<	gco\\ŞJÑF¨\\¤_1û•Ş©Å+%­cáŸ|CVğ²Ş˜5I¤¿ºv:¦¡\"¤2°À!ÊğN\'(íùıŸÕ#k.‡†öæêz·€~%ÙÅà¤Ó%Ó´ë™n\"ŠÄê3FåáO4>Y\ZLm\\’0\0\0t#ƒéVx|EJ¯ÅÑÿ\0ÃtjsZ/~ä(Ô|Kã/ÙAâ$†ÖÂÒQw§5Å”motÁX4™fUe;â Àô\0c,èBñZ~xVuñYĞXßk~:²ğåİürİhÚ•ô¶7kk]±™¦2£\n»‘@V˜g€®è:ÓÒ÷*6š«{£Ø¼-â|1uw¦Ûèñépjî$·ÒÀW‚ç \'Ë´–vF3ĞnÉ\"¾[,ÎÔ`Õ¥£Nïæz‘œ–·cç_1Ô~jsh¾Ó,ôßµ£\rBòÌ,ÒÍ>w\0ŞY8$„<\0(MsJ^×[Y>ß.ÇYòÍ¨h¼¶ñ›i³˜­ö¤²Hø¸—qY1êpØ×ŠÑPœä¥şGœä¦Ïš~&éw6ÜÜ Vº˜N¡G_G·5÷8óá<Ñêá&§Ñ£â\rV-0\"\0ZB£júÖT`ên{>Ón‡ã‹{y#[¨;xÅi<%ÕâÍ©â¬õG¬i6ú¥¢Ëü§Ö¼©ÁÁÙÍ:Š¢º¨İA£F%¹—\0ò\0ïDa)éÎ¢‚»áŸˆÚOÚÒ3.åfÚIÛ]ğ¡8îpOlw,N¥à3äbçæŒÄÈwnÜF?2öŠæk•³\"÷ÂºF“eáÑ_inòıòöq˜ÁVhˆÆpvrİÎ=OgRzİw¹ó5*FRm£—ñe„Ş_&›¨Í¬E2‹¶«’m9Æï©ëÍcv£ŒQU´€û½VïJÔ$Áx¡­\'6—Xå;v“”bJ:Òªç9¸Ê69%åª=ÏàÇÂ¯\r?€ôßx‡L‚ú95uÌwQÆ‚ŒDù=]²¸$óÓ\0·ƒ©Öt#î­ú¾¶ÿ\0;´¡&õeO‰kúÖ›©­•.ƒeniko‘CmkNõ–e˜óµ˜Œàæ·£ˆ‹”#^{[Kkÿ\0„¥	+íÜÊ¿I,¼5k¡Şê—Z´ŠÑhEÛHc´ùšvï*wìLûÌ@úÚó’§fıçù\nuUå¹÷§ì¦øGÂ	íeµ¸¶¶Ö®!ÚÃ\\1ŠE.ÌË¹_P\0œg’I¯[éÓ¥¦uAÅ¯t÷¸nb¸‰%ŠD’\'PÊèA ƒÜW]Ñgâ_„á¾:¥î¥kK>Ÿp L\Zhf*>R«\"†\r’Fàë_•â)B­¦×¼¶>}ÊşêG¨èº/‡ô­oIm3S½‚S¦­ÄÍ{p‰\\’XÕ¸À‹×5ÔªOš¤KU¯c¢¤#£„eğ¯Š4ÿ\0x>æ=SG·Ôì\"ŸÊ½Ôo.$—Q€I•ˆÆ¦uwA)C·%[æş!Šô±–ØªN7odïúøW:«–¢ºîz{cájş½Šn’¬0C-‹“’vL8!erpÜ!¶:#œPxz7—òş·:¤éÒNCÃ¼[gÄãÄ©­Ç…Ë\r½Án\ny`˜#F\rˆ÷»|Ş„äıÑ_#W0uä©Æ™~à¿»ÌŞ‡ã¯ÛÏáˆôfÕ-å¡¹åVªœônÛ‘]q§í½ûYß_C]¨rÇfyM§ƒüCâ]jŞ)¬+yäå[Diœ¾ƒ´$)8Jõ\"œbäŞFPçf´<CÅšSÜxÊÒâQó¬şíúWÑajÿ\0³»_V„báÈ´v¶ÀI¢İÎNîÂ®šæÒöE5mmv\\k¶ib{kGzÊƒƒÇ@É9Ï¥mì£kó;3Ü¦Ç…µu †0HÊŒWxµ³=:\Z›?.bO.(à1\0bAÇ58x¶÷{rİ£#Âv÷vs]K¤¢¤M°´I‚[=89?€5ßQJ;Hóa8J\\®\'°é–í‚n|›}ÑÅ,G£#\"E8>ßızçŒÚ|Óèi*7v]NÇRøƒÿ\0	×Œü9µ§é÷º~•f±Xi“…‚Ş1Œ†Ø#\'pÉÉ=r	ÌK\Zçvã{lÆRöŸbõHµ?À8<_q­Oa³BgŠC\Zjmh—+*¢;„S¸€6c,sYáš¯ÌÛ³û¾ãd©ÁŞ*Ç’ø7áÕ¡Õó©ÜI&Ÿ$Ëg’U-…R¤œ)\'wm½q^>a‰©¿eñtÔò}¥56Ï{:÷…¬Xø{ÃZL+gš·\"şîYãæLŸ5Üí% s&Tğ3âá)ã*7W&ßN–ô7|¿òíœ.‡ñROj‘jV­öI\'mIYåv6Ìùd@ù‰Ã\nƒ‘ÁÅz4×³—µ‡½(ìs*¯›s—Óî/<Ow}¬}‡ûFîéÎé!Z,îû¸U]½àm?…{•ñ‹N«×ğ¹“››r‘õ§‚¼?ª|-ğf•.·£é:½– ÆÚÒÒø]ùŞkH˜ÎXÅ\Zí\0—A‚ ¶yöéÁT¥V‚Ôô(ÁR…ÏD·ñGÃø %¹ÔôéU@{;d·’(9&W #¨´O\rwÚíækî1ñÌºSÚëK›¦Yè±ıêe“²’0p\0Íœ“ŠøiÔ•(ªªòÜâ§B	ë¹.—ğÂ}>ö=6âö=Jâ7šëÀñ+±v—pV …R0vœšˆ?­Fü¼²¶ßæ*êJÉlsÔ¼5s ørÓGÒ`Óµ!‰o\'¼¼˜YÜm‰cP«PÃƒ©fmŒI˜¼kJw­¢^–üJƒŒiòÓ–§ŒÜjºö³vÕå¼h\"f·­ 	oœMà\r¹Èç©çšõèÑ¦áÊàÕ¼Î*³u>-wáÇˆí¼5k«éÚ¬G[´Pc·’ç8}À;1Ub¤(P6²à’Ná\\xŒ<&®º=¿ÌÂ•/uìp>!ó<?ã+İL#½ ¬Vşb`È\'´g<qŸl×m*‰SnOaµg¾ç¡x3Â—gÂÚJ_C<Z¬òËoc,†[¹ŠJ]qÉXô\0œ+eº¥‡ıÒ©µéÔë¥(ò¨Ëv|½ñ_Ã’xsâ–¥¦Ë$2ˆîgÃ[¶èÈ9#iî0kÕÂJØ}ïcèå+¨êcZi13|ÀµkíN¸RLµ>û¬\0Êñ\Z~ÑÍ[QšªøÖY¹oZ‰·%©¥8ûÇ²øŸÀö·ºd7òfò—å=/sb¥£9}#L“N¹‰a·¤à¹lÕ©©;6e([D_‹FUĞ¢µˆy“ÜË\ZlQ’Nà@÷«•š²9âÚ¨ŸcÛşxH’×ÄZ/ˆ4¨t=Z‚KM1ŒF#Œ‹yrÅÄˆJHbÚƒÅøíá¡Jtíä|ôïRRœ·eOÚÛá¤ƒD“A¸K(ãÓ;¤¼¾ËŞ2«FH“ıd„Jÿ\07İ pyqÔ}Ÿ¾¤”mª9ê4©´Ş‡É7Ş/¸ğõÄ×6ä=´P£Ì±n®åÆäÆ ×I\0×È¬7µ•äïÚèòbã\'ÜÈ×>:K¨ÜÉıe†,¯Uî>yXIÀWv,Ä¶Fî:\0ÄµÛ½s6şHé”¢•í©ÍRâî)omÒêhÌªæ‚É 9ËÜÈ8Œ‘ÎA®•EF*œŒ©Ó¼dõ=£á¬\Z÷‡\r´štÍs­ªëS4VË7“™Èp¿îüf¹+ÑÃJ\\×»Ñ_ætFÍÃ[©?à[ß†>y­ån,ã¹[{Æ´!ÿ\0x‰œ„È# (Ï<×ÜĞ‚…(ÂÚ$v-µ¦Gu£é¶–	k-ÊÚÄ	åxÃÈÜÜu8Éªå‡ò•¡ùë¦[kĞÏ%œÓéW±@a¾3y’™‹cÊŠ´üÉÎoº~a_’OêÆ<ÑwnÖıNJ1„[¿Şv×^;Õmnô‹^E©Ü[D4ëèf°+<ŠáåÜ–T·\rò’1•å‰ç¯,^&rvi¥»ÿ\0/ÔušVçG]áıkAø«%ş‹âFÛQm.?´Û^LX!\0•Vlä¨RÍœàîæ¼Êôñô¢ñ,Ümx½}lßc\ZQTù¨«¦êŸ¼!£ë2éÚİ½š!ûLŸe–|Âwp\\”_1M§›*–79[’Ñ}t-ÄâšÕŸ.ø¿Æéâ\ZD|#7Øtıín²Á•;±¼²€¹Éãœs“_AÉEÊjëÈÆªOX»3Òt-,t/W–0º¬j£2Û[O<ŒÓšQ„gKÚAk¶ÿ\0™Ç^^Îi³¾ğW‡õ¼AçIwk¡kğÛ-Å•ì›ÒÆc#«o;ymÀ>Im¥€rzéÎ~Ò4•K7ÑÚÇ}ù’iZç’şÖ¿\n†ÏŠîôø4íI%µµÓhàùN%”\"±\n»•B‘€@Èœ\"–%Ò“÷_õ¡êa«MÍS{#æ»	•WqzW°Ñôôf¬E«kp,\r°Éêkjp“ÖÆ²­£cü!âX-u#Ùnœ«“ŸÆµ•Öú™G“g«ÚøòéâÚæÙ-åSû¶Ÿ“°<\nÊq’VÜé§R\rÜèt{a¿˜Wzâ¹ÕÖæ’•ÏUø#Ô¼iizò¤i¥t×póŸ/ñ`ójæÅc¥¢ëÂ<Íl¼ÏYR…–ìúÍ¹¹©øˆÏvd’ø[ÙÀ!–	L,01b¤.Ò»€c¤×›G:­‡öugï:î1İ=»³çšq\\ÎZö<öƒø“{ñC[·Ò4¹o!µ±´o*w±bo$·bADc½AÉÎTİ~¾-â’…ô·Şû3Ÿµ÷^Ç„üIø«_|4·Ôa°™µ[I+íî¥æUb~XÁ$``ƒüKó1*8štj{İ¡MAêx?„Î›¥_4zÕÔ–0/Ì’En·p®Qˆgõé^µHJµ§I\ZJƒsWØ± x×ûR‚æÍnîf}öòy‚Õ‹°Pv¶TmÁp{UU£/vÚXßÙFé§±ôŸ‚¥ñï‹õHü3©iÒjSéñÃ7ÙK<­\"4ó6,o\' †ïšğ_«AÊİ˜ZI9@û/Ã´ı”ú,ñ<öÇÄ–°¥İéó-dÁãa\'#¡²©À§ÓSÍT¢”ã­×MZÇ?ÅA<‘Ï¯YyèÅdóõnÀ¶AÏZåx™7{õz¯[5éÚı×ü$ºåôÚÜööş\\2AxË¶®f9û­ƒ…HÈÈê>SZâåUİ½s).Y|yøßâ?ŠÓdÕ.&™áÄ/4væ89$å8êp9­V\"µJUú-´Dâj)ÙÂêÇsàM*m{àîâûÈ,¬–ÃXŠÚ	á_²îßÌş5êdfKG–Ç¢’pœ*9F{%¥ËNR¦ª[_#•ø¹®iW:‰£Íi[ƒ®£lRD¬ØRAù¹K+·ªã¥pápôé:“¢ï&õMìÉ¼¦¯Êgø\"ëBÒln.u\r5ÏİİyÒ^]\\3D6vl.<Î€û³{WMOhí%o-Ç	òİµwæwcÄ6úüÎÖÖ&ÌCI$6–»aUfT–\0zäzÖ”§\n4—3·ás–­\Z¸‰9#¬ñÍ­í—Ãˆt›?\rÇc\rÜwwz©›nÓ/Ëx`>wêUIáwcœ×ãO{BÎûşGMÔœ9ÈóOŒßìtŸİ¶±«\\¦¹%«\\­·Ê‚d•FÍÇ†R¾aÈÆF	ïÃ¥\n±s›oµº)P«\'£>TF*¬9Ú{úWÒ%sê ÚZæ$’¶¾sËé]‰ß©1†º£KN³{„ùàP¤ıÅ8&¦ı™êRÃÆHîíaŸO²YZÉY@àÀÀ¸â¥™U¥½§c¦kM¥Æ¤“Î#ŸÆ¹j;³\rÅ÷†ôëë=/\'¹ŸCÒnŸûY­$tÇŸİÆ@Ã>r0H¹¯Íå\n²)=ºyŸ?šNm¤–ˆôAãox?W½ğÕÔºÖ‘¤\\3Ãq:«ÜïnHÁù]ˆÛ¸œ‘Æ:â¸a«R›i5Ë¿£íú49êİßDp¶Ş&\ZG‹ô½_Y–KtVs=»Â$XÜáÉ+ÆX8{úsŸ_£…ŠI¦¿_ Œş(ËCĞ5_x/Rğ«=İµ¾´­”d-åI&QÛiÊFw7r\0ÜHÑ<c“VØéŒ)¸ÙŸ.xÃGÑ¾$j³ÜÛèkfÑ¤¯$ÖÑ_s#)oA:òk_¯ÔÂ«ÅÚı¥ZirÁ^Ç;¢ü\n¼¼´¾¸Òµ‹š3¶×òä¹ ÊŒAMÃ‚sÇlû1ÌT’UV¬Ö{¥Í¡…àïxƒÂZ™“O{›I4-$Pıàqø~ z\níœ)M\'sGg#Ø>\ZxZïÇĞŞøƒTÕŞ	pûaEuÈ´‚q…Ï@HbÄŸZókbhá¡}»nbå\ZR÷V§¡Ÿ†öw$Íuà†êOYg¼HîyfoßIÉ<kÎşØÂõ‰~ÓÛğ<‹ÁŞ5×4½NæŞ–¼¾Ô<Â~Õ+˜:6æŞÇnæÈêwÏo5*Q¤—\"å‰Ï4ä¹£º=^)lµë~ñF­g£]˜¢gÉwHwÎå@c´ï|¼ÿ\0{Š«Èë)Ù)~å…å5\ZŒóïÃ§¥¯‡`ÓeÖn¥»¹g”Ácl¤´²ª«m%› €^º4ùeÍ¡RS„ı’ÔÙ³¸Ô<H-ç/%¼³ÉlÅœ™wr8Æ1¨^s^eF^[soò0SŸ+C~ÈŞÖ]ËöâHï­[†3+nQ’0F\rMxÍÔµ7k.iİ·á?‰ô{k«»o\ri:4Æ)oìQMî¤òm>PGl\r«‘¸gor)â#WEBpIÅîzÔ¤Ú¼LvÙÃ÷V\Z–›\rºÌ ‘é\\Ãæ¶ì‡m­!PA/Á\0AÚj¨ÆTã__Ìr”m¡ã<oš¦µb/®5xD’3ÜNÌÊóc™îA9Û@2¯V\ZU-Vi\\ç•9Nq‚wØğgÕ\Z AŒà\Zú˜A4}b›‚±jÃPD$¿Ì™§(¾†‘¨ûKs}<F	Ú!)-7FÊrû,ïì!–Şßg&;zµsN.ú\Zs®§oğ«áÎ­ñ7Ä	¢è°‰åHÍÅÄÙaŒ¹zõ\0É&±ª§\Zrœ#v“v9êV8¹3èû/…/Öõ1áˆ4äğ§†ãµk	5fˆ¾$†H÷#Ì2\09<\nø\\»V¬6¬§®«nÿ\0qòµjW«=´:ÿ\0†Bïöyñ•Şƒdb×|©mïãÛ\ZÁ7Ÿ©ÀØ1·Ô\'#5ôO<¡•ÕtÔ½¢}º…8{Ê–‡¡†>\rñÆ©6·s£éòi³Í†–òKJÑ·w\nrq9í^,ÅæøŸ­Nôpí»+¤ÿ\0¦t*q‹ºê|iñ¿Äº-÷ÄıgHÒ,¦m&ÚÕììE¤ºI¼¶Nª´lÌ¬~ñXÀçª…\n4#7¾[èÛèa&¹¬‘­ğ×Àš§€&ğgŠ|Eıotgr.,|µ™¦b²Çs¾@G	‘ aˆì|¬Â¬qxz+™îµíÕ|÷:©FTm&`øïÂVŞğ…šÛh‹~°ê2ÏoâÍ,şæuÌ¬şğãná‚@ûƒ\0÷êÂW§SgU¶’÷mo™\"	ÃİıN_áï…ìµ]+PÔçÔeòA$éÄò»É$!l¤ÿ\0I\'RœÔ¹=Şçi9&ÉõÙïÅ÷_F…¦_Åq3D—–’™\n£BAÄ¥€ù	\0ç ÉÆu§^šI¨úù+)JÉÙŸJØøÃPÙ[¥÷µ™ïV5Yåc.^@>f?)êrkæê}yÍ¸ĞƒWÓTzÊ0KZŒøæçá=Î«ãOÉ¹Óômò´Éj—.ñÇ‘T|ì7m‰Éç3šúêxŠ5!.E¡æS•97›:wá^¯á(ô­B{t×`Õ/ŞÛMX.ŒÆüG!RÃå\0†ÇqÈ`qƒ\\Ü”ªNîë—ÉX™Ğ²nÅŠ_àøEá«N¥\r–¯¨ îÊ+‚÷QÛ<lJH.ø×¸~OJ?{Qº’·—ü*±Œ\\Şç˜E>…mes¢Å $„¾_§_ş·Ñ*/Ù¹%vÎnw¹ŞI.©â\rûS±ÕZÚIMÍ˜½!§	*Lc,Ì ¹3îk‰Jr²V·®§la*Ğ´Z±’lïü7áó«>•râòÌE\rË£¢†çs)#\rŸ^¸Æ85xˆS¬ãÉQ$¾½ƒÙÔŠåz\"¿öÕö¥áCo.‡u%ÅÌjë+G±\\‚rÃ…äü½;ı:a‚œ«s\'t¾ó)BïG¡ãÚ·ˆ¢·šúÖ#—ßH¿0NŸ(>¿J÷!I´œºÎ´¥ĞÉ·²[ˆa’ku7}Šq³ cå±^Å}k©WVÕ®ƒ¾ŒŞÓt½QÄF$*Ù¥í)±ªußøkÃ\Z­ë¼[ÅÜ\',G¦k)T„V†Ñ¡9|Lúà×‰¯>Á«İhñYe¬Ú	Şúä[…ÙAeğ®Ò	ÏCÇJòquêS¢å~ŸyÍ˜ES¦¬tø³}o¬YËâ?Éz±Z\\%‹é–s_Gl¬ ùlÍ´³>ğ\ròä`xñàåÉÌÓŠv~½,|ï2zsj]²×ô}wÀz$Ş\Z³›SÔt»ˆmïtÒÆ)\'C¤­Ûfá\'Şf\\¾˜?=jxÚ’Ç\rìÍ”ãÈÛĞéïüw®?Fğ•†­áèî®àˆE{tòÄ‘™Uvù®[rÜşââ¾Ÿ	˜Ç^h¾—wù®R”’ƒ;Í.‡á½g[ğ>¥ŸŸ.ÂïPi‘sÀU(Ac¹=ARK\0\rx®±ô%eÊõzíóëÑê¯²Z#ä¯üSÕõ¹ ·ø†_VÑ Yãv\n“•fR¤œ2Í×¯mÑ£J’†^÷ùş§Ÿ,[ªıõ¡ôÀ½2\r#Ãö3·Ø®ô¿Ø›Kw¸ìîw2Éå…à©Ug89!zÂ¦©dÊ¤ëÅII;;nÖşgu©«-[Å,>­­Ô¬š†i4¦-\"	ÌPÛoÚÍ#ÈP³ƒò3˜‚27çPÍgšá/KF×O»ó#IB:êü‰ì>)è×ş\'Ğí 3ÿ\0mM\Zéì†&,]C2ŒıåîÆ	<€p:wQ¡S–TªTøÕ–ŞO¹¶ƒå¶äßüC§^ÜZ>™m¾	\Z&ßk(9SFî¼W¸°”,¿Ì¯i#æ;-I|si¨ÛÚÛø¹…ÔÑÄŞÄ‹\"€ÉåÜpÇ*r1Ÿ®q¥5¿‘É:pPº*iŸ­-<am}i{©+ZÀË¤2\"ÛÃ7Îv‡#b³33Çlæ&•eO–‹Iu½Ù“œœ9o¡cEøòÂÿ\0H‡BZñ=Ôéso¨Ot#w‘Ø+DÌÎ¡Õ€8^¹rAìz£ÊåÜ(AT§(5wĞæ­´™.,ll0Ğ¹E?\\pqèÏÂñÑåó9}›OS¹³°—K{k;¿\"{H³İ™¬CÓ>™ÏLõükª–_YMUPæîc- õ+üIøÁ{«YØÙ6©s©=—ûq¼*\"ª‚FĞ:¾kŞKNrR«²èQFr_¼g•ê#Õõ½>{¯%X$ÜLq«“ì8ês_C\nP„y`¬k¢ù’<äh×:ƒG2=fµæÕ&‡¿Aªò:m>ßAæI’IšqZ…”q€j.Z]ãÃv¦\r«ü\'œY9¢vë 0‰}*/r¬uŞÕíü9a¨\\Ş\"ÉhãìÙÁuÆFO`p=Ï·½l-¡¬ºô811U#khzo…´ÍÄšLW–0GàİN)!ºK½1è\rµ‹)œ‚1È \Zõêe¸zªü¶~GÊÊR¹İx§ÆØÓÇªıÖK±jK¢Æ¹FL“vŠÁ¸*pÉ8ùSùopî3>xÅrÇ­İŸª2t¢İÖ‡œxëÇVU¬u]OQÒµ¸îK`É%İæH¯2G$\0WÉá2ßgQJ¼ùgNß\nü/¥Å\ZVšnG›øöµğå¦¿oq¥&£§HÖPÁnó>DÃrïàäÆ6îÀädŒakêªd°rz:^÷ó¿üOF3³ÖÆÇ¿ø_Pğ®…màä·}.ê6‘ìcCöÒŞil–,Jó§iÇJ2¼-ñMÖ‹æ[èĞ«û\'(ê‹zÇ³£øsÂ³Ó­4)¥I\'Ó¥škÇY¾O6=¨Í$8ŒrqÆsƒß^LDêÆMr¯-¾lÖ5à ¡÷h]şKíL[–/u{v†ÒàÜïŞT\ròG‚@ÏLc\0\n|øz+®Vî¬’ü{â+I.]îbü$øQ¥ëvÉâ{E¯oá_í(­|¹#`Mí½Â2@Ê·p2{¢œm«¶Şİ®sR ›»Üô›M?@Ô­a»›[ki®exC°³•Ç’z¦‡R¤]”N¾j}SÃ-µ´›A³¿Ğt»{øKIs+_(.v‘ãV3&DÌA,â¤>jPöIÉíé²ó9UGÉª</RğÜÚ}¦¾×H·vse¦N$,Ãã¾=q]0jvWLˆÊéÜë´»Kk\rFñº$@‹$Êªa¸Šé$|€laJàçAã8˜|%LL¬ôŠf”)ÉËh®Awã-*Úá–ŞÖ{ÕW-ÊárO=\0ä\\§\\û_Øøg>vß¡ÖèÅ»²„º´Úì¾eÙ—ÊA†^\0ôÆ1^ü`¢¬ŒU¢Œ)­ıËÈÒJœíUØÏ×?Ò®6‘e4¨!TO5K?ÌK+åOD	´x.ĞG,ğ¹+ôùk)ÓXÙ£Zu%IŞ%sávŒfÛwî\rùm¯*x_İØö©ã¢Õ¤¬ËÖÚc-ëÔ+üÀ¯:xyÇFz1­+£LePÛª:˜˜8–kšTjoceR/K›ÖšÊ˜¼ô‰¤*ÛcŒ.K·©ƒõ$vÍoF„ß½Ës:µc±¡§é×ºÄÁïÇ—	mÿ\0g-–‘‡?1ôïŠ÷0øGÏSsÇÄã—³¦z—†5P,ßÊbRŞ\\:€>dtÁÿ\0ĞkØGŒÍ‹ÜOgö6¹h®cs\npVAÌgñ}1WÒÀ×VpÚÖ½câ‹+èõ«YBá/’Ø~òÖ@Ã*txÉ\0•<‚\0È¯•á±^ı¹_uú“*iè0ñŸÂmLÓ,ïtÈF½ ÇûØµ\r1<Á“ÿ\0=Pä¯A÷†Hæ¼ª¹uJRºWG›,3Œœ¢aøGÂ^(ñ{ÏyáøXÜé2Ã+Ï4én!`ÌTe˜tÚÇŒıÜ×haåÌßü8E(»HgÆÑÆ¼“-ÍÅıì¥’ãS|:<¨Jæ	|ë³`9ç#¶p;Tn}é¸FQæV×M—Iğô±­½Ù½\0dGn¤4Dœu,CqÀqÔšæ’…Jõ’·ÜÏ>n..Pg¬|4ñ¦¿§øyl§¼¹ÕŒ6Ö²1!]YJxù•˜×¯®IaÕ9sÁê—{+ú‹;Û¡ĞŸ\Z´d¡½0•àÆÅÉ_b|¾ÕäJ®2ïo»şÔbÕîsß<?¯x>óK²¸ñ<0x~ßÊ[híeŞĞG¸é>Xà»ƒ¸˜)*IQôp÷Ÿ,ÙNmÍ{ßxâÆãIÔ®u‹aoxĞA%©²Â,ÌcÛ†Û‚A9ÏÈÑÀJr,W/äkAJ£²<jq%ÑÚG?v1ùZû*T£MZ(ôì’²/Á¥%¸óH$ÜWR@$¬#ÒŞC…2•A°ıJÇís|©“°şô•ú‰‰34³<¥@ì zP¨4ö“\r£¯\'švêÙ‰\'uÚòƒNÅ6^·³P¼ÊÁ@ÀæÏ·4œSÜjMlÉ­ĞOğƒ?Ê§’+dW´“êoøz’ğ´¥Š\"|÷ô­$+¾¦Œk—;`8ºv”{7Aôª¡ĞxJ°ëWv¬Ù†ér£#ï~´Ğ´+¼×¸´,Rv&‘»H¼ÆßJ°zÿ\0‰õ)$šÃÄ¶‘¯Ú^6ƒP¶ÇG¤{éIÛpK¡&ãkÏNƒL¸t¶œ	a`H§±÷ƒô¦Ÿ.‚jç­]&ƒñ+G¹³Ô¢‹NÔïáE—S·…HÀî_1H!†p{|W+K®ÕŸs9E3ç‰~\0»ø}ª¨#‡¸um¨¸´Ÿhb^0„e@ÁéÆJà`çåêR~ÊQ²×QBNšqoC«ğWÄëøçMÒÏÚ<K«şæé&…ŞÕá\0ìÀÊ®ğOVÜ©^ş=j.MÅ%cÎ©Z4ÓvùÅ‰&·anğ,-çù2LŒ6®X\0Ø9&¼åF£š³ÒİL)K›W¡Ò4’»_\rO:“‘/ÙcùÇ¯\r}ª~«}[üN»?\"\")¨i¾!’êŞöòÔ¢G¥]lœBb}Ë”\'‡ƒÈ ä‚s;ãVµ9Æé¿»C¥Â­–‡3ñ#ÇúÄMsíW¯•˜­âŠ$‰sW’sÀ¯µÂÑöp×sª1ä™‡bˆòÆ²\0¡$}+ÒŠOvå ¸¶v\0€Jš»Ø[•o¬ÍÔZuš}éP1€÷ü¨\ZZê…[HŸeµ¸ÛŸR:šlZ²J“UK†Xü£}é%¨ÊEncœ`Õ@D°o>ÀfÜ‘F2ÍíL	UË¹_ºsëÀ¤\ZZ0™\0QİèOÌ†3 ğ\"ªÀYµ•£X$,aûÔÀÓÔ£şÒÎVÒF2yaĞÓ°ÎR [™YY¿y,`ô•8|¼§wáIŒæÓË¸[e­´¢HN	ù·Ó8üêDÎ×Ãzœ±O«~à’€÷N0*µ&#Ô<SáK‹?®4¹ŸR°ïOtá·€r€ÿ\0´8ç¾ßJåÅÒöÔßtK[®çÉ·óŞèvÖZŒV¦£ûRödŞ¥UAhÈaŒ	ã}«ãÜ¢—%&­5yFÈèôÍB\r~İ4ùmb‹X<£9tHç&Tí+€Y—nìà–…êxÚnVŠò)Ğ‚wê{Ş—û6|EşÌ´Ç…odJaÆ£\rò~õu}BoWE‚„l¯p?4/ø_Aišb[jr‚Yî B¤|„Ëµ¹Pãk·ê5icR¼¾GuUR²wG‡ÅÇó`Œ+è¢ŒK–À‹•_Ç\'ŠÙ+WR.÷*õ&Üúñıi‹CNîãì÷×7¢Ş!é€ªØG?q¯iö7qCu#ì<¾Zå±WN›©+\\‰ÉA\\Õ¼øÏ¦ÙC5–g)h>F-…èqÆ3ë^”p<Òk›c‘âyRvÜõ†\rÒ<oá˜5©î¦Iä8•7*¤g¸\'ä\ZË…ú¼’zÜ)b]etõ~x|Aæ[³ËÎ	ór\0Ç#ŒW2‡sohúÇğ¿D†ÒY··qŞ“Œb¯\'drcô¿†\Z$š†HİİSÌtSÀçëÅpĞÅĞÄÊQ†Ë«rå±àCy\n.T’¥¿yĞŒ¼ÿ\0uRä¬Ú‹ØN£[‰ñáŞ—à½&ÿ\0P[Ë€–Ñ™eÚCËœd‘]tpò­%ÔŠ¸•J.R[?Ä-?|~dR¬N€·GÇëË%®¾&yQÎ¨?‰4ki>6Óí¯Ş{ ,®FRGÈ®Iåx¸opÍ0µ6™±¨[¢Ëeu”–Şäì,ÈX}ÓÇb>†¼¹AÁòËsÔ‹RWLÄ×ì—èûp,ØÆä`îˆ‚Wõ©+sGD‡eŞ­`>í¼Şzúàõô¨Ö=À/>ñ˜²·în\\BN~îO_Àâ®.ú	«£Ê>8øcQğWÅ½VêÏ÷©./,ã|í\nFí˜@;”nµòxÏİWöqÓ©\"s©‘èŞøkg}ğîâ×Ä\Zjé·3\\Ç<zš´P2JÈGK0(u|6C\0qœü^7\n3qŒıå­»„,•ÖıNRø¡ñcKÔn¬—Çzœ‚ŞW„;^Œ¶ÒFNN{wæª8Ê³JR½ß›2i]ÚG;ñoÅ2øÄA`aµS±Aã,?Ò¿SJç¯Y¤ìp’¯—\0l?JÓc’ä×‰¢˜1+Æ}ª¬LTê–Éü%üÂ}€ÏóÅÔC/]·ìR7.zu,i°Zèsÿ\0thô;8Ö\"2Ğ¯ @\\Èx#\'ê8ïayg‡k¬|µ<š÷…u«wóĞó}:O´ê7·\nµ¤y9bqúUQå\':÷c3éïÙÏULñNƒrÊ¢òÁ®-ÓŸ0\'<’sØÿ\0Àk·M¨Æ¥,-T¦ásÛ~˜ÓAˆ±]“[Ç şö@8ÿ\0ßUåbÙéEÙ´/‰> ?‡4µ{xîRü·”s…Evÿ\0<WÍæxiÖq¦¥hõ1­XHóZíœŸ†>\"OâmV;hÃ™|¦Nqøƒù×‰G,q¯{œK2–!¨Æ6g£\"3=Îâ^Ryc‘Ïµ}­\n¡H-èü*ûœ§íCâµ—ÃZ=„;D×Nîà¾Şxäş•îeQn¯5¯cÏÌ¤•&›>iµóníQ|¦C¤Ç\"0G9Áü«ì•İ´·¡òåI»ßÖåëİêĞ’LÇj³¯§·¡®jÉÑ‹«.ˆÚŒ£ZJ”U›>ƒ´´ŠãÂPÙJR0©şëùOéŠüÖ¬İI¹¾§étâ¡Ğäîck«‚ãı*¥¶vÏß!K)?UÁúƒXô5°í\näC$‡‹«›\'©\r+’ö+xŸT:tú_—*LCš°×™èß´íŸÚ­|âvTwg\"c¹ß^qG™*‰jdáÏäg/í´›k{okQ[[ÜéÉ=š-Ğ™¤ØI†6\0\0$,ìÅ°88îØü÷”Eb\\ªÅ;ëçSêrZû\ZüJøc¨D—ZŒÖpê¨’æ3jŒVSËŒ™pIç½ÇƒÕ˜Ù4..&•òX1$d{ñ_j¬¹¥q¬‚KgTá”ò5F|Ohˆ]§kM *@w_\rÄ~íÏ¯ùÅ%‰`¿iÕpX´vç{`}ç=0]Í_xjßUÑá–MÕÀU¹7&\'Vù”öç}EtP©É=v1©h¾ç„h¶ó<7L…PL¤rq»5ëáá>YI.§w(ÆO¡ê?<DºŠlõgcû©WzäóÒ¬?-_Fá\ZÔåoĞùîyÑ©Gn§Ò~éº|v)eˆ:Ç.2$MÇkz‡Í|ô×6çÑ_[Ç©­v’ü/m=´™îÑdÙpí³c;Hz7|t5Ç:jOTvF„*É*–gœ|\ZñağV³¬_Oh×n!T\n[¡Û¨àç·¥béÆé¤z•ğ4²ŠOĞ÷ÆñkÚ|¶R¸†ãr¨`%qÁëß?w+4xU)NŒ¹d|çñ‡Å#Ä^+”A1”Y•µÙ»•Hr?à[¿,×¹—Óöt”ÖíŸ=Ÿ=W²[œ¿†µhçSÉ1HÙÚdã8ú÷äW¿‡ÄFI)hÏÅaçÍQét±¨Ü´å¦Ø-†Öî,şuãg˜…\ZJ’z¿Èõò,<¥UÕkDzì–‘X]Iko7Ú£¡lTÊª	Û£9Ú¾÷>îıÎşé´mVyBï·“” ¡úâB¿AM6‹Ü£§ºÅ¬Ù•a˜­qî	†µC—ñm÷™«ZG»!cŞ£¨¬¦¾\"[.¯ğ+M¼˜Å\ZÚÉo$²J	Úƒ(qƒ×\r\\™ŒS£v¯c²N\r3æÛË}}\\ÉiLÓÆ¨——I¼&Ô*:`¶áÓ8ÛĞƒ_QÛâ|«ó<øTj<‘f½®‘«hz}ÑU\0ÎÖ2q÷úş5ÍÎÿ\0™ÚÈóûn!8â¿B[ä÷c­Àó.?İ©‘ÚÇÄã¶ÃÅRdOÛäú\nlEŸİ^·s3äş4†ö;;Ÿ\rÎ{•$Ÿ^M†xµâ…m€\0s|£§Q_o„oÙDùlOñdZ½ù`]¼fYsü\Zé©¢¿™ÍGYYö>ºğ|¡³’íöHFæäôàÖş,½Ob—À\rAD:5ÈŒ\rfÛÆOšç{OóäO2¬™ô¡î{4µ‰ïº/ü“o\rÿ\0×Iÿ\0ôeøÎ_Ä|rŒÏâòÄ“æ’{î’½ü/ñ_¢>[ü?¼ÓÓ‰Û¶~a;\0{õëı£É·¸Ï§¾Dk>QNCg#¯ÌµòyçûÍ¼¢É?İ~f­ÈÙt~Qæ/JùÃèºœf³ó=ÆyÃ[õÿ\0}ªõƒí{ã“‘ó5,däµ›Ä0gœIßëHq>˜ñC3~ÍúÀ$‘ºÜ`ßh‹Ô×63øç«±á>†3á]¥¨¼ƒåÇ²gó¯“œT£Ñæá5¨“ó>¤Ò|#¡>•dÍ¢éÅŒ(I6±äü£Ú¥S‡ò£k#ÿÙ','2016-11-07 14:09:39','2016-11-09 10:01:17'),(2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-07 14:13:41','2016-11-07 14:13:41'),(3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-09 14:47:33','2016-11-09 14:47:33');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`email`,`password`,`permissions`,`activated`,`banned`,`activation_code`,`activated_at`,`last_login`,`persist_code`,`reset_password_code`,`protected`,`created_at`,`updated_at`) values (1,'admin@admin.com','$2y$10$cUX9XqwMVOiLu1bYG1i6r.yLQcm2imTS4Rk5MYVr0EAvrCFFFPd9y',NULL,1,0,NULL,NULL,'2016-11-10 22:56:57','$2y$10$qFCrhHdj2Am2vX/uUXb8OuO7vwqML3hzsDg6qktPflZhqYwnlfEuC',NULL,0,'2016-11-07 14:09:39','2016-11-10 22:56:57'),(2,'anwar@gmail.com','$2y$10$1rAvLLh1lsZZLWeHP7jERuGmImtZAo.khs.7Mssepx6ARJzZgys1i','',1,0,NULL,NULL,'2016-11-09 14:12:46','$2y$10$7XlUMS91DtxzD4hj8H5HjOYN9zl7LqjJbUR.AzWCAU4bc6CDn3.ie',NULL,0,'2016-11-07 14:13:41','2016-11-09 14:45:45'),(3,'user@gmail.com','$2y$10$AWt8auh7RooR44l5EFTryOSg0M0VOJWQmV/xOTUHE0oxlEGVMy3ze',NULL,1,0,NULL,NULL,'2016-11-09 14:47:59','$2y$10$T.bOvecobussiCZHRuZa0efz5hYet3uGrqCGD5kxZUCBOBsMJkJve',NULL,0,'2016-11-09 14:47:33','2016-11-09 14:47:59');

/*Table structure for table `users_groups` */

DROP TABLE IF EXISTS `users_groups`;

CREATE TABLE `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users_groups` */

insert  into `users_groups`(`user_id`,`group_id`) values (1,1),(2,3),(3,9);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
