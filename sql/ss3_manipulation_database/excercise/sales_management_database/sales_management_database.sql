drop database if exists quan_ly_ban_hang;
create database quan_ly_ban_hang;
use quan_ly_ban_hang;
create table customer(
c_id int primary key auto_increment,
c_name varchar(45),
c_age int
);
create table orders (
o_id int primary key auto_increment,
c_id int ,
foreign key (c_id) references customer(c_id),
o_date date,
o_total_price int
);
create table product(
p_id int primary key auto_increment,
p_name varchar(45),
p_price int
);
create table Order_deitail (
o_id int,
p_id int,
foreign key (o_id) references orders(o_id),
foreign key (p_id) references product(p_id),
Order_deitail varchar(45)
);
insert into customer(c_name,c_age) value
( 'Minh Quan',  10),
( 'Ngoc Oanh', 20),
( 'Hong Ha',  50);
insert into orders(c_id,o_date,o_total_price) value
(1, '2006-03-12',  Null),
(2, '2006-03-23', Null),
(1, '2006-03-03',  Null);
insert into product(p_name,p_price) value
( 'May Giat',  3),
( 'Tu Lanh', 5),
( 'Dieu Hoa', 7),
( 'Quat', 1),
( 'Bep Dien',  2);
insert into order_deitail(o_id,p_id,Order_deitail) value
( 1,1, 3),
( 1,3, 7),
(1, 4, 2),
(2, 1, 1),
(3,1, 8),
( 2,5, 4),
( 2,3, 3);
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select o_id,o_date,o_total_price 
from orders;
-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select  customer.c_name, product.p_name
from customer
inner join orders
on customer.c_id = orders.c_id
join order_deitail
on order_deitail.o_id = orders.o_id
join product
on order_deitail.p_id = product.p_id;
-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select  customer.c_name, product.p_name
from customer
left join orders on customer.c_id = orders.c_id
left join order_deitail on order_deitail.o_id = orders.o_id
left join product on order_deitail.p_id = product.p_id
where product.p_name is null;
-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất
-- hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
SELECT orders.o_id,orders.o_date,SUM(order_deitail.Order_deitail*product.p_price) 
FROM orders
INNER JOIN order_detail ON orders.o_id = order_deitail.o_id
INNER JOIN product ON order_deitail.p_id = product.p_id
GROUP BY orders.o_id;