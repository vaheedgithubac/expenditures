CREATE DATABASE IF NOT EXISTS flaskapp;
USE flaskapp;
CREATE TABLE IF NOT EXISTS users(name varchar(20), email varchar(40));
CREATE USER IF NOT EXISTS 'flaskuser'@'%' IDENTIFIED WITH mysql_native_password BY 'my-secret-pw';
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON flaskapp.* TO 'flaskuser'@'%';  #'flaskuser'@'localhost';
FLUSH PRIVILEGES;
ALTER USER 'flaskuser'@'%' IDENTIFIED WITH mysql_native_password BY 'my-secret-pw';
FLUSH PRIVILEGES;
