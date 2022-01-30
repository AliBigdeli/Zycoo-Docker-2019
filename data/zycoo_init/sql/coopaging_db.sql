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
-- Table structure for table `t_pbx_inbound_did`
--

DROP TABLE IF EXISTS `t_pbx_inbound_did`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_inbound_did` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `didnumber` varchar(32) NOT NULL,
  `type` varchar(64) NOT NULL,
  `exten` varchar(64) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `didnumber` (`didnumber`)
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
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `dodnumber` varchar(32) NOT NULL,
  `dodtrunk` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dodnumber` (`dodnumber`)
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
-- Table structure for table `t_global_cdr`
--

DROP TABLE IF EXISTS `t_global_cdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_global_cdr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `srcname` varchar(128) NOT NULL COMMENT '主叫名称',
  `src` varchar(64) DEFAULT NULL COMMENT '主叫',
  `dstname` varchar(128) NOT NULL COMMENT '被叫名称',
  `dst` varchar(64) DEFAULT NULL COMMENT '被叫',
  `start` datetime DEFAULT NULL COMMENT '开始时间',
  `answer` datetime DEFAULT NULL COMMENT '应答时间',
  `end` datetime DEFAULT NULL COMMENT '结束时间',
  `billsec` int(16) DEFAULT NULL COMMENT '通话时长',
  `sessionlevel` int(2) DEFAULT NULL COMMENT '会话等级',
  `calltype` varchar(32) DEFAULT NULL COMMENT '呼叫类型',
  `record_filename` varchar(255) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL COMMENT '通话状态',
  `uniqueid` varchar(16) DEFAULT NULL COMMENT '唯一标识',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_global_cdr`
--

