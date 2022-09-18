drop database if exists view_index_sp;
create database view_index_sp;
use view_index_sp;
create table products(
id int primary key auto_increment,
productCode int ,
productName varchar(45),
productPrice double,
productAmount int ,
productDescription tinytext ,
productStatus bit 
); 
-- b2
insert into view_index_sp.products(productCode, productName, productPrice,productAmount,productDescription, productStatus ) 
values 
(1, 'Cà phê',10000,5,'ok',1),
(2, 'Coca',10000,5,'ok',1),
(3, 'Bò Húc',10000,5,'ok',1),
(4, 'Sprite',10000,5,'ok',1);
-- b3
