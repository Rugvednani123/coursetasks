
CREATE DATABASE school_db;
USE school_db;

CREATE TABLE students (
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
city VARCHAR(50)
);

CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(100),
salary DECIMAL(10,2),
department VARCHAR(50)
);

CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
price FLOAT
);

CREATE DATABASE library_db;
USE library_db;

CREATE TABLE books (
book_id INT PRIMARY KEY,
title VARCHAR(150),
author VARCHAR(100),
price DECIMAL(8,2)
);

CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_name VARCHAR(100),
order_date DATE,
amount DECIMAL(10,2)
);

CREATE DATABASE college_db;
USE college_db;

CREATE TABLE courses (
course_id INT PRIMARY KEY,
course_name VARCHAR(100),
duration INT
);


CREATE TABLE appointments (
id INT PRIMARY KEY,
patient_name VARCHAR(50),
appointment_date DATE,
appointment_time TIME
);

CREATE TABLE orders_datetime (
order_id INT PRIMARY KEY,
item VARCHAR(50),
ordered_at DATETIME,
shipped_at TIMESTAMP
);


USE school_db;


INSERT INTO students (id, name, age, city)
VALUES (1, 'Ravi', 20, 'Hyderabad');


USE company_db;

INSERT INTO employees
VALUES (101, 'Amit', 30000.00, 'HR');


INSERT INTO products (product_id, product_name, price)
VALUES
(1, 'Laptop', 55000),
(2, 'Mouse', 500),
(3, 'Keyboard', 1500);


USE college_db;

INSERT INTO appointments
VALUES (1, 'Rahul', '2024-07-15', '10:30:00');


INSERT INTO orders_datetime
VALUES
(1, 'Book', '2024-07-10 12:00:00', CURRENT_TIMESTAMP),
(2, 'Pen', '2024-07-11 15:30:00', CURRENT_TIMESTAMP);



USE school_db;

UPDATE students
SET city = 'Bangalore'
WHERE id = 2;

USE company_db;


UPDATE employees
SET salary = salary + 5000
WHERE department = 'HR';


UPDATE products
SET price = 0;

USE college_db;


UPDATE appointments
SET appointment_date = '2024-07-20'
WHERE id = 1;


USE school_db;

DELETE FROM students
WHERE id = 3;

USE company_db;


DELETE FROM employees
WHERE department = 'Finance';


DELETE FROM products;

USE college_db;


DELETE FROM appointments
WHERE appointment_date < '2024-06-01';


DELETE FROM orders_datetime
WHERE shipped_at IS NULL;