LOCK TABLES `t_global_cdr` WRITE;
/*!40000 ALTER TABLE `t_global_cdr` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_global_cdr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_global_pdr`
--

DROP TABLE IF EXISTS `t_global_pdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_global_pdr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `srcname` varchar(128) NOT NULL COMMENT '主叫名称',
  `src` varchar(64) DEFAULT NULL COMMENT '主叫',
  `dst` JSON DEFAULT NULL COMMENT '被叫',
  `start` datetime DEFAULT NULL COMMENT '开始时间',
  `answer` datetime DEFAULT NULL COMMENT '应答时间',
  `end` datetime DEFAULT NULL COMMENT '结束时间',
  `billsec` int(16) DEFAULT NULL COMMENT '通话时长',
  `sessionlevel` int(2) DEFAULT NULL COMMENT '会话等级',
  `calltype` varchar(32) DEFAULT NULL COMMENT '呼叫类型',
  `record_filename` varchar(255) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL COMMENT '通话状态',
  `uniqueid` varchar(16) DEFAULT NULL COMMENT '唯一标识',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_global_pdr`
--

LOCK TABLES `t_global_pdr` WRITE;
/*!40000 ALTER TABLE `t_global_pdr` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_global_pdr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_global_pdr`
--

DROP TABLE IF EXISTS `t_global_idr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_global_idr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `srcname` varchar(128) NOT NULL COMMENT '主叫名称',
  `src` varchar(64) DEFAULT NULL COMMENT '主叫',
  `dstname` varchar(128) NOT NULL COMMENT '被叫名称',
  `dst` varchar(64) DEFAULT NULL COMMENT '被叫',
  `start` datetime DEFAULT NULL COMMENT '开始时间',
  `answer` datetime DEFAULT NULL COMMENT '应答时间',
  `end` datetime DEFAULT NULL COMMENT '结束时间',
  `billsec` int(16) DEFAULT NULL COMMENT '通话时长',
  `sessionlevel` int(2) DEFAULT NULL COMMENT '会话等级',
  `calltype` varchar(32) DEFAULT NULL COMMENT '呼叫类型',
  `record_filename` varchar(255) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL COMMENT '通话状态',
  `uniqueid` varchar(16) DEFAULT NULL COMMENT '唯一标识',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_global_idr`
--

LOCK TABLES `t_global_idr` WRITE;
/*!40000 ALTER TABLE `t_global_idr` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_global_idr` ENABLE KEYS */;
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
  `record_start_time` datetime DEFAULT NULL,
  `record_len` int(16) DEFAULT NULL,
  `record_filename` varchar(255) DEFAULT NULL,
  `uniqueid` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` varchar(64) DEFAULT NULL,
  `updatedAt` varchar(64) DEFAULT NULL,
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
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `exten` varchar(32) NOT NULL,
  `cid_number` varchar(32) NOT NULL DEFAULT '',
  `transfer` varchar(3) NOT NULL DEFAULT 'yes',
  `mailbox` varchar(16) NOT NULL DEFAULT '',
  `type` varchar(6) NOT NULL DEFAULT 'peer',
  `qualify` varchar(4) NOT NULL DEFAULT 'yes',
  `hasdirectory` varchar(3) NOT NULL DEFAULT 'yes',
  `call-limit` varchar(2) NOT NULL DEFAULT '5',
  `host` varchar(16) NOT NULL DEFAULT 'dynamic',
  `context` varchar(64) NOT NULL DEFAULT '',
  `fullname` varchar(64) NOT NULL DEFAULT '',
  `secret` varchar(128) NOT NULL DEFAULT '',
  `outboundcid` varchar(32) NOT NULL DEFAULT '',
  `hasvoicemail` varchar(3) NOT NULL DEFAULT 'yes',
  `vmsecret` varchar(32) NOT NULL DEFAULT '',
  `delete` varchar(3) NOT NULL DEFAULT 'no',
  `email` varchar(64) NOT NULL DEFAULT '',
  `hassip` varchar(3) NOT NULL DEFAULT 'yes',
  `hasiax` varchar(3) NOT NULL DEFAULT 'no',
  `dahdichan` varchar(3) NOT NULL DEFAULT '',
  `hasmanager` varchar(3) NOT NULL DEFAULT 'no',
  `hasexten` varchar(3) NOT NULL DEFAULT 'yes',
  `nat` varchar(32) NOT NULL DEFAULT 'force_rport,comedia',
  `directmedia` varchar(3) NOT NULL DEFAULT 'no',
  `dtmfmode` varchar(8) NOT NULL DEFAULT 'rfc2833',
  `hasagent` varchar(3) NOT NULL DEFAULT 'no',
  `callwaiting` varchar(3) NOT NULL DEFAULT 'yes',
  `callgroup` varchar(32) NOT NULL DEFAULT '1',
  `pickupgroup` varchar(32) NOT NULL DEFAULT '1',
  `videosupport` varchar(3) NOT NULL DEFAULT 'no',
  `transport` varchar(11) NOT NULL DEFAULT 'udp',
  `encryption` varchar(3) NOT NULL DEFAULT 'no',
  `srtpcapable` varchar(3) NOT NULL DEFAULT 'no',
  `deny` varchar(64) NOT NULL DEFAULT '',
  `permit` varchar(124) NOT NULL DEFAULT '',
  `ulaw` int(1) NOT NULL DEFAULT '1',
  `alaw` int(1) NOT NULL DEFAULT '1',
  `g722` int(1) NOT NULL DEFAULT '1',
  `g729` int(1) NOT NULL DEFAULT '0',
  `g726` int(1) NOT NULL DEFAULT '0',
  `gsm` int(1) NOT NULL DEFAULT '0',
  `speex` int(1) NOT NULL DEFAULT '0',
  `h261` int(1) NOT NULL DEFAULT '0',
  `h263` int(1) NOT NULL DEFAULT '0',
  `h263p` int(1) NOT NULL DEFAULT '0',
  `h264` int(1) NOT NULL DEFAULT '0',
  `vp8` int(4) DEFAULT '0',
  `opus` int(4) DEFAULT '0',
  `extenbinding` varchar(3) NOT NULL DEFAULT 'no',
  `exmacaddr` varchar(32) DEFAULT '',
  `exdahdichan` varchar(2) DEFAULT '',
  `recordin` varchar(32) NOT NULL DEFAULT '1',
  `recordout` varchar(32) NOT NULL DEFAULT '1',
  `F1` varchar(128) NOT NULL DEFAULT '',
  `F2` varchar(128) NOT NULL DEFAULT '',
  `F3` varchar(128) NOT NULL DEFAULT '',
  `F4` varchar(128) NOT NULL DEFAULT '',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `exten` (`exten`)
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
SET NEW.cid_number=NEW.exten;
SET NEW.context=CONCAT("DialRule_",NEW.exten);
SET NEW.mailbox=NEW.exten;
SET NEW.callgroup=NEW.pickupgroup;
SET NEW.srtpcapable=NEW.encryption;
END ||
DELIMITER ;

--
-- Table structure for table `t_pbx_users_webrtc`
--

DROP TABLE IF EXISTS `t_pbx_users_webrtc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_users_webrtc` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `exten` varchar(32) NOT NULL,
  `cid_number` varchar(32) NOT NULL DEFAULT '',
  `transfer` varchar(3) NOT NULL DEFAULT 'yes',
  `mailbox` varchar(16) NOT NULL DEFAULT '',
  `type` varchar(6) NOT NULL DEFAULT 'friend',
  `qualify` varchar(4) NOT NULL DEFAULT 'yes',
  `hasdirectory` varchar(3) NOT NULL DEFAULT 'yes',
  `call-limit` varchar(2) NOT NULL DEFAULT '5',
  `host` varchar(16) NOT NULL DEFAULT 'dynamic',
  `context` varchar(32) NOT NULL DEFAULT 'default',
  `fullname` varchar(64) NOT NULL DEFAULT '',
  `secret` varchar(128) NOT NULL DEFAULT '',
  `outboundcid` varchar(32) NOT NULL DEFAULT '',
  `hasvoicemail` varchar(3) NOT NULL DEFAULT 'no',
  `vmsecret` varchar(32) NOT NULL DEFAULT '',
  `delete` varchar(3) NOT NULL DEFAULT 'no',
  `email` varchar(64) NOT NULL DEFAULT '',
  `hassip` varchar(3) NOT NULL DEFAULT 'yes',
  `hasiax` varchar(3) NOT NULL DEFAULT 'no',
  `dahdichan` varchar(3) NOT NULL DEFAULT '',
  `hasmanager` varchar(3) NOT NULL DEFAULT 'no',
  `hasexten` varchar(3) NOT NULL DEFAULT '',
  `nat` varchar(32) NOT NULL DEFAULT 'force_rport,comedia',
  `directmedia` varchar(3) NOT NULL DEFAULT '',
  `dtmfmode` varchar(8) NOT NULL DEFAULT 'rfc2833',
  `hasagent` varchar(3) NOT NULL DEFAULT 'no',
  `callwaiting` varchar(3) NOT NULL DEFAULT 'yes',
  `callgroup` varchar(32) NOT NULL DEFAULT '1',
  `pickupgroup` varchar(32) NOT NULL DEFAULT '1',
  `videosupport` varchar(3) NOT NULL DEFAULT 'no',
  `transport` varchar(16) NOT NULL DEFAULT 'udp,ws',
  `encryption` varchar(3) NOT NULL DEFAULT 'yes',
  `srtpcapable` varchar(3) NOT NULL DEFAULT 'no',
  `deny` varchar(64) NOT NULL DEFAULT '',
  `permit` varchar(124) NOT NULL DEFAULT '',
  `avpf` varchar(3) NOT NULL DEFAULT 'yes',
  `force_avp` varchar(3) NOT NULL DEFAULT 'yes',
  `icesupport` varchar(3) NOT NULL DEFAULT 'yes',
  `dtlsverify` varchar(3) NOT NULL DEFAULT 'no',
  `dtlsenable` varchar(3) NOT NULL DEFAULT 'yes',
  `dtlscertfile` varchar(64) NOT NULL DEFAULT '/etc/asterisk/keys/asterisk.pem',
  `dtlscafile` varchar(64) NOT NULL DEFAULT '/etc/asterisk/keys/ca.crt',
  `dtlssetup` varchar(32) NOT NULL DEFAULT 'actpass',
  `alaw` int(1) NOT NULL DEFAULT '1',
  `ulaw` int(1) NOT NULL DEFAULT '1',
  `g722` int(1) NOT NULL DEFAULT '0',
  `g729` int(1) NOT NULL DEFAULT '0',
  `g726` int(1) NOT NULL DEFAULT '0',
  `gsm` int(1) NOT NULL DEFAULT '0',
  `speex` int(1) NOT NULL DEFAULT '0',
  `h261` int(1) NOT NULL DEFAULT '0',
  `h263` int(1) NOT NULL DEFAULT '0',
  `h263p` int(1) NOT NULL DEFAULT '0',
  `h264` int(1) NOT NULL DEFAULT '0',
  `position` varchar(256) NOT NULL DEFAULT '',
  `extenbinding` varchar(3) NOT NULL DEFAULT 'no',
  `recordin` varchar(32) NOT NULL DEFAULT '',
  `recordout` varchar(32) NOT NULL DEFAULT '',
  `F1` varchar(128) NOT NULL DEFAULT '',
  `F2` varchar(128) NOT NULL DEFAULT '',
  `F3` varchar(128) NOT NULL DEFAULT '',
  `F4` varchar(128) NOT NULL DEFAULT '',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `exten` (`exten`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pbx_users_webrtc`
