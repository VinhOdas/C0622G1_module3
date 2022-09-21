-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
DELETE from nhan_vien 
WHERE NOT EXISTS ( SELECT 
						 ma_nhan_vien 
						 FROM hop_dong 
						 WHERE ma_nhan_vien = nhan_vien.ma_nhan_vien
                          ) ;
SELECT ma_nhan_vien, ho_ten FROM nhan_vien;

-- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ
 CREATE VIEW kh_can_update AS
							 SELECT 
							  hd.ma_khach_hang,
							  kh.ma_loai_khach,
							 sum(hdct.so_luong*dvkt.gia + dv.chi_phi_cho_thue) as tien_dat_coc
							 FROM hop_dong hd 
                             JOIN khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
                             JOIN hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
                             JOIN dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
                             JOIN dich_vu_kem_theo dvkt on dvkt.ma_dich_vu_kem_theo = hdct.ma_dich_vu_kem_theo
							 GROUP BY  kh.ma_khach_hang
                             HAVING tien_dat_coc > 1000000
                             AND ma_loai_khach =2;
							
 UPDATE  khach_hang kh
 SET kh.ma_loai_khach = 1
 WHERE kh.ma_loai_khach IN (SELECT ma_loai_khach FROM kh_can_update);
 SELECT *  FROM khach_hang kh;
 
 -- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 
 -- (chú ý ràng buộc giữa các bảng).
DROP VIEW IF EXISTS  delete_hd_truoc_2021;
CREATE VIEW delete_hd_truoc_2021 AS
								SELECT hd .ma_khach_hang, hd.ngay_lam_hop_dong
								FROM hop_dong hd 
								WHERE year(hd.ngay_lam_hop_dong ) <2021;
					
SET FOREIGN_KEY_CHECKS = 0;
DELETE FROM khach_hang
WHERE ma_khach_hang IN (SELECT ma_khach_hang FROM  delete_hd_truoc_2021 );
 
 -- 19.	Cập nhật giá cho các      dịch vụ đi kèm 
 -- được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.*/
 
 DROP VIEW IF EXISTS  dvkt_sd_tren_10_lan;
 CREATE VIEW dvkt_sd_tren_10_lan as
 SELECT hdct.ma_dich_vu_kem_theo, sum(hdct.so_luong ) AS so_lan_su_dung , hd.ngay_lam_hop_dong
 FROM hop_dong_chi_tiet hdct 
 JOIN dich_vu_kem_theo dvkt on dvkt.ma_dich_vu_kem_theo = hdct.ma_dich_vu_kem_theo
 JOIN hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
 WHERE year(hd.ngay_lam_hop_dong) = 2020
 GROUP BY hdct.ma_dich_vu_kem_theo 
 HAVING   so_lan_su_dung >10;
 
 UPDATE dich_vu_kem_theo
 SET dich_vu_kem_theo.gia = dich_vu_kem_theo.gia*2
 WHERE dich_vu_kem_theo.ma_dich_vu_kem_theo IN (SELECT ma_dich_vu_kem_theo FROM dvkt_sd_tren_10_lan  );
 
 -- 20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng 
-- có trong hệ thống, thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang),
 -- ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.*
 
 SELECT nhan_vien.*,khach_hang.*
 FROM nhan_vien nv
 JOIN khach_hang
 GROUP BY nv.ma_nhan_vien ;