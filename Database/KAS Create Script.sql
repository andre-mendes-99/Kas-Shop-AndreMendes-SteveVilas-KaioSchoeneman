create table app_users(
                    user_id int not null auto_increment primary key,                         -- Primary key, auto incrementing
                    user_name varchar(120),                                                  -- User name, variable length
                    user_email varchar(120) unique not null,                                 -- User email, it is unique and not null
                    user_logo longblob,                                                      -- User logo, binary data
                    user_password varchar(60) not null                                       -- User password, fixed length
);

create table product(
                        product_id int not null auto_increment primary key,                  -- Primary key, auto incrementing
                        product_name text,                                                   -- Product name, variable lenght
                        product_type_id int,                                                 -- Product type
                        product_price decimal(13,2) not null,                                -- Product value, fixed lenght
                        product_sales_id int,                                                -- Product price
                        product_delivery_id int                                              -- Where the product went 
);

CREATE TABLE sales(
    sales_id int not null auto_increment primary key,                                        -- Primary key, auto incrementing
    sales_amount decimal(13,2) not null                                                      -- Sales amount, fixed length
    sales_user_id int                                                                        -- Foreign key to user
);

CREATE TABLE delivery(
    delivery_id int not null auto_increment primary key,                                     -- Primary key, auto incrementing
    geom point not null                                                                      -- Geographic data
);

CREATE TABLE productType(
    type_id int not null auto_increment primary key,                                         -- Primary key, auto incrementing
    type_name varchar(60) not null                                                           -- Product type name, variable length
);

-- Foreign Keys

alter table product
add constraint product_fk_sales
foreign key (product_sales_id) references sales(sales_id)
ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table product
add constraint product_fk_productType
foreign key (product_type_id) references productType(type_id)
ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table product
add constraint product_fk_delivery
foreign key (product_delivery_id) references delivery(delivery_id)
ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table sales
add constraint sales_fk_app_users
foreign key (sales_user_id) references app_users(user_id)
ON DELETE NO ACTION ON UPDATE NO ACTION;