--

LOCK TABLES `t_pbx_users_webrtc` WRITE;
/*!40000 ALTER TABLE `t_pbx_users_webrtc` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pbx_users_webrtc` ENABLE KEYS */;
UNLOCK TABLES;

DROP TRIGGER IF EXISTS `USERWBEXTEN_INSERT_BEFORE`;
DELIMITER ||
CREATE TRIGGER `USERWBEXTEN_INSERT_BEFORE` BEFORE INSERT ON `t_pbx_users_webrtc`
FOR EACH ROW
BEGIN
SET NEW.cid_number=NEW.exten;
SET NEW.context=CONCAT("DialRule_",NEW.exten);
SET NEW.mailbox=NEW.exten;
SET NEW.callgroup=NEW.pickupgroup;
SET NEW.srtpcapable=NEW.encryption;
END ||
DELIMITER ;

--
-- Table structure for table `t_pbx_users_voiptrunk`
--

DROP TABLE IF EXISTS `t_pbx_users_voiptrunk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_users_voiptrunk` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `trunkactive` varchar(3) NOT NULL DEFAULT 'yes',
  `trunk` varchar(64) NOT NULL DEFAULT '',
  `trunkname` varchar(64) NOT NULL,
  `trunkstyle` varchar(64) NOT NULL DEFAULT '',
  `host` varchar(64) NOT NULL DEFAULT '',
  `port` varchar(8) NOT NULL DEFAULT '',
  `voipusername` varchar(64) NOT NULL DEFAULT '',
  `authuser` varchar(64) NOT NULL DEFAULT '',
  `fromuser` varchar(64) NOT NULL DEFAULT '',
  `fromdomain` varchar(64) NOT NULL DEFAULT '',
  `contact` varchar(64) NOT NULL DEFAULT '',
  `voipsecret` varchar(128) NOT NULL DEFAULT '',
  `outboundcid` varchar(32) NOT NULL DEFAULT '',
  `trunkcid_preferred` varchar(3) NOT NULL DEFAULT 'no',
  `prefix` varchar(16)	NOT NULL DEFAULT '',
  `insecure` varchar(16) NOT NULL DEFAULT 'port,invite',
  `calllimit` varchar(3) NOT NULL DEFAULT '0',
  `language` varchar(8) NOT NULL DEFAULT '',
  `qualify` varchar(8) NOT NULL DEFAULT '2000',
  `qualifyfreq` varchar(8) NOT NULL DEFAULT '60',
  `transport` varchar(16) NOT NULL DEFAULT 'udp',
  `faxdetect` varchar(3) NOT NULL DEFAULT 'no',
  `hassip` varchar(3) NOT NULL DEFAULT 'yes',
  `registersip` varchar(3) NOT NULL DEFAULT 'no',
  `hasiax` varchar(3) NOT NULL DEFAULT 'no',
  `registeriax` varchar(3) NOT NULL DEFAULT 'no',
  `context` varchar(32) NOT NULL DEFAULT 'from-voip',
  `hasexten` varchar(3) NOT NULL DEFAULT 'yes',
  `nat` varchar(32) NOT NULL DEFAULT 'force_rport,comedia',
  `directmedia` varchar(16) NOT NULL DEFAULT 'no',
  `dtmfmode` varchar(8) NOT NULL DEFAULT 'rfc2833',
  `videosupport` varchar(3) NOT NULL DEFAULT 'yes',
  `encryption` varchar(3) NOT NULL DEFAULT 'no',
  `srtpcapable` varchar(3) NOT NULL DEFAULT 'no',
  `prack` varchar(3) NOT NULL DEFAULT 'no',
  `alaw` int(1) NOT NULL DEFAULT '1',
  `ulaw` int(1) NOT NULL DEFAULT '1',
  `g722` int(1) NOT NULL DEFAULT '0',
  `g729` int(1) NOT NULL DEFAULT '0',
  `g726` int(1) NOT NULL DEFAULT '0',
  `gsm` int(1) NOT NULL DEFAULT '0',
  `speex` int(1) NOT NULL DEFAULT '0',
  `h261` int(1) NOT NULL DEFAULT '0',
  `h263` int(1) NOT NULL DEFAULT '0',
  `h263p` int(1) NOT NULL DEFAULT '0',
  `h264` int(1) NOT NULL DEFAULT '0',
  `vp8` int(1) DEFAULT '0',
  `opus` int(1) DEFAULT '0',
  `recordin` varchar(32) NOT NULL DEFAULT '',
  `recordout` varchar(32) NOT NULL DEFAULT '',
  `F1` varchar(128) NOT NULL DEFAULT '',
  `F2` varchar(128) NOT NULL DEFAULT '',
  `F3` varchar(128) NOT NULL DEFAULT '',
  `F4` varchar(128) NOT NULL DEFAULT '',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trunk` (`trunk`),
  UNIQUE KEY `trunkname` (`trunkname`)
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
IF (NEW.hassip='yes') THEN
    SET NEW.registersip='no';
    SET NEW.srtpcapable=NEW.encryption;
    IF (NEW.trunkstyle='Peer') THEN
	SET NEW.host='dynamic';
	SET NEW.port='';
	SET NEW.trunk=NEW.voipusername;
    ELSE
	SET NEW.trunk=CONCAT('trunk-sip-',NEW.trunkname);
    END IF;
ELSEIF (NEW.hasiax='yes') THEN
    IF (NEW.voipusername='') THEN
	SET NEW.trunkstyle='SP-IAX';
    ELSE
	SET NEW.trunkstyle='IAX';
	SET NEW.registeriax='yes';
    END IF;
    IF (NEW.host='dynamic') THEN
	SET NEW.trunk=NEW.voipusername;
    ELSE
	SET NEW.trunk=CONCAT('trunk-iax-',NEW.trunkname);
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
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
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
  `trunk_id` int(16) DEFAULT NULL,
  `rule` varchar(64) DEFAULT NULL,
  `del_prefix` int(2) DEFAULT 0,
  `add_before` varchar(32) DEFAULT NULL,
  `add_after` varchar(32) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `trunk_id` (`trunk_id`),
  CONSTRAINT `t_pbx_dialrule_ibfk_1` FOREIGN KEY (`trunk_id`) REFERENCES `t_pbx_users_voiptrunk` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pbx_dialrule`
