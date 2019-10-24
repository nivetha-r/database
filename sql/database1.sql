CREATE TABLE `agent` (
  `AgentID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(30) DEFAULT NULL,
  `MI` varchar(1) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `FullName` varchar(80) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Dob` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SSN` varchar(30) DEFAULT NULL,
  `MaritalStatus` int(11) DEFAULT NULL,
  `Address1` varchar(30) DEFAULT NULL,
  `Address2` varchar(30) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `ZipCode` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AgentID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
CREATE TABLE `agentpolicy` (
  `AgentID` int(11) NOT NULL DEFAULT '0',
  `PolicyID` int(11) NOT NULL DEFAULT '0',
  `IsSplitAgent` int(11) DEFAULT NULL,
  PRIMARY KEY (`AgentID`,`PolicyID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `books` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Author` varchar(50) DEFAULT NULL,
  `Edition` varchar(50) DEFAULT NULL,
  `Dept` varchar(20) DEFAULT NULL,
  `TotalBooks` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `department` (
  `deptno` int(11) NOT NULL,
  `dname` varchar(30) DEFAULT NULL,
  `loc` varchar(30) DEFAULT NULL,
  `head` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `dept` (
  `deptno` int(11) NOT NULL DEFAULT '0',
  `dname` varchar(14) DEFAULT NULL,
  `loc` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `emp` (
  `empno` int(11) NOT NULL DEFAULT '0',
  `ename` varchar(10) DEFAULT NULL,
  `job` varchar(9) DEFAULT NULL,
  `mgr` int(11) DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `sal` int(11) DEFAULT NULL,
  `comm` int(11) DEFAULT NULL,
  `deptno` int(11) DEFAULT NULL,
  PRIMARY KEY (`empno`),
  KEY `fk_EMP_deptno` (`deptno`),
  CONSTRAINT `fk_EMP_deptno` FOREIGN KEY (`deptno`) REFERENCES `dept` (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `employ` (
  `Empno` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(50) DEFAULT NULL,
  `Dept` varchar(30) DEFAULT NULL,
  `Desig` varchar(30) DEFAULT NULL,
  `Basic` int(11) DEFAULT NULL,
  PRIMARY KEY (`Empno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `employee` (
  `empno` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `dept` varchar(30) DEFAULT NULL,
  `desig` varchar(30) DEFAULT NULL,
  `basic` int(11) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `employnew` (
  `empno` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dept` varchar(30) DEFAULT NULL,
  `desig` varchar(30) DEFAULT NULL,
  `basic` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
CREATE TABLE `libusers` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `login` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
CREATE TABLE `policy` (
  `PolicyID` int(11) NOT NULL AUTO_INCREMENT,
  `AppNumber` varchar(30) DEFAULT NULL,
  `AppDate` date DEFAULT NULL,
  `PolicyNumber` varchar(30) DEFAULT NULL,
  `AnnualPremium` decimal(9,2) DEFAULT NULL,
  `PaymentModeID` int(11) DEFAULT NULL,
  `ModalPremium` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`PolicyID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
CREATE TABLE `student` (
  `sno` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `Sub1` int(11) DEFAULT NULL,
  `Sub2` int(11) DEFAULT NULL,
  `Sub3` int(11) DEFAULT NULL,
  `total` decimal(9,2) DEFAULT NULL,
  `aveg` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `tranbook` (
  `Username` varchar(50) DEFAULT NULL,
  `BookId` int(11) DEFAULT NULL,
  `Fromdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `transreturn` (
  `Username` varchar(50) NOT NULL,
  `BookId` int(11) NOT NULL,
  `Fromdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Todate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subname` varchar(45) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `marks` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rollnum` int(11) NOT NULL,
  `sname` varchar(45) NOT NULL,
  `age` int(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `doj` date NOT NULL,
  `country` varchar(45) NOT NULL,
  `finalscore` double DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
CREATE TABLE `address` (
  `emp_id` int(11) unsigned NOT NULL,
  `address_line1` varchar(50) NOT NULL DEFAULT '',
  `zipcode` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  CONSTRAINT `emp_fk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `employee` (
  `emp_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(20) NOT NULL,
  `emp_salary` double(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sso_id` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sso_id` (`sso_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
CREATE TABLE `app_user_user_profile` (
  `user_id` bigint(20) NOT NULL,
  `user_profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`user_profile_id`),
  KEY `FK_USER_PROFILE` (`user_profile_id`),
  CONSTRAINT `FK_APP_USER` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`),
  CONSTRAINT `FK_USER_PROFILE` FOREIGN KEY (`user_profile_id`) REFERENCES `user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `user_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
