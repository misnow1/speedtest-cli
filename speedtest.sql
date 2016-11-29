CREATE TABLE `results` (
  `download` float NOT NULL,
  `upload` float NOT NULL,
  `timestamp` datetime NOT NULL,
  `ping` float NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  KEY `timestamp_idx` (`timestamp`),
  KEY `server_id_idx` (`server_id`),
  CONSTRAINT `server_id_fk` FOREIGN KEY (`server_id`) REFERENCES `server_metadata` (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `server_metadata` (
  `server_id` int(10) unsigned NOT NULL,
  `server_latency` float DEFAULT NULL,
  `server_name` varchar(255) DEFAULT NULL,
  `server_url` varchar(255) DEFAULT NULL,
  `server_country` varchar(255) DEFAULT NULL,
  `server_lon` float DEFAULT NULL,
  `server_cc` varchar(2) DEFAULT NULL,
  `server_host` varchar(255) DEFAULT NULL,
  `server_sponsor` varchar(255) DEFAULT NULL,
  `server_url2` varchar(255) DEFAULT NULL,
  `server_lat` float DEFAULT NULL,
  `server_d` float DEFAULT NULL,
  PRIMARY KEY (`server_id`),
  KEY `server_name_idx` (`server_name`),
  KEY `sponsor_idx` (`server_sponsor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
