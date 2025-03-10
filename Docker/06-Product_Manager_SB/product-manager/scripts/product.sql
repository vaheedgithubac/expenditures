SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS product;
USE product;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `brand` varchar(45) NOT NULL,
  `madein` varchar(45) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE USER IF NOT EXISTS 'product'@'%' IDENTIFIED WITH mysql_native_password BY 'product';
GRANT ALL PRIVILEGES ON product.* TO 'product'@'%';
ALTER USER 'product'@'%' IDENTIFIED WITH mysql_native_password BY 'product';
FLUSH PRIVILEGES;
