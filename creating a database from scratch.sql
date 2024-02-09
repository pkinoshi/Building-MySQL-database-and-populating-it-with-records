DROP DATABASE IF EXISTS dynamo;
CREATE DATABASE dynamo;
USE dynamo;

#TABLE 1
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(20),
    email VARCHAR(70),
    house_number INT,
    street_address VARCHAR(250),
    city VARCHAR(50),
    post_code INT,
    country VARCHAR(25)
);

#TABLE 2
CREATE TABLE departments (
    department_id INT PRIMARY KEY NOT NULL,
    department VARCHAR(25)
);

#TABLE 3
CREATE TABLE employee (
    employee_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(250),
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments (department_id)
);

#TABLE 4
CREATE TABLE products (
    product_id INT PRIMARY KEY NOT NULL,
    title TEXT,
    description TEXT,
    unit_price DECIMAL(5 , 2 ),
    language VARCHAR(50),
    genre VARCHAR(50),
    product_type VARCHAR(25),
    employee_id INT,
    FOREIGN KEY (employee_id)
        REFERENCES employee (employee_id)
);

#TABLE 5
CREATE TABLE orders (
    order_id INT PRIMARY KEY NOT NULL,
    order_date DATE,
    payment_mode varchar(25),
    status VARCHAR(15),
    customer_id INT,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);

#TABLE 6
CREATE TABLE order_details (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT,
    price decimal(5,2),
    PRIMARY KEY (order_id , product_id),
    FOREIGN KEY (order_id)
        REFERENCES orders (order_id),
	FOREIGN KEY (product_id)
        REFERENCES products (product_id)
);

#TABLE 7
DROP TABLE IF EXISTS payments;
CREATE TABLE payments (
    payment_id CHAR(8) PRIMARY KEY NOT NULL,
    customer_id INT,
    payment_date DATE,
    amount DECIMAL(5 , 2 ),
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);