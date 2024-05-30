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
insert into productType(type_name)
values ('Headset');

insert into sales(sales_amount)
values (206);
insert into sales(sales_amount)
values (216);
insert into sales(sales_amount)
values (2440);
insert into sales(sales_amount)
values (670);
insert into sales (sales_amount)
values (200);
insert into sales (sales_amount)
values (45);

insert into product(product_name, product_type_id, product_price, product_quantity)
values ('Funko Kakashi', 1, 16, 21);
insert into product(product_name, product_type_id, product_price, product_quantity)
values ('Fita LED Xiaomi Smart Lightstrip Pro RGB 2m', 3, 30, 48);
insert into product(product_name, product_type_id, product_price, product_quantity)
values ('Teclado Mecânico Razer Blackwidow', 4, 90, 46);
insert into product(product_name, product_type_id, product_price, product_quantity)
values ('Rato Óptico Logitech G502 HERO', 5, 70, 8);
insert into product(product_name, product_type_id, product_price, product_quantity)
values ('Funko Ichigo', 1, 16, 7);
insert into product(product_name, product_type_id, product_price, product_quantity)
values ('Rato Óptico Steelseries Aerox 3 RGB', 5, 110, 26);
insert into product(product_name, product_type_id, product_price, product_quantity)
values ('Placa Gráfica MSI GeForce RTX 4070', 2, 670, 32);
insert into product(product_name, product_type_id, product_price, product_quantity)
values ('Teclado Mecânico MSI Vigor GK50', 4, 70, 45);
insert into product(product_name, product_type_id, product_price, product_quantity)
values ('Fita LED Nedis 5m', 3, 20, 9);
insert into product(product_name, product_type_id, product_price, product_quantity)
values ('Placa Gráfica Asus GeForce RTX 4090', 2, 2440, 12);
insert into product(product_name, product_type_id, product_price, product_quantity)
values ('Headset Logitech G Pro X2 Lightspeed Gaming', 6, 200, 30);
insert into product(product_name, product_type_id, product_price, product_quantity)
values ('Headset Razer Kaira X Playstation Licensed', 6, 45, 19);

insert into delivery (delivery_name, geom) 
values ('IADE', ST_GeomFromText('POINT(38.7147 9.1463)'));
insert into delivery (delivery_name, geom)
values ('Chelas', ST_GeomFromText('POINT(38.7401 9.1183)'));
insert into delivery (delivery_name, geom)
values ('Seixal', ST_GeomFromText('POINT(38.6407 9.1021)'));
insert into delivery (delivery_name, geom)
values ('Amadora', ST_GeomFromText('POINT(38.7538 9.2248)'));
insert into delivery (delivery_name, geom)
values ('São João do Estoril', ST_GeomFromText('POINT(38.6975 9.3815)'));
insert into delivery (delivery_name, geom)
values ('Sintra', ST_GeomFromText('POINT(38.8029 9.3817)'));
insert into delivery (delivery_name, geom)
values ('Corroios', ST_GeomFromText('POINT(38.6337 9.1432)'));
insert into delivery (delivery_name, geom)
values ('Almada', ST_GeomFromText('POINT(38.6780 9.1551)'));
insert into delivery (delivery_name, geom)
values ('Carnaxide', ST_GeomFromText('POINT(38.7203 9.2491)'));
insert into delivery (delivery_name, geom)
values ('Queluz', ST_GeomFromText('POINT(38.7565 9.2561)'));

insert into PV (pv_product_id, pv_sales_id, pv_amount, pv_delivery_id)
values (1, 1, 5, 2);
insert into PV (pv_product_id, pv_sales_id, pv_amount, pv_delivery_id)
values (2, 1, 20, 2);
insert into PV (pv_product_id, pv_sales_id, pv_amount, pv_delivery_id)
values (3, 1, 8, 2);
insert into PV (pv_product_id, pv_sales_id, pv_amount, pv_delivery_id)
values (4, 1, 15, 2);
insert into PV (pv_product_id, pv_sales_id, pv_amount, pv_delivery_id)
values (5, 2, 5, 3);
insert into PV (pv_product_id, pv_sales_id, pv_amount, pv_delivery_id)
values (6, 2, 15, 3);
insert into PV (pv_product_id, pv_sales_id, pv_amount, pv_delivery_id)
values (7, 4, 30, 7);
insert into PV (pv_product_id, pv_sales_id, pv_amount, pv_delivery_id)
values (8, 2, 8, 3);
insert into PV (pv_product_id, pv_sales_id, pv_amount, pv_delivery_id)
values (9, 2, 20, 3);
insert into PV (pv_product_id, pv_sales_id, pv_amount, pv_delivery_id)
values (10, 3, 30, 4);
insert into PV (pv_product_id, pv_sales_id, pv_amount, pv_delivery_id)
values (11, 5, 10, 8);
insert into PV (pv_product_id, pv_sales_id, pv_amount, pv_delivery_id)
values (12, 6, 10, 10);