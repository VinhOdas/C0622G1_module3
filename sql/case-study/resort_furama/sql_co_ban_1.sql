-- task 4
-- bài 2
SELECT 
    *
FROM
    nhan_vien
WHERE
    (ho_ten REGEXP '^[HKT]')
        AND (CHAR_LENGTH(ho_ten) <= 15);
-- bài 3
SELECT 
    *
FROM
    khach_hang
WHERE
    (dia_chi LIKE '% Quảng Trị'
        OR dia_chi LIKE '% Đà Nẵng')
        AND ((YEAR(NOW()) - YEAR(ngay_sinh) BETWEEN 18 AND 50));
SELECT 
    khach_hang.ma_loai_khach,
    khach_hang.ho_ten,
    COUNT(hop_dong.ma_khach_hang) AS so_lan_dat_phong
FROM
    khach_hang
        INNER JOIN
    hop_dong ON khach_hang.ma_loai_khach = hop_dong.ma_khach_hang
WHERE
    (khach_hang.ma_loai_khach = 1)
GROUP BY hop_dong.ma_khach_hang
ORDER BY so_lan_dat_phong, ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong;
 -- ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien
 -- (Với tổng tiền được tính theo công thức như sau:
 -- Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem,
 -- hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng.
 -- (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
 select
    kh.ma_khach_hang,
    kh.ho_ten,
    lk.ten_loai_khach,
    hd.ma_hop_dong,
    dv.ten_dich_vu,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc,
 (ifnull(dv.chi_phi_thue,0)+ SUM(ifnull(hdct.so_luong,0)*ifnull(dvdk.gia,0))) as tong_tien
 from hop_dong hd
left join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
left join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
left join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
group by  hd.ma_hop_dong
order by  kh.ma_khach_hang ;

-- 12 	Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng),
--  so_dien_thoai (khách hàng), ten_dich_vu, so_luong_dich_vu_di_kem (được tính dựa
--  trên việc sum so_luong ở dich_vu_di_kem), tien_dat_coc của tất cả các dịch vụ đã 
--  từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng
--  đặt vào 6 tháng đầu năm 2021.-- 

select  hd.ma_hop_dong, nv.ho_ten, kh.ho_ten,kh.so_dien_thoai,
dv.ma_dich_vu, dv.ten_dich_vu, sum(hdct.so_luong) as so_luong_dich_vu_di_kem,hd.tien_dat_coc
from khach_hang kh
left join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
left join nhan_vien nv on nv.ma_nhan_vien = hd.ma_nhan_vien
left join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
where  (quarter(ngay_lam_hop_dong ) = '4'and year(ngay_lam_hop_dong) = '2020') 
and hd.ngay_lam_hop_dong not in (select hd.ngay_lam_hop_dong
								from hop_dong 
								where (month(hd.ngay_lam_hop_dong ) between 1 and 6 
                                and year(ngay_lam_hop_dong) = '2021')
								group by hd.ma_hop_dong )
group by hd.ma_hop_dong;
   
-- 13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
-- (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
-- select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem,
-- sum(hdct.so_luong) as so_luong_dich_vu_di_kem
-- from hop_dong hd 
-- left join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
-- left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
-- left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
-- group by dvdk.ma_dich_vu_di_kem
-- having so_luong_dich_vu_di_kem >= all (select so_luong_dich_vu_di_kem
-- 										from hop_dong hd 
-- left join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
-- left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
-- left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
-- group by dvdk.ma_dich_vu_di_kem)
-- ;
   DROP VIEW IF EXISTS max_so_luong;
CREATE VIEW max_so_luong as SELECT sum(hdct.so_luong) as so_luong_dich_vu_di_kem
FROM
    hop_dong hd
			JOIN
    hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
        JOIN	
    dich_vu_di_kem dvdk ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
    GROUP BY dvdk.ma_dich_vu_di_kem;
SELECT
     dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, sum(hdct.so_luong) as so_luong_dich_vu_di_kem
FROM
    hop_dong hd
			JOIN
    hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
        JOIN	
    dich_vu_di_kem dvdk ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
    GROUP BY dvdk.ma_dich_vu_di_kem
    HAVING so_luong_dich_vu_di_kem = (SELECT MAX(so_luong_dich_vu_di_kem) from max_so_luong);
-- 14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. 
-- Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung 
-- (được tính dựa trên việc count các ma_dich_vu_di_kem).
select hd.ma_hop_dong, ldv.ten_loai_dich_vu, dvdk.ten_dich_vu_di_kem,
count(dvdk.ma_dich_vu_di_kem) as so_lan_su_dung
from khach_hang kh
left join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
left join dich_vu_di_kem 
dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
left join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
left join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
group by dvdk.ma_dich_vu_di_kem
having so_lan_su_dung = 1
order by hd.ma_hop_dong;

-- 15.	Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien,
-- ho_ten, ten_trinh_do, ten_bo_phan, so_dien_thoai, dia_chi mới chỉ 
-- lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.
select nv.ma_nhan_vien, nv.ho_ten,bp.ten_bo_phan, td.ten_trinh_do, nv.so_dien_thoai, nv.dia_chi 
from nhan_vien nv
join trinh_do td on td.ma_trinh_do = nv.ma_trinh_do
join bo_phan bp on bp.ma_bo_phan = nv.ma_bo_phan
join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien 
where (year(hd.ngay_lam_hop_dong) between 2020 and 2021)
group by hd.ma_nhan_vien
having count(hd.ma_hop_dong) <= 3
order by hd.ma_nhan_vien;
 -- 16.Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.



