CREATE DATABASE task4;
USE task4;
CREATE TABLE products (
    product_name VARCHAR(100),
    price DECIMAL(8,2),
    stock_quantity INT
);

CREATE TABLE employees (
    name VARCHAR(100),
    salary FLOAT,
    department VARCHAR(50),
    city VARCHAR(50)
);

-- VALUES FOR PRODUCTS TABLE

INSERT INTO products
(product_name, price, stock_quantity)
VALUES
('Laptop', 65000.00, 25),
('Mobile', 25000.50, 40),
('Keyboard', 1200.75, 100),
('Mouse', 850.00, 150),
('Monitor', 14500.99, 30),
('Printer', 9800.00, 20),
('Headphones', 2200.50, 75),
('Smart Watch', 5500.00, 50);
INSERT INTO products
(product_name, price, stock_quantity)
VALUES
('Pen', 50.00, 25),
('bag',500.00,30);

-- VALUES FOR EMPLOYEES TABLE

INSERT INTO employees
(name, salary, department, city)
VALUES
('Rugved', 50000, 'CSE', 'Hyderabad'),
('Midhun', 45000, 'ECE', 'Vijayawada'),
('Murali', 52000, 'CSE', 'Guntur'),
('Srujan', 60000, 'EEE', 'Warangal'),
('Deepak', 48000, 'MECH', 'Nellore'),
('Kiran', 55000, 'CIVIL', 'Kurnool'),
('Rahul', 47000, 'CSE', 'Vizag'),
('Varun', 62000, 'ECE', 'Tirupati');

SELECT * FROM products;
SELECT * FROM employees;

SELECT * FROM products WHERE price = 500;

SELECT * FROM products WHERE stock_quantity < 10;

SELECT * FROM products WHERE price > 1000;

SELECT * FROM products WHERE price <= 250;

SELECT * FROM products WHERE stock_quantity <= 50;

SELECT * FROM products WHERE product_name != "Pen";

SELECT name,department,salary FROM employees WHERE salary > 40000;

SELECT * FROM employees WHERE salary > 50000 or city = 'Hyderabad';

SELECT * FROM employees WHERE NOT department = "CSE";

CREATE TABLE students (
    name VARCHAR(100),
    city VARCHAR(50),
    marks INT,
    email VARCHAR(100)
);

INSERT INTO students
(name, city, marks, email)
VALUES
('Rugved', 'Mumbai', 92, 'rugved@gmail.com'),
('Murali', 'Delhi', 85, 'murali@gmail.com'),
('Kiran', 'Bangalore', 78, 'kiran@gmail.com'),
('Teja', 'Hyderabad', 88, 'teja@gmail.com'),
('Deepak', 'Chennai', 95, 'deepak@gmail.com'),
('Vinay', 'Kolkata', 81, 'vinay@gmail.com'),
('Siva', 'Pune', 76, 'siva@gmail.com'),
('Varun', 'Ahmedabad', 90, 'varun@gmail.com');

SELECT * FROM students;

SELECT * FROM students WHERE city in ( "Mumbai","Delhi","Pune");

SELECT * FROM students WHERE NOT city in ( "Chennai","Delhi");

SELECT * FROM students WHERE email IS NULL;

SELECT * FROM students WHERE email IS NOT NULL; 

SELECT * FROM students WHERE name LIKE "S%";

SELECT * FROM students WHERE name LIKE "%a";

SELECT * FROM students WHERE name LIKE "____";

SELECT * FROM students WHERE name NOT LIKE "R%"

