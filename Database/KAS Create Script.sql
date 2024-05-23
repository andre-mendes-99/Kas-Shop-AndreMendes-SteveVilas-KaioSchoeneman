create table app_users(
                    user_id serial primary key,                              -- Primary key, auto incrementing
                    user_name text,                                          -- User name, variable length
                    user_email text unique not null,                         -- User email, it is unique and not null
                    user_logo bytea,                                         -- User logo, binary data
                    user_password varchar(60) not null,                     -- User password, fixed length
);

create table product(
                        product_id serial primary key,                                       -- Primary key, auto incrementing
                        product_name text,                                                   -- Product name, variable lenght
                        product_type_id integer references productType(id),                  -- Product type
                        product_price numeric(13,2) not null,                                -- Product value, fixed lenght
                        product_sales_id integer references sales(id),
);

CREATE TABLE sales(
    sales_id serial primary key,                       -- Primary key, auto incrementing
    sales_amount numeric(13,2) not null                -- Sales amount, fixed length
);

CREATE TABLE geodata(
    geodata_id serial primary key,                     -- Primary key, auto incrementing
    geom geography(point, 4326) not null               -- Geometric data
);

CREATE TABLE productType(
    type_id serial primary key,                        -- Primary key, auto incrementing
    type_name varchar(60) not null                     -- Product type name, variable length
);