drop database if exists khu_nghi_duong_furama;
create database khu_nghi_duong_furama;
use khu_nghi_duong_furama;
CREATE TABLE `vi_tri` (
  `ma_vi_tri` int ,
  `ten_vi_tri` varchar(45) ,
  PRIMARY KEY (`ma_vi_tri`)
);
CREATE TABLE `trinh_do` (
  `ma_trinh_do` int ,
  `ten_trinh_do` varchar(45),
  PRIMARY KEY (`ma_trinh_do`)
) ;
CREATE TABLE `nhan_vien` (
  `ma_nhan_vien` int ,
  `ho_ten` varchar(45) ,
  `ngay_sinh` date ,
  `so_cmnd` varchar(45) ,
  `luong` double ,
  `so_dien_thoai` varchar(45) ,
  `email` varchar(45) ,
  `dia_chi` varchar(45)  ,
  `ma_vi_tri` int  ,
  `ma_trinh_do` int  ,
  PRIMARY KEY (`ma_nhan_vien`)
);
CREATE TABLE `loai_khach` (
  `ma_loai_khach` int  ,
  `ten_loai_khach` varchar(45)  ,
  PRIMARY KEY (`ma_loai_khach`)
);
CREATE TABLE `loai_dich_vu` (
  `ma_loai_dich_vu` int  ,
  `ten_loai_dich_vu` varchar(45)  ,
  PRIMARY KEY (`ma_loai_dich_vu`)
) ;
CREATE TABLE `kieu_thue` (
  `ma_kieu_thue` int  ,
  `ten_kieu_thue` varchar(45)  ,
  PRIMARY KEY (`ma_kieu_thue`)
) ;
CREATE TABLE `khach_hang` (
  `ma_khach_hang` int  ,
  `ma_loai_hang` int  ,
  `ho_ten` varchar(45)  ,
  `ngay_sinh` date  ,
  `gioi_tinh` bit(1)  ,
  `so_cmnd` varchar(45)  ,
  `so_dien_thoai` varchar(45)  ,
  `email` varchar(45)  ,
  `dia_chi` varchar(45) ,
  PRIMARY KEY (`ma_khach_hang`)
);
CREATE TABLE `khach_hang` (
  `ma_khach_hang` int  ,
  `ma_loai_hang` int  ,
  `ho_ten` varchar(45)  ,
  `ngay_sinh` date  ,
  `gioi_tinh` bit(1)  ,
  `so_cmnd` varchar(45)  ,
  `so_dien_thoai` varchar(45)  ,
  `email` varchar(45)  ,
  `dia_chi` varchar(45) ,
  PRIMARY KEY (`ma_khach_hang`)
);
CREATE TABLE `hop_dong_chi_tiet` (
  `ma_hop_dong_chi_tiet` int  ,
  `ma_hop_dong` int  ,
  `ma_dich_vu_di_kem` int  ,
  `so_luong` int  ,
  PRIMARY KEY (`ma_hop_dong_chi_tiet`)
); 
CREATE TABLE `hop_dong` (
  `ma_hop_dong` int  ,
  `ngay_lam_hop_dong` datetime,
  `ngay_ket_thuc` datetime,
  `tien_dat_coc` double,
  `ma_nhan_vien` int,
  `ma_khach_hang` int,
  `ma_dich_vu` int,
  PRIMARY KEY (`ma_hop_dong`)
);
CREATE TABLE `dich_vu_di_kem` (
  `ma_dich_vu_di_kem` int  ,
  `ten_dich_vu_di_kem`varchar(45),
  `ngay_ket_thuc` datetime,
  `tien_dat_coc` double,
  `ma_nhan_vien` int,
  `ma_khach_hang` int,
  `ma_dich_vu` int,
  PRIMARY KEY (`ma_hop_dong`)
);





