use case_study_database;

-- task 21 Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Hải Châu” 
-- và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng là “12/12/2019”.
create view v_nhan_vien as
select nv.ma_nhan_vien, nv.ho_ten, nv.dia_chi, hd.ngay_lam_hop_dong
from nhan_vien nv
join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
where nv.dia_chi like '%Hải Châu%' and hd.ngay_lam_hop_dong = '2019-12-12';
select * from v_nhan_vien;
drop view v_nhan_vien; 

-- 22. Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ thành “Liên Chiểu” đối với tất cả các nhân viên được nhìn thấy bởi khung nhìn này.
update v_nhan_vien set dia_chi = 'Liên Chiểu, Đà Nẵng';

-- 23. Tạo Stored Procedure sp_xoa_khach_hang dùng để xóa thông tin của một khách hàng nào đó với ma_khach_hang được truyền vào như là 1 tham số của sp_xoa_khach_hang.
delimiter //
create procedure sp_xoa_khach_hang(in id_xoa int)
begin
	if id_xoa in (select ma_khach_hang from khach_hang) then
		update khach_hang set is_delete = 1 where ma_khach_hang = id_xoa;
        else
			signal sqlstate '45000'
			set message_text = 'Không tìm thấy khách hàng muốn xóa.';
	end if;
end //
delimiter ;

call sp_xoa_khach_hang(1);
select * from khach_hang;

-- task 24
delimiter //
create procedure sp_them_moi_hop_dong(in ngay_lam_hd datetime, in ngay_ket_thuc datetime, in tien_dat_coc double, 
	in ma_nv int, in ma_kh int, in ma_dv int)
begin
	if (timestampdiff(day, curdate(), ngay_lam_hd) < 0 or timestampdiff(day, ngay_lam_hd, ngay_ket_thuc) < 0) then
		signal sqlstate '45000'
		set message_text = 'Ngày làm hợp đồng phải không bé hơn ngày hiện tại và không lớn hơn ngày kết thúc.';
        elseif (tien_dat_coc < 0) then
			signal sqlstate '45000'
			set message_text = 'Tiền đặt cọc không nhỏ hơn 0.';
            elseif (ma_nv not in(select ma_nhan_vien from nhan_vien where ma_bo_phan = 2)) then
				signal sqlstate '45000'
				set message_text = 'Nhân viên làm hợp đồng phải thuộc bộ phận Hành chính.';
                else 
					insert into hop_dong (ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu)
					values (ngay_lam_hd, ngay_ket_thuc, tien_dat_coc, ma_nv, ma_kh, ma_dv);
	end if;
end //
delimiter ;

call sp_them_moi_hop_dong('2022-08-16', '2022-08-16', 1000000, 1, 1, 1);

select * from hop_dong;

-- task 25
drop table if exists lich_su_xoa_hop_dong;
create table lich_su_xoa_hop_dong(
ma_hop_dong_bi_xoa int,
so_luong_hop_dong_con_lai int,
ngay_cap_nhat datetime);

drop trigger if exists tr_xoa_hop_dong;
delimiter //
create trigger tr_xoa_hop_dong
after update on hop_dong for each row
begin
	declare so_luong int;
	if (old.is_delete <> 0) then
		signal sqlstate '45000'
		set message_text = 'Hợp đồng đã bị xóa.';
		else
			set @so_luong = (select count(*) from hop_dong where is_delete=0);
			insert into lich_su_xoa_hop_dong
			values (old.ma_hop_dong, @so_luong, now());
	end if;
end //
delimiter ;

update hop_dong set is_delete = 1 where ma_hop_dong = 5;
select * from lich_su_xoa_hop_dong;

select * from hop_dong;
