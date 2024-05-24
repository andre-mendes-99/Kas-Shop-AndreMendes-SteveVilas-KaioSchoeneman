INSERT INTO productType(type_id,type_name)
VALUES (1,'Funko');
INSERT INTO productType(type_id,type_name)
VALUES (2,'GPU');
INSERT INTO productType(type_id,type_name)
VALUES (3,'led');
INSERT INTO productType(type_id,type_name)
VALUES (4,'teclado');
INSERT INTO productType(type_id,type_name)
VALUES (5,'Rato');

INSERT INTO sales(sales_id,sales_amount)
VALUES (1,300);

INSERT INTO product(product_id, product_name, product_type_id, product_price, product_sales_id)
VALUES (1,'Funko kakashi', 1, 15, 1);
INSERT INTO product(product_id, product_name, product_type_id, product_price, product_sales_id)
VALUES (2,'Nvidia xpto', 2, 100, 1);
INSERT INTO product(product_id, product_name, product_type_id, product_price, product_sales_id)
VALUES (3,'Led 2metros', 3, 15, 1);
INSERT INTO product(product_id, product_name, product_type_id, product_price, product_sales_id)
VALUES (4,'Teclado xpto', 4, 100, 1);
INSERT INTO product(product_id, product_name, product_type_id, product_price, product_sales_id)
VALUES (5,'Funko kakashi', 5, 70, 1);