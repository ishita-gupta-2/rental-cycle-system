CREATE TABLE IF NOT EXISTS `passengers` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_fname` varchar(30) DEFAULT NULL,
  `p_lname` varchar(30) DEFAULT NULL,
  `p_age` varchar(30) DEFAULT NULL,
  `p_contact` varchar(20) DEFAULT NULL,
  `p_gender` varchar(30) DEFAULT NULL,
  `adm_no` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `source` varchar(30) DEFAULT NULL,
  `avail_bal` int(11) DEFAULT 0,
  `book_status` int(1) DEFAULT 0,
  PRIMARY KEY (`p_id`),
  UNIQUE KEY `p_id` (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT= 0 ;

CREATE TABLE IF NOT EXISTS `cycle_station` (
  `s_no` int(11) NOT NULL ,
  `s_name` varchar(30) DEFAULT NULL,
  `s_no_of_cycles` int(11) DEFAULT 50,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

INSERT INTO `cycle_station` VALUES
(1,'Jasper', 40),
(2,'Amber', 50),
(3,'Diamond', 40),
(4,'Academic Complex', 50),
(5,'Rock Garden', 40),
(6,'Health Centre', 20),
(7,'Library', 50),
(8,'NLHC', 50),
(9,'Rosaline', 40);

CREATE TABLE IF NOT EXISTS `tickets` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `source` varchar(30),
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `age` varchar(30) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `adm_no` varchar(30),
  `email` varchar(30),
  UNIQUE KEY `t_id` (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;