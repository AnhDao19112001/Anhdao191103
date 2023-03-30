drop database if exists `library`;
create database `library`;
use `library`;
create table category(
	id int primary key auto_increment,
    name varchar(45)not null
);
INSERT INTO authors(name)
VALUES ('Tự nhiên');
INSERT INTO authors(name)
VALUES ('Xã hội');
INSERT INTO authors(name)
VALUES ('Truyện');
INSERT INTO authors(name)
VALUES ('Tiểu thuyết');
INSERT INTO authors(name)
VALUES ('Khác');
create table authors(
	id int primary key auto_increment,
    name varchar(45) not null
);
INSERT INTO category(name)
VALUES ('Nguyễn Thái Học');
INSERT INTO category(name)
VALUES ('Trần Mình Hoàng');
INSERT INTO category(name)
VALUES ('Dương Trung Quốc');
INSERT INTO category(name)
VALUES ('Lê Văn Hiến');
INSERT INTO category(name)
VALUES ('Hà Văn Minh');
create table students(
	id int primary key auto_increment,
    name varchar(45) not null,
    birthday varchar(45) not null,
    class_name varchar(45) not null
);
INSERT INTO students(name,birthday,class_name)
VALUES ('Nguyễn Văn A','12/12/1999','C0822G1');
INSERT INTO students(name,birthday,class_name)
VALUES ('Nguyễn Văn B','12/13/1999','C0822G1');
INSERT INTO students(name,birthday,class_name)
VALUES ('Nguyễn Văn C','12/14/1999','C0822G1');
INSERT INTO students(name,birthday,class_name)
VALUES ('Nguyễn Văn D','12/15/1999','C0922G1');
INSERT INTO students(name,birthday,class_name)
VALUES ('Nguyễn Văn E','12/16/1999','C1022G1');
create table books(
	id int primary key auto_increment,
    name varchar(45) not null,
    page_size int not null,
    author_id int,
    category_id int,
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (category_id) REFERENCES category(id)
);
INSERT INTO books(name,page_size,author_id,category_id)
VALUES ('Toán',45,1,1);
INSERT INTO books(name,page_size,author_id,category_id)
VALUES ('Văn',34,2,2);
INSERT INTO books(name,page_size,author_id,category_id)
VALUES ('Sử',56,3,2);
INSERT INTO books(name,page_size,author_id,category_id)
VALUES ('Địa',76,4,2);
INSERT INTO books(name,page_size,author_id,category_id)
VALUES ('Hóa',32,5,1);
-- drop table books;
create table borrows(
	id int primary key auto_increment,
    student_id int,
    book_id int,
    borrow_date varchar(45) not null,
    return_date varchar(45) not null,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);
INSERT INTO borrows(student_id,book_id,borrow_date,return_date)
VALUES (1,1,'12-12-2022','12-13-2022');
INSERT INTO borrows(student_id,book_id,borrow_date,return_date)
VALUES (2,2,'12-12-2022','12-15-2022');
INSERT INTO borrows(student_id,book_id,borrow_date,return_date)
VALUES (3,3,'12-12-2022','12-15-2022');
INSERT INTO borrows(student_id,book_id,borrow_date,return_date)
VALUES (4,4,'12-12-2022','12-12-2022');
INSERT INTO borrows(student_id,book_id,borrow_date,return_date)
VALUES (1,5,'12-13-2022','12-15-2022');
INSERT INTO borrows(student_id,book_id,borrow_date,return_date)
VALUES (1,5,'12-14-2022','12-14-2022');
INSERT INTO borrows(student_id,book_id,borrow_date,return_date)
VALUES (3,4,'12-15-2022','12-29-2022');
INSERT INTO borrows(student_id,book_id,borrow_date,return_date)
VALUES (3,3,'12-8-2022','12-14-2022');
INSERT INTO borrows(student_id,book_id,borrow_date,return_date)
VALUES (1,2,'12-6-2022','12-30-2022');

-- Lấy ra toàn bộ sách có trong thư viện, cùng với tên thể loại và tác giả
SELECT books.name, category.name, authors.name
FROM books
INNER JOIN category ON books.category_id = category.id
INNER JOIN authors ON books.author_id = authors.id;

-- Lấy ra danh sách các học viên đã từng mượn sách và sắp xếp danh sách theo theo tên từ a->z
-- SELECT students.name,students.birthday,students.class_name
-- from borrows
-- inner join students on borrows.student_id = students.id
-- order by students.name;
select students.name, students.birthday, students.class_name
from students
where student_id in (select student_id from borrows)
order by student_id;

-- Lấy ra  2 quyển sách được mượn nhiều nhất
SELECT books.name, COUNT(borrows_id) as lan_muon
FROM borrows 
inner join books on borrows.book_id = books.id
group by book_id
ORDER BY lan_muon DESC 
LIMIT 2;