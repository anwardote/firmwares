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

insert  into `user_profile`(`id`,`user_id`,`code`,`vat`,`first_name`,`last_name`,`phone`,`state`,`city`,`country`,`zip`,`address`,`avatar`,`created_at`,`updated_at`) values (1,1,'',NULL,'Anwar','','','','','','','','����\0JFIF\0\0`\0`\0\0��\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 90\n��\0C\0\n\n\n\r\r��\0C		\r\r��\0\0�\0�\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0��>��ώ��k۾��kA�]h�)����\r�3;����h�>�S�B>�+���B�aZ.IIe����1q%����{�a���K6\0Ky�ʗ(Nw�s���\n`���Ժ�~����r������{�KMz���Z�[߳�ڻ�k+x9��8�MpBr�VPt�䗽Ӿ��4��9���^������ܕ�=2�\"�I�gr�������Br�T�r9[z�i����7��o\r%��yZ�mb�w��U�w]1rH���\r�\n\n\r괾���#��\'U�[#�4�w��!����ca	�f�n���\r��h�(;��������*V����v��[}�=\r\'JQ�*^���|@�,tS>�}qkcw$k-�F��ڬ��E	�<��VcԤ�Q����*i�+K�J��\'YӬ��lë$�@�60T+r#\0\rÌ���f�rҩ+���p��������\r7Ķzn�p���k��\\�-�u�l��\00[\0�p+���9J\\�������c{�6�Y�ZR����,¶���n�<^ɷ%D�b����rv���S�b�<<�\\�;Y;�oO��uh�|����L�\Z�G��=I�k{�\"0\"��=����e>v!�$���Q�ݿ�m�<�D�U�9=M�5/�j�ƿq�jwXg��y���f#;H�ׯQ�ka�R���[��^UU��>��N�������Z^���t���#8�F�1Uz�T�@#����Hʤ��}���ԝ+��<��ߴ����Ci>��ε��C��`0BHN�9\'��Z�#�X��$���S�)��g�|���O�Z��8t^��-/%�?/��Sh\0b����Bq�W��Q����1�9��M�~���-|Rn��Z�^I,-,n��e��y�*�g)d6Aa�<̧���Q+ͽ�����+I{��ix���|4�t�6��j�$�\\�k9�����2�A\\\"�y.I;N�+	�=��Yy���QJ	4|����F�夏�[ϧo�����)��e\02��2�9�$�*p����zo��R��ȣbƯ�\\�hv��Genږ�X�`LhI\r�����g�&�t�?qz��N�=���f���Ks4��!Õ�Wv��8c���]�MZ�+�i�{7��\0�_�8�!Mfx,4��Sk��&�`�`|��1���<�L�7嬻isjVm\\�i>���^���Rd\rh�\0� ���\0q�+͖mR-�-�wٯ�_y���{ox�F����������\"�7�2n�I;��re� 0Q��&��J���sϣE��cJ����]���P�G��	���p�Y�6��0�s��w�)�?/��[R�%�է��u�J�q��/�n\"�\0\rm�&�G�~�xc��)v�E��?z7;�N+/�*�I:����׺~DϙM�sδ�������ⰽ��wZt�X%\Z���\0���x`���K2t��o���9b��9[s�{�F�=������I���$	g��_r�l,T��\0EqV�)bi7��S���.�K��tI����w��c��E�i/�,$)ҵ�̗SIX���x!��#�+���J�>#�d��^ｎ�˖	�v�8�\\jzݒ���qy�$��[@�1����d]�9ܑ���kb�5k�*��J�Z��vdV�%�r\nֵ��2�zT�e��m¥�2G�e�o�H���[\'$�]�ԨC�y=~�r)�W��Q���+��\0�4�s�3�7VS%�Vi¬��4�#aH�:�%��S���\\��6����~��Zu\"�s�ҭH�kg�W�ڂ�ݴoo��D|�&2��E8U�j!!8U��	T�SQ�*w�i�o��R�iÙ3����:��u�ľ�(_P��y1�ǅ�h���9�u��	�\\�|��x�1���������Χ��z��1ʳ�i�k��g]�U��;H�\0�mۏ��\"�p�5���Z����hJ1I;jw����Mc���^��H����[[��h|��C�v�^Os��y���Z5��|�t�}�c�����\0���ރu�x6i�UPBt�X(�$�]��O	9�sҼ�qW	Y��/w�\Zji�{y�+������5�9%�i��G �.3���ñ9�+�>���;A��zD�]V��\ZƩ3�isȯ$�\r�I�E��~�\'=y�u��F����+;#пe\r���>&��&�.��i�c,����<�*І,Y7q�2;��1x�Qq�/�W��m�z8jn��vH�� ���������������-Ų^G8;�2窍�\Z��<L�����-6�tT�y�H񘮠���I��S[���EU���w;���v\02 �$gނ����kvyӊ�Q���E�j�r��ȱA\"yh���YAb���n���z������1p�~G�_t/xCJ��;����Clu}>٧!�8�����I�\0����	R�M����N��:����IVo,H�Q�Y0��]԰�=�n���u�bkK��ڂ���>Գ,m�lţI$o\n@�Sp����<j�����Φ��=�}��Jn�:��~&�v�\Z[g��C�K*\\*Fp����x� \n�(�u#����8�:�|�؝~$k�犟Uկt��q�E����\n�`�(\0���w\'#\r��0XlB�C��$�eczu���J��\0�����m|S�����2�0�H�l�r���H,˳\'*8��Ur(� ��տԨ�P�eV������l�����X�x����$�#�7AɌ���O��|�jX�Wxl<cN����U������h>=�O\Z^�k�� ��)�-/U�Z�]�f1�7d��8�^�S*x~LEK�u�y���q��	���-��^;�.�RI/�巑�.AݵV.C�ܬÌ|϶��ƌ5��2�9=�����m#U��\"��v�>ǖx�W�ȏ��W��F00Hϭ{����%J��4�3����fΣ_�ۣ�#����2���7���?�qy��I^ca�T�v�ֆ&��\nUi�OGu���V�����׹�ߴ��\0��Csa���iox�/n�0�H�\ny`O9���(W|я+}��ЅE��%��	$��-���Nɘd�Ǯ1�ⶥ�S���P�B��5�&���M�]A�*\\r�$������.zq�2G��<���ok�ZI�\\A�[��хYw\\���=;W��Ȱ����֝�,TyQ�5�\0ƝS�y����:Z+����g���ېv��\0�G8���rW��9\'���Z1�Ijb���x�|[%����M�u6�Y���dQ�<\r�z��%� ��/�\n�f%a*|+f�ߩ��ūC��3�?�5o�p�g�f�M6�ʀȒ�_>hpN��q��h�q���2�,:���.�9S��������ú奾���כ�O�r��+�)P��D?*w\'=�Zt]~EY+��g�C�XEGc������X�4�N]*��~�s4K1,$6c�HT<�I��\0��HF>�x�擜]���^�����8�cH�A�7W�$X�؇a�X��%A���UR�&�g�R#))^��|]⛋})�t�7,����ϒaڟ;n�\nI�zs�V���j���<��c���T��5e���䑚Y畁ڪ	�+��\0��S�\rJ6��MY�#���\"�*��~YȲ�A��Prws��5Ψ�j�*�37^�s⧇tjV�&������ɞ�� \nH_NN\08a��ƾ;	J���RW�1���¿hK}��{�\Z�|+�}�;�U�\nV�F;�T����0�\01_i���F4h}�m]��]u�a%dh|&�f��\ZW��[�\r+���Q�g�[cKD���a���8N���h�7��]5=�<ͼA�xc�O&�3�Ol���g 7f8�j!z��%��*��|�Ë�K�1���D��oE���ۚX�~i2��3�2�]�\n�=��KU�\0\0�h�U�,���/��OW��ﯤm<M\Z[�L뜟(��(#�n�}�f��U\\�VmkugrkR�wG��+�f���V�u7�����	uoxP��m �K��\n�N@���+c!8YI-[��58ۡw�O�/�?��Ï[��������-T�\'\0mV�X�$X��=~��_J7n\\�z/�F�=ާ�����[�o9���b�7ʋ�\n�%eM&��m�ʶ9[�k�J�,�|�1<sLe��aӥ`���*��=���QC��<�C��~���?o\Z6�\"ܭ���y�8�:�� �Wj1��\n�{�Sx����xn��Oܳ�}����:�\r��>��:@zg?�f9L�����jݎj�k޾�⟍��4�-;U���-)��c;8�E��d[�����g=�H�p\\�)rJ�)���b[J<�W�Y���lnn�	\"�4Ę��\r�聏��I�u8&�jjS���9�VU�to_���qx�B��K�R/���:��I�����\0t�8�9ʒI[�4�S�Q�S���P��xM��n���@,Ugr{�r}+��T���w9]ҳ=��^���\0�<�MƯ\r�׈.`e�e�V7����� ����1�훋Om-��Vߡ�	E&���F>\'C+�y�kz��ɨ�Y��?���?��F�S�[cpO���t��\rb��{�θ�獢�K\\���5�B4��$K�P]��ǌn?�ש�J�No���|E��/��Q����k8c[8���)\\����F������:����+�z%��,��VFw�4���귺�ݭ�[G$�t�fX_��>Wb��q����X_��)��u4�59r\\���#I��5Ŷ�m�\"T�9Dm+��o0�\0獪\0\0�4bj)4�ɐ����Gğ/��e����<���U��������;W�풋Ii��i\'fQ�h������c��C�.�[HS���汅j�~�ԪPkރ;�3��ݭ��\Z�Z��NKx�-�(R��8�I�#��\n�=�^�:�l�^����Z��,U���U����:_YxR}2��Gp.�8Q]��$s+ȥ���c��2��Z�%F�p���1��M�k��_5��;�k�M�#�a�e`]�7q���W��x���&ܥՙ8�h�\rb�z�s_C$(�qެaʜ�\0	.�R�AJ��,�x�:*DQ��]��qJ�4jx2�}/\\��)����1ȧ�EE�f}�_��/�G[��uq�(��͝��e|��Hr�G�|�##���qyf*�#�Щhvz�\0�U��v��C���~_��M����ť�[;���Ʊ��ʸ�=�0~��Ԡ�}z�B�)^I��������#�>_:Fڼx�����!n�����S�wQ�Z��J/�c�{r��c<7�ǽy-�u[Q�������5?��ԮD66�^H\n��e\ZF�ہ�1׷S�rj���MG`����͇�{��v�+{%t�g��VԖ\nL��\'9���8$WtTj����j\\)�OEc��&��~���z{�\"ԊO�F�]�\"��2�O>a�\\䎵�`�6ӵ�\03٦�(j|��~�Wwz���I���,���!��jX��s��zUo&�Y����c��,��̞ �,M��jR[�\0gK%ګ�@#l��`v��㟚��N���e����t:Q���c�)o���Č�	av�qiwl#+.B�/��c�����:!h��o}Y�˕���Ym����Z��H��0Ĭ6Ȭр�;�¨�S��^G\'�����n�}������Ŀ�5ݖ�m9��@�7�.Iݘ��$�x�&���K�6��N�Ԥ�KSơ�u}�/j%u94EKY$��X�GdbP\'\0|�$�y��J8�N	B<ϭ�S��_��h���)m��I\rћ{�2\0��F����S�f��k��~YGs��j�&��V�h�5ζM���[7��5�v��Ei�\0I*0�5\'�G�Q��N�;���c�Ĭ�[�2�iv~��>ڌW��%i;����wp���wn��}+:��=؝Ti)+����6�N�� �b��&K�ְ�]\r�i�D3l�s�qP�S��\rZ�4]�%iR�6\'V��+��+�o��_k��`a{���YT|�9�M{NVbx�E���Ako�S2N�WE)�Q�0�Y�}Q�+�޿���,��[G�����b�Ǵ���	�<��j�IK�:\'��y8�4�>�<چ��[;i�L��I%����A(΀�NARGLk��禍nx�玮WL�tm_L���o�$	�r��}x��~��$�W9���c��B�_�,�[�㶵�1�]����X��Aϡ\'t9��\0o���k��Dr�ݽOd��/j����^����%��G��e�_/cɰ1�2�9;�l�=+�)`�Z�kg���*\\�J,��\0|!�M?�_\n��R�5��W��`��E�ܱ����f\n�Ա q�ap�P滽�:�G�<����s���U𵦹,Ӗ(c����Uc^0���,	��V8�M[V�k]���K}K�+o>IHQ�}Q�7N�?굞��:��чP�|���s�$�J�7k/���ڌ�AN��8\Z��t�Nd�>�.T��V����t=sư�%��oJ��1%����p�9C${ě�PI,��|���R�/�k���\06\n0��\0x�hv\Z���|5Դ���:� ���o9�]Ӄ�٣RWvF�*9��yT���Ҍ�k��撵t�2�ya�\r;ÖskrO�\\ȭ ��<�BP�FSt��0w{�qVr����ӡ��)SSl����>\'��ԗF�1�j\n@��M�F� �S���[�$c=�<J�ҷ�/_�к:��d]��v��_i��P]�6Lm����y���?xs��b���o����ê������P�[M��Mc��,��{A�ӗ����k@$v\n�\Z?�:�d�!X���S�\"�ݢ޶����]���~Gx�\0Oh�k���	�t���1��X+G\r�.\\�u;\r*�[ZF����O�W=JJ��I��`t9��rJL聯C��G�h�I��s�Z˘�QC�BB�mU�\0)�=��X�w�#��f�FH�)��\' Wo��R8�.Y7ܻ��vZv���@3��w-Zқ�֧-Ux;�8��T����n!�n��N��c��v�G\\�e����+�x������~9�^��>\"\Zf�}���A/���H�4jI����׏NnR�k�pՏ4#n��i�M������,;x�̈���@BNS����=�\nO�g,j(��lx���օ�iEhV�yݲ0�z���9��1�x԰�x�b��������x��~*����&����][F��-�mb�(��W��pH�xt����Mr�C�\n��+�������;������j!-�6ֱe`DY�L,��p	=~\\Wmj�K�%��ԗ,RG��Ο�������2�Z�Vi,ڌ�n��C���� ��t\'\ZT�k͜j1��>İ��<	gco\\�J�F�\\�_1��ީ�+%�c�|C�V�ޘ5I���v:��\"�2��!��N\'(������#k.�����z��~%����%Ӵ�n\"���3F��O4>Y\ZLm\\�0\0\0t#��Vx|EJ����\0ÝtjsZ/~�(�|K�/�A�$����Qw�5Ŕmot�X4�fUe;� ��\0c,�B�Z~xVu�Y�X�k~:�����r�hڕ��7kk]���2�\n��@V�g���:���*�6��{�ؼ-�|1uw�����pj�$���W�� \'˴�vF3�n�\"�[,��`ե�N��z����c�_�1�~jsh��,�ߵ�\rB��,��>w\0�Y8$�<\0(MsJ^�[Y>�.ǝY�ͨh����i������H���qY1�p�׊�P���G�䦝Ϛ~&�w6�� V��N�G_�G�5�8��<���&�ѣ�\rV-0\"\0ZB�j��T`�n{>Ӑn��{y#[�;x�i<%��ͩ��G�i6������ּ���ٞ�:�����A�F%��\0�\0�Da)�΢��ៈ�O��3.�f�I�]�8�pOlw,N��3�b����wn�F?�2���k��\"�ºF�e��_in�����q��Vh��pv�r��=OgRz�w��5*FRm���e��_&��ͬE2����m9����cv���QU����V�Jԝ$��x��\'6�X�;v��b�J�:Ҫ�9��69%�=���¯\r?���x�L��95u��wQ���D�=]��$��\0������t#�����\0;��&�eO��k�֛����.�en�iko�CmkN��e�󵘌�淣���#^{[Kk�\0��	+��ʿI,�5k���Z���hE�Hc���v�*w�L��@���f���\nuU���쏦�G�	�e����֮!��\\1�E.�˹_P\0�g�I�[�ӥ�uAůt��nb��%�D�\'P��A ��W]�g�_��:�kK>�p�L\Zhf*>R�\"�\r�F��_��)B��׼�>}���G��/���oIm3S��S����{p�\\�Xո����5ԪO��KU�c��#���e�4�\0x>�=SG���\"�ʽ�o.$�Q�I��ƦuwA)C�%[��!����تN7od���W:�����z��{c�j���n��0C-���vL8!erp�!�:#�Pxz7����:���NCü[g��ĩ����\r��n\ny`�#F\r���|ބ���_#W0u���~࿻�އ������f�-����V���nۑ]q���Y�_C]�r�fyM���C�]j�)��+y��[Di����$)8J�\"�b��FP��f�<CŚS�x���Q����W�aj�\0��_V�b�ȴv��I���N�®����E5mmv\\�k�ib{kG�zʃ��@�9ϥm�k�;�3�ܦǅ�u �0Hʁ�Wx��=:\Z�?.bO.(�1\0bA�58x��{rݣ#�v�vs]K���M��I�[=89?�5�QJ;H�a8J\\�\'����n|�}��,G�#\"E8>��z��|��i*7v]N�R���\0	׌�9�����~�f�Xi����1���#\'p��=r	�K\Z�v�{l���R��b�H�?�8<_q�Oa�Bg�C\Zjmh�+*�;�S��6c,sYᚯ�۳���d���*ǒ�7�ա���I&�$�g�U-�R��)\'wm�q^>a���e�t��}�56�{:���X�{�ZL+g��\"��Y��L�5��%���s&T�3��)�*7W&�N��7|���.��ROj�jV��I\'mIY�v6��d@���\n����z4׳����(�s*��s���/<Ow}�}��F����!Z,���U]��m?�{��N��𹓛�r�����?�|-�f�.���:��������]��kH��X�\Z�\0�A���y���T�V���(�R��D��G����%����U@{;d��(9�&W�#��O\rw���k�1�̺S��K��Y�����e����0p\0�͜���iԕ(�����B	�.���}>�=6��=J�7����+�v�pV �R0v���?�F������*�J�l�sԼ5s��r�G�`��!�o\'���Y�m�cP�P���fm�I��kJw��^��J��i�Ӗ���j���v��h\"f�� 	o�M�\r�������Ѧ���ռ�*�u>-w�ǈ�5k��ڬG[��Pc���8}�;1Ub�(P6���N�\\x�<&��=����/u�p>!�<?�+�L�#� �V�b`�\'�g<q�l�m*�SnOa�g��x3g��J_C<Z����oc,�[��J]q�X�\0�+e����ҩ����(��v|��_Òxs▥��$2��g�[���9#i�0k��J�}�c��+��cZi13|��k�N�RL�>���\0��\Z~ѝ�[Q����Y�oZ��%��8�ǲ������d7�f��=/sb���9}#L�N��a�����lթ�;6e([D�_�FUТ��y���\ZlQ�N�@�����9�ڨ�c��xH���Z/�4�t=Z�KM1�F#��yr�ĈJHbځ�����Jt��|��RR��eO��ᤞ�D�A�K(��;�����2�FH��d�J�\07��pyq�}����m�9�4��އ�7�/�����6�=�P�̱n�������אI\0�Ȭ7�������b�\'���>:K�����e�,�U�>yXI�Wv,ĶF�:\0����s6�H锢��͍R��)om��h̪����9���8���A��EF*���Ӽd�=��\Z��\r��t�s���S4V�7���p���f�+��J\\׻�_�tF��[�?�[߆>y��n,�[{��!�\0x����# (�<��Ђ�(��$v-��Gu�鶖	k-��Đ	�x����u8ɪ�����[k��%���W�@a�3y���cʊ����o�~a_�O��<�wn��NJ1�[��v�^;�mn�^E��[D4��f�+<�����T�\r�1���,^&rvi���\0/�u�V�G]��kA��%���F�Qm.?��^LX!\0�Vl�R͜����������,�mx�}l�c\ZQ�T�������!��2��ݽ��!�L�e�|�wp\\�_1�M����*�79[��}t-��՟.�����\ZD|#7�t��n���;��������s�_A�E�j��ƪOX�3�t-,t�/W�0��j�2�[�O<�ӚQ�gK�Ak��\0��^^�i���W���A�Iwk�k��-ŕ���c#�o;ym�>Im��rz��~�4�K7���}��iZ��ֿ\n��ϊ���4�I%���h���N%�\"�\n��B��@���\"�%ғ�_���a�M�S{#�	�WqzW����f�E�kp,\r���kjp��Ʋ��c�!�X-u#�n����Ƶ����G�g���������-�S�����<\n�q�V��R\r��t{a��Wz���撕�U�#Լiiz�i�t�p���/�`�j��c�����<�l��YR����͝�������vd��[��!�	�L,01b�.һ�c��כG:���ug�:��1�=���q\\�Z�<����{�C[��4�o!���o*w�bo$�bADc�A��T�~��-⒅����3���^Ǆ�I��_|4��a���[I�+���Ub~X�$``��K�1�*8�tj{��MA�x?�Λ�_4z�Ԗ0/̒En�p�Q�g��^�HJ��I\ZJ�sWر�x���R���n�f}��y��Ջ�Pv�Tm�p{UU�/v�X��F駱�������H�3�i�jS���7�K<�\"4��6�,o\' ���_�A�ݘZI9@�/�����,��<��Ė�����-d��a\'#�������S�T��㭁�MZ�?�A<�ϯYy��d��n���A�Z�x�7{�z�[5�ڝ����$��������\\2Ax���f9����H���>SZ��Uݽs).Y|y���?���d�.&���/4v�89$�8�p9�V\"�J�U��-�D�j)����s�M*m{�����,���X��	�_�����5�df�K�G�Ǣ�p�*9F{%��NR��[_#����iW:����i[���lRD��RA��K+���p�p��:���&�M�ɼ���g�\"�B�ln.u\r5���y�^]\\3D6vl.<΀����{WMOh�%o-�	�ݵw�wc�6�����&�CI$6��aUfT�\0z�z֔�\n4�3��s��\Z��9#��ͭ�Èt�?\r�c\r�wwz��n�/�x`>w�UI�wc���O{B���GMԜ9��O���t�ݶ��\\��%�\\���ʂd�F�ǆR�a��F	�å\n�s�o���)P�\'�>TF*�9�{�W�%s��Z�$���s��]�ߩ1���KN�{���P���8&����R��H��a�O�YZ�Y@����⥙U���c�kM�Ƥ��#�ƹj;��\r������=/\'��C�n���Y�$t�ǟ��@�>r0H�����\n��)=�y�?�Nm����A�ox?W���Ժ֑�\\3�q:���nH��]�۸���:�a��R�i5˿����49���Dp��&\ZG���_Y�KtVs=��$X���+�X8{�s�_���I��_ ��(�C�5_x/R���=�ݵ����d-�I&Q�i�Fw7r\0�H�<c�V��)�ٟ.x�GѾ$j����kfѤ�$��_s#)oA�:�k_��«����Zir�^�;��\n�����ҵ��3���� ʌAMÎ�s�l�1�T�UV�֝{�͡���x��Z��O{�I4-$P��q�~ z\n�)M\'sGg#�>\ZxZ������T��	p�aEu���q��@HbğZ�kbh�}�nb�\ZR�V�����w$�u����O�Yg��H�yfo�I�<k������~���<���5�4�N������<�~�+�:6���n���w�o5*Q��\"��4乣�=^)l��~�F�g�]��g��wHw���@c���|��\0{����)�)~��5\Z��������`�e�n���g��cl�����m%� �^�4�e͡RS����ٳ��<H-�/%���l���wr8�1�^s^eF�^[so�0S�+C~���]����H�[�3+nQ�0F\rMx�Ե7k�.iݞ��?��{k��o\ri:4�)o�QM��m>PGl\r���gor)�#WEBpI��zԤڼL�v���V\Z��\r�� ���\\���m�!PA/�\0�A�j��T�__�r�m��<o���b/�5xD�3�N���c��A9ۏ@2�V�\ZU-Vi\\�9Nq�w��g�\Z A��\Z��A4}b���j�PD$�̙�(������Ks}<F	�!�)-7F�r�,��!���g�&;z�sN.�\Zs��o��έ�7�	�谉�H����a���z�\0�&���\Zr�#v�v9�V�8�3��/�/��1�4���k	5f����$�H�#�2\09<\n�\\�V��6�����n�\0q�jW�=�:�\0�B��y�ރdb�|�m����\Z�7����1��\'#5�O<���tԽ�}��8{ʖ���>\r�Ʃ6�s���i�͆��KJѷw\nrq�9�^,�����N�p�+��\0�t*q���|i�ĺ-���gH�,�m&����E��I��N��l̬~�X����\n4#7�[���a&����������&�g�|E��ot�gr.,|���b��s�@G	� a��|�¬q�xz+����|�:�FTm&`���V�����h�~��2�o��,��u̬���n�@��\0���W�SgU���mo��\"	�ݎ�N_���]+P���e��A$����$!l��\0�I�\'R�Թ=��i9&������_F��_�q3D����\n�BAĥ��	\0���u�^�I���+)J�ٟJ���P�[������V5Y�c.^@>f?)�rk��}y͸ЃW�Tz�0KZ�����=Ϋ�Oɹ��m��j�.���T|�7m����3���x�5!.E��S�97�:�w�^��(��B{t�`�/��MX.���G!R��\0��q�`q�\\ܔ�N���X�Ў�nŏ�_��E�N�\r�������+��Q�<lJH.�׎�~OJ?{Q�����*��\\��E>�mes�� $��_�_���*/ٹ%v�nw��I.��\r�S��Z�I�M͘�!�	*Lc,̠�3�k�Jr�V���la*дZ��l��7��>�r���E\rˣ���s)#\r�^��85x�S���Q$�����Ԋ�z\"������Co.�u%��j�+G�\\�rÁ����;�:a���s\'t��)B�G��ڷ������#���H�0N�(>�J�!I�������ɷ�[�a�ku7}�q�� c�^�}k�WV�������t�Q�F$*���)��u��k�\Z����[��\',G�k)T�V�ѡ9|L��׉�>���h�Ye��	���[���Ae���	�C�J�qu�S��~�y͘ES��t���}o�Y��?�z�Z\\%��s_Gl���lʹ��>�\r��`x�����ӊv~�,|�2zsj]���}w�z$�\Z��S�t��m�t��)\'C���f�\'�f\\��?=jxڒ�\r�͔�������w��?F𕝆������E{t�đ�Uv��[r����⾟	����^h��w��R���;��.��g[�>����.��P�i�s�U(Ac�=ARK\0\rx����%e��z���ѝ꯲Z#��S��� ���_VѠY�v\n��fR���2���mѣJ��^�����,[�������2\r#��3�خ��؛Kw���w2���Ug�89!z¦�dʤ��II;;n��gu��-�[�,>��Ԭ���i4�-\"	�P�o��#�P���3��27�P�g��/KF���O��#IB:����>)���\'�� 3�\0mM\Z��&,]C2�����	<�p:wQ�S�T�T��Ֆ�O��������C�^�Z>�m�	\Z&�k(9S�F�W���,�̯i#�;-I|si�����������ċ\"�����p�*r1��q�5���:pP�*i��-<am}i{�+Z���2\"��7�v�#b�33�l�&�eO��Iu�ٓ��9o�cE����\0H�B�Z�=��so�Ot#w��+D�ΡՀ8^�rA�z����(AT�(5w�歴�.,ll0йE?\\pq�������9}�OS����K{k;�\"{H�ݙ�C�>��L��k��_YMUP��c- �+�I��{�Y��6�s�=��q�*\"���F�:�kގKNrR���QFr_�g��#���>{�%X$�Lq����8�s_C\nP�y`�k���<�h�:�G2=�f��Տ&��A���:m>�A�I��I�qZ��q�j.Z]���v�\r��\'�Y9�v� �0��}*/r�u����9a�\\�\"�h����u�FO`p=Ϸ�l-����811U#khzo���ĚLW�0G��N)!�K�1�\r��)��1� \Z��e�z���~G��R��x����Ǫ���K��jK�ƹFL�v���*pɎ8��S�op�3>x�rǭݟ�2t��և�x��VU�u]OQҵ��K`�%��H�2G$\0W��2�gQJ��gN�\n�/��\ZV�nG������妿oq�&��H�P�n�>D�r����6���d�ak�d�r�z:^���OF3���ǿ�_P�m��}.�6��cC���il�,J�i�J2�-�M֋�[�Ы�\'(�zǳ��s�ӭ4)�I\'ӥ�kǞY�O6=��$8�rq�s��^�LD��Mr�-�l�5ࠡ���h]�K�L�[�/u{v������T\r�G�@�Lc\0�\n|�z+�V�{�+I.]�b�$�Q��v��{�E�o�_�(�|�#�`M��2@��p2{��m�����sR������M?@ԭa��[ki�exC���ǒz���R�]�N�j}S�-���A���t�{�KIs+_(.v��V3&D�A,⤎>jP�I����9UGɪ</R���}���H�vse�N$,��=q]0jvWL����봻Kk\rF���$@�$ʪa���$|�laJ��A�8�|%LL��f�)�˝h�Aw�-*����{�W-��rO=\0�\\��\\�_��g>vߡ��Ż������eٗ�A��^\0��1^�`����U��)�����J��U���?ҝ�6�e4�!TO5K?�K+�OD	�x.�G,�+��k)ӍX٣Zu%I�%s�v�f�w�\r�m�*x_�����դ����c�-��+���:xy�Fz1�+�LeP��:��8�k�TjoceR/K�֚ʘ��*�c�.K����$v�oF�߽�s:�c����׺���Ǘ	m�\0g-���?1���0�G�Ss������z��5P,��bR�\\:�>dt��\0�k�G�͋�Og�6�h�cs\npVA�g�}1W���Vp�ֽc�+���YB�/��~��@�*tx�\0�<�\0����^��_u��*i蝏0��mL�,�t�F����ص\r1<���\0=P�A��H漪�uJR�WG�,3���a�G�^(�{�y��X��2�+�4�n!`�Te�t�ǌ��םha����8E(�Hg��Ƽ�-���쥒�S|:<�J�	|�`9�#�p;Tn}�FQ�V�M�I�����ٽ\0dGn�4D�u,Cq��qԚ撅J������>n..Pg�|4񦿧�yl���Ռ6ֲ1!]YJx����ׯ�Ia�9s��{+��;ۡП\Z�d��0�����_b|���J�2�o���b��s�<?�x>�K���<0x~��[h�e��G���>Xໃ���)*IQ�p��,�Nm�{��x���IԮu�aox�A%���,�cۆۂA9����Jr�,W/�kAJ��<jq%��G?v1��Z�*T�MZ(�쒲/��%��H$��WR@$�#��C�2�A��J��s|���������34�<�@�zP�4��\r���\'�v�ى\'u��N�6^��P���@��Ϸ4�S�jMlɭ�O�?ʧ�+dW���o�z�𴥊\"|���$+�����k�;`8�v�{7A����xJ��Wv�ن�r�#��~�д+����,Rv&��H��ߏJ�z�\0��)$��Ķ���^6�P��G�{��I�pK�&��k�N�L�t��	a`H�������.�j�]&��+G��Ԣ�N���E�S��H��_1H!�p{|W+K�՟s9E3��~\0��}��#��um����hb^0�e@���J�`���R�~�Q��QBN�qoC��W����M���<K����&����\0��ʮ�OVܩ^�=j.M�%cΩZ4�v�ŏ�&�an�,-��2L�6�X\0�9&��F�����L)K�W��4��_\rO:��/�c�ǯ\r�}�~�}[�N�?\"\")�i�!�����ԢG�]l�Bb}˔\'��� �s�;�V�9�鿻C�­��3�#����Ms�W�����$�s�W�s������p�s�1䏙�b��Ʋ\0��$}+ҊOv� ��v\0�J���[�o���Zu�}�P1����\ZZ��[H�e��۟R:�lZ�J�U�K�X���}�%��Enc�`�@D�o>�f�ܑF2��L	U˹_�s���\ZZ0�\0Q���O��3���\"��Y���X$,a����ԣ�ҏ�V�F2ya�Ӱ�R [�YY�y,`��8|��w�I���˸[e���HN	���8��D���z��O�~����N0*�&#�<S�K�?�4��R��Ot᷀r��\0�8��J������tK[��ɷ���v�Z�V���R�dޥUAh�a��	�}��ܢ�%�&�5yF����B\r~�4�mb�X�<�9tH�&T�+�Y�n�����x�nV��)Ђw�{ޗ�6|E�̴ǅodJaƣ\r�~�u}BoWE��l�p?4/�_Ai�b[jr�Y��B�|�˵�P��k��5icR���GuUR�wG����`��+袌K����_�\'��+WR.�*��&����i�CN�����7��!���G?q�i�7qCu#�<�Z�WN��+\\��A\\ռ�Ϧ�C5��g)h>F-��q�3�^�p<�k�c��yRv�����\r�<o�5��I�8�7*�g�\'�\Z�����z�)b]et��~x|A�[���	�r\0�#�W2�soh���D���Y���qޓ�b�\'drc���\Z$���H��S�t�S����p�����Q�˫r���Cy\n.T���y����\0�uR�ڋ�N�[���ޗ�&�\0P[ˀ�љe�C�˜d�]tp�%Ԋ��J.R[?�-?|~dR�N��G���%��&yQΨ?�4ki>6���{�,�FRGȮI�x�o�p�0�6���[��eu�����,�X}��b>���A���sԋRWLĞ����p,���`W��+sGD�eޭ`>��z������=�/>�����n\\BN~�O_��.�	���>8�cQ�WŽV����./,�|�\nF�@;�n��x��W�qө�\"s�����kg}�����\Zj�3\\�<z��P2J�GK�0(u|6C\0q��^7\n3q��孻��,���NR���cK�n���z���W�;^���FNN{w�8ʳJR�ߛ2i]�G;�o�2���A`a�S�A�,?ҿSJ�Y��p���\0l?J�c������1+�}��LT���%��}�����C/]��R7.zu,i�Z�s�\0th�;8�\"2Я� @\\�x#\'�8�ayg�k�|�<���u�w���}:O��7�\n���y9bq�UQ��\':��c3����UL�N�rʢ���-��0\'<�s��\0�k�M�ƥ�,-T��s�~��A��]�[� ��@8�\0�U�b��Eٴ/�> ?�4�{x�R���s�Ev�\0<W��xi�q��h�1��XH�Z휟�>\"O�mV;hÙ|�Nq���׉G,q��{�K2�!��6g��\"�3=��^Ryc�ϵ}�\n�H-��*����Cⵗ�Z=�;D�N���x�����eQn�5�c�̤�&�>i��n�Q|�C���\"0G9����ݴ����I�������Ѝ�L�j������j�ы�.�ڌ�ZJ�U�>������P�J�R0�����O��֬�I����t����ck����*��v��!K)?U���X�5��\n�C$����\'�\r+��+x�T:t�_��*LC��י�ߴ�ڭ|�vT�wg\"c���^qG�*�jd���g/��k{okQ[[���=�-Й��I�6\0\0$,�Ű88�����Eb\\��;��S�rZ�\Z��J�c�D�Z��p����3j�VSˌ�pI��ǃ՘�4..&��X1$d{�_�j���q��KgT��5F|Oh�]�kM *@w_\r�~�ϯ��%�`�i�pX�v�{`}�=0]�_xj�U��M��U��7&\'V����}EtP��=v1�h��h��<7L�PL�rq�5���>YI.�w(�O��?<D��l�gc��Wz��Ҭ?-_F�\Z��o���yѩGn��~�|v)e�:�.2$M�kz��|��6��_[ǩ�v��/m=����d�p�c;Hz7|t5�:jOTvF�*�*�g�|\Z�a�V��_Oh�n!T\n[�ۨ�緥b���z��4���O����k�|�R���r�`%q���?�w+4xU)N��d|���#�^+�A1�Y��ٻ��Hr?�[�,׹���t���=��=W�[����h�S�1H��d�8���W���FI)hϞ�a��Q�t��ܴ���-���,�u�g��\ZJ�z����,<�U�kDz양X]Iko7ڣ�lTʪ	ێ�9ھ�>�����mVyB﷓�� ���B�AM6�ܣ��Ŭٕa��q�	��C��m���ZG�!cޣ�����\"[.��+M���\Z��o$�J	ڃ(q��\r\\��S�v�c��N\r3���}}\\�iL�ƨ��I�&�*:`���8�Ѓ_Q��|��<�Tj<�f�����hz}�U\0��2q����5���\0������n!8�B[��c���.?���������R�dO���\nlE��^�s3��4��;;�\r�{�$�^M�x��m�\0�s|��Q_o�o�D�lO�dZ��`]�fYs��\Z驢���GYY�>��|�����HF������,�Ob���\rAD:5Ȍ\rf��O��{��O��O2��������{4���/��o\r�\0�I�\0�e��_�|r����ē��{�/�_�>[�?��Ӊ۶~a;\0{����ɷ�ϧ�D�k>QNCg#�̵�y��ͼ���?�~f���t�~Q�/J��躜f��=�y�[��\0}�����{㓑�5,d���0g�I��Hq>��C3~���$���`��h����63�竱�>�3�]�������g󯓜T����5���>��|#�>�d͢�Ō(I6����ڥS��k#��','2016-11-07 14:09:39','2016-11-09 10:01:17'),(2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-07 14:13:41','2016-11-07 14:13:41'),(3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-11-09 14:47:33','2016-11-09 14:47:33');

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
