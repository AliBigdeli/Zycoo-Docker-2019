CREATE DATABASE IF NOT EXISTS init_db;

use init_db;

DROP TABLE IF EXISTS `D_T_S_Z_L`;

Create table D_T_S_Z_L (

`id` int(11) NOT NULL AUTO_INCREMENT,

`prop_key` varchar(64) NOT NULL,

`prop_value` varchar(255) DEFAULT NULL,

PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;