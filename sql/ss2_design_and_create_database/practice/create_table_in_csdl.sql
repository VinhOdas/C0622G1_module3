drop database if exists quan_ly_diem_thi;
create database quan_ly_diem_thi;
use quan_ly_diem_thi;
create table hoc_sinh(
ma_hs varchar(15) primary key,
ten_hs varchar(45),
ngay_sinh datetime,
lop varchar(20),
gt varchar(20)
);
create table mon_hoc(
ma_mh varchar(15) primary key,
ten_mh varchar(30)
);
create table bang_diem(
ma_hs varchar(15) ,
ma_mh varchar(15),
diem_thi int,
ngay_kiem_tra datetime,
primary key (ma_hs,ma_mh),
foreign key(ma_hs) references hoc_sinh(ma_hs),
foreign key(ma_mh) references mon_hoc(ma_mh)
);
create table giao_vien(
ma_gv varchar(20) primary key,
ten_gv varchar(20),
sdt int
);
ALTER TABLE mon_hoc ADD CONSTRAINT ma_gv FOREIGN KEY (ma_gv) REFERENCES giao_vien(ma_gv);