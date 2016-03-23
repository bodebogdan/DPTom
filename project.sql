DROP DATABASE IF EXISTS `test`;
CREATE DATABASE IF NOT EXISTS `test`;
USE `test`;

CREATE TABLE `users` (
  `user_id` varchar(15) NOT NULL DEFAULT '',
  `password` varchar(25) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `user_entries` (
  `user_id` varchar(15) NOT NULL DEFAULT '',
  `date` date DEFAULT NULL,
  `title` varchar(15) DEFAULT NULL,
  `description` varchar(40) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_entries_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
