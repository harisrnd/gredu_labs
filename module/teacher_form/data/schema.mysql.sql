--
-- Table structure for table `volunteerteachers`
--

DROP TABLE IF EXISTS `volunteerteachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volunteerteachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eidikothta` int(11) UNSIGNED,
  `arithmitroou` int(11) NOT NULL,
  `telef` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schooltelef` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `projectdescription` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `volunteerteachers` ADD CONSTRAINT `fk_branch_id` FOREIGN KEY (`eidikothta`) REFERENCES `branch`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;