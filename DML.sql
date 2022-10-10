INSERT INTO `student_info` (`full_name`, `address`, `major`) VALUES
('Zabil Sabri Muhammad', 'Jln. Dg. Tata Kompleks Hartaco Indah', 'Sisfor'),
('Salim Maulana', 'Jln. Perintis Kemerdekaan', 'Sisfor'),
('Reza Hasan', 'Jln. Urip Sumoharjo', 'Sisfor');

INSERT INTO `course` (`name`, `duration`, `time`) VALUES
('Sistem Basis Data', 120, '07:30:00'),
('Pemrograman Web', 120, '07:30:00'),
('Struktur Diskrit', 120, '10:10:00');

INSERT INTO `schedule` (`id`, `course_id`, `date`) VALUES
(1, 1, '2022-10-10'),
(2, 3, '2022-10-11'),
(3, 2, '2022-10-12'),
(3, 1, '2022-10-10');

-- 1 Create new student info record
INSERT INTO student_info (full_name, address, Major) VALUES ('Emilia Samayanti', 'Jln. Sahabat', 'Teknik');

-- 2 List students
SELECT * FROM student_info;

-- 3 Update student info record
UPDATE student_info SET full_name = 'Emilia Damayanti', Address = 'Jln. Kumala', Major= 'Sisfor' WHERE id = 4;

-- 4 List of schedule on specific student
SELECT `schedule`.id, course.`name`, `schedule`.`date`, course.`time` FROM course
INNER JOIN `schedule`
ON course.course_id = `schedule`.course_id
WHERE `schedule`.id = 3;

-- 5 List of courses
SELECT course_id, `name`, duration FROM course;

-- 6 Create / input new schedule for specific student
INSERT INTO `schedule` (id, course_id, `date`) VALUES 
(4, 3, '2022-10-11');

-- 7 Edit /update schedule for specific student
UPDATE `schedule` SET course_id = 2, `date`='2022-10-12' WHERE id = 4;
