CREATE TABLE tad_book3 (
  `tbsn` smallint(5) unsigned NOT NULL  auto_increment,
  `tbcsn` smallint(5) unsigned NOT NULL  ,
  `sort` smallint(5) unsigned NOT NULL  ,
  `title` varchar(255) NOT NULL default '' ,
  `description` text NOT NULL ,
  `author` varchar(255) NOT NULL default '' ,
  `read_group` varchar(255) NOT NULL default '' ,
  `passwd` varchar(255) NOT NULL default '' ,
  `enable` enum('1','0') NOT NULL default '1' ,
  `pic_name` varchar(255) NOT NULL default '' ,
  `counter` smallint(5) unsigned NOT NULL  ,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00' ,
  PRIMARY KEY  (`tbsn`),
  KEY tbcsn (`tbcsn`)
)ENGINE=MyISAM;


CREATE TABLE tad_book3_cate (
  `tbcsn` smallint(5) unsigned NOT NULL  auto_increment,
  `of_tbsn` smallint(5) unsigned NOT NULL  ,
  `sort` smallint(5) unsigned NOT NULL  ,
  `title` varchar(255) NOT NULL default '' ,
  `description` text NOT NULL ,
  PRIMARY KEY  (`tbcsn`)
)ENGINE=MyISAM;


CREATE TABLE tad_book3_docs (
  `tbdsn` int(10) unsigned NOT NULL  auto_increment,
  `tbsn` smallint(6) unsigned NOT NULL  ,
  `category` tinyint(3) unsigned NOT NULL  ,
  `page` tinyint(3) unsigned NOT NULL  ,
  `paragraph` tinyint(3) unsigned NOT NULL  ,
  `sort` smallint(6) NOT NULL  ,
  `title` varchar(255) NOT NULL default '' ,
  `content` text NOT NULL ,
  `add_date` varchar(255) NOT NULL default '' ,
  `last_modify_date` varchar(255) NOT NULL default '' ,
  `uid` smallint(6) NOT NULL  ,
  `count` smallint(6) NOT NULL  ,
  `enable` enum('1','0') NOT NULL default '1' ,
  PRIMARY KEY  (`tbdsn`),
  KEY category (`category`,`page`,`paragraph`),
  KEY book_sn (`tbdsn`)
)ENGINE=MyISAM;


