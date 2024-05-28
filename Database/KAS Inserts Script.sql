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

insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Funko Kakashi', 1, 16, 1);
insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Fita LED Xiaomi Smart Lightstrip Pro RGB 2m', 3, 30, 1);
insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Teclado Mecânico Razer Blackwidow', 4, 90, 1);
insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Rato Óptico Logitech G502 HERO', 5, 70, 1);
insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Funko Ichigo', 1, 16, 2);
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
insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Headset Logitech G Pro X2 Lightspeed Gaming', 6, 200, 5);
insert into product(product_name, product_type_id, product_price, product_sales_id)
values ('Headset Razer Kaira X Playstation Licensed', 6, 45,6);

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