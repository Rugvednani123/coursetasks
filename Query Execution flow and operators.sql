CREATE DATABASE Task3;
USE Task3;
CREATE TABLE Products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
price DECIMAL(8,2),
discount FLOAT,
stock_quantity INT);
CREATE TABLE employees(
emp_id INT PRIMARY KEY,
e_name VARCHAR(100),
monthly_salary FLOAT,
bouns_percent FLOAT);

-- VALUES FOR PRODUCTS TABLE

INSERT INTO Products
(product_id, product_name, price, discount, stock_quantity)
VALUES
(1, 'Laptop', 65000.00, 10, 25),
(2, 'Mobile', 25000.50, 5, 40),
(3, 'Keyboard', 1200.75, 15, 100),
(4, 'Mouse', 850.00, 8, 150),
(5, 'Monitor', 14500.99, 12, 30),
(6, 'Printer', 9800.00, 7, 20),
(7, 'Headphones', 2200.50, 18, 75),
(8, 'Smart Watch', 5500.00, 10, 50);

-- VALUES FOR EMPLOYEES TABLE

INSERT INTO employees
(emp_id, e_name, monthly_salary, bouns_percent)
VALUES
(101, 'Rugved', 50000, 10),
(102, 'Midhun', 45000, 8),
(103, 'Murali', 52000, 12),
(104, 'Srujan', 60000, 15),
(105, 'Deepak', 48000, 9),
(106, 'Kiran', 55000, 11),
(107, 'Rahul', 47000, 7),
(108, 'Varun', 62000, 14);

SELECT*FROM Products;
SELECT*FROM employees;


SELECT *,(price*stock_quantity) AS total_stock_value FROM Products;

SELECT product_name,(price-discount) FROM Products;

SELECT *,(price*1.10) FROM Products;

SELECT e_name,(monthly_salary*12) AS annual_salary FROM employees;

SELECT *, (monthly_salary*(bouns_percent/100)) AS bouns_amount FROM employees;

SELECT *,(product_id % 2 = 0) AS even_ids FROM Products;

SELECT stock_quantity,(stock_quantity/4) AS shared_stock FROM Products;

SELECT*,(price-200)AS profit_margin FROM Products;

SELECT monthly_salary,(monthly_salary+200) AS total_compensation FROM employees;

SELECT price,((price*50)-100) AS bulk_order_discount FROM Products;