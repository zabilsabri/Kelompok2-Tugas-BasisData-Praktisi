INSERT INTO `student_info` (`full_name`, `address`, `major`) VALUES
('Zabil Sabri Muhammad', 'Jln. Dg. Tata Kompleks Hartaco Indah', 'Sisfor'),
('Salim Maulana', 'Jln. Perintis Kemerdekaan', 'Sisfor'),
('Reza Hasan', 'Jln. Urip Sumoharjo', 'Sisfor');

INSERT INTO `course` (`course_name`, `duration`) VALUES
('Sistem Basis Data', 120),
('Pemrograman Web', 120),
('Struktur Diskrit', 120);

-- 1 Create new student info record
INSERT INTO student_info (full_name, address, Major) VALUES ('Emilia Samayanti', 'Jln. Sahabat', 'Teknik');

-- 2 List students
SELECT * FROM student_info;

-- 3 Update student info record
UPDATE student_info SET full_name = 'Emilia Damayanti', Address = 'Jln. Kumala', Major= 'Sisfo' WHERE id = 4;

-- 4 List of schedule on specific student
SELECT student_info.id, course.course_name, `schedule`.`date`, `schedule`.`time` from student_info 
INNER JOIN `schedule` 
ON student_info.id = `schedule`.id
INNER join course
ON `schedule`.course_id = course.course_id
WHERE `schedule`.id = 1;

-- 5 List of courses
SELECT course_id, course_name, duration FROM course;

-- 6 Create / input new schedule for specific student
INSERT INTO `schedule` (id, course_id, `date`, `time`) VALUES 
(4, 3, '2022-10-11', '07:30:00');

-- 7 Edit /update schedule for specific student
UPDATE `schedule` SET course_id = 2, `date`='2022-10-12', `time`='07:30:00' WHERE id = 4;
