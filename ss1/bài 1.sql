drop database if exists book_management;
create database book_management;
use book_management;

create table books(
id int primary key not null auto_increment,
`name` varchar(255) not null,
page_size int not null,
author varchar(255) not null
);

insert into books(`name`, page_size, author)
values ('Toán', 45, 'Nguyễn Thái Học'),
 ('Văn', 34, 'Trần Mình Hoàng'),
 ('Sử', 56, 'Dương Trung Quốc'),
 ('Địa', 76, 'Lê Văn Hiến'),
 ('Hóa', 32, 'Hà Văn Minh');
 
 select * from books;
 
 -- cau 1 
 UPDATE books
SET page_size = 50
WHERE `name` = 'Sử';

-- cau 2
DELETE FROM books
WHERE id = 5;

-- cau 3
DROP TABLE books;

-- cau 4
DROP DATABASE book_management;
