drop database if exists student_management_1;
create database student_management_1;
use student_management_1;
create table Class
(ma_class int primary key,
ten_class varchar(45)
);
create table Teacher(
id_teacher int primary key,
name_teacher varchar(45),
age int,
country varchar(45)
);

