CREATE DATABASE wordpress;
CREATE USER `admin`@`localhost` IDENTIFIED BY 'pass';
GRANT ALL ON wordpress.* TO `admin`@`localhost`;
FLUSH PRIVILEGES;
