INSERT INTO productType(type_id, type_name)
VALUES (1, 'Funko');
INSERT INTO productType(type_id, type_name)
VALUES (2, 'GPU');
INSERT INTO productType(type_id, type_name)
VALUES (3, 'Led');
INSERT INTO productType(type_id, type_name)
VALUES (4, 'Teclado');
INSERT INTO productType(type_id, type_name)
VALUES (5, 'Rato');

INSERT INTO sales(sales_id, sales_amount)
VALUES (1, 206);
INSERT INTO sales(sales_id, sales_amount)
VALUES (2, 216);
INSERT INTO sales(sales_id, sales_amount)
VALUES (3, 2440);
INSERT INTO sales(sales_id, sales_amount)
VALUES (4, 670);

INSERT INTO product(product_id, product_name, product_type_id, product_price, product_sales_id)
VALUES (1,'Funko Kakashi', 1, 16, 1);
INSERT INTO product(product_id, product_name, product_type_id, product_price, product_sales_id)
VALUES (2,'Fita LED Xiaomi Smart Lightstrip Pro RGB 2m', 3, 30, 1);
INSERT INTO product(product_id, product_name, product_type_id, product_price, product_sales_id)
VALUES (3,'Teclado Mecânico Razer Blackwidow', 4, 90, 1);
INSERT INTO product(product_id, product_name, product_type_id, product_price, product_sales_id)
VALUES (4, 'Rato Óptico Logitech G502 HERO', 5, 70, 1);
INSERT INTO product(product_id, product_name, product_type_id, product_price, product_sales_id)
VALUES (5,'Funko Naruto', 1, 16, 2);
INSERT INTO product(product_id, product_name, product_type_id, product_price, product_sales_id)
VALUES (6, 'Rato Óptico Steelseries Aerox 3 RGB', 5, 110, 2);
INSERT INTO product(product_id, product_name, product_type_id, product_price, product_sales_id)
VALUES (7, 'Placa Gráfica MSI GeForce RTX 4070', 2, 670, 4);
INSERT INTO product(product_id, product_name, product_type_id, product_price, product_sales_id)
VALUES (8, 'Teclado Mecânico MSI Vigor GK50', 4, 70, 2);
INSERT INTO product(product_id, product_name, product_type_id, product_price, product_sales_id)
VALUES (9, 'Fita LED Nedis 5m', 3, 20, 2);
INSERT INTO product(product_id, product_name, product_type_id, product_price, product_sales_id)
VALUES (10,'Placa Gráfica Asus GeForce RTX 4090', 2, 2440, 3);