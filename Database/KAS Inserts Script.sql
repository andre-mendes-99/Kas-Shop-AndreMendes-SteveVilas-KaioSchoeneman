insert into productType(type_name)
values ('Funko');
insert into productType(type_name)
values ('GPU');
insert into productType(type_name)
values ('Led');
insert into productType(type_name)
values ('Teclado');
insert into productType(type_name)
values ('Rato');

insert into sales(sales_amount)
values (206);
insert into sales(sales_amount)
values (216);
insert into sales(sales_amount)
values (2440);
insert into sales(sales_amount)
values (670);

insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Funko Kakashi', 1, 16, 1);
insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Fita LED Xiaomi Smart Lightstrip Pro RGB 2m', 3, 30, 1);
insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Teclado Mecânico Razer Blackwidow', 4, 90, 1);
insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Rato Óptico Logitech G502 HERO', 5, 70, 1);
insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Funko Naruto', 1, 16, 2);
insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Rato Óptico Steelseries Aerox 3 RGB', 5, 110, 2);
insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Placa Gráfica MSI GeForce RTX 4070', 2, 670, 4);
insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Teclado Mecânico MSI Vigor GK50', 4, 70, 2);
insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Fita LED Nedis 5m', 3, 20, 2);
insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Placa Gráfica Asus GeForce RTX 4090', 2, 2440, 3);

insert into delivery (geom) 
values (ST_GeomFromText('POINT(39.72555999882195 -8.807941944951695)'));
insert into delivery (geom)
values (ST_GeomFromText('POINT(40.55284355645574 -8.68411738910063)'));
insert into delivery (geom)
values (ST_GeomFromText('POINT(37.09433092798894 -7.897867745051062)'));
insert into delivery (geom)
values (ST_GeomFromText('POINT(38.57164888040486 -8.997510582366052)'));