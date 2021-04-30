-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: facial_analysi_and_record_tracking
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

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
-- Table structure for table `face_encodings`
--

DROP TABLE IF EXISTS `face_encodings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `face_encodings` (
  `PersonID` int(11) NOT NULL,
  `encoding` blob NOT NULL,
  KEY `PersonID` (`PersonID`),
  CONSTRAINT `face_encodings_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `persons` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `face_encodings`
--

LOCK TABLES `face_encodings` WRITE;
/*!40000 ALTER TABLE `face_encodings` DISABLE KEYS */;
INSERT INTO `face_encodings` VALUES (6,'�cnumpy.core.multiarray\n_reconstruct\nq\0cnumpy\nndarray\nqK\0�qCbq�qRq(KK��qcnumpy\ndtype\nqX\0\0\0f8q���q	Rq\n(KX\0\0\0<qNNNJ����J����K\0tqb�B\0\0\0\0\0\0@\n]��\0\0\0@�߸?\0\0\0\0a�P�\0\0\0�����\0\0\0�I�ƿ\0\0\0��>��\0\0\0�����\0\0\0�����\0\0\0 ���?\0\0\0�����\0\0\0\0��?\0\0\0��\Z�?\0\0\0�\Z]ǿ\0\0\0��d�\0\0\0�����\0\0\0�@X�?\0\0\0��9˿\0\0\0`�1��\0\0\0@�Կ�\0\0\0��˾�\0\0\0�M��\0\0\0���?\0\0\0��A�?\0\0\0@)�?\0\0\0`T�¿\0\0\0�i�ȿ\0\0\0 �S��\0\0\0`a�¿\0\0\0���?\0\0\0@Q��\0\0\0@��p?\0\0\0��v�?\0\0\0�ÿ\0\0\0@۴�\0\0\0@�V�?\0\0\0@=\r�?\0\0\0����\0\0\0�����\0\0\0����?\0\0\0`�n�?\0\0\0@y���\0\0\0� ��\0\0\0��%�?\0\0\0��F�?\0\0\0\0�!�?\0\0\0`T��?\0\0\0���?\0\0\0�6�\0\0\0@z��?\0\0\0@@̿\0\0\0�D�?\0\0\0\0q�?\0\0\0\0�>�?\0\0\0���?\0\0\0@#��?\0\0\0`��̿\0\0\0��~�?\0\0\0�d��?\0\0\0@�aÿ\0\0\0��d�?\0\0\0���?\0\0\0 `\n��\0\0\0��?\0\0\0 \"��?\0\0\0\0�|�?\0\0\0���?\0\0\0\0[���\0\0\0��t��\0\0\0����?\0\0\0 _wɿ\0\0\0�����\0\0\0`��?\0\0\0�/Է�\0\0\0@��\0\0\0�d�Ͽ\0\0\0�Zb��\0\0\0@��?\0\0\0ࠏ�?\0\0\0�G���\0\0\0�:���\0\0\0��n��\0\0\0��ޱ�\0\0\0����\0\0\0����?\0\0\0�uYƿ\0\0\0`����\0\0\0�e�\0\0\0 3���\0\0\0�l��?\0\0\0@4Q��\0\0\0`���?\0\0\0@`@�?\0\0\0����?\0\0\0\0�d��\0\0\0`��?\0\0\0����\0\0\0\05�¿\0\0\0�pФ�\0\0\0@b���\0\0\0�bE��\0\0\0�t��?\0\0\0@��ǿ\0\0\0����?\0\0\0`3��?\0\0\0�̿\0\0\0ೌ�?\0\0\0�0���\0\0\0�Z���\0\0\0`�z��\0\0\0`�n��\0\0\0�št?\0\0\0��ģ?\0\0\0`�/�?\0\0\0���ʿ\0\0\0����?\0\0\0@�\r�?\0\0\0@%y��\0\0\0�5շ?\0\0\0@qЦ?\0\0\0\0�\'�?\0\0\0\0�̨�\0\0\0 l=��\0\0\0\0�Eſ\0\0\0��!��\0\0\0\0�w��\0\0\0��¿\0\0\0@6���\0\0\0\0��?q\rtqb.'),(7,'�cnumpy.core.multiarray\n_reconstruct\nq\0cnumpy\nndarray\nqK\0�qCbq�qRq(KK��qcnumpy\ndtype\nqX\0\0\0f8q���q	Rq\n(KX\0\0\0<qNNNJ����J����K\0tqb�B\0\0\0\0\0\0@,Ŀ\0\0\0�`_�?\0\0\0�n°?\0\0\0\0�|�\0\0\0 ����\0\0\0��쒿\0\0\0@\'s��\0\0\0`{a��\0\0\0�fͷ?\0\0\0��[�?\0\0\0���?\0\0\0@TV�?\0\0\0�֣Ͽ\0\0\0��8p�\0\0\0�M,��\0\0\0 ˝�?\0\0\0��ƿ\0\0\0`��\0\0\0\0�*��\0\0\0��ז?\0\0\0�cE�?\0\0\0`���?\0\0\0@%��?\0\0\0��L�?\0\0\0\0�xǿ\0\0\0�\'Կ\0\0\0`�a¿\0\0\0�pS��\0\0\0\083�?\0\0\0\0�ʱ�\0\0\0@�?\0\0\0�tz�?\0\0\0 ��ǿ\0\0\0@�m��\0\0\0\03{�?\0\0\0�ߤ�?\0\0\0��U��\0\0\0@p?��\0\0\0 wC�?\0\0\0�R�v�\0\0\0��g��\0\0\0�j�?\0\0\0@_/�?\0\0\0@���?\0\0\0����?\0\0\0�2<�?\0\0\0�\ri�?\0\0\0`�\Z��\0\0\0 ���?\0\0\0�ֿ֢\0\0\0�6�?\0\0\0��\r�?\0\0\0`�2�?\0\0\0�gF�?\0\0\0 ��?\0\0\0`��ȿ\0\0\0�-�?\0\0\0\0u\'�?\0\0\0@�7ɿ\0\0\0�S��?\0\0\0@�ӧ�\0\0\0����\0\0\0 �B�?\0\0\0\0(ü�\0\0\0�Rb�?\0\0\0��&�?\0\0\0�X���\0\0\0�7�ÿ\0\0\0����?\0\0\0��zÿ\0\0\0\0r�?\0\0\0`��?\0\0\0����\0\0\0���ʿ\0\0\0��|տ\0\0\0�TU�?\0\0\0 �;�?\0\0\0\0 �?\0\0\0@�iɿ\0\0\0`�!�?\0\0\0@kq��\0\0\0���v?\0\0\0�Q��?\0\0\0\0ʡ^�\0\0\0`]�Ŀ\0\0\0�����\0\0\0��Yſ\0\0\0\0C��?\0\0\0�<��?\0\0\0 �?\0\0\0 �&��\0\0\0\0h�?\0\0\0\0A�?\0\0\0��}�?\0\0\0����?\0\0\0��I��\0\0\0�뇿�\0\0\0��+��\0\0\0��7��\0\0\0�E�?\0\0\0�/0��\0\0\0`c<¿\0\0\0`u��\0\0\0����?\0\0\0 �2ÿ\0\0\0`D �?\0\0\0�B膿\0\0\0\0�=!?\0\0\0\0q3��\0\0\0@�䷿\0\0\0\0ˤ��\0\0\0��+�?\0\0\0���?\0\0\0 \"yտ\0\0\0\0���?\0\0\0 ���?\0\0\0 K�?\0\0\0�s��?\0\0\0\0\\�?\0\0\0\0+�?\0\0\0�\\|��\0\0\0���?\0\0\0@�Nÿ\0\0\0�娿\0\0\0\0�	�?\0\0\0@�[��\0\0\0@�ԧ?\0\0\0����?q\rtqb.'),(8,'�cnumpy.core.multiarray\n_reconstruct\nq\0cnumpy\nndarray\nqK\0�qCbq�qRq(KK��qcnumpy\ndtype\nqX\0\0\0f8q���q	Rq\n(KX\0\0\0<qNNNJ����J����K\0tqb�B\0\0\0\0\0\0`{���\0\0\0\0M8�?\0\0\0�_��?\0\0\0`���\0\0\0@��Ŀ\0\0\0��С?\0\0\0�!-��\0\0\0`��ȿ\0\0\0��]�?\0\0\0\0�ī�\0\0\0\0:J�?\0\0\0�����\0\0\0@j�ο\0\0\0��O�?\0\0\0 l�~�\0\0\0@��?\0\0\0��#��\0\0\0\0�@��\0\0\0\0J\"n�\0\0\0�B���\0\0\0���?\0\0\0\0�\"�?\0\0\0\0�?�?\0\0\0�~��?\0\0\0@�4��\0\0\0�Vҿ\0\0\0�����\0\0\0`�~��\0\0\0\0Tk�?\0\0\0��Q��\0\0\0\0qJ�?\0\0\0 ���?\0\0\0���Ŀ\0\0\0�xM��\0\0\0�P��?\0\0\0\0&Ô?\0\0\0�����\0\0\0@J7��\0\0\0��@�?\0\0\0\0�[��\0\0\0��ſ\0\0\0�q���\0\0\0\0ڔ�?\0\0\0\0�Z�?\0\0\0�d��?\0\0\0�B9�?\0\0\0 B��?\0\0\0\0�뻿\0\0\0�`�?\0\0\0 :�˿\0\0\0�{߰?\0\0\0��T�?\0\0\0�R�?\0\0\0\0�3�?\0\0\0����?\0\0\0`��ȿ\0\0\0 �;��\0\0\0ྨ�?\0\0\0`�G��\0\0\0��?\0\0\0�gA�?\0\0\0����\0\0\0�cc�\0\0\0`ɕ��\0\0\0�H%�?\0\0\0 	�?\0\0\0�\r8��\0\0\0�k�Ŀ\0\0\0���?\0\0\0 W��\0\0\0`ѽ��\0\0\0�U��?\0\0\0�Ū��\0\0\0 >7Ŀ\0\0\0���ѿ\0\0\0@EѤ�\0\0\0 X�?\0\0\0\0��?\0\0\0�o�ǿ\0\0\0���?\0\0\0����\0\0\0\0��<�\0\0\0@�,�?\0\0\0 ϩ?\0\0\0\0��T?\0\0\0�ܐ��\0\0\0\0�ÿ\0\0\0\0�ԕ�\0\0\0�?Q�?\0\0\0�?��\0\0\0\0�M��\0\0\0`�j�?\0\0\0@����\0\0\0���?\0\0\0��Ħ?\0\0\0 ���?\0\0\0 ���\0\0\0@�!x�\0\0\0 J��\0\0\0����\0\0\0\0�?\0\0\0\0BUt�\0\0\0 F��\0\0\0��f�?\0\0\0��ʿ\0\0\0��?\0\0\0 ߮�?\0\0\0�\rz��\0\0\0��О�\0\0\0\0�鱿\0\0\0��r��\0\0\0���?\0\0\0�;��?\0\0\0��$Կ\0\0\0@���?\0\0\0����?\0\0\0��詿\0\0\0@�%�?\0\0\0 .G��\0\0\0����?\0\0\0@1~q�\0\0\0\0� ��\0\0\0\0�|ο\0\0\0�YW��\0\0\0���?\0\0\0\02җ�\0\0\0\03B��\0\0\0�܃?q\rtqb.'),(9,'�cnumpy.core.multiarray\n_reconstruct\nq\0cnumpy\nndarray\nqK\0�qCbq�qRq(KK��qcnumpy\ndtype\nqX\0\0\0f8q���q	Rq\n(KX\0\0\0<qNNNJ����J����K\0tqb�B\0\0\0\0\0\0�����\0\0\0�x��?\0\0\0��x?\0\0\0��\0\0\0`���\0\0\0�_C��\0\0\0@\'�?\0\0\0�uN��\0\0\0����?\0\0\0 =���\0\0\0��#�?\0\0\0 z%��\0\0\0�u�п\0\0\0`_���\0\0\0`9*�?\0\0\0��W�?\0\0\0\0fÿ\0\0\0�rCĿ\0\0\0�1�ɿ\0\0\0�Z~��\0\0\0\0�ݹ?\0\0\0 ���\0\0\0�I��?\0\0\0\0��?\0\0\0`3\0п\0\0\0 ��ҿ\0\0\0`\r���\0\0\0����\0\0\0�[l�?\0\0\0��\\ſ\0\0\0�r_�?\0\0\0��T��\0\0\0@�ÿ\0\0\0�����\0\0\0\0��N?\0\0\0@��?\0\0\0\0���\0\0\0`w|��\0\0\0\0���?\0\0\0�Τ�?\0\0\0��ο\0\0\0�eb�?\0\0\0�*�\0\0\0@��?\0\0\0`���?\0\0\0���?\0\0\0\0Ì�?\0\0\0 A��\0\0\0@4�W?\0\0\0�!�ο\0\0\0�\"c�?\0\0\0`8��?\0\0\0�Qp�?\0\0\0`/̶?\0\0\0�$j�?\0\0\0��Q��\0\0\0�D��\0\0\0�պ�?\0\0\0�cʿ\0\0\0��t�?\0\0\0����?\0\0\0����\0\0\0�3\Z�?\0\0\0\0��\0\0\0 ]��?\0\0\0�s&�?\0\0\0�1۽�\0\0\0�YM��\0\0\0����?\0\0\0��̿\0\0\0����\0\0\0@tt�?\0\0\0�ha��\0\0\0���Ŀ\0\0\0�Yt׿\0\0\0�ż��\0\0\0��B�?\0\0\0\0Mq�?\0\0\0��ʿ\0\0\0\0:?r�\0\0\0@�ꤿ\0\0\0�w;�?\0\0\0 )��?\0\0\0����?\0\0\0\0�V��\0\0\0 7���\0\0\0�dߡ�\0\0\0\09�?\0\0\0�d��?\0\0\0`�+��\0\0\0�#���\0\0\0�63�?\0\0\0\0����\0\0\0�5��\0\0\0�H�?\0\0\0�M�?\0\0\0@~X¿\0\0\0`�\n��\0\0\0����\0\0\0��h��\0\0\0�t��?\0\0\0��0��\0\0\0 5��?\0\0\0 �+�?\0\0\0@�ſ\0\0\0`��?\0\0\0`-���\0\0\0��৿\0\0\0@����\0\0\0@��?\0\0\0�䓩�\0\0\0@^ڮ�\0\0\0�<��?\0\0\0 JFп\0\0\0@���?\0\0\0����?\0\0\0`�*��\0\0\0\0�1�?\0\0\0��^�?\0\0\0�0�?\0\0\0�m�\0\0\0����?\0\0\0 �G̿\0\0\0��f��\0\0\0@����\0\0\0�|;��\0\0\0���?\0\0\0@�&q�q\rtqb.'),(10,'�cnumpy.core.multiarray\n_reconstruct\nq\0cnumpy\nndarray\nqK\0�qCbq�qRq(KK��qcnumpy\ndtype\nqX\0\0\0f8q���q	Rq\n(KX\0\0\0<qNNNJ����J����K\0tqb�B\0\0\0\0\0\0 |���\0\0\0@�n�?\0\0\0`u��?\0\0\0�$˫�\0\0\0\0�\0��\0\0\0�M�e�\0\0\0�d��\0\0\0�8@��\0\0\0 ���?\0\0\0@[�Ŀ\0\0\0`��?\0\0\0\0 ���\0\0\0@��п\0\0\0�\\I��\0\0\0\0:\0\0\0 x��?\0\0\0���¿\0\0\0@1@Ŀ\0\0\0�*��\0\0\0@�|��\0\0\0@���?\0\0\0\0S-c�\0\0\0\06&��\0\0\0\0rȹ?\0\0\0�x#ſ\0\0\0`��ڿ\0\0\0 `^��\0\0\0 \nB��\0\0\0 �㭿\0\0\0 ˺��\0\0\0\0Xm��\0\0\0�G��?\0\0\0�1�ȿ\0\0\0�!`�?\0\0\0�h�\0\0\0����?\0\0\0�����\0\0\0��?\0\0\0@Hv�?\0\0\0@��?\0\0\0\0�#ο\0\0\0\0�tV?\0\0\0�\"9��\0\0\0@�	�?\0\0\0 eD�?\0\0\0�@ۣ?\0\0\0�5t�?\0\0\0@竕�\0\0\0�|)�?\0\0\0�3Zѿ\0\0\0\0x��?\0\0\0@.o�?\0\0\0 ���?\0\0\0\0�p�?\0\0\0�:ư?\0\0\0\0����\0\0\0@Rp��\0\0\0`©�?\0\0\0���\0\0\0@d޴?\0\0\0�Ɩ�?\0\0\0 q�ƿ\0\0\0��H�?\0\0\0��^��\0\0\0��M�?\0\0\0@\n�?\0\0\0@3캿\0\0\0�ʱ�\0\0\0@(��?\0\0\0�ʲſ\0\0\0@���\0\0\0�!��?\0\0\0�ʌ��\0\0\0�!Hȿ\0\0\0�pTҿ\0\0\0@j�?\0\0\0\0\\��?\0\0\0�-��?\0\0\0�N0Ŀ\0\0\0��I�?\0\0\0 �R��\0\0\0 @��\0\0\0\0s)�?\0\0\0���?\0\0\0�}���\0\0\0�\n��?\0\0\0�+�\0\0\0���?\0\0\0��?�?\0\0\0@wa��\0\0\0�Jo��\0\0\0 ,�?\0\0\0\0�ת�\0\0\0�\0�?\0\0\0�\"5�?\0\0\0@�O��\0\0\0 %���\0\0\0�e͡�\0\0\0 �\'��\0\0\0\0l�?\0\0\0\0�y�?\0\0\0�����\0\0\0 U���\0\0\0��3�?\0\0\0\0��Ŀ\0\0\0�0�?\0\0\0@l���\0\0\0�gI��\0\0\0@���\0\0\0@�f�?\0\0\0@RIĿ\0\0\0��ز�\0\0\0@���?\0\0\0 ��п\0\0\0�^��?\0\0\0�G�?\0\0\0���?\0\0\0\0H��?\0\0\0�\Z��?\0\0\0��,�?\0\0\0@8Փ?\0\0\0`⧳�\0\0\0 3���\0\0\0�ϯ�\0\0\0 /�?\0\0\0�Ʀ�?\0\0\0�ɤ?\0\0\0\0[��q\rtqb.');
/*!40000 ALTER TABLE `face_encodings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `imgName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roomid` (`roomid`),
  CONSTRAINT `persons_ibfk_1` FOREIGN KEY (`roomid`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (6,1,'BillGates','BillGatesVFqbkYBm.jpg'),(7,1,'ClarkKent','ClarkKenttSykAGoU.jpg'),(8,1,'ElonMusk','ElonMuskQmBZgNrm.jpg'),(9,1,'JeffBezos','JeffBezosaNBBsRCb.jpg'),(10,1,'ShubhamShaw','ShubhamShawnTCcPIGy.jpg');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `records` (
  `PersonID` int(11) DEFAULT NULL,
  `RoomID` int(11) DEFAULT NULL,
  `Status` varchar(2) NOT NULL,
  `Entry_Time` timestamp NULL DEFAULT NULL,
  `Exit_Time` timestamp NULL DEFAULT NULL,
  KEY `PersonID` (`PersonID`),
  KEY `RoomID` (`RoomID`),
  CONSTRAINT `records_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `persons` (`id`),
  CONSTRAINT `records_ibfk_2` FOREIGN KEY (`RoomID`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records`
--

LOCK TABLES `records` WRITE;
/*!40000 ALTER TABLE `records` DISABLE KEYS */;
INSERT INTO `records` VALUES (6,1,'A','2021-04-11 19:04:09','2021-04-11 19:04:30'),(7,1,'A',NULL,NULL),(8,1,'A','2021-04-11 19:04:22','2021-04-11 19:04:25'),(9,1,'A','2021-04-11 19:04:07','2021-04-11 19:04:30'),(10,1,'A','2021-04-25 21:07:55','2021-04-25 21:07:59');
/*!40000 ALTER TABLE `records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `floorNo` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'S1',1,'Static'),(2,'S2',2,'Static'),(3,'S3',3,'Static');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-30 13:24:10
