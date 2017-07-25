--
-- Table structure for table `univ`
--

DROP TABLE IF EXISTS `univ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `univ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ereunitiko` varchar(191) COLLATE utf8mb4_unicode_ci,
  `institute` varchar(191) COLLATE utf8mb4_unicode_ci,
  `other` varchar(191) COLLATE utf8mb4_unicode_ci,
  `idrima` varchar(191) COLLATE utf8mb4_unicode_ci,
  `sxolh` varchar(191) COLLATE utf8mb4_unicode_ci,
  `tmhma` varchar(191) COLLATE utf8mb4_unicode_ci,
  `person` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telef` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `erga` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projectdescription` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;