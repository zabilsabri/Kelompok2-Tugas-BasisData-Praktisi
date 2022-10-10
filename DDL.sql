CREATE DATABASE contract_sisfo;

USE contract_sisfo;

CREATE TABLE student_info(
	id INT AUTO_INCREMENT,
	full_name VARCHAR (225),
	address VARCHAR (225),
	major VARCHAR (100),
	PRIMARY KEY (id)
);

CREATE TABLE course(
	course_id INT AUTO_INCREMENT,
	name VARCHAR (200),
	duration INT,
	`time` TIME,
	PRIMARY KEY (course_id)
);

CREATE TABLE `schedule` (
	`schedule_id` INT AUTO_INCREMENT,
	id INT,
	course_id INT,
	`date` DATE,
	`time` DATETIME DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (id) REFERENCES student_info(id),
	FOREIGN KEY (course_id) REFERENCES course(course_id),
	PRIMARY KEY (`schedule_id`)
);
