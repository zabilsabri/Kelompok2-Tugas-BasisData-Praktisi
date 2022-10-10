# Kelompok2-Tugas-BasisData-Praktisi
Membuat Design Database

# DESIGN DATABASE KELOMPOK 2:
![image](https://user-images.githubusercontent.com/79674049/194793279-ce9313cb-cf18-4801-94e4-29fbe1d96ad4.png)

KETUA:
1. Zabil Sabri Muhammad

Nama Anggota:
1. BESSE SAHRIYUNI
2. EMILIA DAMAYANTI
3. MUHAMMAD REZA HASAN
4. BULQIS RAMADANI
5. MICHIKO TJIANG
6. ASTRINA WULAN PUTRI
7. MUH. SALIM MAULANA

# Query Yang Di-inginkan
1. Create new student info record

Query:

` INSERT INTO student_info (full_name, address, Major) VALUES ('Emilia Samayanti', 'Jln. Sahabat', 'Teknik'); `

2. List students

Query:

` SELECT * FROM student_info; `

Hasil:

![image](https://user-images.githubusercontent.com/79674049/194795010-1ff9523b-dcad-4e56-82c9-41ee91466d3a.png)

3. Update student info record

Query:

` UPDATE student_info SET full_name = 'Emilia Damayanti', Address = 'Jln. Kumala', Major= 'Sisfor' WHERE id = 4; `

Hasil:

![image](https://user-images.githubusercontent.com/79674049/194799767-a46530bc-7ee5-4233-9aae-836a73743d40.png)

4. List of schedule on specific student

Query:

`` SELECT student_info.id, course.course_name, `schedule`.`date`, `schedule`.`time` from student_info 
INNER JOIN `schedule` 
ON student_info.id = `schedule`.id
INNER join course
ON `schedule`.course_id = course.course_id
WHERE `schedule`.id = 3; ``

Hasil:

![image](https://user-images.githubusercontent.com/79674049/194795711-de833bd4-8135-40fd-ba7d-06d50f54633d.png)

5. List of courses

Query:

` SELECT course_id, course_name, duration FROM course; `

Hasil:

![image](https://user-images.githubusercontent.com/79674049/194795832-d32a5110-fde6-4498-b2f2-b3ec92bbfc41.png)

6. Create / input new schedule for specific student

Query:

`` INSERT INTO `schedule` (id, course_id, `date`, `time`) VALUES (4, 3, '2022-10-11', '07:30:00'); ``

Hasil:

![image](https://user-images.githubusercontent.com/79674049/194799501-8526aeb2-c1b4-4568-8bab-ed82d14b3d39.png)

7. Edit /update schedule for specific student

Query:

``UPDATE `schedule` SET course_id = 2, `date`='2022-10-12', `time`='07:30:00' WHERE id = 4;``

Hasil:

![image](https://user-images.githubusercontent.com/79674049/194799599-7747444e-a301-45b0-89f3-0ef0309da04e.png)
