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
-- tạo chi mục unique index
CREATE UNIQUE INDEX unique_index_products ON products(product_code); 
-- tạo chỉ mục composite index
CREATE INDEX composite_index_products ON products(product_name,product_price);
-- sử dụng explain để hiển thị
EXPLAIN SELECT * FROM products;
-- tạo view lấy thông tin
CREATE VIEW product_view AS SELECT product_code, product_name, product_price, product_status FROM products;
-- sửa đổi view 
CREATE OR REPLACE VIEW product_view AS SELECT product_code, product_name, product_price, product_status FROM products WHERE product_name = "nước";
-- xóa view 
DROP VIEW product_view;
-- tạo store procedure lấy tất cả thông tin của product
delimiter //
CREATE PROCEDURE sp_product()
BEGIN
SELECT * FROM products; 
END //
delimiter ; 
-- gọi store procedure 
CALL sp_product();
-- tạo store procedure thêm một sản phẩm mới
delimiter //
CREATE PROCEDURE sp_product_add()
BEGIN
ALTER TABLE products ADD COLUMN address VARCHAR(25);
SELECT * FROM products;
END //
delimiter ; 
-- gọi store procedure để thêm
CALL sp_product_add;
-- tạo store procedure sửa thông tin sản phẩm theo id
delimiter //
CREATE PROCEDURE sp_product_edit()
BEGIN
SET SQL_SAFE_UPDATES = 0;
UPDATE products SET product_name = "Vinh Heo" WHERE id = 1;
SELECT * FROM products;
END //
delimiter ; 
-- gọi store procedure để chỉnh sửa
CALL sp_product_edit;
-- tạo store procedure để xóa
delimiter //
CREATE PROCEDURE sp_product_delete()
BEGIN
delete from products where id = 1;
SELECT * FROM products;
END //
delimiter ; 
-- gọi store procedure để xóa 
CALL sp_product_delete;