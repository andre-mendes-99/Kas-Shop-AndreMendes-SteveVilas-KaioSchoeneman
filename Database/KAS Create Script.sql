-- user - id, name, email, logo
-- product - id, name, type, price(?)
-- product type - id, name
-- sales - id, amount
-- geo data - latitude, longitude


create table user(
                    user_id int not null auto_increment,
                    user_name VARCHAR (60) not null,                         -- user name
                    user_email VARCHAR(30) not null,                         -- user email
                    user_logo longblob,                                      -- user logo
                    primary key (user_id)
                    -- user = company
);

create table product(
                        prod_id int not null auto_increment,
                        prod_name VARCHAR (60) not null,            -- product name
                        prod_type_id int not null,                  -- product type
                        prod_price decimal(13,2) not null,          -- product value
                        prod_sales_id int not null,
                        primary key (prod_id)
);

create table sales(
                    sales_id int not null auto_increment,
                    sales_amount decimal (13,2) not null,
                    primary key (sales_id)
);

create table geodata(
                        -- geodata_id int not null auto_increment,
                        coordinate POINT not null
                        -- geodata_name VARCHAR (60)
);

create table prodType(
                        type_id int not null auto_increment,
                        type_name VARCHAR (60) not null,
                        primary key (type_id)
);

-- Foreigns Keys 

alter table product
add constraint product_fk_sales
foreign key (prod_sales_id) references sales(sales_id)
ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table product
add constraint product_fk_prodType
foreign key (prod_type_id) references prodType(type_id)
ON DELETE NO ACTION ON UPDATE NO ACTION;
