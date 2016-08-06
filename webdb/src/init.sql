CREATE OR REPLACE DATABASE webdemo;

CREATE OR REPLACE USER 'webdemo'@'%' IDENTIFIED BY 'webdemo!';
GRANT ALL PRIVILEGES ON webdemo.* TO 'webdemo'@'%';
FLUSH PRIVILEGES;

USE webdemo;

CREATE OR REPLACE TABLE `bookstore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(16) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`isbn`)
);

INSERT INTO `bookstore` (`isbn`, `title`, `author`) VALUES
('978-1783988020', 'Go Programming Blueprints', 'Mat Ryer'),
('978-1617291784', 'Go in Action', 'William Kennedy, Brian Ketelsen, Erik St. Martin');
