-- =====================================================
-- DATABASE
-- =====================================================

CREATE DATABASE task9;
USE task9;

-- =====================================================
-- 1. ORDERS TABLE
-- =====================================================

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO orders VALUES
(1,101,2500),
(2,101,1800),
(3,101,3200),
(4,101,1500),
(5,102,4000),
(6,102,2200),
(7,103,1800),
(8,103,2100),
(9,103,2500),
(10,104,3000),
(11,105,1200),
(12,105,1700);

-- =====================================================
-- 2. PRODUCTS TABLE
-- =====================================================

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(1,'Laptop','Electronics',65000),
(2,'Mobile','Electronics',25000),
(3,'Keyboard','Electronics',1500),
(4,'Mouse','Electronics',800),
(5,'Monitor','Electronics',14000),
(6,'Chair','Furniture',7000),
(7,'Table','Furniture',12000),
(8,'Sofa','Furniture',35000),
(9,'Bed','Furniture',45000),
(10,'Printer','Office',10000),
(11,'Scanner','Office',8000),
(12,'Projector','Office',30000);

-- =====================================================
-- 3. SALES TABLE
-- =====================================================

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    salesperson_id INT,
    product_id INT,
    quantity INT,
    sale_date DATE
);

INSERT INTO sales VALUES
(1,201,1,30,'2026-01-10'),
(2,201,2,25,'2026-01-15'),
(3,201,3,50,'2026-01-20'),
(4,202,1,20,'2026-01-12'),
(5,202,4,15,'2026-01-18'),
(6,202,5,25,'2026-01-25'),
(7,203,2,40,'2026-01-14'),
(8,203,3,35,'2026-01-19'),
(9,203,6,30,'2026-01-28'),
(10,204,1,10,'2026-01-30');

-- =====================================================
-- 4. EMPLOYEES TABLE
-- =====================================================

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(101,'Rugved','Engineering',75000),
(102,'Rahul','Engineering',68000),
(103,'Murali','Engineering',82000),
(104,'Varun','HR',50000),
(105,'Deepak','Finance',62000),
(106,'Kiran','Engineering',90000),
(107,'Teja','Sales',55000),
(108,'Aman','Engineering',72000),
(109,'Siva','Finance',60000),
(110,'Ravi','Sales',58000);

-- =====================================================
-- 5. STUDENTS TABLE
-- =====================================================

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    grade CHAR(1),
    score INT
);

INSERT INTO students VALUES
(1,'Aman','A',95),
(2,'Ravi','A',88),
(3,'Teja','A',NULL),
(4,'Siva','B',85),
(5,'Kiran','B',92),
(6,'Rahul','B',78),
(7,'Murali','C',80),
(8,'Varun','C',75),
(9,'Deepak','C',NULL),
(10,'Rugved','A',98),
(11,'Arun','B',89),
(12,'Venu','C',82);

-- =====================================================
-- 6. CUSTOMERS TABLE
-- =====================================================

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

INSERT INTO customers VALUES
(101,'Ramesh'),
(102,'Suresh'),
(103,'Mahesh'),
(104,'Rajesh'),
(105,'Ganesh');

SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM sales;
SELECT * FROM employees;
SELECT * FROM students;
SELECT * FROM customers;

SELECT customer_id ,count(order_id) AS total_oders FROM orders GROUP BY customer_id HAVING total_oders > 3;

SELECT category , sum(price) AS total_price FROM products GROUP BY category HAVING total_price > 50000;

SELECT  salesperson_id ,count(DISTINCT product_id) AS d_product, SUM(quantity) AS sum_quantity FROM sales GROUP by salesperson_id HAVING d_product >=3 AND sum_quantity > 100;

SELECT * FROM employees ORDER BY salary desc;

SELECT  *, price-(price*0.15) AS discount_price FROM products ORDER BY discount_price;

SELECT * FROM students ORDER BY grade ASC , score DESC;

SELECT * FROM customers LIMIT 5;

SELECT * FROM products ORDER BY price  desc LIMIT 3;

SELECT * FROM employees WHERE department = "Engineering" ORDER BY salary DESC LIMIT 3;

SELECT * FROM students LIMIT 5 OFFSET 5;

SELECT * FROM  products LIMIT 8 OFFSET 24;

# OFFSET = (Page_Number - 1) * Records_Per_Page

SELECT * FROM orders ORDER BY amount DESC LIMIT 10 OFFSET 20;