--

LOCK TABLES `t_pbx_dialrule` WRITE;
/*!40000 ALTER TABLE `t_pbx_dialrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pbx_dialrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pbx_fail2ban_basic`
--

DROP TABLE IF EXISTS `t_pbx_fail2ban_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_fail2ban_basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 0,
  `max_retry` int(11) NOT NULL DEFAULT 10,
  `find_time` int(11) NOT NULL DEFAULT 180,
  `ban_time` int(11) NOT NULL DEFAULT 86400,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pbx_fail2ban_basic`
--

LOCK TABLES `t_pbx_fail2ban_basic` WRITE;
/*!40000 ALTER TABLE `t_pbx_fail2ban_basic` DISABLE KEYS */;
INSERT INTO `t_pbx_fail2ban_basic` VALUES (1,'sip',1,10,180,86400);
INSERT INTO `t_pbx_fail2ban_basic` VALUES (2,'ssh',1,10,600,86400);
/*!40000 ALTER TABLE `t_pbx_fail2ban_basic` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `t_pbx_fail2ban_ignored`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_fail2ban_ignored` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `protocol_sip` tinyint(1) NOT NULL DEFAULT 0,
  `protocol_iax` tinyint(1) NOT NULL DEFAULT 0,
  `protocol_https` tinyint(1) NOT NULL DEFAULT 0,
  `protocol_ssh` tinyint(1) NOT NULL DEFAULT 0,
  `ip` varchar(32) DEFAULT NULL,
  `netmask` varchar(32) DEFAULT NULL,
  `netmask_length` int(11) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pbx_fail2ban_ignored`
--

LOCK TABLES `t_pbx_fail2ban_ignored` WRITE;
/*!40000 ALTER TABLE `t_pbx_fail2ban_ignored` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pbx_fail2ban_ignored` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pbx_ivr`
--

DROP TABLE IF EXISTS `t_pbx_ivr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pbx_ivr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exten` varchar(32) NOT NULL,
  `prompt` varchar(255) NOT NULL,
  `loops` int(2) NOT NULL DEFAULT '1',
  `timeout` int(4) NOT NULL DEFAULT '3',
  `language` varchar(8) DEFAULT NULL,
  `dialplan` varchar(64) NOT NULL DEFAULT 'default',
  `keys_action` JSON DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `exten` (`exten`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pbx_ivr`
--

LOCK TABLES `t_pbx_ivr` WRITE;
/*!40000 ALTER TABLE `t_pbx_ivr` DISABLE KEYS */;
INSERT INTO `t_pbx_ivr` VALUES (1,'working time','6500','/music/ivr/welcome_cn.mp3',1,3,NULL,'default','[{"key":"i","type":"hangup","exten":""},{"key":"t","type":"hangup","exten":""}]','2019-07-31 17:58:00','2019-07-31 17:58:00');
INSERT INTO `t_pbx_ivr` VALUES (2,'closed time','6501','/music/ivr/closed_cn.mp3',1,3,NULL,'default','[{"key":"i","type":"hangup","exten":""},{"key":"t","type":"hangup","exten":""}]','2019-07-31 17:58:00','2019-07-31 17:58:00');
/*!40000 ALTER TABLE `t_pbx_ivr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_fault_log`
--

DROP TABLE IF EXISTS `t_paging_fault_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_fault_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_info` json NOT NULL,
  `info`  json NOT NULL COMMENT '故障内容',
  `status` varchar(32) NOT NULL DEFAULT "unconfirmed",
  `confirmor` varchar(64) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_fault_log`
--

LOCK TABLES `t_paging_fault_log` WRITE;
/*!40000 ALTER TABLE `t_paging_fault_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paging_fault_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_alarm_log`
--

DROP TABLE IF EXISTS `t_paging_alarm_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_alarm_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `src_info` json DEFAULT NULL,
  `info` json NOT NULL COMMENT '告警内容',
  `extensions` json NOT NULL,
  `status` varchar(32) NOT NULL DEFAULT "unconfirmed",
  `confirmor` varchar(64) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_alarm_log`
--

LOCK TABLES `t_paging_alarm_log` WRITE;
/*!40000 ALTER TABLE `t_paging_alarm_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paging_alarm_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_conference`
--

DROP TABLE IF EXISTS `t_paging_conference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_conference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conference_id` varchar(64) NOT NULL COMMENT '会议室Id',
  `record_start_time` datetime DEFAULT NULL COMMENT '录音开始时间',
  `record_filename` varchar(255) DEFAULT NULL COMMENT '录音文件',
  `record_len` int(16) DEFAULT NULL COMMENT '录音时长',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `uniqueid` varchar(16) DEFAULT NULL COMMENT '唯一标识',
  PRIMARY KEY (`id`),
  UNIQUE KEY `conference_id` (`conference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_conference`
--

LOCK TABLES `t_paging_conference` WRITE;
/*!40000 ALTER TABLE `t_paging_conference` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paging_conference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_confmembers`
--

DROP TABLE IF EXISTS `t_paging_confmembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_confmembers` (
  `confRecordId` int(11) NOT NULL COMMENT '会议记录Id',
  `name` varchar(128) NOT NULL COMMENT '会议成员名称',
  `exten` varchar(128) NOT NULL COMMENT '会议成员号码',
  PRIMARY KEY (`confRecordId`,`exten`),
  CONSTRAINT `t_paging_confmembers_ibfk_1` FOREIGN KEY (`confRecordId`) REFERENCES `t_paging_conference` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会议成员关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_paging_intercom`
--

DROP TABLE IF EXISTS `t_paging_intercom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_intercom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(64) DEFAULT NULL COMMENT '主叫号码',
  `dest` varchar(64) DEFAULT NULL COMMENT '被叫号码',
  `record_start_time` datetime DEFAULT NULL COMMENT '录音开始时间',
  `record_filename` varchar(255) DEFAULT NULL COMMENT '录音文件',
  `record_len` int(16) DEFAULT NULL COMMENT '录音时长',
  `uniqueid` varchar(16) DEFAULT NULL COMMENT '唯一标识',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `record_filename` (`record_filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_intercom`
--

LOCK TABLES `t_paging_intercom` WRITE;
/*!40000 ALTER TABLE `t_paging_intercom` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paging_intercom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_paging`
--

DROP TABLE IF EXISTS `t_paging_paging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_paging` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(64) DEFAULT NULL COMMENT '主叫号码',
  `record_start_time` datetime DEFAULT NULL COMMENT '录音开始时间',
  `record_filename` varchar(255) DEFAULT NULL COMMENT '录音文件',
  `record_len` int(16) DEFAULT NULL COMMENT '录音时长',
  `uniqueid` varchar(16) DEFAULT NULL COMMENT '唯一标识',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `record_filename` (`record_filename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_paging`
--

LOCK TABLES `t_paging_paging` WRITE;
/*!40000 ALTER TABLE `t_paging_paging` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paging_paging` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `t_global_config`
--

DROP TABLE IF EXISTS `t_global_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_global_config` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `key` varchar(128) NOT NULL COMMENT '键名',
  `value` json NOT NULL COMMENT '键值',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_global_config`
--

LOCK TABLES `t_global_config` WRITE;
/*!40000 ALTER TABLE `t_global_config` DISABLE KEYS */;
INSERT INTO `t_global_config` VALUES (1,'pbx.voip.inbound','{"type":"ivr","exten":"6500"}','2019-07-31 17:58:00','2019-07-31 17:58:00');
INSERT INTO `t_global_config` VALUES (2,'paging.services.level','{"level":["paging","warning","firefighting_warning","intercom","bell","timeing_insert_cast","timeing_cast","background_music"]}','2019-07-31 17:58:00','2019-07-31 17:58:00');
INSERT INTO `t_global_config` VALUES (3,'default.volume.paging','{"softvolume":99,"hardvolume":7}','2019-07-31 17:58:00','2019-07-31 17:58:00');
INSERT INTO `t_global_config` VALUES (4,'default.volume.warning','{"softvolume":75,"hardvolume":8}','2019-07-31 17:58:00','2019-07-31 17:58:00');
INSERT INTO `t_global_config` VALUES (5,'paging.prompt.config','{"start":"no","end":"no","startfile":"start","endfile":"end"}','2019-07-31 17:58:00','2019-07-31 17:58:00');
INSERT INTO `t_global_config` VALUES (6,'pbx.ringtime.config','{"ringtime":30}','2020-07-31 17:58:00','2020-07-31 17:58:00');
INSERT INTO `t_global_config` VALUES (7,'pbx.nat.config','{"enable":0,"externaddr":"","externhost":"","externtcpport":0,"externtlsport":0,"externrefresh":180,"localnet":[]}','2020-07-31 17:58:00','2020-07-31 17:58:00');
INSERT INTO `t_global_config` VALUES (8,'paging.record.config','{"paging_record":"yes","intercom_record":"yes","conference_record":"yes"}','2020-07-31 17:58:00','2020-07-31 17:58:00');
INSERT INTO `t_global_config` VALUES (9,'paging.calltrigger.config','{"start":"*11","stop":"*12"}','2019-07-31 17:58:00','2019-07-31 17:58:00');
INSERT INTO `t_global_config` VALUES (10,'paging.featurecodes.config','{"bargein":{"enable":1,"code":"*99"},"clear":{"enable":1,"code":"*98"},"syp":{"enable":1,"code":"*97"},"whisper":{"enable":1,"code":"*96"},"wakeup":{"enable":1,"code":"*95"},"dnd":{"enable":1,"code":"*94"},"cf-alway":{"enable":1,"code":"*93"},"cf-busy":{"enable":1,"code":"*92"},"cf-noanswer":{"enable":1,"code":"*91"}}','2019-07-31 17:58:00','2019-07-31 17:58:00');
INSERT INTO `t_global_config` VALUES (11,'pbx.sipsettings.config','{"udp":5060,"tcp":{"enable":0,"port":5060},"tls":{"enable":0,"port":5061},"rtp":{"start_port":10001,"end_port":12000}}','2020-07-31 17:58:00','2020-07-31 17:58:00');
INSERT INTO `t_global_config` VALUES (12,'paging.modbus.config','{"enable":0,"servers":[{"enable":0,"address":"","port":502}]}','2020-07-31 17:58:00','2020-07-31 17:58:00');

