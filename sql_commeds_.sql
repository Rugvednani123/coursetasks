
CREATE DATABASE school_db;
USE school_db;

CREATE TABLE students (
id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT
);

CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(100) NOT NULL,
salary DECIMAL(10,2),
department VARCHAR(50)
);

CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
price FLOAT
);


CREATE DATABASE library_db;
USE library_db;

CREATE TABLE books (
book_id INT PRIMARY KEY,
title VARCHAR(150) NOT NULL,
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
course_name VARCHAR(100) NOT NULL,
duration INT
);

