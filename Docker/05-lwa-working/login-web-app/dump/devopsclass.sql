SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS devopsclass;
USE devopsclass;

CREATE TABLE IF NOT EXISTS `USER` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE USER IF NOT EXISTS 'login'@'%' IDENTIFIED WITH mysql_native_password BY 'login';
GRANT ALL PRIVILEGES ON devopsclass.* TO 'login'@'%';
ALTER USER 'login'@'%' IDENTIFIED WITH mysql_native_password BY 'login';
FLUSH PRIVILEGES;

