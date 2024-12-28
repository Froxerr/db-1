-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: online_appointment_2
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `address_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(255) NOT NULL,
  `address_district_id` bigint(20) unsigned NOT NULL,
  `address_neighborhood` varchar(50) NOT NULL,
  `address_zip` varchar(10) NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `addresses_address_district_id_foreign` (`address_district_id`),
  CONSTRAINT `addresses_address_district_id_foreign` FOREIGN KEY (`address_district_id`) REFERENCES `districts` (`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'Florence Nightingale Hastanesi',1,'Beşiktaş Mahallesi','34349'),(2,'Hacettepe Tıp Fakültesi Hastanesi',2,'Sıhhiye Mahallesi','06410'),(3,'Ege Üniversitesi Hastanesi',3,'Bornova Mahallesi','35100'),(4,'Uludağ Üniversitesi Tıp Fakültesi Hastanesi',4,'Görükle Mahallesi','16059'),(5,'Antalya Eğitim ve Araştırma Hastanesi',5,'Muratpaşa Mahallesi','07010'),(6,'Selçuk Üniversitesi Tıp Fakültesi Hastanesi',6,'Selçuklu Mahallesi','42100'),(7,'Adana Şehir Hastanesi',7,'Çukurova Mahallesi','01330'),(8,'Karadeniz Teknik Üniversitesi Farabi Hastanesi',8,'Ortahisar Mahallesi','61080'),(9,'Eskişehir Şehir Hastanesi',9,'Odunpazarı Mahallesi','26100'),(10,'Erciyes Üniversitesi Tıp Fakültesi Hastanesi',10,'Talas Mahallesi','38039'),(11,'Mersin Şehir Hastanesi',11,'Yenişehir Mahallesi','33100'),(12,'Gaziantep Üniversitesi Hastanesi',12,'Şahinbey Mahallesi','27090'),(13,'Şanlıurfa Eğitim ve Araştırma Hastanesi',13,'Eyyübiye Mahallesi','63200'),(14,'Dicle Üniversitesi Tıp Fakültesi Hastanesi',14,'Sur Mahallesi','21000'),(15,'Samsun Eğitim ve Araştırma Hastanesi',15,'Atakum Mahallesi','55200'),(16,'Van Bölge Eğitim ve Araştırma Hastanesi',16,'İpekyolu Mahallesi','65100'),(17,'Balıkesir Üniversitesi Hastanesi',17,'Altıeylül Mahallesi','10100'),(18,'Kocaeli Üniversitesi Hastanesi',18,'İzmit Mahallesi','41100'),(19,'Hatay Şehir Hastanesi',19,'Antakya Mahallesi','31000'),(20,'Manisa Celal Bayar Üniversitesi Hastanesi',20,'Yunusemre Mahallesi','45030'),(21,'Aydın Devlet Hastanesi',21,'Efeler Mahallesi','09100'),(22,'Denizli Devlet Hastanesi',22,'Merkezefendi Mahallesi','20100'),(23,'Tekirdağ Şehir Hastanesi',23,'Süleymanpaşa Mahallesi','59000'),(24,'Malatya Eğitim ve Araştırma Hastanesi',24,'Yeşilyurt Mahallesi','44050'),(25,'Erzurum Bölge Eğitim ve Araştırma Hastanesi',25,'Yakutiye Mahallesi','25000'),(26,'Cumhuriyet Üniversitesi Hastanesi',26,'Merkez Mahallesi','58040'),(27,'Ordu Devlet Hastanesi',27,'Altınordu Mahallesi','52000'),(28,'Afyonkarahisar Devlet Hastanesi',28,'Dumlupınar Mahallesi','03030'),(29,'Kahramanmaraş Şehir Hastanesi',29,'Onikişubat Mahallesi','46050'),(30,'Fırat Üniversitesi Hastanesi',30,'Merkez Mahallesi','23100');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_capacities`
--

DROP TABLE IF EXISTS `appointment_capacities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_capacities` (
  `appointment_capacity_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `appointment_hospital_id` bigint(20) unsigned NOT NULL,
  `number_of_appointment` int(11) NOT NULL,
  `max_capacity` int(11) NOT NULL,
  `available_capacity` int(11) NOT NULL,
  PRIMARY KEY (`appointment_capacity_id`),
  KEY `appointment_capacities_appointment_hospital_id_foreign` (`appointment_hospital_id`),
  CONSTRAINT `appointment_capacities_appointment_hospital_id_foreign` FOREIGN KEY (`appointment_hospital_id`) REFERENCES `addresses` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_capacities`
--

LOCK TABLES `appointment_capacities` WRITE;
/*!40000 ALTER TABLE `appointment_capacities` DISABLE KEYS */;
INSERT INTO `appointment_capacities` VALUES (1,3,20,50,30),(2,10,15,60,45),(3,7,25,70,50),(4,2,31,90,59),(5,15,12,40,28),(6,5,18,80,55),(7,8,22,65,43),(8,11,10,50,40),(9,14,35,95,60),(10,20,16,60,45),(11,9,40,100,70),(12,17,28,85,55),(13,18,12,50,38),(14,4,24,70,50),(15,30,14,55,41),(16,1,40,80,52),(17,6,27,75,48),(18,25,19,65,47),(19,16,33,85,52),(20,13,24,70,55),(21,22,20,60,45),(22,21,13,50,37),(23,23,18,55,35),(24,27,22,70,48),(25,12,30,80,55),(26,28,25,90,62),(27,29,12,60,43),(28,19,22,70,53),(29,24,17,65,42),(30,26,14,55,38);
/*!40000 ALTER TABLE `appointment_capacities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `city_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'İstanbul'),(2,'Ankara'),(3,'İzmir'),(4,'Bursa'),(5,'Antalya'),(6,'Konya'),(7,'Adana'),(8,'Trabzon'),(9,'Eskişehir'),(10,'Kayseri'),(11,'Mersin'),(12,'Gaziantep'),(13,'Şanlıurfa'),(14,'Diyarbakır'),(15,'Samsun'),(16,'Van'),(17,'Balıkesir'),(18,'Kocaeli'),(19,'Hatay'),(20,'Manisa'),(21,'Aydın'),(22,'Denizli'),(23,'Tekirdağ'),(24,'Malatya'),(25,'Erzurum'),(26,'Sivas'),(27,'Ordu'),(28,'Afyonkarahisar'),(29,'Kahramanmaraş'),(30,'Elazığ');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_subject` varchar(255) NOT NULL,
  `contact_message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Ahmet Yılmaz','ahmet.yilmaz@example.com','Sipariş Durumu','Merhaba, siparişim ne zaman kargoya verilecek?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(2,'Fatma Kaya','fatma.kaya@example.com','Ürün İade','Aldığım ürünü iade etmek istiyorum. Ne yapmalıyım?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(3,'Mehmet Demir','mehmet.demir@example.com','Hesap Sorunu','Hesabıma giriş yapamıyorum. Şifre sıfırlama linki çalışmıyor.','2024-12-24 18:27:27','2024-12-24 18:27:27'),(4,'Ayşe Çelik','ayse.celik@example.com','Ürün Bilgisi','X ürünü stoklara ne zaman gelecek?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(5,'Mustafa Şahin','mustafa.sahin@example.com','Kargo Takip','Kargomun takip numarasını öğrenebilir miyim?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(6,'Zeynep Aydın','zeynep.aydin@example.com','Fiyat Hatası','Bir üründe farklı fiyatlar görünüyor. Doğru fiyat hangisi?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(7,'Ali Koç','ali.koc@example.com','Yeni Ürün Talebi','Sitenize yeni model telefonlar eklemeyi düşünüyor musunuz?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(8,'Elif Tekin','elif.tekin@example.com','Kampanyalar','Mevcut kampanyalar hakkında bilgi alabilir miyim?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(9,'Hüseyin Güler','huseyin.guler@example.com','Ödeme Sorunu','Kredi kartım ile ödeme yaparken hata alıyorum.','2024-12-24 18:27:27','2024-12-24 18:27:27'),(10,'Merve Karaca','merve.karaca@example.com','Teslimat Tarihi','Siparişim tahmini olarak ne zaman elime ulaşır?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(11,'Emre Aktaş','emre.aktas@example.com','Ürün Karşılaştırma','İki model arasında kararsız kaldım. Hangisini önerirsiniz?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(12,'Sevil Yıldırım','sevil.yildirim@example.com','Mağaza Adresi','Fiziksel mağazanız var mı? Adresi öğrenebilir miyim?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(13,'Eren Doğan','eren.dogan@example.com','İndirim Kuponu','Elimde bir indirim kuponu var, nasıl kullanabilirim?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(14,'Buse Türkmen','buse.turkmen@example.com','Stok Durumu','XXL beden ürün stoklarda mevcut mu?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(15,'Cemil Yavuz','cemil.yavuz@example.com','Yanlış Sipariş','Yanlış ürün sipariş ettim, düzeltmek mümkün mü?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(16,'Esra Şimşek','esra.simsek@example.com','Site Kullanımı','Favori ürünlerimi nasıl kaydedebilirim?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(17,'Halil Kaya','halil.kaya@example.com','Garanti Şartları','Ürünün garanti süresi ve kapsamı nedir?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(18,'Seda Özdemir','seda.ozdemir@example.com','Sipariş İptali','Yanlış sipariş verdim, nasıl iptal edebilirim?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(19,'Koray Uçar','koray.ucar@example.com','Yedek Parça','Satın aldığım ürün için yedek parça mevcut mu?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(20,'Hande Akar','hande.akar@example.com','Fatura Sorunu','Siparişime ait faturayı nasıl temin edebilirim?','2024-12-24 18:27:27','2024-12-24 18:27:27'),(21,'İbrahim','ibo@gmail.com','haha','daffasfsa','2024-12-25 04:13:23','2024-12-25 04:13:23');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `districts` (
  `district_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `district_name` varchar(255) NOT NULL,
  `city_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`district_id`),
  KEY `districts_city_id_foreign` (`city_id`),
  CONSTRAINT `districts_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (1,'Kadıköy',1),(2,'Beşiktaş',1),(3,'Üsküdar',1),(4,'Çankaya',2),(5,'Keçiören',2),(6,'Yenimahalle',2),(7,'Konak',3),(8,'Bornova',3),(9,'Buca',3),(10,'Osmangazi',4),(11,'Yıldırım',4),(12,'Nilüfer',4),(13,'Muratpaşa',5),(14,'Kepez',5),(15,'Alanya',5),(16,'Selçuklu',6),(17,'Karatay',6),(18,'Meram',6),(19,'Seyhan',7),(20,'Yüreğir',7),(21,'Çukurova',7),(22,'Ortahisar',8),(23,'Akçaabat',8),(24,'Araklı',8),(25,'Odunpazarı',9),(26,'Tepebaşı',9),(27,'Sivrihisar',9),(28,'Melikgazi',10),(29,'Kocasinan',10),(30,'Talas',10);
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_schedules`
--

DROP TABLE IF EXISTS `doctor_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_schedules` (
  `schedule_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` bigint(20) unsigned NOT NULL,
  `work_time_start` datetime NOT NULL,
  `work_time_end` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`schedule_id`),
  KEY `doctor_schedules_doctor_id_foreign` (`doctor_id`),
  CONSTRAINT `doctor_schedules_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_schedules`
--

LOCK TABLES `doctor_schedules` WRITE;
/*!40000 ALTER TABLE `doctor_schedules` DISABLE KEYS */;
INSERT INTO `doctor_schedules` VALUES (1,1,'2024-12-20 08:00:00','2025-12-20 17:00:00',0),(2,2,'2024-12-20 08:30:00','2025-12-20 17:00:00',0),(3,3,'2024-12-20 08:45:00','2025-12-20 16:30:00',0),(4,4,'2024-12-20 08:15:00','2025-12-20 16:45:00',0),(5,5,'2024-12-20 08:30:00','2025-12-20 17:00:00',0),(6,6,'2024-12-20 08:00:00','2025-12-20 17:00:00',0),(7,7,'2024-12-20 08:15:00','2025-12-20 16:30:00',0),(8,8,'2024-12-20 08:45:00','2025-12-20 17:00:00',0),(9,9,'2024-12-20 08:30:00','2025-12-20 16:45:00',0),(10,10,'2024-12-20 08:00:00','2025-12-20 17:00:00',0),(11,11,'2024-12-20 08:30:00','2025-12-20 16:45:00',0),(12,12,'2024-12-20 08:00:00','2025-12-20 17:00:00',0),(13,13,'2024-12-20 08:45:00','2025-12-20 16:30:00',0),(14,14,'2024-12-20 08:15:00','2025-12-20 16:30:00',0),(15,15,'2024-12-20 08:30:00','2025-12-20 17:00:00',0),(16,16,'2024-12-20 08:00:00','2025-12-20 16:45:00',0),(17,17,'2024-12-20 08:30:00','2025-12-20 16:30:00',0),(18,18,'2024-12-20 08:00:00','2025-12-20 17:00:00',0),(19,19,'2024-12-20 08:15:00','2025-12-20 17:00:00',0),(20,20,'2024-12-20 08:30:00','2025-12-20 16:45:00',0),(21,21,'2024-12-20 08:00:00','2025-12-20 16:30:00',0),(22,22,'2024-12-20 08:15:00','2025-12-20 17:00:00',0),(23,23,'2024-12-20 08:45:00','2025-12-20 17:00:00',0),(24,24,'2024-12-20 08:00:00','2025-12-20 16:30:00',0),(25,25,'2024-12-20 08:30:00','2025-12-20 16:45:00',0);
/*!40000 ALTER TABLE `doctor_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_time_offs`
--

DROP TABLE IF EXISTS `doctor_time_offs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_time_offs` (
  `time_off_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` bigint(20) unsigned NOT NULL,
  `time_off_status` tinyint(1) NOT NULL,
  `time_off_date_start` datetime NOT NULL,
  `time_off_date_end` datetime NOT NULL,
  PRIMARY KEY (`time_off_id`),
  KEY `doctor_time_offs_doctor_id_foreign` (`doctor_id`),
  CONSTRAINT `doctor_time_offs_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_time_offs`
--

LOCK TABLES `doctor_time_offs` WRITE;
/*!40000 ALTER TABLE `doctor_time_offs` DISABLE KEYS */;
INSERT INTO `doctor_time_offs` VALUES (1,3,1,'2024-12-15 09:00:00','2024-12-15 17:00:00'),(2,8,1,'2024-12-16 10:00:00','2024-12-16 14:00:00'),(3,5,0,'2024-12-17 11:00:00','2024-12-17 13:00:00'),(4,1,1,'2024-12-18 12:00:00','2024-12-18 15:00:00'),(5,7,0,'2024-12-19 08:00:00','2024-12-19 12:00:00'),(6,10,1,'2024-12-20 14:00:00','2024-12-20 18:00:00'),(7,14,0,'2024-12-21 09:30:00','2024-12-21 16:00:00'),(8,9,1,'2024-12-22 10:00:00','2024-12-22 15:00:00'),(9,6,0,'2024-12-23 13:00:00','2024-12-23 17:00:00'),(10,12,1,'2024-12-24 08:00:00','2024-12-24 16:00:00'),(11,13,1,'2024-12-25 10:30:00','2024-12-25 14:00:00'),(12,4,0,'2024-12-26 11:00:00','2024-12-26 15:00:00'),(13,15,1,'2024-12-27 09:00:00','2024-12-27 17:30:00'),(14,16,1,'2024-12-28 14:00:00','2024-12-28 18:00:00'),(15,11,0,'2024-12-29 12:00:00','2024-12-29 14:00:00'),(16,17,1,'2024-12-30 08:00:00','2024-12-30 12:00:00'),(17,18,1,'2024-12-31 11:00:00','2024-12-31 15:00:00'),(18,20,0,'2025-01-01 09:00:00','2025-01-01 13:00:00'),(19,22,1,'2025-01-02 10:00:00','2025-01-02 14:00:00'),(20,23,0,'2025-01-03 13:00:00','2025-01-03 16:00:00');
/*!40000 ALTER TABLE `doctor_time_offs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors` (
  `doctor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `specialties_id` bigint(20) unsigned NOT NULL,
  `address_id` bigint(20) unsigned NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `doctor_surname` varchar(100) NOT NULL,
  `doctor_phone` varchar(15) NOT NULL,
  `doctor_email` varchar(100) NOT NULL,
  PRIMARY KEY (`doctor_id`),
  KEY `doctors_specialties_id_foreign` (`specialties_id`),
  KEY `doctors_address_id_foreign` (`address_id`),
  CONSTRAINT `doctors_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`address_id`),
  CONSTRAINT `doctors_specialties_id_foreign` FOREIGN KEY (`specialties_id`) REFERENCES `specialties` (`specialty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,1,1,'Ahmet','Yılmaz','05551234567','ahmet.yilmaz@example.com'),(2,2,2,'Mehmet','Kara','05559874563','mehmet.kara@example.com'),(3,3,3,'Elif','Çelik','05558765432','elif.celik@example.com'),(4,4,4,'Fatma','Deniz','05552367890','fatma.deniz@example.com'),(5,5,5,'Ali','Yılmaz','05550123456','ali.yilmaz@example.com'),(6,6,6,'Zeynep','Kara','05557890321','zeynep.kara@example.com'),(7,7,7,'Osman','Demir','05551236789','osman.demir@example.com'),(8,8,8,'Ayşe','Öztürk','05556123490','ayse.ozturk@example.com'),(9,9,9,'Mehmet','Korkmaz','05553467891','mehmet.korkmaz@example.com'),(10,10,10,'İsmail','Beyaz','05554567812','ismail.beyaz@example.com'),(11,11,11,'Murat','Çolak','05559674521','murat.colak@example.com'),(12,12,12,'Gül','Toprak','05551234598','gul.toprak@example.com'),(13,13,13,'Hüseyin','Aydın','05554321009','huseyin.aydin@example.com'),(14,14,14,'Leyla','Küçük','05559874321','leyla.kucuk@example.com'),(15,15,15,'Kemal','Şahin','05551234567','kemal.sahin@example.com'),(16,1,16,'Emine','Altun','05553098765','emine.altun@example.com'),(17,2,17,'Selim','Polat','05552369874','selim.polat@example.com'),(18,3,18,'Seda','Yıldırım','05553467981','seda.yildirim@example.com'),(19,4,19,'Cem','Büyük','05556789012','cem.buyuk@example.com'),(20,5,20,'Büşra','Karaoğlu','05553344567','busra.karaoglu@example.com'),(21,6,21,'Aydın','Güven','05554567689','aydin.guven@example.com'),(22,7,22,'Gökhan','Çınar','05557689123','gokhan.cinar@example.com'),(23,8,23,'Beyza','Özdemir','05551234567','beyza.ozdemir@example.com'),(24,9,24,'Volkan','Vural','05554321098','volkan.vural@example.com'),(25,10,25,'Yusuf','Kök','05555678901','yusuf.kok@example.com');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_appointment_floors`
--

DROP TABLE IF EXISTS `hospital_appointment_floors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital_appointment_floors` (
  `hospital_appointment_floor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hospital_address_id` bigint(20) unsigned NOT NULL,
  `hospital_room_number` int(11) NOT NULL,
  `hospital_block_name` varchar(100) NOT NULL,
  `hospital_floor_number` int(11) NOT NULL,
  PRIMARY KEY (`hospital_appointment_floor_id`),
  KEY `hospital_appointment_floors_hospital_address_id_foreign` (`hospital_address_id`),
  CONSTRAINT `hospital_appointment_floors_hospital_address_id_foreign` FOREIGN KEY (`hospital_address_id`) REFERENCES `addresses` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_appointment_floors`
