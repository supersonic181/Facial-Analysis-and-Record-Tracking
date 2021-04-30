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
INSERT INTO `face_encodings` VALUES (6,'Äcnumpy.core.multiarray\n_reconstruct\nq\0cnumpy\nndarray\nqK\0ÖqCbqáqRq(KKÄÖqcnumpy\ndtype\nqX\0\0\0f8qâàáq	Rq\n(KX\0\0\0<qNNNJˇˇˇˇJˇˇˇˇK\0tqbâB\0\0\0\0\0\0@\n]≥ø\0\0\0@≠ﬂ∏?\0\0\0\0aÃPø\0\0\0¿ëˆúø\0\0\0†Ië∆ø\0\0\0‡Ë>óø\0\0\0‡íπ±ø\0\0\0ÄÚ˙¡ø\0\0\0 …˚¿?\0\0\0Ä∞¨≤ø\0\0\0\0Ìõ√?\0\0\0†ù\ZÇ?\0\0\0†\Z]«ø\0\0\0Äìdø\0\0\0Ä§ûäø\0\0\0†@X≤?\0\0\0¿Ä9Àø\0\0\0`˚1∫ø\0\0\0@˙‘øø\0\0\0†áÀæø\0\0\0†M∞ø\0\0\0¿πí?\0\0\0¿ÉAï?\0\0\0@)Ö?\0\0\0`TÏ¬ø\0\0\0¿i≤»ø\0\0\0 ≈S¡ø\0\0\0`a¿¬ø\0\0\0‡º∆?\0\0\0@Qµø\0\0\0@ß¿p?\0\0\0¿¿v≤?\0\0\0‡√ø\0\0\0@€¥ø\0\0\0@ìV∞?\0\0\0@=\r¡?\0\0\0‡î¥ø\0\0\0¿ˆõïø\0\0\0Ä’Â«?\0\0\0`„n£?\0\0\0@yÚ¡ø\0\0\0¿ çø\0\0\0¿Ï%Ø?\0\0\0Ä÷F–?\0\0\0\0˙!—?\0\0\0`Tú¥?\0\0\0Ä˘ë?\0\0\0Ä6®ø\0\0\0@z¸¡?\0\0\0@@Ãø\0\0\0ÄDÚ≥?\0\0\0\0q≈?\0\0\0\0™> ?\0\0\0Ä—·π?\0\0\0@#ªπ?\0\0\0`∆ıÃø\0\0\0¿ò~µ?\0\0\0Äd¢ƒ?\0\0\0@§a√ø\0\0\0Äôdª?\0\0\0‡•º?\0\0\0 `\n¡ø\0\0\0‡Ö?\0\0\0 \"ò•?\0\0\0\0∏|«?\0\0\0Äßº?\0\0\0\0[¢òø\0\0\0Äét¡ø\0\0\0¿¿√Œ?\0\0\0 _w…ø\0\0\0Äµ∞±ø\0\0\0`ùæ?\0\0\0‡/‘∑ø\0\0\0@∫ø\0\0\0‡d¶œø\0\0\0‡Zb™ø\0\0\0@ÕŸ?\0\0\0‡†èƒ?\0\0\0‡Gµ∏ø\0\0\0¿:˝üø\0\0\0‡ˆn°ø\0\0\0‡Åﬁ±ø\0\0\0†ªÄø\0\0\0¿òÙ≠?\0\0\0¿uY∆ø\0\0\0`‡îªø\0\0\0¿eÌπø\0\0\0 3§Åø\0\0\0‡lﬁ ?\0\0\0@4Q†ø\0\0\0`âì≥?\0\0\0@`@∆?\0\0\0Ä†øâ?\0\0\0\0˚dêø\0\0\0`âô?\0\0\0¿¶òø\0\0\0\05Â¬ø\0\0\0¿p–§ø\0\0\0@b°üø\0\0\0ÄbE∑ø\0\0\0¿t≤†?\0\0\0@ˇÍ«ø\0\0\0¿≤ôô?\0\0\0`3‰¿?\0\0\0‡®Ãø\0\0\0‡≥å√?\0\0\0‡0¨±ø\0\0\0¿Zïñø\0\0\0`Ñz®ø\0\0\0`„n∞ø\0\0\0¿≈°t?\0\0\0†›ƒ£?\0\0\0`©/“?\0\0\0ÄÔÀ ø\0\0\0Ä’◊ ?\0\0\0@ \rÕ?\0\0\0@%yÆø\0\0\0‡5’∑?\0\0\0@q–¶?\0\0\0\0µ\'ª?\0\0\0\0˚Ã®ø\0\0\0 l=†ø\0\0\0\0¨E≈ø\0\0\0ÄÏ!πø\0\0\0\0≈w±ø\0\0\0‡Ä¬ø\0\0\0@6Ùõø\0\0\0\0£Ó¶?q\rtqb.'),(7,'Äcnumpy.core.multiarray\n_reconstruct\nq\0cnumpy\nndarray\nqK\0ÖqCbqáqRq(KKÄÖqcnumpy\ndtype\nqX\0\0\0f8qâàáq	Rq\n(KX\0\0\0<qNNNJˇˇˇˇJˇˇˇˇK\0tqbâB\0\0\0\0\0\0@,ƒø\0\0\0¿`_≈?\0\0\0Än¬∞?\0\0\0\0∫|ø\0\0\0 åñ§ø\0\0\0‡¬Ïíø\0\0\0@\'sïø\0\0\0`{a∞ø\0\0\0ÄfÕ∑?\0\0\0ÄÁ[´?\0\0\0ÄóÕ?\0\0\0@TVì?\0\0\0‡÷£œø\0\0\0‡É8pø\0\0\0ÄM,∫ø\0\0\0 Àùó?\0\0\0†¶∆ø\0\0\0`Î¬ôø\0\0\0\0ì*Ωø\0\0\0†·◊ñ?\0\0\0‡cE∑?\0\0\0`¿¸∫?\0\0\0@%ã°?\0\0\0‡ˆL¢?\0\0\0\0Ìx«ø\0\0\0Ä\'‘ø\0\0\0`ña¬ø\0\0\0¿pS†ø\0\0\0\083ó?\0\0\0\0˘ ±ø\0\0\0@ö?\0\0\0¿tzî?\0\0\0 ßÁ«ø\0\0\0@üm•ø\0\0\0\03{ö?\0\0\0†ﬂ§ú?\0\0\0‡‚U≥ø\0\0\0@p?•ø\0\0\0 wC∆?\0\0\0ÄRævø\0\0\0¿≈g±ø\0\0\0†j≤?\0\0\0@_/ò?\0\0\0@Å‰÷?\0\0\0†È‰…?\0\0\0‡2<¨?\0\0\0Ä\rií?\0\0\0`ü\Zµø\0\0\0 †Ã¬?\0\0\0‡÷¢÷ø\0\0\0‡6¬?\0\0\0‡ı\r¬?\0\0\0`√2∏?\0\0\0‡gF∂?\0\0\0 ø?\0\0\0`±„»ø\0\0\0¿-Ìä?\0\0\0\0u\'–?\0\0\0@Û7…ø\0\0\0†S©¬?\0\0\0@∞”ßø\0\0\0¿—∂ø\0\0\0 ⁄Bè?\0\0\0\0(√ºø\0\0\0‡Rbƒ?\0\0\0‡ﬂ&√?\0\0\0‡XÑΩø\0\0\0†7Œ√ø\0\0\0‡èúƒ?\0\0\0¿íz√ø\0\0\0\0rç?\0\0\0`•ª?\0\0\0‡ÿ∂ø\0\0\0¿Ç… ø\0\0\0ÄÉ|’ø\0\0\0‡TU∏?\0\0\0 ó;Ÿ?\0\0\0\0 «?\0\0\0@Ëi…ø\0\0\0`Õ!ó?\0\0\0@kq≥ø\0\0\0Ä∑Ûv?\0\0\0ÄQï†?\0\0\0\0 °^ø\0\0\0`]Ïƒø\0\0\0¿¡Ñ∞ø\0\0\0ÄÃY≈ø\0\0\0\0Cß°?\0\0\0‡<ÙŒ?\0\0\0 £?\0\0\0 ÿ&∂ø\0\0\0\0h“?\0\0\0\0A¢?\0\0\0Ä˚}Ç?\0\0\0¿¨å∏?\0\0\0†¥Iïø\0\0\0‡Îáøø\0\0\0¿ı+≥ø\0\0\0Ä»7ºø\0\0\0†E±?\0\0\0†/0èø\0\0\0`c<¬ø\0\0\0`u∞ø\0\0\0‡ïÛ√?\0\0\0 ¡2√ø\0\0\0`D  ?\0\0\0ÄBËÜø\0\0\0\0à=!?\0\0\0\0q3ûø\0\0\0@ù‰∑ø\0\0\0\0À§¿ø\0\0\0Ä…+¶?\0\0\0‡ê»?\0\0\0 \"y’ø\0\0\0\0πÔœ?\0\0\0 ®±¥?\0\0\0 K™?\0\0\0‡s’«?\0\0\0\0\\ËÖ?\0\0\0\0+‡•?\0\0\0Ä\\|¨ø\0\0\0Ä˙•?\0\0\0@ÅN√ø\0\0\0¿Â®ø\0\0\0\0ö	º?\0\0\0@Ω[ªø\0\0\0@È‘ß?\0\0\0ÄñÑù?q\rtqb.'),(8,'Äcnumpy.core.multiarray\n_reconstruct\nq\0cnumpy\nndarray\nqK\0ÖqCbqáqRq(KKÄÖqcnumpy\ndtype\nqX\0\0\0f8qâàáq	Rq\n(KX\0\0\0<qNNNJˇˇˇˇJˇˇˇˇK\0tqbâB\0\0\0\0\0\0`{áÆø\0\0\0\0M8¿?\0\0\0†_û±?\0\0\0`≥èø\0\0\0@≤≥ƒø\0\0\0†Ã–°?\0\0\0¿!-õø\0\0\0`´ì»ø\0\0\0†∂]∆?\0\0\0\0Åƒ´ø\0\0\0\0:J–?\0\0\0Ä†˝∏ø\0\0\0@jØŒø\0\0\0‡îOî?\0\0\0 lõ~ø\0\0\0@·Í∏?\0\0\0†°#¡ø\0\0\0\0Æ@øø\0\0\0\0J\"nø\0\0\0‡BÑªø\0\0\0¿öΩ?\0\0\0\0ë\"µ?\0\0\0\0Ë?ë?\0\0\0¿~¨£?\0\0\0@¸4ªø\0\0\0¿V“ø\0\0\0‡åˇªø\0\0\0`Ú~ªø\0\0\0\0Tk¡?\0\0\0ÄãQ∑ø\0\0\0\0qJì?\0\0\0 ´™¶?\0\0\0†Ÿƒƒø\0\0\0†xM≥ø\0\0\0†P¡©?\0\0\0\0&√î?\0\0\0‡Ó˛∂ø\0\0\0@J7∏ø\0\0\0Ä°@ ?\0\0\0\0≈[°ø\0\0\0Ä⁄≈ø\0\0\0†q•≤ø\0\0\0\0⁄îö?\0\0\0\0≤ZÃ?\0\0\0†d™º?\0\0\0¿B9•?\0\0\0 B˜í?\0\0\0\0‡Îªø\0\0\0Ä`Ì¥?\0\0\0 :√Àø\0\0\0Ä{ﬂ∞?\0\0\0‡ÅT≈?\0\0\0‡®R©?\0\0\0\0£3ò?\0\0\0¿öíø?\0\0\0`„Ì»ø\0\0\0 ›;ïø\0\0\0‡æ®∆?\0\0\0`ãG¡ø\0\0\0‡Ø∫?\0\0\0ÄgA≥?\0\0\0¿Ø∂ø\0\0\0Äccø\0\0\0`…ï≥ø\0\0\0†H%«?\0\0\0 	¨?\0\0\0Ä\r8ñø\0\0\0Äk◊ƒø\0\0\0Ä›ƒ?\0\0\0 W≥ø\0\0\0`—Ω¿ø\0\0\0†Uäƒ?\0\0\0†≈™¡ø\0\0\0 >7ƒø\0\0\0†ΩÁ—ø\0\0\0@E—§ø\0\0\0 X·?\0\0\0\0œ°?\0\0\0Äoÿ«ø\0\0\0¿Éí?\0\0\0¿Öûø\0\0\0\0™È<ø\0\0\0@‡,ƒ?\0\0\0 œ©?\0\0\0\0˛ûT?\0\0\0¿‹ê∂ø\0\0\0\0™√ø\0\0\0\0¬‘ïø\0\0\0‡?Q…?\0\0\0‡?µø\0\0\0\0∫MØø\0\0\0`új…?\0\0\0@˝°†ø\0\0\0¿ä´?\0\0\0¿äƒ¶?\0\0\0 î°¥?\0\0\0 Ü∂ø\0\0\0@ß!xø\0\0\0 J∫ø\0\0\0Ä›Ωø\0\0\0\0§?\0\0\0\0BUtø\0\0\0 F©ø\0\0\0‡∆f≈?\0\0\0‡≥ ø\0\0\0‡¡?\0\0\0 ﬂÆò?\0\0\0‡\rzÖø\0\0\0ÄÉ–ûø\0\0\0\0ˇÈ±ø\0\0\0Ä≈rÆø\0\0\0ÄŸ†?\0\0\0‡;……?\0\0\0‡˘$‘ø\0\0\0@åê¡?\0\0\0Äﬂ¬?\0\0\0ÄıË©ø\0\0\0@œ%¬?\0\0\0 .Gêø\0\0\0‡˚º†?\0\0\0@1~qø\0\0\0\0£ ¥ø\0\0\0\0ì|Œø\0\0\0†YWµø\0\0\0†È„°?\0\0\0\02“óø\0\0\0\03B≤ø\0\0\0‡‹É?q\rtqb.'),(9,'Äcnumpy.core.multiarray\n_reconstruct\nq\0cnumpy\nndarray\nqK\0ÖqCbqáqRq(KKÄÖqcnumpy\ndtype\nqX\0\0\0f8qâàáq	Rq\n(KX\0\0\0<qNNNJˇˇˇˇJˇˇˇˇK\0tqbâB\0\0\0\0\0\0‡Ú˙ïø\0\0\0ÄxÑ≥?\0\0\0¿Ωx?\0\0\0¿ΩÓòø\0\0\0`óóø\0\0\0‡_Câø\0\0\0@\'û?\0\0\0†uN£ø\0\0\0‡â˚Ø?\0\0\0 =¿≥ø\0\0\0¿œ#Œ?\0\0\0 z%´ø\0\0\0†u≠–ø\0\0\0`_â≠ø\0\0\0`9*®?\0\0\0Ä¡WΩ?\0\0\0\0f√ø\0\0\0‡rCƒø\0\0\0Ä1Ï…ø\0\0\0¿Z~∂ø\0\0\0\0Ÿ›π?\0\0\0 ¡ûø\0\0\0†I˜Ö?\0\0\0\0™®?\0\0\0`3\0–ø\0\0\0 π≥“ø\0\0\0`\rÙ¥ø\0\0\0¿”Ωø\0\0\0¿[l¥?\0\0\0ÄŒ\\≈ø\0\0\0‡r_ñ?\0\0\0Ä˝Túø\0\0\0@‚√ø\0\0\0¿§Ç∞ø\0\0\0\0⁄ÀN?\0\0\0@¢à?\0\0\0\0∞öø\0\0\0`w|≥ø\0\0\0\0åí∆?\0\0\0‡Œ§∑?\0\0\0ÄÛŒø\0\0\0‡eb≥?\0\0\0Ä*íø\0\0\0@˛’?\0\0\0`–Î—?\0\0\0‡â©?\0\0\0\0√å∞?\0\0\0 A±ø\0\0\0@4¯W?\0\0\0†!“Œø\0\0\0Ä\"c©?\0\0\0`8å¬?\0\0\0‡Qpæ?\0\0\0`/Ã∂?\0\0\0‡$j∑?\0\0\0†∂Q∂ø\0\0\0ÄDÉø\0\0\0‡’∫¡?\0\0\0‡c ø\0\0\0ÄÎt¨?\0\0\0†æùó?\0\0\0¿·ßø\0\0\0†3\Z§?\0\0\0\0∏ø\0\0\0 ]ÙΩ?\0\0\0Äs&°?\0\0\0‡1€Ωø\0\0\0‡YMºø\0\0\0¿ØÉ»?\0\0\0†ÊÃø\0\0\0Ä÷æø\0\0\0@tt®?\0\0\0¿haøø\0\0\0†ø˚ƒø\0\0\0‡Yt◊ø\0\0\0Ä≈ºãø\0\0\0‡ÛB’?\0\0\0\0Mq«?\0\0\0¿Ê ø\0\0\0\0:?rø\0\0\0@ãÍ§ø\0\0\0¿w;ã?\0\0\0 )˜∞?\0\0\0†û˝º?\0\0\0\0ŒVßø\0\0\0 7öåø\0\0\0‡dﬂ°ø\0\0\0\09™?\0\0\0†d€√?\0\0\0`ƒ+£ø\0\0\0†#å®ø\0\0\0†63»?\0\0\0\0¢õãø\0\0\0‡5Ωø\0\0\0†H∂?\0\0\0†MË≤?\0\0\0@~X¬ø\0\0\0`¨\níø\0\0\0‡‡¥ø\0\0\0Ä÷h©ø\0\0\0Ät∑Ç?\0\0\0¿ﬁ0πø\0\0\0 5Æ£?\0\0\0 ﬁ+ƒ?\0\0\0@•≈ø\0\0\0`é∆?\0\0\0`-ç©ø\0\0\0‡¡‡ßø\0\0\0@öûãø\0\0\0@‹±?\0\0\0‡‰ì©ø\0\0\0@^⁄Æø\0\0\0†<˙√?\0\0\0 JF–ø\0\0\0@—¡ª?\0\0\0†ëï÷?\0\0\0`ñ*õø\0\0\0\0î1í?\0\0\0‡î^©?\0\0\0Ä0ÛØ?\0\0\0‡mÛ§ø\0\0\0‡÷¿≤?\0\0\0 ©GÃø\0\0\0¿”f±ø\0\0\0@Ó¯§ø\0\0\0Ä|;Öø\0\0\0Ä¸Íö?\0\0\0@Ò&qøq\rtqb.'),(10,'Äcnumpy.core.multiarray\n_reconstruct\nq\0cnumpy\nndarray\nqK\0ÖqCbqáqRq(KKÄÖqcnumpy\ndtype\nqX\0\0\0f8qâàáq	Rq\n(KX\0\0\0<qNNNJˇˇˇˇJˇˇˇˇK\0tqbâB\0\0\0\0\0\0 |≠±ø\0\0\0@Én≤?\0\0\0`uæ≥?\0\0\0‡$À´ø\0\0\0\0À\0ªø\0\0\0¿Mãeø\0\0\0Äd∂ø\0\0\0¿8@Æø\0\0\0 Å†Ω?\0\0\0@[˙ƒø\0\0\0`˜ƒ?\0\0\0\0 º∫ø\0\0\0@âá–ø\0\0\0Ä\\Iéø\0\0\0\0:Ôìø\0\0\0 xπª?\0\0\0ÄôÇ¬ø\0\0\0@1@ƒø\0\0\0Ä*¢ø\0\0\0@É|°ø\0\0\0@Â¸¨?\0\0\0\0S-cø\0\0\0\06&öø\0\0\0\0r»π?\0\0\0¿x#≈ø\0\0\0`´à⁄ø\0\0\0 `^Æø\0\0\0 \nB∑ø\0\0\0 ƒ„≠ø\0\0\0 À∫Ωø\0\0\0\0Xmñø\0\0\0†Gªæ?\0\0\0†1Ñ»ø\0\0\0‡!`ó?\0\0\0ÄhÛàø\0\0\0Ä…“¿?\0\0\0†œ˛°ø\0\0\0‡µÄ?\0\0\0@Hv…?\0\0\0@É•?\0\0\0\0Ó#Œø\0\0\0\0˛tV?\0\0\0‡\"9íø\0\0\0@Æ	—?\0\0\0 eD≈?\0\0\0¿@€£?\0\0\0¿5të?\0\0\0@Á´ïø\0\0\0Ä|)º?\0\0\0Ä3Z—ø\0\0\0\0x¿°?\0\0\0@.oÕ?\0\0\0 îÉ≥?\0\0\0\0»p´?\0\0\0Ä:∆∞?\0\0\0\0€ıªø\0\0\0@RpÉø\0\0\0`¬©±?\0\0\0¿Ωø\0\0\0@dﬁ¥?\0\0\0Ä∆ñ†?\0\0\0 q’∆ø\0\0\0ÄôH§?\0\0\0†‡^¨ø\0\0\0‡ÀMÀ?\0\0\0@\n‡®?\0\0\0@3Ï∫ø\0\0\0‡£ ±ø\0\0\0@(ôø?\0\0\0Ä ≤≈ø\0\0\0@ı™ø\0\0\0‡!ù≥?\0\0\0‡ åøø\0\0\0†!H»ø\0\0\0†pT“ø\0\0\0@j‚®?\0\0\0\0\\Ç◊?\0\0\0Ä-ü¬?\0\0\0ÄN0ƒø\0\0\0¿•I™?\0\0\0 –R©ø\0\0\0 @§ø\0\0\0\0s)∏?\0\0\0Äû¬?\0\0\0¿}¨üø\0\0\0Ä\nÅù?\0\0\0Ä+Ò©ø\0\0\0†˝æ?\0\0\0Äà?Õ?\0\0\0@waßø\0\0\0‡Joêø\0\0\0 ,Ã?\0\0\0\0ß◊™ø\0\0\0†\0‡∏?\0\0\0‡\"5ö?\0\0\0@·Oâø\0\0\0 %à±ø\0\0\0ÄeÕ°ø\0\0\0 Ä\'πø\0\0\0\0l¶?\0\0\0\0Íyô?\0\0\0†ù™Øø\0\0\0 U©òø\0\0\0¿€3≥?\0\0\0\0É ƒø\0\0\0Ä0Í≤?\0\0\0@l¿§ø\0\0\0ÄgI¶ø\0\0\0@‰òø\0\0\0@Øf™?\0\0\0@RIƒø\0\0\0‡œÿ≤ø\0\0\0@ßùƒ?\0\0\0 ‚–ø\0\0\0¿^≈«?\0\0\0†G…?\0\0\0ÄòÎÇ?\0\0\0\0HÇΩ?\0\0\0‡\ZΩ∏?\0\0\0Ä¸,ï?\0\0\0@8’ì?\0\0\0`‚ß≥ø\0\0\0 3¨¡ø\0\0\0†œØø\0\0\0 /Ûæ?\0\0\0‡∆¶û?\0\0\0‡Æ…§?\0\0\0\0[§øq\rtqb.');
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
