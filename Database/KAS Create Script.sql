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
                        product_delivery_id int,                                             -- Where the product went
                        product_quantity int not null                                        -- Product quantity
);

create table sales(
    sales_id int not null auto_increment primary key,                                        -- Primary key, auto incrementing
    sales_amount decimal(13,2) not null,                                                     -- Sales amount, fixed length
    sales_user_id int                                                                        -- Foreign key to user   
);

create table delivery(
    delivery_id int not null auto_increment primary key,                                     -- Primary key, auto incrementing
    delivery_name text,                                                                      -- Location name
    geom point not null                                                                      -- Geographic data
);

create table productType(
    type_id int not null auto_increment primary key,                                         -- Primary key, auto incrementing
    type_name varchar(60) not null                                                           -- Product type name, variable length
);

create table PV(
                PV_id int not null auto_increment primary key,                               -- Primary key, auto incrementing
                PV_product_id int not null,                                                  -- Foreign key to product
                PV_sales_id int not null,                                                    -- Foreign key to sales
                PV_amount int not null                                                       -- How many time the product was sold
);

-- Foreign Keys

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

alter table PV
add constraint PV_fk_product
foreign key (PV_product_id) references product(product_id)
ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table PV
add constraint PV_fk_sales
foreign key (PV_sales_id) references sales(sales_id)
ON DELETE NO ACTION ON UPDATE NO ACTION;