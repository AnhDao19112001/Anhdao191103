use `library`;
-- tạo index cho cột title của bảng book
create index index_name on books(name);

-- tạo 1 view để lấy ra danh sách của các quyển sách đã được mượn, có thể hiển thị thêm cột số lần đã được mượn 
create view view_borows_book as select books.name, count(borrows.id) as `muon`
from books
join borrows on books.id= borrows.book_id
group by books.id
order by muon asc;

-- viết 1 stored procedure thêm mới book trong database với tham số kiểu IN
delimiter //
create procedure add_books(in id int, name_book varchar(50),in page_size int,in author_id int,in category_id int
)
begin
insert into books(id, name, page_size, author_id, category_id) values (id,name_book,page_size,author_id,category_id);
end // 
delimiter ;
insert into books(id, name, page_size, author_id, category_id) values (1,'Dao',19,5,4);
call add_books(2,'Anh',29,0,3);