/*!40000 ALTER TABLE `t_global_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_tasks`
--

DROP TABLE IF EXISTS `t_paging_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_tasks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enable` varchar(8) NOT NULL DEFAULT 'yes',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_type` varchar(32) DEFAULT NULL,
  `main_id` int(11) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `conditions` json DEFAULT NULL,
  `times` int(4)  DEFAULT -1,
  `paging_type` varchar(32) DEFAULT NULL,
  `sound_type` varchar(32) DEFAULT NULL,
  `play_strategy` varchar(32) DEFAULT NULL,
  `source_info` json DEFAULT NULL,
  `extensions` json NOT NULL,
  `volume` int(3) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_paging_tasks_log`
--

DROP TABLE IF EXISTS `t_paging_tasks_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_tasks_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(32) NOT NULL,
  `mode` varchar(32) DEFAULT NULL,
  `sound_type` varchar(32) DEFAULT NULL,
  `source_info` json DEFAULT NULL,
  `extensions` json NOT NULL,
  `status` varchar(32) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_tasks_log`
--

LOCK TABLES `t_paging_tasks_log` WRITE;
/*!40000 ALTER TABLE `t_paging_tasks_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paging_tasks_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_users`
--

DROP TABLE IF EXISTS `t_paging_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `secret` varchar(255) NOT NULL COMMENT '用户密码',
  `phonenumber` varchar(32) DEFAULT NULL COMMENT '用户联系电话',
  `address` varchar(256) DEFAULT NULL COMMENT '用户地址',
  `level` int(2) NOT NULL COMMENT '用户等级',
  `phones` json DEFAULT NULL COMMENT '绑定的分机数组',
  `strategy` varchar(16) NOT NULL DEFAULT "ringall" COMMENT '振铃策略',
  `ring_duration` int(8) NOT NULL DEFAULT 0 COMMENT '振铃持续时间',
  `noanswer_dest` json DEFAULT NULL COMMENT '振铃超时目的地',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_users`
--

LOCK TABLES `t_paging_users` WRITE;
/*!40000 ALTER TABLE `t_paging_users` DISABLE KEYS */;
INSERT INTO `t_paging_users` VALUES (1,'admin','admin',NULL,NULL,0,NULL,"ringall",0,NULL,'2019-08-02 09:36:45','2019-08-06 01:51:41');
/*!40000 ALTER TABLE `t_paging_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_devices`
--

DROP TABLE IF EXISTS `t_paging_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `model` varchar(32) DEFAULT NULL COMMENT '设备型号',
  `name` varchar(255) DEFAULT NULL COMMENT '设备名',
  `exten` varchar(16) NOT NULL COMMENT '设备分机号',
  `contact` varchar(64) DEFAULT NULL COMMENT '设备管理员',
  `contactPhone` varchar(32) DEFAULT NULL COMMENT '设备管理员联系方式',
  `address` varchar(256) DEFAULT NULL COMMENT '设备地址',
  `type_id` int(11) NOT NULL COMMENT '设备类型ID',
  `user_id` int(11) DEFAULT NULL COMMENT '设备所属用户ID',
  `allowed_pa` varchar(8) DEFAULT "yes" COMMENT '是否允许被喊话',
  `mac` varchar(32) DEFAULT NULL COMMENT '与 mqtt 绑定',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `rtspUrl` varchar(256) DEFAULT NULL COMMENT 'rtsp 地址',
  `thingId` varchar(64) DEFAULT NULL COMMENT '与 webthing 绑定',
  `features` json DEFAULT NULL COMMENT '用于存储设备额外信息，例如 gpio 配置',
  `fault_monitoring` varchar(8) DEFAULT "yes" COMMENT '是否开启设备的故障监控',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_device_id` (`name`,`exten`),
  CONSTRAINT `t_paging_devices_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `t_paging_types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `t_paging_devices_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `t_paging_users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_devices`
--

LOCK TABLES `t_paging_devices` WRITE;
/*!40000 ALTER TABLE `t_paging_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paging_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_groups`
--

DROP TABLE IF EXISTS `t_paging_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(128) NOT NULL COMMENT '分组名称',
  `exten` varchar(16) NOT NULL COMMENT '组号码',
  `paging_mode` varchar(16) NOT NULL DEFAULT 'simplex' COMMENT '广播模式: 单工/双工',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `exten` (`exten`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_groups`
--

LOCK TABLES `t_paging_groups` WRITE;
/*!40000 ALTER TABLE `t_paging_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paging_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_services`
--

DROP TABLE IF EXISTS `t_paging_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务ID',
  `name` varchar(128) NOT NULL COMMENT '服务名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_services`
--

LOCK TABLES `t_paging_services` WRITE;
/*!40000 ALTER TABLE `t_paging_services` DISABLE KEYS */;
INSERT INTO `t_paging_services` VALUES (1,'paging'),(2,'warning'),(4,'intercom'),(7,'timeing_cast'),(8,'background_music'),(9,'outbound_call');
/*!40000 ALTER TABLE `t_paging_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_types`
--

DROP TABLE IF EXISTS `t_paging_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型ID',
  `name` varchar(128) NOT NULL COMMENT '类型名称',
  `icon` varchar(64) DEFAULT NULL COMMENT '图标css名称',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_types`
--

LOCK TABLES `t_paging_types` WRITE;
/*!40000 ALTER TABLE `t_paging_types` DISABLE KEYS */;
INSERT INTO `t_paging_types` VALUES (1,'paging_terminal','fas fa-bullhorn',NULL,'2019-08-02 08:46:07','2019-08-05 11:07:41');
INSERT INTO `t_paging_types` VALUES (2,'intercom_terminal','fab fa-intercom',NULL,'2019-08-02 08:46:19','2019-08-02 08:46:19');
INSERT INTO `t_paging_types` VALUES (3,'phone_terminal','fas fa-phone-alt',NULL,'2019-08-02 08:46:26','2019-08-02 08:46:26');
INSERT INTO `t_paging_types` VALUES (4,'video_terminal','fas fa-video',NULL,'2019-08-02 08:46:26','2019-08-02 08:46:26');
INSERT INTO `t_paging_types` VALUES (6,'mic_terminal','fas fa-microphone',NULL,'2019-08-02 08:46:26','2019-08-02 08:46:26');
INSERT INTO `t_paging_types` VALUES (7,'other_terminal','fas fa-question',NULL,'2019-08-02 08:46:26','2019-08-02 08:46:26');
/*!40000 ALTER TABLE `t_paging_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_tags`
--

DROP TABLE IF EXISTS `t_paging_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `name` varchar(128) NOT NULL COMMENT '标签名称',
  `icon` varchar(64) DEFAULT NULL COMMENT '图标css名称',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备标签表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_tags`
--

LOCK TABLES `t_paging_tags` WRITE;
/*!40000 ALTER TABLE `t_paging_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paging_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_deviceGroups`
--

DROP TABLE IF EXISTS `t_paging_deviceGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_deviceGroups` (
  `DeviceId` int(11) NOT NULL,
  `GroupId` int(11) NOT NULL,
  PRIMARY KEY (`DeviceId`,`GroupId`),
  KEY `GroupId` (`GroupId`),
  CONSTRAINT `t_paging_deviceGroups_ibfk_1` FOREIGN KEY (`DeviceId`) REFERENCES `t_paging_devices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_paging_deviceGroups_ibfk_2` FOREIGN KEY (`GroupId`) REFERENCES `t_paging_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备区域关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_deviceGroups`
--

LOCK TABLES `t_paging_deviceGroups` WRITE;
/*!40000 ALTER TABLE `t_paging_deviceGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paging_deviceGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_deviceTags`
--

DROP TABLE IF EXISTS `t_paging_deviceTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_deviceTags` (
  `DeviceId` int(11) NOT NULL,
  `TagId` int(11) NOT NULL,
  PRIMARY KEY (`DeviceId`,`TagId`),
  KEY `TagId` (`TagId`),
  CONSTRAINT `t_paging_deviceTags_ibfk_1` FOREIGN KEY (`DeviceId`) REFERENCES `t_paging_devices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_paging_deviceTags_ibfk_2` FOREIGN KEY (`TagId`) REFERENCES `t_paging_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备标签关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_deviceTags`
--

LOCK TABLES `t_paging_deviceTags` WRITE;
/*!40000 ALTER TABLE `t_paging_deviceTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paging_deviceTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_userGroups`
--

DROP TABLE IF EXISTS `t_paging_userGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_userGroups` (
  `UserId` int(11) NOT NULL,
  `GroupId` int(11) NOT NULL,
  PRIMARY KEY (`UserId`,`GroupId`),
  KEY `GroupId` (`GroupId`),
  CONSTRAINT `t_paging_userGroups_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `t_paging_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_paging_userGroups_ibfk_2` FOREIGN KEY (`GroupId`) REFERENCES `t_paging_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户区域关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_userGroups`
--

LOCK TABLES `t_paging_userGroups` WRITE;
/*!40000 ALTER TABLE `t_paging_userGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paging_userGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_userServices`
--

DROP TABLE IF EXISTS `t_paging_userServices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_paging_userServices` (
  `UserId` int(11) NOT NULL,
  `tPagingServiceId` int(11) NOT NULL,
  PRIMARY KEY (`UserId`,`tPagingServiceId`),
  KEY `tPagingServiceId` (`tPagingServiceId`),
  CONSTRAINT `t_paging_userServices_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `t_paging_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_paging_userServices_ibfk_2` FOREIGN KEY (`tPagingServiceId`) REFERENCES `t_paging_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户服务关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_paging_userServices`
--

LOCK TABLES `t_paging_userServices` WRITE;
/*!40000 ALTER TABLE `t_paging_userServices` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_paging_userServices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_play_list`
--

DROP TABLE IF EXISTS `t_paging_play_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `t_paging_play_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `other` json DEFAULT NULL,
  `order` json DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_paging_play_list`
--

LOCK TABLES `t_paging_play_list` WRITE;
/*!40000 ALTER TABLE `t_paging_play_list` DISABLE KEYS */;
INSERT INTO `t_paging_play_list` VALUES (1,'bell',NULL,'{"display":true}','[1]','2019-08-02 08:08:26','2019-08-02 08:46:26');
INSERT INTO `t_paging_play_list` VALUES (2,'emergency',NULL,'{"display":true}','[1]','2019-08-02 08:01:07','2019-08-05 11:07:41');
INSERT INTO `t_paging_play_list` VALUES (3,'fire',NULL,'{"display":true}','[1]','2019-08-02 08:02:19','2019-08-02 08:46:19');
INSERT INTO `t_paging_play_list` VALUES (4,'air_defence',NULL,'{"display":false}','[1]','2019-08-02 08:03:26','2019-08-02 08:46:26');
INSERT INTO `t_paging_play_list` VALUES (5,'tornado',NULL,'{"display":false}','[1]','2019-08-02 08:05:26','2019-08-02 08:46:26');
INSERT INTO `t_paging_play_list` VALUES (6,'earthquake',NULL,'{"display":false}','[1]','2019-08-02 08:06:26','2019-08-02 08:46:26');
INSERT INTO `t_paging_play_list` VALUES (7,'debris_flow',NULL,'{"display":false}','[1]','2019-08-02 08:04:26','2019-08-02 08:46:26');
INSERT INTO `t_paging_play_list` VALUES (8,'tsunami',NULL,'{"display":false}','[1]','2019-08-02 08:07:26','2019-08-02 08:46:26');
INSERT INTO `t_paging_play_list` VALUES (9,'emergency_1',NULL,'{"display":false}','[1]','2019-08-02 08:09:26','2019-08-02 08:46:26');
INSERT INTO `t_paging_play_list` VALUES (10,'emergency_2',NULL,'{"display":false}','[1]','2019-08-02 08:10:26','2019-08-02 08:46:26');
/*!40000 ALTER TABLE `t_paging_play_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_music_library`
--

DROP TABLE IF EXISTS `t_paging_music_library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `t_paging_music_library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `duration` float DEFAULT 0,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_paging_play_list`
--

LOCK TABLES `t_paging_music_library` WRITE;
/*!40000 ALTER TABLE `t_paging_music_library` DISABLE KEYS */;
INSERT INTO `t_paging_music_library` VALUES (1,'bell','/music/warning/bell.mp3','warning',0,'2019-08-02 08:01:07','2019-08-05 11:07:41');
INSERT INTO `t_paging_music_library` VALUES (2,'emergency','/music/warning/emergency.mp3','warning',0,'2019-08-02 08:01:07','2019-08-05 11:07:41');
INSERT INTO `t_paging_music_library` VALUES (3,'fire','/music/warning/fire.mp3','warning',0,'2019-08-02 08:01:07','2019-08-05 11:07:41');
INSERT INTO `t_paging_music_library` VALUES (4,'air defence','/music/warning/air_defence.mp3','warning',0,'2019-08-02 08:01:07','2019-08-05 11:07:41');
INSERT INTO `t_paging_music_library` VALUES (5,'tornado','/music/warning/tornado.mp3','warning',0,'2019-08-02 08:01:07','2019-08-05 11:07:41');
INSERT INTO `t_paging_music_library` VALUES (6,'Welcome','/music/ivr/welcome.mp3','ivr',0,'2019-08-02 08:01:07','2019-08-05 11:07:41');
INSERT INTO `t_paging_music_library` VALUES (7,'Welcome_cn','/music/ivr/welcome_cn.mp3','ivr',0,'2019-08-02 08:01:07','2019-08-05 11:07:41');
/*!40000 ALTER TABLE `t_paging_music_library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_paging_library_list_map`
--

DROP TABLE IF EXISTS `t_paging_library_list_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `t_paging_library_list_map` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `MusicLibraryId` int(11) NOT NULL,
  `PlayListId` int(11) NOT NULL,
  PRIMARY KEY (`MusicLibraryId`,`PlayListId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_paging_play_list`
--

LOCK TABLES `t_paging_library_list_map` WRITE;
/*!40000 ALTER TABLE `t_paging_library_list_map` DISABLE KEYS */;
INSERT INTO `t_paging_library_list_map` VALUES ('2019-08-02 08:01:07','2019-08-05 11:07:41',1,1);
INSERT INTO `t_paging_library_list_map` VALUES ('2019-08-02 08:01:07','2019-08-05 11:07:41',2,2);
INSERT INTO `t_paging_library_list_map` VALUES ('2019-08-02 08:01:07','2019-08-05 11:07:41',3,3);
INSERT INTO `t_paging_library_list_map` VALUES ('2019-08-02 08:01:07','2019-08-05 11:07:41',4,4);
INSERT INTO `t_paging_library_list_map` VALUES ('2019-08-02 08:01:07','2019-08-05 11:07:41',5,5);
/*!40000 ALTER TABLE `t_paging_library_list_map` ENABLE KEYS */;
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
    VALUES(1,'Zycoo','Zycoo');

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
    VALUES(1,'H81/H81P','H81/H81P','68692e'),(1,'H83','H83','68692e'),(1,'X30','X30','68692e'),
    (1,'IX100','IX100','68692e'),(1,'IX200','IX200','68692e'),(1,'X20','X20','68692e'),
    (1,'HE30','HE30','68692e'),(1,'WE20','WE20','68692e'),(1,'CE20','CE20','68692e');

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
    DECLARE var_model_id        INT(11) DEFAULT 1;
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
SELECT t_pbx_number_dod.id AS id,
    dodnumber AS dodexten,
    dodtrunk AS trunkname,
    trunk AS trunk 
    FROM t_pbx_number_dod
        JOIN t_pbx_users_voiptrunk ON t_pbx_users_voiptrunk.trunkname=t_pbx_number_dod.dodtrunk;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-21  7:18:52
