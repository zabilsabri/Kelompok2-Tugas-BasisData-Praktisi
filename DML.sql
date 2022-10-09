INSERT INTO `course` (`course_name`, `duration`) VALUES
('Sistem Basis Data', 120),
('Pemrograman Web', 120),
('Struktur Diskrit', 120);

-- 1
INSERT INTO student_info (full_name, address, Major) VALUES ('Emilia Damayanto', 'Jln. Sahabat', 'Teknik');

-- 2
SELECT * FROM student_info;

-- 3
UPDATE student_info SET full_name = 'Emilia Damayanti', Address = 'Jln. Kumala', Major= 'Sisfo' WHERE id = 4;

-- 4
SELECT student_info.id, course.course_name, course.`date`, course.`time` from student_info 
inner JOIN `schedule` 
ON `schedule`.id = student_info.id 
inner join course 
on course.course_id = `schedule`.course_id
WHERE `schedule`.id = 3;

-- 5
SELECT course_id, course_name, duration FROM course;

-- 6
INSERT INTO `schedule` (id, course_id) VALUES (4, 3);

-- 7
UPDATE `schedule` SET id = 4, course_id = 2 WHERE id = 4;
