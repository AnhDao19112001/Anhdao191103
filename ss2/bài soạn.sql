-- Hiển thị danh sách các lớp có học viên và số lượng của học viên mỗi lớp
SELECT class.name, COUNT(student.id) as num_students
FROM class
LEFT JOIN student ON class.id = student.class_id
GROUP BY class.id;

-- tính điểm trung bình của từng lớp
SELECT class.name, MAX(student.point) as max_point
FROM class
LEFT JOIN student ON class.id = student.class_id
GROUP BY class.id;

-- tính điểm trung bình của từng lớp
SELECT class.name as class_name, AVG(student.point) as average_point
FROM class
LEFT JOIN student ON class.id = student.class_id
GROUP BY class_name;

--  lấy ra toàn bộ tên và ngày sinh của các intructor và student ở codegym
SELECT name, birthday
FROM instructor
UNION
SELECT name, birthday
FROM student;

 -- lấy ra top 3 học viên có điểm cao nhất của trung tâm
SELECT name, `point`
FROM student
ORDER BY `point` DESC
LIMIT 3;

-- láy ra các học viên có điểm số là cao nhất trung tâm
SELECT * FROM student WHERE point = (SELECT MAX(point) FROM student);
