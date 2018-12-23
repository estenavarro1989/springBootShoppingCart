CREATE TABLE cart
(
   id INTEGER PRIMARY KEY NOT NULL,
   customer_id INTEGER NOT NULL,
   name VARCHAR(50) NOT NULL
);
CREATE TABLE cart_item
(
   cart_id INTEGER NOT NULL,
   product_id INTEGER NOT NULL,
   item_qty INTEGER NOT NULL,
   last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
   PRIMARY KEY ( cart_id, product_id )
);
CREATE TABLE category
(
   id INTEGER PRIMARY KEY NOT NULL,
   name VARCHAR(50) NOT NULL,
   description VARCHAR(200)
);
CREATE TABLE customer
(
   id INTEGER PRIMARY KEY NOT NULL,
   name VARCHAR(100) NOT NULL,
   password VARCHAR(20) NOT NULL,
   last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
   registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL
);
CREATE TABLE product
(
   id INTEGER PRIMARY KEY NOT NULL,
   name VARCHAR(50) NOT NULL,
   description VARCHAR(200) NOT NULL,
   price DECIMAL(5,2) NOT NULL,
   stock_qty INTEGER NOT NULL,
   last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
   category_id INTEGER NOT NULL
);
CREATE TABLE hibernate_sequence (
  next_val bigint(20) DEFAULT NULL
);
ALTER TABLE cart ADD FOREIGN KEY ( customer_id ) REFERENCES customer ( id );
CREATE INDEX fk_customercart_index_1 ON cart ( customer_id );
ALTER TABLE cart_item ADD FOREIGN KEY ( cart_id ) REFERENCES cart ( id );
ALTER TABLE cart_item ADD FOREIGN KEY ( product_id ) REFERENCES product ( id );
CREATE INDEX fk_cartitemproduct_index_b ON cart_item ( product_id );
CREATE UNIQUE INDEX unique_name_index_f ON category ( name );
ALTER TABLE product ADD FOREIGN KEY ( category_id ) REFERENCES category ( id );
CREATE INDEX fk_productcategory_index_1 ON product ( category_id );

INSERT INTO hibernate_sequence(next_val) VALUES(1);