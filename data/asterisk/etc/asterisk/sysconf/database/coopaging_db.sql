--
-- Host: localhost    Database: coopaging_db
-- ------------------------------------------------------
--

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_exinfo`
--

DROP TABLE IF EXISTS `t_exinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_exinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hostname` varchar(20) NOT NULL,
  `macaddr` varchar(20) NOT NULL,
  `mode` varchar(20) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `netmask` varchar(20) NOT NULL,
  `gateway` varchar(20) NOT NULL,
  `publicip` varchar(20) NOT NULL DEFAULT '',
  `port` varchar(20) NOT NULL DEFAULT '9999',
  `fxssendkey` varchar(6) NOT NULL DEFAULT '#',
  `onlinestatus` int(6) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT '',
  `configstatus` int(10) unsigned NOT NULL DEFAULT '0',
  `everconfigstatus` varchar(6) NOT NULL DEFAULT 'no',
  `portifavailable` varchar(80) NOT NULL DEFAULT '',
  `_F1` varchar(128) NOT NULL DEFAULT 'no',
  `_F2` varchar(128) NOT NULL DEFAULT '',
  `_F3` varchar(128) NOT NULL DEFAULT '',
  `_F4` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`),
  UNIQUE KEY `macaddr` (`macaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_exinfo`
--

LOCK TABLES `t_exinfo` WRITE;
/*!40000 ALTER TABLE `t_exinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_exinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pbx_inbound_did`
--

DROP TABLE IF EXISTS `t_pbx_inbound_did`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_inbound_did` (
  `_id` int(16) NOT NULL AUTO_INCREMENT,
  `_didnumber` varchar(32) NOT NULL,
  `_destexten` varchar(128) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_didnumber` (`_didnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pbx_inbound_did`
--

LOCK TABLES `t_pbx_inbound_did` WRITE;
/*!40000 ALTER TABLE `t_pbx_inbound_did` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pbx_inbound_did` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pbx_number_dod`
--

DROP TABLE IF EXISTS `t_pbx_number_dod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_number_dod` (
  `_id` int(16) NOT NULL AUTO_INCREMENT,
  `_dodnumber` varchar(32) NOT NULL,
  `_dodtrunk` varchar(128) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_dodnumber` (`_dodnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pbx_number_dod`
--

LOCK TABLES `t_pbx_number_dod` WRITE;
/*!40000 ALTER TABLE `t_pbx_number_dod` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pbx_number_dod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pbx_recording`
--

DROP TABLE IF EXISTS `t_pbx_recording`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_recording` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(64) DEFAULT NULL,
  `dest` varchar(64) DEFAULT NULL,
  `call_type` varchar(64) DEFAULT NULL,
  `record_start_time` double DEFAULT NULL,
  `record_len` double DEFAULT NULL,
  `record_filename` varchar(255) DEFAULT NULL,
  `createdAt` varchar(64) DEFAULT NULL,
  `updatedAt` varchar(64) DEFAULT NULL,
  `uniqueid` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `record_filename` (`record_filename`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pbx_recording`
--

LOCK TABLES `t_pbx_recording` WRITE;
/*!40000 ALTER TABLE `t_pbx_recording` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pbx_recording` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pbx_users_extension`
--

DROP TABLE IF EXISTS `t_pbx_users_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_users_extension` (
  `_id` int(16) NOT NULL AUTO_INCREMENT,
  `_exten` varchar(32) NOT NULL,
  `_cid_number` varchar(32) NOT NULL DEFAULT '',
  `_transfer` varchar(3) NOT NULL DEFAULT 'yes',
  `_mailbox` varchar(16) NOT NULL DEFAULT '',
  `_type` varchar(6) NOT NULL DEFAULT 'peer',
  `_qualify` varchar(4) NOT NULL DEFAULT 'yes',
  `_hasdirectory` varchar(3) NOT NULL DEFAULT 'yes',
  `_call-limit` varchar(2) NOT NULL DEFAULT '5',
  `_host` varchar(16) NOT NULL DEFAULT 'dynamic',
  `_context` varchar(32) NOT NULL DEFAULT 'default',
  `_fullname` varchar(64) NOT NULL DEFAULT '',
  `_secret` varchar(128) NOT NULL DEFAULT '',
  `_outboundcid` varchar(32) NOT NULL DEFAULT '',
  `_hasvoicemail` varchar(3) NOT NULL DEFAULT 'yes',
  `_vmsecret` varchar(32) NOT NULL DEFAULT '',
  `_delete` varchar(3) NOT NULL DEFAULT 'no',
  `_email` varchar(64) NOT NULL DEFAULT '',
  `_hassip` varchar(3) NOT NULL DEFAULT 'no',
  `_hasiax` varchar(3) NOT NULL DEFAULT 'no',
  `_dahdichan` varchar(3) NOT NULL DEFAULT '',
  `_hasmanager` varchar(3) NOT NULL DEFAULT 'no',
  `_hasexten` varchar(3) NOT NULL DEFAULT 'yes',
  `_nat` varchar(32) NOT NULL DEFAULT 'no',
  `_directmedia` varchar(3) NOT NULL DEFAULT 'no',
  `_dtmfmode` varchar(8) NOT NULL DEFAULT 'rfc2833',
  `_hasagent` varchar(3) NOT NULL DEFAULT 'no',
  `_callwaiting` varchar(3) NOT NULL DEFAULT 'yes',
  `_callgroup` varchar(32) NOT NULL DEFAULT '1',
  `_pickupgroup` varchar(32) NOT NULL DEFAULT '1',
  `_videosupport` varchar(3) NOT NULL DEFAULT 'no',
  `_transport` varchar(11) NOT NULL DEFAULT 'udp',
  `_encryption` varchar(3) NOT NULL DEFAULT 'no',
  `_srtpcapable` varchar(3) NOT NULL DEFAULT 'no',
  `_deny` varchar(64) NOT NULL DEFAULT '',
  `_permit` varchar(124) NOT NULL DEFAULT '',
  `_ulaw` int(1) NOT NULL DEFAULT '1',
  `_alaw` int(1) NOT NULL DEFAULT '1',
  `_g722` int(1) NOT NULL DEFAULT '0',
  `_g729` int(1) NOT NULL DEFAULT '0',
  `_g726` int(1) NOT NULL DEFAULT '0',
  `_gsm` int(1) NOT NULL DEFAULT '0',
  `_speex` int(1) NOT NULL DEFAULT '0',
  `_h261` int(1) NOT NULL DEFAULT '0',
  `_h263` int(1) NOT NULL DEFAULT '0',
  `_h263p` int(1) NOT NULL DEFAULT '0',
  `_h264` int(1) NOT NULL DEFAULT '0',
  `_vp8` int(4) DEFAULT '0',
  `_opus` int(4) DEFAULT '0',
  `_position` varchar(256) NOT NULL DEFAULT '',
  `_extenbinding` varchar(3) NOT NULL DEFAULT 'no',
  `_exmacaddr` varchar(32) DEFAULT '',
  `_exdahdichan` varchar(2) DEFAULT '',
  `_recordin` varchar(32) NOT NULL DEFAULT '',
  `_recordout` varchar(32) NOT NULL DEFAULT '',
  `_F1` varchar(128) NOT NULL DEFAULT '',
  `_F2` varchar(128) NOT NULL DEFAULT '',
  `_F3` varchar(128) NOT NULL DEFAULT '',
  `_F4` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_exten` (`_exten`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pbx_users_extension`
--

LOCK TABLES `t_pbx_users_extension` WRITE;
/*!40000 ALTER TABLE `t_pbx_users_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pbx_users_extension` ENABLE KEYS */;
UNLOCK TABLES;

DROP TRIGGER IF EXISTS `USEREXTEN_INSERT_BEFORE`;
DELIMITER ||
CREATE TRIGGER `USEREXTEN_INSERT_BEFORE` BEFORE INSERT ON `t_pbx_users_extension`
FOR EACH ROW
BEGIN
SET NEW._cid_number=NEW._exten;
SET NEW._mailbox=NEW._exten;
SET NEW._callgroup=NEW._pickupgroup;
SET NEW._srtpcapable=NEW._encryption;
END ||
DELIMITER ;

--
-- Table structure for table `t_pbx_users_webrtc`
--

DROP TABLE IF EXISTS `t_pbx_users_webrtc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_users_webrtc` (
  `_id` int(16) NOT NULL AUTO_INCREMENT,
  `_exten` varchar(32) NOT NULL,
  `_cid_number` varchar(32) NOT NULL DEFAULT '',
  `_transfer` varchar(3) NOT NULL DEFAULT 'yes',
  `_mailbox` varchar(16) NOT NULL DEFAULT '',
  `_type` varchar(6) NOT NULL DEFAULT 'friend',
  `_qualify` varchar(4) NOT NULL DEFAULT 'yes',
  `_hasdirectory` varchar(3) NOT NULL DEFAULT 'yes',
  `_call-limit` varchar(2) NOT NULL DEFAULT '5',
  `_host` varchar(16) NOT NULL DEFAULT 'dynamic',
  `_context` varchar(32) NOT NULL DEFAULT 'default',
  `_fullname` varchar(64) NOT NULL DEFAULT '',
  `_secret` varchar(128) NOT NULL DEFAULT '',
  `_outboundcid` varchar(32) NOT NULL DEFAULT '',
  `_hasvoicemail` varchar(3) NOT NULL DEFAULT 'no',
  `_vmsecret` varchar(32) NOT NULL DEFAULT '',
  `_delete` varchar(3) NOT NULL DEFAULT 'no',
  `_email` varchar(64) NOT NULL DEFAULT '',
  `_hassip` varchar(3) NOT NULL DEFAULT 'yes',
  `_hasiax` varchar(3) NOT NULL DEFAULT 'no',
  `_dahdichan` varchar(3) NOT NULL DEFAULT '',
  `_hasmanager` varchar(3) NOT NULL DEFAULT 'no',
  `_hasexten` varchar(3) NOT NULL DEFAULT '',
  `_nat` varchar(32) NOT NULL DEFAULT 'force_rport,comedia',
  `_directmedia` varchar(3) NOT NULL DEFAULT '',
  `_dtmfmode` varchar(8) NOT NULL DEFAULT 'rfc2833',
  `_hasagent` varchar(3) NOT NULL DEFAULT 'no',
  `_callwaiting` varchar(3) NOT NULL DEFAULT 'yes',
  `_callgroup` varchar(32) NOT NULL DEFAULT '1',
  `_pickupgroup` varchar(32) NOT NULL DEFAULT '1',
  `_videosupport` varchar(3) NOT NULL DEFAULT 'no',
  `_transport` varchar(16) NOT NULL DEFAULT 'udp,ws',
  `_encryption` varchar(3) NOT NULL DEFAULT 'yes',
  `_srtpcapable` varchar(3) NOT NULL DEFAULT 'no',
  `_deny` varchar(64) NOT NULL DEFAULT '',
  `_permit` varchar(124) NOT NULL DEFAULT '',
  `_avpf` varchar(3) NOT NULL DEFAULT 'yes',
  `_force_avp` varchar(3) NOT NULL DEFAULT 'yes',
  `_icesupport` varchar(3) NOT NULL DEFAULT 'yes',
  `_dtlsverify` varchar(3) NOT NULL DEFAULT 'no',
  `_dtlsenable` varchar(3) NOT NULL DEFAULT 'yes',
  `_dtlscertfile` varchar(64) NOT NULL DEFAULT '/etc/asterisk/keys/asterisk.pem',
  `_dtlscafile` varchar(64) NOT NULL DEFAULT '/etc/asterisk/keys/ca.crt',
  `_dtlssetup` varchar(32) NOT NULL DEFAULT 'actpass',
  `_alaw` int(1) NOT NULL DEFAULT '1',
  `_ulaw` int(1) NOT NULL DEFAULT '1',
  `_g722` int(1) NOT NULL DEFAULT '0',
  `_g729` int(1) NOT NULL DEFAULT '0',
  `_g726` int(1) NOT NULL DEFAULT '0',
  `_gsm` int(1) NOT NULL DEFAULT '0',
  `_speex` int(1) NOT NULL DEFAULT '0',
  `_h261` int(1) NOT NULL DEFAULT '0',
  `_h263` int(1) NOT NULL DEFAULT '0',
  `_h263p` int(1) NOT NULL DEFAULT '0',
  `_h264` int(1) NOT NULL DEFAULT '0',
  `_position` varchar(256) NOT NULL DEFAULT '',
  `_extenbinding` varchar(3) NOT NULL DEFAULT 'no',
  `_recordin` varchar(32) NOT NULL DEFAULT '',
  `_recordout` varchar(32) NOT NULL DEFAULT '',
  `_F1` varchar(128) NOT NULL DEFAULT '',
  `_F2` varchar(128) NOT NULL DEFAULT '',
  `_F3` varchar(128) NOT NULL DEFAULT '',
  `_F4` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_exten` (`_exten`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pbx_users_webrtc`
--

LOCK TABLES `t_pbx_users_webrtc` WRITE;
/*!40000 ALTER TABLE `t_pbx_users_webrtc` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pbx_users_webrtc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pbx_users_voiptrunk`
--

DROP TABLE IF EXISTS `t_pbx_users_voiptrunk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_users_voiptrunk` (
  `_id` int(16) NOT NULL AUTO_INCREMENT,
  `_trunkactive` varchar(3) NOT NULL DEFAULT 'yes',
  `_trunk` varchar(64) NOT NULL DEFAULT '',
  `_trunkname` varchar(64) NOT NULL,
  `_trunkstyle` varchar(64) NOT NULL DEFAULT '',
  `_host` varchar(64) NOT NULL DEFAULT 'yes',
  `_port` varchar(8) NOT NULL DEFAULT '',
  `_voipusername` varchar(64) NOT NULL DEFAULT '',
  `_authuser` varchar(64) NOT NULL DEFAULT '',
  `_fromuser` varchar(64) NOT NULL DEFAULT '',
  `_fromdomain` varchar(64) NOT NULL DEFAULT '',
  `_contact` varchar(64) NOT NULL DEFAULT '',
  `_voipsecret` varchar(128) NOT NULL DEFAULT '',
  `_outboundcid` varchar(32) NOT NULL DEFAULT '',
  `_trunkcid_preferred` varchar(3) NOT NULL DEFAULT 'no',
  `_prefix` varchar(16)	NOT NULL DEFAULT '',
  `_insecure` varchar(16) NOT NULL DEFAULT 'port,invite',
  `_calllimit` varchar(3) NOT NULL DEFAULT '0',
  `_language` varchar(8) NOT NULL DEFAULT '',
  `_qualify` varchar(8) NOT NULL DEFAULT '2000',
  `_qualifyfreq` varchar(8) NOT NULL DEFAULT '60',
  `_transport` varchar(16) NOT NULL DEFAULT 'udp',
  `_faxdetect` varchar(3) NOT NULL DEFAULT 'no',
  `_hassip` varchar(3) NOT NULL DEFAULT 'yes',
  `_registersip` varchar(3) NOT NULL DEFAULT 'no',
  `_hasiax` varchar(3) NOT NULL DEFAULT 'no',
  `_registeriax` varchar(3) NOT NULL DEFAULT 'no',
  `_context` varchar(32) NOT NULL DEFAULT 'default',
  `_hasexten` varchar(3) NOT NULL DEFAULT 'yes',
  `_nat` varchar(32) NOT NULL DEFAULT 'force_rport,comedia',
  `_directmedia` varchar(16) NOT NULL DEFAULT 'no',
  `_dtmfmode` varchar(8) NOT NULL DEFAULT 'rfc2833',
  `_videosupport` varchar(3) NOT NULL DEFAULT 'yes',
  `_encryption` varchar(3) NOT NULL DEFAULT 'no',
  `_srtpcapable` varchar(3) NOT NULL DEFAULT 'no',
  `_prack` varchar(3) NOT NULL DEFAULT 'no',
  `_alaw` int(1) NOT NULL DEFAULT '1',
  `_ulaw` int(1) NOT NULL DEFAULT '1',
  `_g722` int(1) NOT NULL DEFAULT '0',
  `_g729` int(1) NOT NULL DEFAULT '0',
  `_g726` int(1) NOT NULL DEFAULT '0',
  `_gsm` int(1) NOT NULL DEFAULT '0',
  `_speex` int(1) NOT NULL DEFAULT '0',
  `_h261` int(1) NOT NULL DEFAULT '0',
  `_h263` int(1) NOT NULL DEFAULT '0',
  `_h263p` int(1) NOT NULL DEFAULT '0',
  `_h264` int(1) NOT NULL DEFAULT '0',
  `_vp8` int(1) DEFAULT '0',
  `_opus` int(1) DEFAULT '0',
  `_position` varchar(256) NOT NULL DEFAULT '',
  `_recordin` varchar(32) NOT NULL DEFAULT '',
  `_recordout` varchar(32) NOT NULL DEFAULT '',
  `_F1` varchar(128) NOT NULL DEFAULT '',
  `_F2` varchar(128) NOT NULL DEFAULT '',
  `_F3` varchar(128) NOT NULL DEFAULT '',
  `_F4` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_trunk` (`_trunk`),
  UNIQUE KEY `_trunkname` (`_trunkname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pbx_users_voiptrunk`
--

LOCK TABLES `t_pbx_users_voiptrunk` WRITE;
/*!40000 ALTER TABLE `t_pbx_users_voiptrunk` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pbx_users_voiptrunk` ENABLE KEYS */;
UNLOCK TABLES;

DROP TRIGGER IF EXISTS `VOIPTRUNK_INSERT_BEFORE`;
DELIMITER ||
CREATE TRIGGER `VOIPTRUNK_INSERT_BEFORE` BEFORE INSERT ON `t_pbx_users_voiptrunk`
FOR EACH ROW
BEGIN
IF (NEW._hassip='yes') THEN
    SET NEW._registersip='no';
    SET NEW._srtpcapable=NEW._encryption;
    IF (NEW._voipusername='') THEN
	SET NEW._trunkstyle="SP-SIP";
    ELSE
	SET NEW._trunkstyle="SIP";
    END IF;
    IF (NEW._host='dynamic') THEN
	SET NEW._trunkstyle="Peer";
	SET NEW._trunk=NEW._voipusername;
    ELSE
	SET NEW._trunk=CONCAT("trunk-sip-",NEW._trunkname);
    END IF;
ELSEIF (NEW._hasiax='yes') THEN
    IF (NEW._voipusername='') THEN
	SET NEW._trunkstyle="SP-IAX";
    ELSE
	SET NEW._trunkstyle="IAX";
	SET NEW._registeriax='yes';
    END IF;
    IF (NEW._host='dynamic') THEN
	SET NEW._trunk=NEW._voipusername;
    ELSE
	SET NEW._trunk=CONCAT("trunk-iax-",NEW._trunkname);
    END IF;
END IF;
END ||
DELIMITER ;

--
-- Table structure for table `t_pbx_call_queues`
--

DROP TABLE IF EXISTS `t_pbx_call_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_call_queues` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `queuenum` varchar(32) NOT NULL,
  `waittime` varchar(8) NOT NULL DEFAULT '',
  `label` varchar(64) NOT NULL DEFAULT '',
  `queuename` varchar(64) NOT NULL DEFAULT '',
  `dest` varchar(64) NOT NULL DEFAULT 'yes',
  `setinterfacevar` varchar(3) NOT NULL DEFAULT 'yes',
  `setqueueentryvar` varchar(3) NOT NULL DEFAULT 'yes',
  `retry` int(2) NOT NULL DEFAULT '1',
  `ringinuse` varchar(3) NOT NULL DEFAULT 'no',
  `musicclass` varchar(32) NOT NULL DEFAULT 'queuemusic',
  `context` varchar(32) NOT NULL DEFAULT 'queue-custom',
  `strategy` varchar(16) NOT NULL DEFAULT 'rrordered',
  `timeout` varchar(8) NOT NULL DEFAULT '15',
  `wrapuptime` varchar(8) NOT NULL DEFAULT '0',
  `autofill` varchar(3) NOT NULL DEFAULT 'yes',
  `autopause` varchar(3) NOT NULL DEFAULT 'no',
  `joinempty` varchar(32) NOT NULL DEFAULT 'no',
  `leavewhenempty` varchar(32) NOT NULL DEFAULT 'no',
  `reportholdtime` varchar(3) NOT NULL DEFAULT 'no',
  `rreminder` varchar(3) NOT NULL DEFAULT 'no',
  `maxlen` varchar(4)	NOT NULL DEFAULT '16',
  `announce_frequency` varchar(4) NOT NULL DEFAULT '30',
  `announce_holdtime` varchar(3) NOT NULL DEFAULT 'no',
  `announce_position` varchar(8) NOT NULL DEFAULT 'yes',
  `periodic_announce_frequency` varchar(4) NOT NULL DEFAULT '30',
  `periodic_announce` varchar(64) NOT NULL DEFAULT '/var/lib/asterisk/prompts/all-busy',
  `queue_youarenext` varchar(8) NOT NULL DEFAULT '',
  `queue_thankyou` varchar(16) NOT NULL DEFAULT '',
  `static_members` varchar(2048) DEFAULT NULL,
  `dynamic_members` varchar(2048) DEFAULT NULL,
  `work_order` varchar(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `queuenum` (`queuenum`),
  UNIQUE KEY `queuename` (`queuename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pbx_call_queues`
--

LOCK TABLES `t_pbx_call_queues` WRITE;
/*!40000 ALTER TABLE `t_pbx_call_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pbx_call_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pbx_dialrule`
--

DROP TABLE IF EXISTS `t_pbx_dialrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_dialrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trunks` varchar(64) DEFAULT NULL,
  `rule` varchar(64) DEFAULT NULL,
  `del_prefix` int(2) DEFAULT NULL,
  `add_before` varchar(32) DEFAULT NULL,
  `add_after` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pbx_dialrule`
--

LOCK TABLES `t_pbx_dialrule` WRITE;
/*!40000 ALTER TABLE `t_pbx_dialrule` DISABLE KEYS */;
INSERT INTO `t_pbx_dialrule` VALUES ('0','紧急电话规则','trunk_1','_1XX',NULL,NULL,NULL);
INSERT INTO `t_pbx_dialrule` VALUES ('1','本地电话规则','trunk_1','_ZXX.',NULL,NULL,NULL);
INSERT INTO `t_pbx_dialrule` VALUES ('2','国内长途规则','trunk_1','_0ZXX.',NULL,NULL,NULL);
INSERT INTO `t_pbx_dialrule` VALUES ('3','国际长途规则','trunk_1','_00ZXX.',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_pbx_dialrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pbx_dialrule`
--

DROP TABLE IF EXISTS `t_pbx_ivr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_ivr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(32) DEFAULT NULL,
  `prompt` varchar(255) DEFAULT NULL,
  `loops` int(2) DEFAULT NULL,
  `timeout` int(8) DEFAULT NULL,
  `language` varchar(8) DEFAULT NULL,
  `dialplan` varchar(64) DEFAULT NULL,
  `keys_action` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `extension` (`extension`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pbx_ivr`
--

LOCK TABLES `t_pbx_ivr` WRITE;
/*!40000 ALTER TABLE `t_pbx_ivr` DISABLE KEYS */;
INSERT INTO `t_pbx_ivr` VALUES ('0','上班时间话务员','6500','/etc/asterisk/sysconf/prompts/welcome',1,3,NULL,'default','{"i":"hangup","t":"hangup"}');
INSERT INTO `t_pbx_ivr` VALUES ('1','下班时间话务员','6501','/etc/asterisk/sysconf/prompts/closed',1,3,NULL,'default','{"i":"hangup","t":"hangup"}');
/*!40000 ALTER TABLE `t_pbx_ivr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cdr`
--

DROP TABLE IF EXISTS `t_pbx_cdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_cdr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clid` varchar(80) DEFAULT NULL,
  `src` varchar(80) DEFAULT NULL,
  `dst` varchar(80) DEFAULT NULL,
  `dcontext` varchar(80) DEFAULT NULL,
  `channel` varchar(80) DEFAULT NULL,
  `dstchannel` varchar(80) DEFAULT NULL,
  `lastapp` varchar(80) DEFAULT NULL,
  `lastdata` varchar(80) DEFAULT NULL,
  `start` varchar(80) DEFAULT NULL,
  `end` varchar(80) DEFAULT NULL,
  `answer` varchar(80) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `billsec` int(11) DEFAULT NULL,
  `ringduration` int(11) DEFAULT NULL,
  `disposition` varchar(32) DEFAULT NULL,
  `ama_flags` int(11) DEFAULT NULL,
  `accountcode` varchar(150) DEFAULT NULL,
  `calltype` varchar(32) DEFAULT 'internal',
  `uniqueid` varchar(80) DEFAULT NULL,
  `trunk` varchar(64) DEFAULT NULL,
  `recordfile` varchar(256) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cdr`
--

LOCK TABLES `t_cdr` WRITE;
/*!40000 ALTER TABLE `t_cdr` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cdr` ENABLE KEYS */;
UNLOCK TABLES;
DROP TRIGGER IF EXISTS `CDR_INSERT_BEFORE`;
DELIMITER ||
CREATE TRIGGER `CDR_INSERT_BEFORE` BEFORE INSERT ON `t_cdr`
FOR EACH ROW
BEGIN
IF (NEW.calltype!='incoming') THEN
  IF (NEW.disposition='ANSWERED') THEN
    SET NEW.ringduration=NEW.duration - NEW.billsec;
  ELSE
    SET NEW.ringduration=NEW.duration;
    SET NEW.billsec=0;
  END IF;
ELSE
  IF (NEW.disposition!='ANSWERED') THEN
    SET NEW.ringduration=NEW.duration;
    SET NEW.billsec=0;
  END IF;
END IF;
IF (NEW.dst='t' OR NEW.dst='s' OR NEW.dst is NULL OR NEW.dst LIKE 'vm-%') THEN
    DELETE FROM cdr WHERE id=NEW.id;
END IF;
END ||
DELIMITER ;

--
-- Table structure for table `t_paging_tasks`
--

DROP TABLE IF EXISTS `t_paging_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_tasks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enable` tinyint(1) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode` varchar(16) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `week_days` varchar(32) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `sound_type` varchar(32) DEFAULT NULL,
  `play_mode` varchar(32) DEFAULT NULL,
  `content` varchar(128) DEFAULT NULL,
  `group_ids` JSON NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_paging_devices`
--

DROP TABLE IF EXISTS `t_paging_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_devices` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `model` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` int(32) NOT NULL,
  `contact` varchar(64) DEFAULT NULL,
  `phonenumber` int(32) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `features` json DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `extension` (`extension`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_paging_groups`
--

DROP TABLE IF EXISTS `t_paging_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` int(32) NOT NULL,
  `device_ids` JSON DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `extension` (`extension`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_groups`
--

LOCK TABLES `t_paging_groups` WRITE;
/*!40000 ALTER TABLE `t_paging_groups` DISABLE KEYS */;
INSERT INTO `t_paging_groups` VALUES ('0','all',6000,'{"device":[]}',NULL,'2019-07-10 09:23:37','2019-07-10 09:23:37');
/*!40000 ALTER TABLE `t_paging_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_types`
--

DROP TABLE IF EXISTS `t_paging_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_types`
--

LOCK TABLES `t_paging_types` WRITE;
/*!40000 ALTER TABLE `t_paging_types` DISABLE KEYS */;
INSERT INTO `t_paging_types` VALUES (0,'广播终端',NULL,'2019-07-10 09:23:37','2019-07-10 09:23:37');
INSERT INTO `t_paging_types` VALUES (1,'对讲终端',NULL,'2019-07-10 09:23:37','2019-07-10 09:23:37');
INSERT INTO `t_paging_types` VALUES (2,'视频终端',NULL,'2019-07-10 09:23:37','2019-07-10 09:23:37');
INSERT INTO `t_paging_types` VALUES (3,'IP电话',NULL,'2019-07-10 09:23:37','2019-07-10 09:23:37');
/*!40000 ALTER TABLE `t_paging_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_users`
--

DROP TABLE IF EXISTS `t_paging_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useraccount` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonenumber` int(32) DEFAULT NULL,
  `leftphone` int(32) DEFAULT NULL,
  `rightphone` int(32) DEFAULT NULL,
  `level` int(2) DEFAULT NULL,
  `service_ids` JSON NOT NULL,
  `group_ids` JSON NOT NULL,
  `currentSessionId` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastActiveTime` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `useraccount` (`useraccount`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_users`
--

LOCK TABLES `t_paging_users` WRITE;
/*!40000 ALTER TABLE `t_paging_users` DISABLE KEYS */;
INSERT INTO `t_paging_users` VALUES (0,'admin','admin','admin',NULL,NULL,NULL,1,'{"service":[0,1,2,3,4,5,6,7]}','{"group":[0]}',NULL,NULL,NULL,'2019-07-10 09:23:37','2019-07-10 09:23:37');
/*!40000 ALTER TABLE `t_paging_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_service`
--

DROP TABLE IF EXISTS `t_paging_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_service` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(2) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `level` (`level`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_service`
--

LOCK TABLES `t_paging_service` WRITE;
/*!40000 ALTER TABLE `t_paging_service` DISABLE KEYS */;
INSERT INTO `t_paging_service` VALUES (0,'寻呼喊话',1,'2019-07-10 09:23:37','2019-07-10 09:23:37');
INSERT INTO `t_paging_service` VALUES (1,'一键告警',2,'2019-07-10 09:23:37','2019-07-10 09:23:37');
INSERT INTO `t_paging_service` VALUES (2,'消防告警',3,'2019-07-10 09:23:37','2019-07-10 09:23:37');
INSERT INTO `t_paging_service` VALUES (3,'设备对讲',4,'2019-07-10 09:23:37','2019-07-10 09:23:37');
INSERT INTO `t_paging_service` VALUES (4,'钟声提醒',5,'2019-07-10 09:23:37','2019-07-10 09:23:37');
INSERT INTO `t_paging_service` VALUES (5,'定时插播',6,'2019-07-10 09:23:37','2019-07-10 09:23:37');
INSERT INTO `t_paging_service` VALUES (6,'定时广播',7,'2019-07-10 09:23:37','2019-07-10 09:23:37');
INSERT INTO `t_paging_service` VALUES (7,'背景音乐',8,'2019-07-10 09:23:37','2019-07-10 09:23:37');
/*!40000 ALTER TABLE `t_paging_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_action_log`
--

DROP TABLE IF EXISTS `t_paging_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_action_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `action_time` varchar(80) DEFAULT NULL,
  `operator` varchar(64) DEFAULT NULL,
  `action_info` json DEFAULT NULL,
  `service_id` int(2) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_action_log`
--

LOCK TABLES `t_paging_action_log` WRITE;
/*!40000 ALTER TABLE `t_paging_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paging_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_alarm_log`
--

DROP TABLE IF EXISTS `t_paging_alarm_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_alarm_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `alarm_time` varchar(80) DEFAULT NULL,
  `device_id` varchar(64) DEFAULT NULL,
  `alarm_info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_alarm_log`
--

LOCK TABLES `t_paging_alarm_log` WRITE;
/*!40000 ALTER TABLE `t_paging_alarm_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paging_alarm_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_holidays_range`
--

DROP TABLE IF EXISTS `t_holidays_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_holidays_range` (
  `_holidayname` varchar(512) NOT NULL DEFAULT '',
  `_start` datetime NOT NULL,
  `_end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_holidays_range`
--

LOCK TABLES `t_holidays_range` WRITE;
/*!40000 ALTER TABLE `t_holidays_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_holidays_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_week_range`
--

DROP TABLE IF EXISTS `t_week_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_week_range` (
  `_rulename` varchar(512) NOT NULL DEFAULT '',
  `_week` int(1) NOT NULL,
  `_start` time NOT NULL DEFAULT '00:00:00',
  `_end` time NOT NULL DEFAULT '23:59:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_week_range`
--

LOCK TABLES `t_week_range` WRITE;
/*!40000 ALTER TABLE `t_week_range` DISABLE KEYS */;
INSERT INTO `t_week_range` VALUES ('office%20time',2,'09:00:00','12:00:00'),('office%20time',2,'14:00:00','18:00:00'),('office%20time',3,'09:00:00','12:00:00'),('office%20time',3,'14:00:00','18:00:00'),('office%20time',4,'09:00:00','12:00:00'),('office%20time',4,'14:00:00','18:00:00'),('office%20time',5,'09:00:00','12:00:00'),('office%20time',5,'14:00:00','18:00:00'),('office%20time',6,'09:00:00','12:00:00'),('office%20time',6,'14:00:00','18:00:00'),('office%20time',7,'09:00:00','12:00:00');
/*!40000 ALTER TABLE `t_week_range` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `t_sip_settings`;
CREATE TABLE `t_sip_settings` (
    `id`                INT(11)         NOT NULL AUTO_INCREMENT,
    `key_name`          VARCHAR(40)     DEFAULT NULL,
    `key_value`         VARCHAR(40)     DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_sip_settings`
--

LOCK TABLES `t_sip_settings` WRITE;
/*!40000 ALTER TABLE `t_sip_settings` DISABLE KEYS */;
INSERT INTO `t_sip_settings` VALUES (1,'UDP','5060'),(2,'TCP','5060'),(3,'TLS','5061'),(4,'UDP,TCP','5060');
/*!40000 ALTER TABLE `t_sip_settings` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `t_phone_manufacturer`;
CREATE TABLE `t_phone_manufacturer` (
    `id`                INT(11)         NOT NULL AUTO_INCREMENT,
    `conf_name`         VARCHAR(32)     NOT NULL UNIQUE,
    `show_name`         VARCHAR(32)     NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO t_phone_manufacturer(id,conf_name,show_name)
    VALUES(1,'Zycoo','Zycoo'),(2,'Cisco','Cisco'),
            (3,'MOCET','MOCET'),(4,'Snom','Snom');

DROP TABLE IF EXISTS `t_phone_model`;
CREATE TABLE `t_phone_model` (
    `id`                INT(11)         NOT NULL AUTO_INCREMENT,
    `manufacturer_id`   INT(11)         NOT NULL,
    `conf_name`         VARCHAR(32)     NOT NULL,
    `show_name`         VARCHAR(32)     NOT NULL,
    `mac_prefix`        VARCHAR(20)     NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*zycoo*/
INSERT INTO t_phone_model(manufacturer_id,conf_name,show_name,mac_prefix)
    VALUES(1,'D30/D30P','D30/D30P','68692e'),(1,'D60','D60','68692e'),(1,'H81/H81P','H81/H81P','68692e'),
            (1,'H83','H83','68692e'),(1,'B20/C20','B20/C20','68692e');
/*Cisco*/
INSERT INTO t_phone_model(manufacturer_id,conf_name,show_name,mac_prefix)
    VALUES(2,'SPA303','SPA303','3cce73'),(2,'SPA502G','SPA502G','3cce73'),
            (2,'SPA504G','SPA504G','3cce73'),(2,'SPA508G','SPA508G','3cce73'),
            (2,'SPA525G','SPA525G','3cce73'),(2,'SPA525G2','SPA525G2','3cce73'),
            (2,'SPA121','SPA121','3cce73'),(2,'7911','7911','3cce73'),(2,'7941','7941','3cce73'),
            (2,'7942','7942','3cce73'),(2,'7945','7945','3cce73');
/*MOCET*/
INSERT INTO t_phone_model(manufacturer_id,conf_name,show_name,mac_prefix)
    VALUES(3,'IP3032E','IP3032E','001915');
/*Snom*/
INSERT INTO t_phone_model(manufacturer_id,conf_name,show_name,mac_prefix)
    VALUES(4,'D305','D305','000413');


DROP TABLE IF EXISTS `t_phone_device`;
CREATE TABLE `t_phone_device` (
    `id`                INT(11)         NOT NULL AUTO_INCREMENT,
    `mac`               VARCHAR(20)     NOT NULL UNIQUE,
    `ip`                VARCHAR(20)     NOT NULL,
    `manufacturer_id`   INT(11)         NOT NULL,
    `model_id`          INT(11)         DEFAULT 0,
    `status`            ENUM('fresh','configed','activated')    DEFAULT 'fresh',
    `call_waiting`      TINYINT(1)      DEFAULT 1,
    `greeting_word`     VARCHAR(20)     DEFAULT '',
    PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TRIGGER IF EXISTS `INSERT_PHONE_DEVICE_AFTER`;
DELIMITER ;;
CREATE TRIGGER `INSERT_PHONE_DEVICE_AFTER`
AFTER INSERT ON `t_phone_device`
FOR EACH ROW
BEGIN
    INSERT INTO t_phone_exten (device_id,exten) VALUES (NEW.id,'');
END;;
DELIMITER ;

DROP TABLE IF EXISTS `t_phone_exten`;
CREATE TABLE `t_phone_exten` (
    `id`                INT(11)         NOT NULL AUTO_INCREMENT,
    `device_id`         INT(11)         NOT NULL,
    `exten`             VARCHAR(40)     DEFAULT NULL,
    `exten_index`       INT(11)         DEFAULT 1,
    PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


/*
 * zycoo h83
 */
DROP TABLE IF EXISTS `t_phone_func_key`;
CREATE TABLE `t_phone_func_key` (
    `id`                INT(11)         NOT NULL AUTO_INCREMENT,
    `device_id`         INT(11)         NOT NULL,
    `key_name`          VARCHAR(40)     DEFAULT NULL,
    `func_type`         VARCHAR(40)     DEFAULT NULL,
    `show_name`         VARCHAR(40)     DEFAULT NULL,
    `key_value`         VARCHAR(40)     DEFAULT NULL,
    `line`              VARCHAR(40)     DEFAULT NULL,
    `sub_type`          VARCHAR(40)     DEFAULT NULL,
    `pickup_number`     VARCHAR(40)     DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


/*
 * SELECT func_record_discover_phone_device('005544444444','zycoo','h83','192.168.10.12');
 */
DROP FUNCTION IF EXISTS `func_record_discover_phone_device`;
DELIMITER ;;
CREATE FUNCTION `func_record_discover_phone_device`(
    `in_mac`                VARCHAR(20),
    `in_manufacturer`       VARCHAR(32),
    `in_model`              VARCHAR(32),
    `in_ip`                 VARCHAR(20)
)
RETURNS text
BEGIN
    DECLARE var_count           INT(11);
    DECLARE var_model_id        INT(11) DEFAULT 0;
    DECLARE var_manufacturer_id INT(11);
    SELECT COUNT(*) INTO var_count
        FROM t_phone_device
        WHERE mac=in_mac;
    IF(var_count=0) THEN
        SELECT id INTO var_manufacturer_id
            FROM t_phone_manufacturer
            WHERE conf_name=in_manufacturer;
        IF(in_model!='') THEN
            SELECT id INTO var_model_id
                FROM t_phone_model
                WHERE conf_name=in_model AND manufacturer_id=var_manufacturer_id;
        END IF;
	IF(var_manufacturer_id!='') THEN
	    INSERT INTO t_phone_device(mac,ip,manufacturer_id,model_id)
                VALUE(in_mac,in_ip,var_manufacturer_id,var_model_id);
	END IF;
    ELSE
        UPDATE t_phone_device
            SET ip=in_ip
            WHERE mac=in_mac;
    END IF;
    RETURN 'true';
END
;;
DELIMITER ;


/*
 * SELECT func_record_add_phone_device('1','005544444444','zycoo','h83','801','configed','1','ZycooTech');
 */
DROP FUNCTION IF EXISTS `func_record_add_phone_device`;
DELIMITER ;;
CREATE FUNCTION `func_record_add_phone_device`(
    `in_id`                 INT(11),
    `in_mac`                VARCHAR(20),
    `in_manufacturer`       VARCHAR(32),
    `in_model`              VARCHAR(32),
    `in_exten`              VARCHAR(40),
    `in_status`             VARCHAR(24),
    `in_call_waiting`       TINYINT(1),
    `in_greeting_word`      VARCHAR(20)
)
RETURNS text
BEGIN
    DECLARE var_count           INT(11);
    DECLARE var_model_id        INT(11) DEFAULT 0;
    DECLARE var_manufacturer_id INT(11);
    SELECT COUNT(*) INTO var_count
        FROM t_phone_device
        WHERE mac=in_mac;
    IF(var_count=0) THEN
        SELECT id INTO var_manufacturer_id
            FROM t_phone_manufacturer
            WHERE conf_name=in_manufacturer;
        IF(in_model!='') THEN
            SELECT id INTO var_model_id
                FROM t_phone_model
                WHERE conf_name=in_model AND manufacturer_id=var_manufacturer_id;
        END IF;
	IF(var_manufacturer_id!='') THEN
	    INSERT INTO t_phone_device(id,mac,manufacturer_id,model_id,status,call_waiting,greeting_word)
                VALUE(in_id,in_mac,var_manufacturer_id,var_model_id,in_status,in_call_waiting,in_greeting_word);
	    UPDATE t_phone_exten SET exten=in_exten where device_id=in_id;
	END IF;
    ELSE
        UPDATE t_phone_device
            SET ip=in_ip
            WHERE mac=in_mac;
    END IF;
    RETURN 'true';
END
;;
DELIMITER ;


/*
 * SELECT func_delete_phone_device(1);
 */
DROP FUNCTION IF EXISTS `func_delete_phone`;
DELIMITER ;;
CREATE FUNCTION `func_delete_phone`(
    `in_device_id`          VARCHAR(20)
)
RETURNS text
BEGIN
    DELETE FROM t_phone_func_key WHERE device_id=in_device_id;
    DELETE FROM t_phone_exten WHERE device_id=in_device_id;
    DELETE FROM t_phone_device WHERE id=in_device_id;
    RETURN 'true';
END
;;
DELIMITER ;


/*
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| id            | int(11)     | NO   |     | 0       |       |
| mac           | varchar(20) | NO   |     | NULL    |       |
| ip            | varchar(20) | NO   |     | NULL    |       |
| manufacturer  | varchar(32) | NO   |     | NULL    |       |
| model         | varchar(32) | YES  |     | NULL    |       |
| call_waiting  | tinyint(1)  | YES  |     | 1       |       |
| greeting_word | varchar(20) | YES  |     |         |       |
+---------------+-------------+------+-----+---------+-------+
 */
DROP VIEW IF EXISTS `v_phone_device_activated`;
CREATE VIEW v_phone_device_activated
AS
SELECT t_phone_device.id AS id,
    mac, 
    ip,
    t_phone_manufacturer.conf_name AS manufacturer,
    t_phone_model.conf_name AS model,
    exten,
    _fullname,
    _transport,
    t_sip_settings.key_value AS port,
    _secret,
    call_waiting,
    greeting_word
    FROM t_phone_device
        JOIN t_phone_manufacturer ON status='activated'
            AND t_phone_device.manufacturer_id=t_phone_manufacturer.id
        LEFT JOIN t_phone_exten ON t_phone_device.id=t_phone_exten.device_id
	LEFT JOIN t_users_extension ON t_phone_exten.exten=t_users_extension._exten
	LEFT JOIN t_sip_settings ON t_users_extension._transport=t_sip_settings.key_name
        LEFT JOIN t_phone_model ON t_phone_device.model_id=t_phone_model.id;


/*
 * 
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| id            | int(11)     | NO   |     | 0       |       |
| dodexten      | varchar(32) | NO   |     | NULL    |       |
| trunkname     | varchar(64) | NO   |     | NULL    |       |
| trunk         | varchar(128)| NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
 */
DROP VIEW IF EXISTS `v_extension_trunk_dod`;
CREATE VIEW v_extension_trunk_dod
AS
SELECT t_number_dod._id AS id,
    _dodnumber AS dodexten,
    _dodtrunk AS trunkname,
    _trunk AS trunk 
    FROM t_number_dod
        JOIN t_users_voiptrunk ON t_users_voiptrunk._trunkname=t_number_dod._dodtrunk;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-01-04  7:18:52
