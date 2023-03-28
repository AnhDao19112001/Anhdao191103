drop database if exists `library`;
create database `library`;
use `library`;
create table category(
c_id int not null auto_increment primary key,
c_name varchar(25) not null
);
insert into category (c_name) values
('Tự nhiên'),
('Xã hội'),
('Truyện'),
('Tiểu thuyết'),
('Khác');

create table authors(
a_id int not null auto_increment primary key,
a_name varchar(50) not null
);
insert into authors(a_name) values
('Nguyễn Thái Học'),
('Trần Mình Hoàng'),
('Dương Trung Quốc'),
('Lê Văn Hiến'),
('Hà Văn Minh');

create table students(
s_id int not null auto_increment primary key,
s_name varchar (50) not null,
s_birthday date,
s_class_name varchar (25)
);
insert into students(s_name,s_birthday,s_class_name) values
('Nguyễn Văn A','1999-12-12','C0822G1'),
('Nguyễn Văn B','1999-12-13','C0822G1'),
('Nguyễn Văn C','1999-12-14','C0822G1'),
('Nguyễn Văn D','1999-12-15','C0922G1'),
('Nguyễn Văn E','1999-12-16','C1022G1');

create table books(
b_id int not null auto_increment primary key,
b_name varchar (50) not null,
b_page_size int not null,
b_author_id int not null,
b_category_id int not null
);
insert into books(b_name,b_page_size,b_author_id,b_category_id) values
('Toán',45,1,1),
('Văn',34,2,2),
('Sử',56,3,2),
('Địa',76,4,2),
('Hóa',32,5,1);

create table borrows (
id int not null auto_increment primary key,
student_id int not null,
book_id int not null,
borrow_date date,
return_date date
);
insert into borrows(student_id,book_id,borrow_date,return_date) values
(1,1,'2022-12-12','2022-12-13'),
(2,2,'2022-12-12','2022-12-15'),
(3,3,'2022-12-12','2022-12-15'),
(4,4,'2022-12-12','2022-12-12'),
(1,5,'2022-12-13','2022-12-15'),
(1,5,'2022-12-14','2022-12-14'),
(3,4,'2022-12-15','2022-12-29'),
(3,3,'2022-12-8','2022-12-14'),
(1,2,'2022-12-6','2022-12-30'),
(1,2,'2022-12-6','2023-02-28');