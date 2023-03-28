use `library`;

-- thống kê các đầu sách được mượn nhiều nhất
select max(muon)
from(SELECT books.name, COUNT(book_id) AS muon
FROM borrows
JOIN books ON borrows.book_id = books.id
GROUP BY book_id
ORDER BY muon DESC) as max;

-- thống kê các đầu sách chưa được mượn
select books.name,books.id
from books
left join borrows on books.id=borrows.book_id 
where borrows.book_id not in (select borrows.book_id from borrows where curdate() between borrows.borrow_date and borrows.return_date)
group by books.id;

-- lấy ra dánh sách các học viên đã từng mượn sách và sắp xếp theo số lượng sách mượn từ nhỏ đến lớn
select name, count(borrows.id) as muon 
from students 
join borrows on students.id = borrows.student_id
where students.id
group by students.id
order by muon asc;

-- lấy ra các học viên mượn sách nhiều nhất của thư viện
select name, count(borrows.id) as muon
from students 
join borrows on students.id = borrows.student_id
group by students.name
order by muon desc limit 2;