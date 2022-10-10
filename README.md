# Kelompok2-Tugas-BasisData-Praktisi
Membuat Design Database

# DESIGN DATABASE KELOMPOK 2:
![image](https://user-images.githubusercontent.com/79674049/194902963-962be449-4ee2-41c8-9130-da3a1ee20d8e.png)

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

`` SELECT `schedule`.student_id, course.`name`, `schedule`.`date`, course.`time` FROM course
INNER JOIN `schedule`
ON course.course_id = `schedule`.course_id
WHERE `schedule`.student_id = 3; ``

Hasil:

![image](https://user-images.githubusercontent.com/79674049/194837938-dc90d7b5-a3a8-45b6-ad4e-3f0da5b1c33f.png)

5. List of courses

Query:

`` SELECT * FROM course; ``

Hasil:

![image](https://user-images.githubusercontent.com/79674049/194838441-8690a364-a427-46c8-a975-81a455288bc8.png)

6. Create / input new schedule for specific student

Query:

`` INSERT INTO `schedule` (student_id, course_id, `date`) VALUES (4, 3, '2022-10-11'); ``

Hasil:

![image](https://user-images.githubusercontent.com/79674049/194903848-6f4a2233-bea2-4f21-9311-92d7f01eb352.png)

7. Edit /update schedule for specific student

Query:

``UPDATE `schedule` SET course_id = 2, `date`='2022-10-12', `time`='07:30:00' WHERE student_id = 4; ``

Hasil:

![image](https://user-images.githubusercontent.com/79674049/194903936-6afe2185-4c8e-4f74-a275-b882275dae7c.png)
