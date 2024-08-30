-- crear base de datos con MySQL
CREATE DATABASE Tiendita;

USE Tiendita;

-- crear tabla product
CREATE TABLE product(
    product_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    product_name VARCHAR (255) NOT NULL,
    product_price INT,
    image_url VARCHAR (255),
    expiration_date VARCHAR (255),
);

-- crear tabla bill
CREATE TABLE bill(
    bill_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    bill_date DATE,
    bill_total INT,
    money_paid INT,
    money_back INT,
);

-- Crear tabla product_bill
CREATE TABLE product_bill(
    product_bill_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    FOREIGN KEY (product_bill_bill_id) REFERENCES bill(bill_id),
    FOREIGN KEY (product_bill_product_id) REFERENCES product(product_id),
    product_amount INT,
    product_bill_subtotal INT,
);

-- crear tabla income
CREATE TABLE income(
    income_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    income_date DATE,
    income_type VARCHAR(255),
    income_amount INT,
    income_description VARCHAR(255),
);

-- crear tabla order
CREATE TABLE order(
    order_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    date_order DATE,
    date_order_delivery DATE,
    order_total INT,
    order_status VARCHAR(255),
);

-- crear tabla product_order
CREATE TABLE product_order(
    product_order_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    FOREIGN KEY (product_order_order_id) REFERENCES order(order_id),
    FOREIGN KEY (prooduct_order_product_id) REFERENCES product(product_id),
    product_order_amount INT,
    price_unit INT,
);

-- Crear tabla inventory
CREATE TABLE inventory(
    inventory_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    FOREIGN KEY (inventory_product_id) REFERENCES product(product_id)
    amount_available INT
    date_income DATE
);