--

LOCK TABLES `hospital_appointment_floors` WRITE;
/*!40000 ALTER TABLE `hospital_appointment_floors` DISABLE KEYS */;
INSERT INTO `hospital_appointment_floors` VALUES (1,1,101,'A Block',1),(2,2,102,'B Block',2),(3,3,103,'C Block',3),(4,4,104,'D Block',1),(5,5,105,'E Block',2),(6,6,106,'F Block',3),(7,7,107,'G Block',1),(8,8,108,'H Block',2),(9,9,109,'I Block',3),(10,10,110,'J Block',1),(11,11,111,'K Block',2),(12,12,112,'L Block',3),(13,13,113,'M Block',1),(14,14,114,'N Block',2),(15,1,115,'O Block',3),(16,2,116,'P Block',1),(17,3,117,'Q Block',2),(18,4,118,'R Block',3),(19,5,119,'S Block',1),(20,6,120,'T Block',2),(21,7,121,'U Block',3),(22,8,122,'V Block',1),(23,9,123,'W Block',2),(24,10,124,'X Block',3),(25,11,125,'Y Block',1),(26,12,126,'Z Block',2),(27,13,127,'AA Block',3),(28,14,128,'BB Block',1),(29,1,129,'CC Block',2),(30,2,130,'DD Block',3);
/*!40000 ALTER TABLE `hospital_appointment_floors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_appointments`
--

DROP TABLE IF EXISTS `hospital_appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital_appointments` (
  `hospital_appointment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) unsigned NOT NULL,
  `hospital_address_id` bigint(20) unsigned NOT NULL,
  `hospital_appointment_floor_id` bigint(20) unsigned NOT NULL,
  `doctor_id` bigint(20) unsigned NOT NULL,
  `specialties_id` bigint(20) unsigned NOT NULL,
  `appointment_name` varchar(100) NOT NULL,
  `appointment_date_start` datetime NOT NULL,
  `appointment_date_end` datetime NOT NULL,
  `appointment_status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`hospital_appointment_id`),
  KEY `hospital_appointments_patient_id_foreign` (`patient_id`),
  KEY `hospital_appointments_hospital_address_id_foreign` (`hospital_address_id`),
  KEY `hospital_appointments_hospital_appointment_floor_id_foreign` (`hospital_appointment_floor_id`),
  KEY `hospital_appointments_doctor_id_foreign` (`doctor_id`),
  KEY `hospital_appointments_specialties_id_foreign` (`specialties_id`),
  CONSTRAINT `hospital_appointments_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`),
  CONSTRAINT `hospital_appointments_hospital_address_id_foreign` FOREIGN KEY (`hospital_address_id`) REFERENCES `addresses` (`address_id`),
  CONSTRAINT `hospital_appointments_hospital_appointment_floor_id_foreign` FOREIGN KEY (`hospital_appointment_floor_id`) REFERENCES `hospital_appointment_floors` (`hospital_appointment_floor_id`),
  CONSTRAINT `hospital_appointments_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patients_id`),
  CONSTRAINT `hospital_appointments_specialties_id_foreign` FOREIGN KEY (`specialties_id`) REFERENCES `specialties` (`specialty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_appointments`
--

LOCK TABLES `hospital_appointments` WRITE;
/*!40000 ALTER TABLE `hospital_appointments` DISABLE KEYS */;
INSERT INTO `hospital_appointments` VALUES (1,1,1,1,1,1,'Dahiliye Randevusu','2024-12-01 09:00:00','2024-12-01 09:30:00',1),(2,2,2,2,2,2,'Kardiyoloji Randevusu','2024-12-01 09:00:00','2024-12-01 09:30:00',0),(3,3,1,1,3,3,'Beyin Cerrahisi Randevusu','2024-12-02 10:00:00','2024-12-02 10:30:00',1),(4,4,2,3,4,4,'Ortopedi Randevusu','2024-12-03 11:00:00','2024-12-03 11:30:00',1),(5,5,1,1,5,5,'Göz Hastalıkları Randevusu','2024-12-04 12:00:00','2024-12-04 12:30:00',0),(6,6,2,2,6,6,'Dahiliye Randevusu','2024-12-05 13:00:00','2024-12-05 13:30:00',1),(7,7,1,1,7,7,'Üroloji Randevusu','2024-12-06 14:00:00','2024-12-06 14:30:00',1),(8,8,2,2,8,8,'Kadın Hastalıkları Randevusu','2024-12-07 15:00:00','2024-12-07 15:30:00',0),(9,9,1,3,9,9,'Psikiyatri Randevusu','2024-12-08 16:00:00','2024-12-08 16:30:00',1),(10,10,2,3,10,10,'Fizyoterapi Randevusu','2024-12-09 17:00:00','2024-12-09 17:30:00',1),(11,11,1,1,11,11,'Nöroloji Randevusu','2024-12-10 08:00:00','2024-12-10 08:30:00',1),(12,12,2,2,12,12,'Dermatoloji Randevusu','2024-12-11 09:00:00','2024-12-11 09:30:00',0),(13,13,1,1,13,13,'Çocuk Cerrahisi Randevusu','2024-12-12 10:00:00','2024-12-12 10:30:00',1),(14,14,2,3,14,14,'Kardiyoloji Randevusu','2024-12-13 11:00:00','2024-12-13 11:30:00',0),(15,15,1,1,15,1,'Dahiliye Randevusu','2024-12-14 12:00:00','2024-12-14 12:30:00',1),(16,16,2,3,16,8,'Çocuk Endokrinolojisi Randevusu','2024-12-15 13:00:00','2024-12-15 13:30:00',0),(17,17,1,3,17,10,'Göz Hastalıkları Randevusu','2024-12-16 14:00:00','2024-12-16 14:30:00',1),(18,18,2,1,18,12,'Kulak Burun Boğaz Randevusu','2024-12-17 15:00:00','2024-12-17 15:30:00',0),(19,19,1,1,19,9,'Çocuk Hastalıkları Randevusu','2024-12-18 16:00:00','2024-12-18 16:30:00',1),(20,20,2,3,20,15,'Dahiliye Randevusu','2024-12-19 17:00:00','2024-12-19 17:30:00',0),(21,21,1,1,21,15,'Kardiyoloji Randevusu','2024-12-20 08:00:00','2024-12-20 08:30:00',1),(22,22,2,2,22,6,'Nöroloji Randevusu','2024-12-21 09:00:00','2024-12-21 09:30:00',0),(23,23,1,3,23,9,'Psikiyatri Randevusu','2024-12-22 10:00:00','2024-12-22 10:30:00',1),(24,24,2,1,24,7,'Fizik Tedavi Randevusu','2024-12-23 11:00:00','2024-12-23 11:30:00',0),(25,25,1,1,25,15,'Dahiliye Randevusu','2024-12-24 12:00:00','2024-12-24 12:30:00',1),(26,26,2,3,25,7,'Kadın Hastalıkları Randevusu','2024-12-25 13:00:00','2024-12-25 13:30:00',1),(27,27,2,30,2,2,'Hastane Randevu','2024-12-29 14:30:00','2024-12-29 15:00:00',0),(28,27,1,1,1,1,'Hastane Randevu','2025-01-03 15:00:00','2025-01-03 15:30:00',0),(29,27,1,29,1,1,'Hastane Randevu','2025-01-03 10:30:00','2025-01-03 11:00:00',1),(30,27,1,29,1,1,'Hastane Randevu','2025-01-10 13:00:00','2025-01-10 13:30:00',0),(31,27,1,15,1,1,'Hastane Randevu','2025-01-05 16:00:00','2025-01-05 16:30:00',1);
/*!40000 ALTER TABLE `hospital_appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance_types`
--

DROP TABLE IF EXISTS `insurance_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurance_types` (
  `insurance_type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `insurance_type_name` varchar(100) NOT NULL,
  PRIMARY KEY (`insurance_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_types`
--

LOCK TABLES `insurance_types` WRITE;
/*!40000 ALTER TABLE `insurance_types` DISABLE KEYS */;
INSERT INTO `insurance_types` VALUES (1,'Sigortam Yok'),(2,'Kişisel Sigorta'),(3,'Özel Sigorta'),(4,'Sağlık Sigortası'),(5,'Bireysel Emeklilik Sigortası');
/*!40000 ALTER TABLE `insurance_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurances`
--

DROP TABLE IF EXISTS `insurances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurances` (
  `insurance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `insurance_type_id` bigint(20) unsigned NOT NULL,
  `insurance_date_start` datetime NOT NULL,
  `insurance_date_end` datetime NOT NULL,
  PRIMARY KEY (`insurance_id`),
  KEY `insurances_insurance_type_id_foreign` (`insurance_type_id`),
  CONSTRAINT `insurances_insurance_type_id_foreign` FOREIGN KEY (`insurance_type_id`) REFERENCES `insurance_types` (`insurance_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurances`
--

LOCK TABLES `insurances` WRITE;
/*!40000 ALTER TABLE `insurances` DISABLE KEYS */;
INSERT INTO `insurances` VALUES (1,1,'2024-01-01 00:00:00','2025-01-01 00:00:00'),(2,2,'2024-03-15 00:00:00','2025-03-15 00:00:00'),(3,3,'2024-06-01 00:00:00','2025-06-01 00:00:00'),(4,4,'2024-09-10 00:00:00','2025-09-10 00:00:00'),(5,5,'2024-11-25 00:00:00','2025-11-25 00:00:00'),(6,1,'2026-09-19 20:14:28','2027-04-01 12:13:06');
/*!40000 ALTER TABLE `insurances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_records`
--

DROP TABLE IF EXISTS `log_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_records` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '2024-12-24 21:27:01',
  `log_description` text NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `badge` varchar(255) NOT NULL DEFAULT 'info',
  `ip_address` varchar(255) NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_records_user_id_foreign` (`user_id`),
  CONSTRAINT `log_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_records`
--

LOCK TABLES `log_records` WRITE;
/*!40000 ALTER TABLE `log_records` DISABLE KEYS */;
INSERT INTO `log_records` VALUES (1,1,'2024-12-15 10:00:00','Kullanıcı başarıyla giriş yaptı.','Ahmet Yılmaz','ahmet.yilmaz@example.com','info','192.168.1.1'),(2,2,'2024-12-14 14:30:00','Kullanıcı şifresini başarıyla güncelledi.','Mehmet Kaya','mehmet.kaya@example.com','info','192.168.1.2'),(3,3,'2024-12-13 09:00:00','Kullanıcı çıkış yaptı.','Ayşe Demir','ayse.demir@example.com','info','192.168.1.3'),(4,4,'2024-12-12 11:00:00','Kullanıcı profil bilgilerini güncelledi.','Fatma Çelik','fatma.celik@example.com','info','192.168.1.4'),(5,5,'2024-12-10 15:30:00','Kullanıcı şifresini değiştirdi.','Ali Özdemir','ali.ozdemir@example.com','info','192.168.1.5'),(6,6,'2024-12-09 08:15:00','Kullanıcı yeni bir cihazdan giriş yaptı.','Zeynep Güler','zeynep.guler@example.com','info','192.168.1.6'),(7,7,'2024-12-08 16:30:00','Kullanıcı iletişim bilgilerini güncelledi.','İsmail Kurtuluş','ismail.kurtulus@example.com','info','192.168.1.7'),(8,8,'2024-12-06 13:00:00','Kullanıcı başarıyla giriş yaptı.','Emine Dönmez','emine.donmez@example.com','info','192.168.1.8'),(9,9,'2024-12-05 18:45:00','Kullanıcı şifre sıfırlama talebi başlattı.','Murat Acar','murat.acar@example.com','info','192.168.1.9'),(10,10,'2024-12-10 12:00:00','Kullanıcı yeni bir cihazdan giriş yaptı.','Seda Öztürk','seda.ozturk@example.com','info','192.168.1.10'),(11,11,'2024-12-14 13:30:00','Kullanıcı çıkış yaptı.','Cem Aksoy','cem.aksoy@example.com','info','192.168.1.11'),(12,12,'2024-12-04 17:45:00','Kullanıcı profil fotoğrafını güncelledi.','Nisa Sevgi','nisa.sevgi@example.com','info','192.168.1.12'),(13,13,'2024-12-07 19:00:00','Kullanıcı başarıyla giriş yaptı.','Kenan Doğan','kenan.dogan@example.com','info','192.168.1.13'),(14,14,'2024-12-13 08:00:00','Kullanıcı şifresini değiştirdi.','Furkan Yalçın','furkan.yalcin@example.com','info','192.168.1.14'),(15,15,'2024-12-02 14:00:00','Kullanıcı başarıyla giriş yaptı.','Deniz Kılıç','deniz.kilic@example.com','info','192.168.1.15'),(16,16,'2024-12-11 16:15:00','Kullanıcı profil bilgilerini güncelledi.','Büşra Yılmaz','busra.yilmaz@example.com','info','192.168.1.16'),(17,17,'2024-12-09 15:45:00','Kullanıcı çıkış yaptı.','Eda Polat','eda.polat@example.com','info','192.168.1.17'),(18,18,'2024-12-13 11:00:00','Kullanıcı şifre sıfırlama talebinde bulundu.','Merve Karaca','merve.karaca@example.com','info','192.168.1.18'),(19,19,'2024-12-03 12:45:00','Kullanıcı e-posta adresini değiştirdi.','Selin Başaran','selin.basaran@example.com','info','192.168.1.19'),(20,20,'2024-12-04 10:30:00','Kullanıcı telefon numarasını güncelledi.','Ozan Erdem','ozan.erdem@example.com','info','192.168.1.20'),(21,46,'2024-12-24 21:27:01','Hasta kayıt işlemi başarıyla gerçekleştirildi.','İbrahim','froxer6@gmail.com','info','127.0.0.1'),(22,46,'2024-12-24 21:27:01','Randevunuz Başarılı Şekilde Oluşturulmuştur.','İbrahim','froxer6@gmail.com','info','127.0.0.1'),(23,46,'2024-12-24 21:27:01','Randevunuz Başarıyla Güncellenmiştir.','İbrahim','froxer6@gmail.com','info','127.0.0.1'),(24,46,'2024-12-24 21:27:01','Randevunuz Başarılı Şekilde Oluşturulmuştur.','İbrahim','froxer6@gmail.com','info','127.0.0.1'),(25,21,'2024-12-24 21:27:01','Hasta üye girişi başarılı.','Ahmet','ahmet.yilmaz@example.com','info','127.0.0.1'),(26,46,'2024-12-24 21:27:01','Hasta üye girişi başarılı.','İbrahim','froxer6@gmail.com','info','127.0.0.1'),(27,46,'2024-12-24 21:27:01','Randevunuz Başarılı Şekilde Oluşturulmuştur.','İbrahim','froxer6@gmail.com','info','127.0.0.1'),(28,46,'2024-12-24 21:27:01','Randevunuz Başarıyla Güncellenmiştir.','İbrahim','froxer6@gmail.com','info','127.0.0.1'),(29,21,'2024-12-24 21:27:01','Hasta üye girişi başarılı.','Ahmet','ahmet.yilmaz@example.com','info','127.0.0.1'),(30,1,'2024-12-24 21:27:01','İletişim bilgisi başarıyla kaydedildi.','Anonim Kullanıcı','anonim@noemail.com','info','127.0.0.1'),(31,46,'2024-12-24 21:27:01','Hasta üye girişi başarılı.','İbrahim','froxer6@gmail.com','info','127.0.0.1'),(32,46,'2024-12-24 21:27:01','Randevunuz Başarılı Şekilde Oluşturulmuştur.','İbrahim','froxer6@gmail.com','info','127.0.0.1'),(33,46,'2024-12-24 21:27:01','Randevunuz Başarıyla Güncellenmiştir.','İbrahim','froxer6@gmail.com','info','127.0.0.1'),(34,21,'2024-12-24 21:27:01','Hasta üye girişi başarılı.','Ahmet','ahmet.yilmaz@example.com','info','127.0.0.1'),(35,21,'2024-12-24 21:27:01','Hasta üye girişi başarılı.','Ahmet','ahmet.yilmaz@example.com','info','127.0.0.1'),(36,46,'2024-12-24 21:27:01','Hasta üye girişi başarılı.','İbrahim','froxer6@gmail.com','info','127.0.0.1'),(37,46,'2024-12-24 21:27:01','Randevunuz Başarıyla Güncellenmiştir.','İbrahim','froxer6@gmail.com','info','127.0.0.1'),(38,46,'2024-12-24 21:27:01','Hasta üye girişi başarılı.','İbrahim','froxer6@gmail.com','info','127.0.0.1'),(39,46,'2024-12-24 21:27:01','Randevunuz Başarılı Şekilde Oluşturulmuştur.','İbrahim','froxer6@gmail.com','info','127.0.0.1');
/*!40000 ALTER TABLE `log_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse_schedules`
--

DROP TABLE IF EXISTS `nurse_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nurse_schedules` (
  `nurse_schedule_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nurse_id` bigint(20) unsigned NOT NULL,
  `work_day` varchar(255) NOT NULL,
  `work_time_start` datetime NOT NULL,
  `work_time_end` datetime NOT NULL,
  PRIMARY KEY (`nurse_schedule_id`),
  KEY `nurse_schedules_nurse_id_foreign` (`nurse_id`),
  CONSTRAINT `nurse_schedules_nurse_id_foreign` FOREIGN KEY (`nurse_id`) REFERENCES `nurses` (`nurses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse_schedules`
--

LOCK TABLES `nurse_schedules` WRITE;
/*!40000 ALTER TABLE `nurse_schedules` DISABLE KEYS */;
INSERT INTO `nurse_schedules` VALUES (1,3,'Pazartesi','2024-12-15 08:00:00','2024-12-15 16:00:00'),(2,5,'Salı','2024-12-16 09:00:00','2024-12-16 17:00:00'),(3,8,'Çarşamba','2024-12-17 10:00:00','2024-12-17 18:00:00'),(4,12,'Perşembe','2024-12-18 11:00:00','2024-12-18 19:00:00'),(5,15,'Cuma','2024-12-19 08:00:00','2024-12-19 16:00:00'),(6,4,'Cumartesi','2024-12-20 07:00:00','2024-12-20 15:00:00'),(7,18,'Pazar','2024-12-21 09:00:00','2024-12-21 17:00:00'),(8,6,'Pazartesi','2024-12-22 10:00:00','2024-12-22 18:00:00'),(9,1,'Salı','2024-12-23 12:00:00','2024-12-23 20:00:00'),(10,17,'Çarşamba','2024-12-24 13:00:00','2024-12-24 21:00:00'),(11,2,'Perşembe','2024-12-25 14:00:00','2024-12-25 22:00:00'),(12,7,'Cuma','2024-12-26 15:00:00','2024-12-26 23:00:00'),(13,11,'Cumartesi','2024-12-27 08:00:00','2024-12-27 16:00:00'),(14,19,'Pazar','2024-12-28 09:00:00','2024-12-28 17:00:00'),(15,14,'Pazartesi','2024-12-29 10:00:00','2024-12-29 18:00:00'),(16,9,'Salı','2024-12-30 11:00:00','2024-12-30 19:00:00'),(17,20,'Çarşamba','2024-12-31 12:00:00','2024-12-31 20:00:00'),(18,13,'Perşembe','2025-01-01 13:00:00','2025-01-01 21:00:00'),(19,22,'Cuma','2025-01-02 14:00:00','2025-01-02 22:00:00'),(20,23,'Cumartesi','2025-01-03 15:00:00','2025-01-03 23:00:00');
/*!40000 ALTER TABLE `nurse_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse_time_offs`
--

DROP TABLE IF EXISTS `nurse_time_offs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nurse_time_offs` (
  `nurse_time_off_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nurse_id` bigint(20) unsigned NOT NULL,
  `time_off_status` tinyint(1) NOT NULL,
  `time_off_date_start` datetime NOT NULL,
  `time_off_date_end` datetime NOT NULL,
  PRIMARY KEY (`nurse_time_off_id`),
  KEY `nurse_time_offs_nurse_id_foreign` (`nurse_id`),
  CONSTRAINT `nurse_time_offs_nurse_id_foreign` FOREIGN KEY (`nurse_id`) REFERENCES `nurses` (`nurses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse_time_offs`
--

LOCK TABLES `nurse_time_offs` WRITE;
/*!40000 ALTER TABLE `nurse_time_offs` DISABLE KEYS */;
INSERT INTO `nurse_time_offs` VALUES (1,3,1,'2024-12-15 08:00:00','2024-12-15 16:00:00'),(2,5,0,'2024-12-16 09:00:00','2024-12-16 17:00:00'),(3,8,1,'2024-12-17 10:00:00','2024-12-17 18:00:00'),(4,12,0,'2024-12-18 11:00:00','2024-12-18 19:00:00'),(5,15,1,'2024-12-19 08:00:00','2024-12-19 16:00:00'),(6,4,0,'2024-12-20 07:00:00','2024-12-20 15:00:00'),(7,18,1,'2024-12-21 09:00:00','2024-12-21 17:00:00'),(8,6,0,'2024-12-22 10:00:00','2024-12-22 18:00:00'),(9,1,1,'2024-12-23 12:00:00','2024-12-23 20:00:00'),(10,17,0,'2024-12-24 13:00:00','2024-12-24 21:00:00'),(11,2,1,'2024-12-25 14:00:00','2024-12-25 22:00:00'),(12,7,0,'2024-12-26 15:00:00','2024-12-26 23:00:00'),(13,11,1,'2024-12-27 08:00:00','2024-12-27 16:00:00'),(14,19,0,'2024-12-28 09:00:00','2024-12-28 17:00:00'),(15,14,1,'2024-12-29 10:00:00','2024-12-29 18:00:00'),(16,9,0,'2024-12-30 11:00:00','2024-12-30 19:00:00'),(17,20,1,'2024-12-31 12:00:00','2024-12-31 20:00:00'),(18,13,0,'2025-01-01 13:00:00','2025-01-01 21:00:00'),(19,22,1,'2025-01-02 14:00:00','2025-01-02 22:00:00'),(20,23,0,'2025-01-03 15:00:00','2025-01-03 23:00:00');
/*!40000 ALTER TABLE `nurse_time_offs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurses`
--

DROP TABLE IF EXISTS `nurses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nurses` (
  `nurses_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nurses_name` varchar(100) NOT NULL,
  `nurses_surname` varchar(100) NOT NULL,
  `nurses_phone` varchar(15) NOT NULL,
  `nurses_email` varchar(100) NOT NULL,
  `nurses_position` varchar(100) NOT NULL,
  PRIMARY KEY (`nurses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurses`
--

LOCK TABLES `nurses` WRITE;
/*!40000 ALTER TABLE `nurses` DISABLE KEYS */;
INSERT INTO `nurses` VALUES (1,'Ayşe','Yılmaz','05321234567','ayse.yilmaz@example.com','Bölüm Hemşiresi'),(2,'Fatma','Demir','05322345678','fatma.demir@example.com','Anestezi Hemşiresi'),(3,'Mehmet','Kaya','05323456789','mehmet.kaya@example.com','İç Hastalıkları Hemşiresi'),(4,'Zeynep','Özdemir','05324567890','zeynep.ozdemir@example.com','Pediatri Hemşiresi'),(5,'Ahmet','Şahin','05325678901','ahmet.sahin@example.com','Cerrahi Hemşiresi'),(6,'Emine','Altun','05326789012','emine.altun@example.com','Genel Hemşire'),(7,'Selin','Gül','05327890123','selin.gul@example.com','Yoğun Bakım Hemşiresi'),(8,'Murat','Büyük','05328901234','murat.buyuk@example.com','Palyatif Bakım Hemşiresi'),(9,'Hülya','Kurt','05329012345','hulya.kurt@example.com','İç Hastalıkları Hemşiresi'),(10,'Mehmet','Demirci','05330123456','mehmet.demirci@example.com','Kalp Hemşiresi'),(11,'Serkan','Ersoy','05331234567','serkan.ersoy@example.com','Kadın Doğum Hemşiresi'),(12,'Ayhan','Kavak','05332345678','ayhan.kavak@example.com','Ameliyat Hemşiresi'),(13,'Cemre','Tan','05333456789','cemre.tan@example.com','Neonatal Hemşiresi'),(14,'Ali','Erdem','05334567890','ali.erdem@example.com','İç Hastalıkları Hemşiresi'),(15,'Aylin','Vural','05335678901','aylin.vural@example.com','Kardiyoloji Hemşiresi'),(16,'Burak','Çelik','05336789012','burak.celik@example.com','Ortopedi Hemşiresi'),(17,'Seda','Yazıcı','05337890123','seda.yazici@example.com','Yataklı Servis Hemşiresi'),(18,'Gökhan','Koca','05338901234','gokhan.koca@example.com','Ameliyat Hemşiresi'),(19,'Duygu','Duru','05339012345','duygu.duru@example.com','Psikiyatri Hemşiresi'),(20,'Kenan','Süzer','05340123456','kenan.suzer@example.com','Çocuk Hemşiresi'),(21,'Burcu','Kara','05341234567','burcu.kara@example.com','Yoğun Bakım Hemşiresi'),(22,'Meltem','Ege','05342345678','meltem.ege@example.com','Kadın Hastalıkları Hemşiresi'),(23,'Tolga','Aydın','05343456789','tolga.aydin@example.com','Göz Hastalıkları Hemşiresi'),(24,'Funda','Balcı','05344567890','funda.balci@example.com','Gastroenteroloji Hemşiresi'),(25,'Hakan','Gündüz','05345678901','hakan.gunduz@example.com','Nöroloji Hemşiresi');
/*!40000 ALTER TABLE `nurses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `page_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(50) NOT NULL,
  `page_hash` varchar(50) NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Anasayfa','main'),(2,'Hakkımızda','about'),(3,'Servislerimiz','services'),(4,'Doktorlarımız','doctors'),(5,'İletişim','contact');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_appointment_histories`
--

DROP TABLE IF EXISTS `patient_appointment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_appointment_histories` (
  `patient_appointment_history_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_history_id` bigint(20) unsigned NOT NULL,
  `hospital_history_address_id` bigint(20) unsigned NOT NULL,
  `hospital_history_appointment_floor_id` bigint(20) unsigned NOT NULL,
  `doctor_history_id` bigint(20) unsigned NOT NULL,
  `specialties_history_id` bigint(20) unsigned NOT NULL,
  `appointment_insurance_history_id` bigint(20) unsigned NOT NULL,
  `appointment_history_id` bigint(20) unsigned NOT NULL,
  `appointment_history_name` varchar(100) NOT NULL,
  `appointment_history_date_start` datetime NOT NULL,
  `appointment_history_date_end` datetime NOT NULL,
  `appointment_history_status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`patient_appointment_history_id`),
  KEY `patient_appointment_histories_patient_history_id_foreign` (`patient_history_id`),
  KEY `pati_appointment_histories_hospital_history_address_id_fk` (`hospital_history_address_id`),
  KEY `pati_aptm_his_hp_hst_aptm_floor_id_foreign` (`hospital_history_appointment_floor_id`),
  KEY `patient_appointment_histories_doctor_history_id_foreign` (`doctor_history_id`),
  KEY `patient_appointment_histories_specialties_history_id_foreign` (`specialties_history_id`),
  KEY `pati_aptm_histories_aptm_ins_history_id_foreign` (`appointment_insurance_history_id`),
  KEY `patient_appointment_histories_appointment_history_id_foreign` (`appointment_history_id`),
  CONSTRAINT `pati_appointment_histories_hospital_history_address_id_fk` FOREIGN KEY (`hospital_history_address_id`) REFERENCES `addresses` (`address_id`),
  CONSTRAINT `pati_aptm_his_hp_hst_aptm_floor_id_foreign` FOREIGN KEY (`hospital_history_appointment_floor_id`) REFERENCES `hospital_appointment_floors` (`hospital_appointment_floor_id`),
  CONSTRAINT `pati_aptm_histories_aptm_ins_history_id_foreign` FOREIGN KEY (`appointment_insurance_history_id`) REFERENCES `insurances` (`insurance_id`),
  CONSTRAINT `patient_appointment_histories_appointment_history_id_foreign` FOREIGN KEY (`appointment_history_id`) REFERENCES `hospital_appointments` (`hospital_appointment_id`),
  CONSTRAINT `patient_appointment_histories_doctor_history_id_foreign` FOREIGN KEY (`doctor_history_id`) REFERENCES `doctors` (`doctor_id`),
  CONSTRAINT `patient_appointment_histories_patient_history_id_foreign` FOREIGN KEY (`patient_history_id`) REFERENCES `patients` (`patients_id`),
  CONSTRAINT `patient_appointment_histories_specialties_history_id_foreign` FOREIGN KEY (`specialties_history_id`) REFERENCES `specialties` (`specialty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_appointment_histories`
--

LOCK TABLES `patient_appointment_histories` WRITE;
/*!40000 ALTER TABLE `patient_appointment_histories` DISABLE KEYS */;
INSERT INTO `patient_appointment_histories` VALUES (1,1,1,3,1,1,1,1,'Göz Hastalıkları Randevusu','2024-12-16 14:00:00','2024-12-16 14:30:00',1),(2,2,2,1,2,2,2,2,'Kulak Burun Boğaz Randevusu','2024-12-17 15:00:00','2024-12-17 15:30:00',0),(3,3,1,1,3,3,3,3,'Çocuk Hastalıkları Randevusu','2024-12-18 16:00:00','2024-12-18 16:30:00',1),(4,4,2,3,4,4,4,4,'Dahiliye Randevusu','2024-12-19 17:00:00','2024-12-19 17:30:00',0),(5,5,1,2,5,5,1,5,'Nöroloji Randevusu','2024-12-20 08:00:00','2024-12-20 08:30:00',1),(6,6,2,1,6,6,2,6,'Psikiyatri Randevusu','2024-12-21 09:00:00','2024-12-21 09:30:00',0),(7,7,1,3,7,7,3,7,'Kadın Hastalıkları Randevusu','2024-12-22 10:00:00','2024-12-22 10:30:00',1),(8,8,2,2,8,8,4,8,'Gastroenteroloji Randevusu','2024-12-23 11:00:00','2024-12-23 11:30:00',0),(9,9,1,1,9,9,5,9,'Ortopedik Cerrahi Randevusu','2024-12-24 12:00:00','2024-12-24 12:30:00',1),(10,10,2,3,10,10,1,10,'Fizik Tedavi Randevusu','2024-12-25 13:00:00','2024-12-25 13:30:00',0),(11,11,1,2,11,11,2,11,'Genel Cerrahi Randevusu','2024-12-26 14:00:00','2024-12-26 14:30:00',1),(12,12,2,1,12,12,3,12,'Nöroloji Randevusu','2024-12-27 15:00:00','2024-12-27 15:30:00',0),(13,13,1,3,13,13,4,13,'Çocuk Endokrinolojisi Randevusu','2024-12-28 09:00:00','2024-12-28 09:30:00',1),(14,14,2,2,14,14,5,14,'Nöroloji Randevusu','2024-12-29 10:00:00','2024-12-29 10:30:00',0),(15,15,1,1,15,15,1,15,'Endokrinoloji Randevusu','2024-12-30 11:00:00','2024-12-30 11:30:00',1),(16,16,2,3,16,15,2,15,'Psikiyatri Randevusu','2024-12-31 12:00:00','2024-12-31 12:30:00',0),(17,17,1,2,17,15,3,15,'Dahiliye Randevusu','2025-01-01 13:00:00','2025-01-01 13:30:00',1),(18,18,2,1,18,15,4,15,'Göz Hastalıkları Randevusu','2025-01-02 14:00:00','2025-01-02 14:30:00',0);
/*!40000 ALTER TABLE `patient_appointment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_priorities`
--

DROP TABLE IF EXISTS `patient_priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_priorities` (
  `patient_priority_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_priority_name` varchar(100) NOT NULL,
  `patient_priority_description` varchar(20) NOT NULL,
  PRIMARY KEY (`patient_priority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_priorities`
--

LOCK TABLES `patient_priorities` WRITE;
/*!40000 ALTER TABLE `patient_priorities` DISABLE KEYS */;
INSERT INTO `patient_priorities` VALUES (1,'Yüksek','Hamilelik'),(2,'Orta','Yaşlı'),(3,'Düşük','Rutin kontrol'),(4,'Acil','Kaza'),(5,'Yüksek','Ameliyat sonrası'),(6,'Orta','Diyabet'),(7,'Düşük','Grip'),(8,'Acil','Kalp krizi'),(9,'Yüksek','Solunum yetmezliği'),(10,'Orta','Yüksek tansiyon'),(11,'Düşük','Check-up'),(12,'Acil','Travma'),(13,'Yüksek','Bebek'),(14,'Orta','Ateş'),(15,'Düşük','Baş ağrısı'),(16,'Acil','Zehirlenme'),(17,'Yüksek','Enfeksiyon'),(18,'Orta','Kronik ağrı'),(19,'Düşük','Alerji'),(20,'Acil','Felç'),(21,'Yüksek','Doğum'),(22,'Orta','Görme bozukluğu'),(23,'Düşük','Deride kızarıklık'),(24,'Acil','Kanama'),(25,'Yüksek','Organ yetmezliği'),(26,'Orta','Kilo kaybı'),(27,'Düşük','Kas ağrısı'),(28,'Acil','Yanık'),(29,'Yüksek','Şok'),(30,'Orta','Düşme');
/*!40000 ALTER TABLE `patient_priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `patients_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patients_insurances_id` bigint(20) unsigned NOT NULL,
  `patients_name` varchar(100) NOT NULL,
  `patients_surname` varchar(100) NOT NULL,
  `patients_phone` varchar(15) NOT NULL,
  `patients_email` varchar(255) NOT NULL,
  `patients_gender` char(1) NOT NULL,
  PRIMARY KEY (`patients_id`),
  KEY `patients_patients_insurances_id_foreign` (`patients_insurances_id`),
  CONSTRAINT `patients_patients_insurances_id_foreign` FOREIGN KEY (`patients_insurances_id`) REFERENCES `insurances` (`insurance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,5,'Ahmet','Yılmaz','05321234567','ahmet.yilmaz@gmail.com','E'),(2,3,'Elif','Demir','05431234567','elif.demir@gmail.com','K'),(3,4,'Mehmet','Kaya','05551234567','mehmet.kaya@gmail.com','E'),(4,2,'Ayşe','Çelik','05331234567','ayse.celik@gmail.com','K'),(5,1,'Fatma','Şahin','05341234567','fatma.sahin@gmail.com','K'),(6,5,'Burak','Aydın','05351234567','burak.aydin@gmail.com','E'),(7,2,'Selin','Gül','05451234567','selin.gul@gmail.com','K'),(8,4,'Kerem','Yıldız','05361234567','kerem.yildiz@gmail.com','E'),(9,5,'Esra','Polat','05461234567','esra.polat@gmail.com','K'),(10,3,'Murat','Koç','05371234567','murat.koc@gmail.com','E'),(11,5,'Ceren','Arslan','05471234567','ceren.arslan@gmail.com','K'),(12,2,'Deniz','Tekin','05381234567','deniz.tekin@gmail.com','E'),(13,4,'Sinem','Eren','05481234567','sinem.eren@gmail.com','K'),(14,5,'Hakan','Tan','05391234567','hakan.tan@gmail.com','E'),(15,1,'Ezgi','Işık','05491234567','ezgi.isik@gmail.com','K'),(16,3,'Emre','Bulut','05301234567','emre.bulut@gmail.com','E'),(17,3,'Zeynep','Çakır','05401234567','zeynep.cakir@gmail.com','K'),(18,4,'Oğuz','Bozkurt','05311234567','oguz.bozkurt@gmail.com','E'),(19,2,'Melis','Kurt','05411234567','melis.kurt@gmail.com','K'),(20,1,'Efe','Korkmaz','05321234567','efe.korkmaz@gmail.com','E'),(21,5,'Büşra','Demirel','05421234567','busra.demirel@gmail.com','K'),(22,1,'Alper','Erdoğan','05331234567','alper.erdogan@gmail.com','E'),(23,2,'Zeynep','Turan','05431234567','zeynep.turan@gmail.com','K'),(24,1,'Serkan','Aslan','05371234567','serkan.aslan@gmail.com','E'),(25,5,'Cemre','Kaya','05451234567','cemre.kaya@gmail.com','K'),(26,3,'Tolga','Şimşek','05381234567','tolga.simsek@gmail.com','E'),(27,6,'İbrahim','Aral','05340652412','froxer6@gmail.com','E');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `role_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Doktor'),(2,'Hemşire'),(3,'Hasta'),(4,'Yönetici'),(5,'Sekreter'),(6,'Tekniker'),(7,'Bölüm Başkanı'),(8,'Psikolog'),(9,'Fizyoterapist'),(10,'Anestezi Uzmanı'),(11,'Güvenlik Görevlisi'),(12,'Yemek Hizmeti'),(13,'Temizlik Görevlisi'),(14,'Hizmetli'),(15,'İç Hastalıkları Uzmanı'),(16,'Cerrah'),(17,'Çocuk Doktoru'),(18,'Kardiyolog'),(19,'Göz Doktoru'),(20,'Halkla İlişkiler Uzmanı');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialties`
--

DROP TABLE IF EXISTS `specialties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialties` (
  `specialty_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `specialty_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`specialty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialties`
--

LOCK TABLES `specialties` WRITE;
/*!40000 ALTER TABLE `specialties` DISABLE KEYS */;
INSERT INTO `specialties` VALUES (1,'Kardiyoloji'),(2,'Nöroloji'),(3,'Dermatoloji'),(4,'Pediatri'),(5,'Ortopedi'),(6,'Dahiliye'),(7,'Kadın Hastalıkları ve Doğum'),(8,'Gastroenteroloji'),(9,'Psikiyatri'),(10,'Göz Hastalıkları'),(11,'Kulak Burun Boğaz'),(12,'Üroloji'),(13,'Genel Cerrahi'),(14,'Endokrinoloji'),(15,'Ağız ve Diş Sağlığı');
/*!40000 ALTER TABLE `specialties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL DEFAULT 3,
  `registration_date` datetime NOT NULL DEFAULT '2024-12-24 21:26:59',
  `updated_date` datetime DEFAULT NULL,
  `patients_id` bigint(20) unsigned DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Anonim Kullanıcı','','anonim@noemail.com',NULL,'','$2y$12$V9N2QANf8v4Yr6NY8aHz4OwDgeCy4iY/.OHR0dsYwQeircAzlRBTe',2,'2024-12-01 09:00:00','2024-12-15 10:00:00',NULL,NULL),(2,'Mehmet','Kaya','mehmet.kaya@example.com','2024-12-14 11:30:00','+905301234568','$2y$12$98zvjvRmfjm2C51XXxovl.BwCPwieD5vJ7T8rN7Fut8xRy1kax5Z6',2,'2024-12-02 10:15:00','2024-12-14 14:30:00',NULL,'abcd12345xyz'),(3,'Ayşe','Demir','ayse.demir@example.com','2024-12-13 06:00:00','+905301234569','$2y$12$IC/ZstsG.BxvMQCxiGt9IOmiPmur8MUri6O9rPLCxLjJdkICoVHQG',3,'2024-12-03 12:00:00','2024-12-13 09:00:00',NULL,'12345abcd9876'),(4,'Fatma','Çelik','fatma.celik@example.com','2024-12-12 08:00:00','+905301234570','$2y$12$nyCCDpnYtyelByloKxB1bOSrG1sC2uCGjLt6QSoezgBB4JRWftHwK',2,'2024-12-04 08:30:00','2024-12-12 11:00:00',NULL,'zxcvbnm67890'),(5,'Ali','Özdemir','ali.ozdemir@example.com','2024-12-10 12:30:00','+905301234571','$2y$12$9weeWpLL/g4HLHGYcG7g0ePd0lAIzLKfB3eY9HUpq1aQfyE1sdZvi',1,'2024-12-05 13:45:00','2024-12-10 15:30:00',NULL,'56789poiuy'),(6,'Zeynep','Güler','zeynep.guler@example.com','2024-12-09 05:15:00','+905301234572','$2y$12$TlntGSfmuF.c0on.PaJJTOwdOh8DVAA8jRDeja.xd916Szk07TQy.',3,'2024-12-06 11:00:00','2024-12-09 08:15:00',NULL,'abcd5678xyz'),(7,'İsmail','Kurtuluş','ismail.kurtulus@example.com','2024-12-08 13:30:00','+905301234573','$2y$12$94mmClyAdYlHzZ4Gk9ON5uqbHK1A7w9RRbJ1d/y.k2lasmh7SHK9u',2,'2024-12-07 14:30:00','2024-12-08 16:30:00',NULL,'5678yzx123'),(8,'Emine','Dönmez','emine.donmez@example.com','2024-12-06 10:00:00','+905301234574','$2y$12$4iVQp7gfcDZkjEhvCh1OuO7lHzV.GsFKdSuG9IFMglVStK88gmZmi',19,'2024-12-05 15:15:00','2024-12-06 13:00:00',NULL,'xyzwert5678'),(9,'Murat','Acar','murat.acar@example.com','2024-12-05 15:45:00','+905301234575','$2y$12$UvYnSdkn3TfFtR.fPgKCJukyOtPG6uFQeWcWZl4VGhgiNuTcfmJ9K',2,'2024-12-04 10:20:00','2024-12-05 18:45:00',NULL,'asdfgh1234'),(10,'Seda','Öztürk','seda.ozturk@example.com','2024-12-10 09:00:00','+905301234576','$2y$12$YbzT7BjMeORAD8Rvj4EPrO196aHDMBUf8Iy7MLPwIbiuvQfVMbJOO',3,'2024-12-02 14:30:00','2024-12-10 12:00:00',NULL,'qwerty9876'),(11,'Cem','Aksoy','cem.aksoy@example.com','2024-12-14 10:30:00','+905301234577','$2y$12$ETxJFQQCeYajZSG2XTA8n.EsRM1nn8xtBNuYYaHvHR0x86rGgwiNG',1,'2024-12-12 09:00:00','2024-12-14 13:30:00',NULL,'asdfgh6789'),(12,'Nisa','Sevgi','nisa.sevgi@example.com','2024-12-04 14:45:00','+905301234578','$2y$12$gDKEJ/G4YfhM6RPIF65aF.kAGcWvIJqf5XkbD1eiP65OQDoNE9pqu',2,'2024-12-01 12:30:00','2024-12-04 17:45:00',NULL,'12345wxyz'),(13,'Kenan','Doğan','kenan.dogan@example.com','2024-12-07 16:00:00','+905301234579','$2y$12$5L/f88dmcj36nOycEh1MwOahDHl7AsiUnRMPN9kGPy5zdWEhiiij6',1,'2024-12-06 18:00:00','2024-12-07 19:00:00',NULL,'zxcvbnm5678'),(14,'Furkan','Yalçın','furkan.yalcin@example.com','2024-12-13 05:00:00','+905301234580','$2y$12$ie7GZqiYZCpgiwl6cW3vWuxxGTAh8cI.eEAhj8.NQVfFPMHdTrEMe',3,'2024-12-08 11:20:00','2024-12-13 08:00:00',NULL,'abc123def456'),(15,'Deniz','Kılıç','deniz.kilic@example.com','2024-12-02 11:00:00','+905301234581','$2y$12$.aDNWXAPl0C4t7SiiAt2KuIR3Fg3v6NfH1Duilak9efVjrRLQMUVq',2,'2024-12-01 17:30:00','2024-12-02 14:00:00',NULL,'54321qwert'),(16,'Büşra','Yılmaz','busra.yilmaz@example.com','2024-12-11 13:15:00','+905301234582','$2y$12$BJ9SO8xLemkwbKA2FEyua.K5KskHFADYv/STieUJawAXtPteBIdJC',1,'2024-12-10 09:00:00','2024-12-11 16:15:00',NULL,'123abc456def'),(17,'Eda','Polat','eda.polat@example.com','2024-12-09 12:45:00','+905301234583','$2y$12$RIBw1E3V0dhjrB2ngX5jtuECvIq8gUUHhHVoH214w.Twk6DitBWfi',3,'2024-12-06 10:00:00','2024-12-09 15:45:00',NULL,'7890xyz1234'),(18,'Merve','Karaca','merve.karaca@example.com','2024-12-13 08:00:00','+905301234584','$2y$12$abopwVfC6/3cpIs9Y7h4ju1sFNZIgmbrlGRvMmebig5q0AQlIQWdC',1,'2024-12-12 16:15:00','2024-12-13 11:00:00',NULL,'asdf1234xyz'),(19,'Selin','Başaran','selin.basaran@example.com','2024-12-03 09:45:00','+905301234585','$2y$12$gLnbKU7Bav86RQ1otcxWseiYTJ64AOuf7ZMM7N8gLiL9HBRA3U..G',2,'2024-12-01 10:00:00','2024-12-03 12:45:00',NULL,'1234xyz5678'),(20,'Ozan','Erdem','ozan.erdem@example.com','2024-12-04 07:30:00','+905301234586','$2y$12$3WdFUox.abM0AO4OEicwvuAblApkkx4rXnRdRqQb32fzsUMomcjfO',1,'2024-12-03 11:20:00','2024-12-04 10:30:00',NULL,'7890abcd1234'),(21,'Ahmet','Yılmaz','ahmet.yilmaz@example.com','2024-02-15 09:30:00','05551234567','$2y$12$6SJqjW7zawVjsSKQsFxYHeW/yF5NA5YO1R8f/F.ZEOWOVYZlKdZDy',1,'2024-01-20 08:00:00','2024-02-01 14:00:00',NULL,'Bdffi6sVwALhdUeoO693Tj21Azp9gUbmOw1QlswE7zQxhpPfl9hCpxi0Ktlh'),(22,'Mehmet','Kara','mehmet.kara@example.com','2024-02-10 12:45:00','05559874563','$2y$12$ZqLVLG20chV/HSpS7irN6.800qQWB.5SLPIFuLAO4f6xO6K0elnyK',1,'2024-01-22 09:10:00','2024-02-12 10:30:00',NULL,'token_mehmet_456'),(23,'Elif','Çelik','elif.celik@example.com','2024-02-05 13:20:00','05558765432','$2y$12$m48yM1LeSyg5jQuvu9fnKe6gOk8OCgtlaDin1WCRkzBKHq3zg2wti',1,'2024-01-25 10:00:00','2024-02-06 13:45:00',NULL,'token_elif_789'),(24,'Fatma','Deniz','fatma.deniz@example.com','2024-01-28 08:00:00','05552367890','$2y$12$.NG8BaPlYh/u1NMrqoR0d.edHG3D1o18ORWLCvsJ0a.Fmp2pOkq82',1,'2024-01-10 14:50:00','2024-01-29 11:25:00',NULL,'token_fatma_101'),(25,'Ali','Yılmaz','ali.yilmaz@example.com','2024-02-08 14:30:00','05550123456','$2y$12$Iesp36tjyyF./MJS4mzrPOu/CnUv/xh5uIqSkf6GOJi3w4aV3dtXy',1,'2024-01-30 12:00:00','2024-02-09 15:00:00',NULL,'token_ali_112'),(26,'Zeynep','Kara','zeynep.kara@example.com','2024-02-12 15:00:00','05557890321','$2y$12$/wwOzroxbgitWKDmNIzRgukVakCOa8R09hkBoBA5zoqtARDVlfLvS',1,'2024-01-18 13:15:00','2024-02-13 17:45:00',NULL,'token_zeynep_131'),(27,'Osman','Demir','osman.demir@example.com','2024-01-22 11:30:00','05551236789','$2y$12$aQ0Gkn9zQBieQ20xmOrfNu7.GjBaHUMjeZA8QDtmf9unWRXDkZ/BC',1,'2024-01-12 08:45:00','2024-01-23 16:15:00',NULL,'token_osman_142'),(28,'Ayşe','Öztürk','ayse.ozturk@example.com','2024-02-03 16:10:00','05556123490','$2y$12$/C4LCyvgi/TcjLhfBobEk.WY8Z2EYY4rn2mwx0lZ2LHukv0MLu49q',1,'2024-01-15 10:30:00','2024-02-04 11:00:00',NULL,'token_ayse_153'),(29,'Mehmet','Korkmaz','mehmet.korkmaz@example.com','2024-02-07 14:00:00','05553467891','$2y$12$xylDAkOJjakWKEa3fog1O.1NAJzMRF6yNnl5vO6YOyInkFSig3W/u',1,'2024-01-23 14:20:00','2024-02-08 12:40:00',NULL,'token_mehmet_164'),(30,'İsmail','Beyaz','ismail.beyaz@example.com','2024-02-10 13:30:00','05554567812','$2y$12$6nCabhqmPzI57fHsTxqe5.tocrNKVb4Z.gjVInQI847mwO6./AAW.',1,'2024-01-29 11:50:00','2024-02-11 14:15:00',NULL,'token_ismail_175'),(31,'Murat','Çolak','murat.colak@example.com','2024-02-02 06:20:00','05559674521','$2y$12$zQ.JT4wxOU56qynuxLly4uMVk7EzKMi2m7ZLxPR.ZLCwEJ0z0VDW2',1,'2024-01-17 13:30:00','2024-02-03 16:50:00',NULL,'token_murat_186'),(32,'Gül','Toprak','gul.toprak@example.com','2024-01-30 15:40:00','05551234598','$2y$12$GNW8H8YX/nTXzsgrBZKmYOhmFb4ZJBUFUA9AmpvkWJfKHNm05KpHC',1,'2024-01-20 14:10:00','2024-02-01 13:00:00',NULL,'token_gul_197'),(33,'Hüseyin','Aydın','huseyin.aydin@example.com','2024-02-01 05:10:00','05554321009','$2y$12$59uhDZ2HqOt2zjvWQEtGE.4dAGoVj2C6wBM0yh9q3U7BIlhgfEWse',1,'2024-01-19 12:00:00','2024-02-02 10:30:00',NULL,'token_huseyin_208'),(34,'Leyla','Küçük','leyla.kucuk@example.com','2024-01-18 14:30:00','05559874321','$2y$12$L.6sS0T1YWf6kSNnkKuDZuI1hPR7Vr1M1OxRFxV81qjUroFaDMq3C',1,'2024-01-12 09:45:00','2024-01-20 11:30:00',NULL,'token_leyla_219'),(35,'Kemal','Şahin','kemal.sahin@example.com','2024-01-25 10:00:00','05551234567','$2y$12$YZDfd/mTpis.Dv60/RIl6ubp/7/prgBVFmXzyMlijXvqJfu7yilim',1,'2024-01-22 10:30:00','2024-01-26 17:00:00',NULL,'token_kemal_220'),(36,'Emine','Altun','emine.altun@example.com','2024-01-28 08:45:00','05553098765','$2y$12$KhP4Kq5zveIaKrIVYITTeu8ICRIaKOPeZ8TC291EnuIl5XCx6hbPS',1,'2024-01-15 10:45:00','2024-01-30 14:25:00',NULL,'token_emine_231'),(37,'Selim','Polat','selim.polat@example.com','2024-01-15 11:20:00','05552369874','$2y$12$MN9axHVHHiqpZypqdHTL2.K5G1leTZYWRFBM.JmN0FQ3hRL2sURGq',1,'2024-01-10 09:30:00','2024-01-16 11:00:00',NULL,'token_selim_256'),(38,'Seda','Yıldırım','seda.yildirim@example.com','2024-02-07 07:00:00','05553467981','$2y$12$UZO8Jfrc6pwrxyzYqKnxfeauOMBQO7u7bN/22Q4kFfK9qWQSmTgZa',1,'2024-01-15 11:00:00','2024-02-08 12:10:00',NULL,'token_seda_267'),(39,'Cem','Büyük','cem.buyuk@example.com','2024-02-09 05:40:00','05556789012','$2y$12$Alb1pkoY0gW3WDieR4Fcju5aXgIhOS7/8zYfF/fzFA6w88cTwWBye',1,'2024-01-18 10:30:00','2024-02-10 09:25:00',NULL,'token_cem_278'),(40,'Büşra','Karaoğlu','busra.karaoglu@example.com','2024-01-25 11:50:00','05553344567','$2y$12$b7cw2KJyfQnkwn.hvLynRuRsQxNsHwtPoM7FqsH.Bg.nbwVEWkLgC',1,'2024-01-20 12:30:00','2024-01-26 13:15:00',NULL,'token_busra_289'),(41,'Aydın','Güven','aydin.guven@example.com','2024-02-05 08:15:00','05554567689','$2y$12$oXlS40pUFAYdw64.nWP26O4KfdHj37ZRWKbvK62M3Kl763mhL5Afm',1,'2024-01-24 14:00:00','2024-02-06 09:30:00',NULL,'token_aydin_290'),(42,'Gökhan','Çınar','gokhan.cinar@example.com','2024-02-11 07:50:00','05557689123','$2y$12$tTw8V0tJktoIMwEs4BCQB.35U4HK2xmpOeLrQY4mZ1kd.rcjcJDQi',1,'2024-01-30 15:20:00','2024-02-12 12:05:00',NULL,'token_gokhan_301'),(43,'Beyza','Özdemir','beyza.ozdemir@example.com','2024-01-28 10:35:00','05551234567','$2y$12$0JK1fDQlUXVBkGrUo7s5J.2D7BP8Dar4sAyjMIlYIwDaD9cABJTUm',1,'2024-01-19 08:15:00','2024-01-29 16:25:00',NULL,'token_beyza_312'),(44,'Volkan','Vural','volkan.vural@example.com','2024-02-04 11:50:00','05554321098','$2y$12$48ub9W9jNF9pINGiT3Fup.Y3dXOPqhn.a7cBYLOO/pbM/.Ci1X9rO',1,'2024-01-22 11:40:00','2024-02-05 09:50:00',NULL,'token_volkan_323'),(45,'Yusuf','Kök','yusuf.kok@example.com','2024-02-02 06:00:00','05555678901','$2y$12$V79VzWcE71RK2wzyO2Tvt.lvvMv0TzOyOGj3SI/PPfp58dePQlYnG',1,'2024-01-27 14:00:00','2024-02-03 12:40:00',NULL,'token_yusuf_334'),(46,'İbrahim','Aral','froxer6@gmail.com',NULL,'05340652412','$2y$12$HYv4SrX5TLLo7tiDndM.x.qW1ZuLqH5kZMaO1CR4/rU6S4I7BIR3y',4,'2024-12-24 21:26:59',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccine_appointments`
--

DROP TABLE IF EXISTS `vaccine_appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vaccine_appointments` (
  `vaccine_appointments_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `vaccines_id` bigint(20) unsigned NOT NULL,
  `patients_id` bigint(20) unsigned NOT NULL,
  `nurse_id` bigint(20) unsigned NOT NULL,
  `hospital_addresses_id` bigint(20) unsigned NOT NULL,
  `vaccine_appointment_date` datetime NOT NULL,
  `vaccine_appointment_status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vaccine_appointments_id`),
  KEY `vaccine_appointments_vaccines_id_foreign` (`vaccines_id`),
  KEY `vaccine_appointments_patients_id_foreign` (`patients_id`),
  KEY `vaccine_appointments_nurse_id_foreign` (`nurse_id`),
  KEY `vaccine_appointments_hospital_addresses_id_foreign` (`hospital_addresses_id`),
  CONSTRAINT `vaccine_appointments_hospital_addresses_id_foreign` FOREIGN KEY (`hospital_addresses_id`) REFERENCES `addresses` (`address_id`),
  CONSTRAINT `vaccine_appointments_nurse_id_foreign` FOREIGN KEY (`nurse_id`) REFERENCES `nurses` (`nurses_id`),
  CONSTRAINT `vaccine_appointments_patients_id_foreign` FOREIGN KEY (`patients_id`) REFERENCES `patients` (`patients_id`),
  CONSTRAINT `vaccine_appointments_vaccines_id_foreign` FOREIGN KEY (`vaccines_id`) REFERENCES `vaccines` (`vaccine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccine_appointments`
--

LOCK TABLES `vaccine_appointments` WRITE;
/*!40000 ALTER TABLE `vaccine_appointments` DISABLE KEYS */;
INSERT INTO `vaccine_appointments` VALUES (1,1,5,2,7,'2024-01-10 10:00:00',1),(2,2,10,3,3,'2024-02-12 14:30:00',1),(3,3,6,4,5,'2024-03-05 09:00:00',0),(4,4,12,5,2,'2024-01-25 11:30:00',1),(5,5,3,6,8,'2024-02-18 16:00:00',0),(6,6,2,7,4,'2024-03-10 13:45:00',1),(7,7,7,8,1,'2024-04-03 09:15:00',0),(8,8,14,9,6,'2024-04-15 14:00:00',1),(9,9,20,10,9,'2024-05-02 10:30:00',0),(10,10,15,11,10,'2024-05-20 11:00:00',1),(11,11,9,12,7,'2024-06-01 12:00:00',1),(12,12,18,13,3,'2024-06-10 15:30:00',0),(13,13,13,14,5,'2024-07-02 09:30:00',1),(14,14,21,15,2,'2024-07-25 10:00:00',0),(15,15,17,16,12,'2024-08-01 14:30:00',1),(16,16,8,17,14,'2024-08-20 11:30:00',1),(17,17,19,18,4,'2024-09-03 10:00:00',0),(18,18,11,19,8,'2024-09-15 16:00:00',1),(19,19,16,20,6,'2024-10-01 11:15:00',0),(20,20,22,21,11,'2024-10-10 13:00:00',1);
/*!40000 ALTER TABLE `vaccine_appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccines`
--

DROP TABLE IF EXISTS `vaccines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vaccines` (
  `vaccine_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `vaccine_name` varchar(50) NOT NULL,
  `vaccine_type` varchar(50) NOT NULL,
  `vaccine_date` datetime NOT NULL,
  PRIMARY KEY (`vaccine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccines`
--

LOCK TABLES `vaccines` WRITE;
/*!40000 ALTER TABLE `vaccines` DISABLE KEYS */;
INSERT INTO `vaccines` VALUES (1,'COVID-19 Pfizer','mRNA','2024-01-10 10:00:00'),(2,'COVID-19 Moderna','mRNA','2024-02-12 14:30:00'),(3,'Grip Aşısı','İnaktive','2024-03-05 09:00:00'),(4,'Hepatit B','Rekombinant','2024-01-25 11:30:00'),(5,'Tetanoz','İnaktive','2024-02-18 16:00:00'),(6,'Pnömokok Aşısı','Konjuge','2024-03-10 13:45:00'),(7,'HPV Aşısı','Rekombinant','2024-04-03 09:15:00'),(8,'Menengokok Aşısı','Konjuge','2024-04-15 14:00:00'),(9,'Sarı Humma Aşısı','Canlı','2024-05-02 10:30:00'),(10,'Difteri, Tetanoz, Boğmaca (DTaP)','İnaktive','2024-05-20 11:00:00'),(11,'Polio Aşısı','İnaktive','2024-06-01 12:00:00'),(12,'Hepatit A','İnaktive','2024-06-10 15:30:00'),(13,'Kızamık, Kabakulak, Kızamıkçık (KKK) Aşısı','Canlı','2024-07-02 09:30:00'),(14,'Rotavirüs Aşısı','Canlı','2024-07-25 10:00:00'),(15,'Zatürre Aşısı','Canlı','2024-08-01 14:30:00'),(16,'Kolera Aşısı','Ağızdan','2024-08-20 11:30:00'),(17,'Tifo Aşısı','İnaktive','2024-09-03 10:00:00'),(18,'Su Çiçeği Aşısı','Canlı','2024-09-15 16:00:00'),(19,'BCG Aşısı','Canlı','2024-10-01 11:15:00'),(20,'Kuduz Aşısı','İnaktive','2024-10-10 13:00:00');
/*!40000 ALTER TABLE `vaccines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-29  0:39:30
