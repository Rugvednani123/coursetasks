CREATE DATABASE task20;
USE task20;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2),
    experience INT,
    hire_date DATE
);

INSERT INTO employees VALUES
(101,'Ravi',101,50000,2,'2024-01-15'),
(102,'Suresh',101,65000,5,'2023-05-10'),
(103,'Sneha',102,70000,6,'2024-03-12'),
(104,'Kiran',103,45000,1,'2025-01-20'),
(105,'Varun',101,80000,8,'2022-07-25'),
(106,'Siva',102,55000,3,'2024-06-10'),
(107,'Anjali',104,90000,10,'2021-08-15'),
(108,'Teja',103,60000,4,'2024-11-01');

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(1,'Laptop','Electronics',65000),
(2,'Mouse','Electronics',500),
(3,'Keyboard','Electronics',1200),
(4,'Chair','Furniture',4500),
(5,'Table','Furniture',7000),
(6,'Mobile','Electronics',25000),
(7,'Sofa','Furniture',15000),
(8,'Printer','Office',8000);


CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    marks INT
);

INSERT INTO students VALUES
(1,'Aman',85),
(2,'Rohit',92),
(3,'Priya',78),
(4,'Sneha',95),
(5,'Varun',88),
(6,'Teja',70);


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO customers VALUES
(1,'Ramesh','ramesh@gmail.com'),
(2,'Suresh','suresh@gmail.com'),
(3,'Mahesh','mahesh@gmail.com'),
(4,'Ganesh','ganesh@gmail.com');

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    delivery_date DATE
);

INSERT INTO orders VALUES
(101,1,'2024-01-10','2024-01-15'),
(102,2,'2024-02-05','2024-02-09'),
(103,1,'2024-03-12','2024-03-18'),
(104,3,'2024-04-20','2024-04-25');

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    sale_date DATE,
    sale_amount DECIMAL(10,2)
);

INSERT INTO sales VALUES
(1,'2024-01-01',10000),
(2,'2024-01-05',15000),
(3,'2024-01-10',12000),
(4,'2024-01-15',18000),
(5,'2024-01-20',22000);

SELECT * FROM employees;
SELECT * FROM products;
SELECT * FROM students;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM sales;

SELECT AVG(salary) FROM employees;

SELECT emp_name,salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT emp_name,department_id FROM employees WHERE department_id = (SELECT department_id FROM employees WHERE emp_name = "Ravi"); 

SELECT min(price) FROM products;
SELECT product_name ,price FROM products WHERE price >(SELECT min(price) FROM products);

SELECT AVG(marks) FROM students;

SELECT student_name ,marks FROM students WHERE marks >(SELECT AVG(marks) FROM students);

SELECT emp_name,salary FROM employees WHERE salary = (SELECT max(salary) FROM employees);

SELECT customer_id,count(order_id) AS customers_count FROM orders GROUP BY customer_id HAVING customers_count >=1; 

SELECT * FROM customers WHERE customer_id IN (SELECT customer_id FROM orders); 

SELECT * FROM employees WHERE not department_id = 101;

SELECT * FROM employees WHERE department_id != 101;


SELECT category FROM products WHERE product_name = "Laptop";

SELECT product_name,category  FROM products WHERE category = (SELECT category FROM products WHERE product_name = "Laptop");

SELECT emp_name,experience FROM employees WHERE experience > (SELECT min(experience) FROM employees);

SELECT department_id ,AVG(salary) AS avg_dept FROM employees GROUP BY department_id HAVING avg_dept > 50000;

SELECT department_id  , avg_dept FROM  (SELECT department_id ,AVG(salary) AS avg_dept FROM employees GROUP BY department_id) T WHERE avg_dept > 50000;

SELECT UPPER(emp_name)FROM employees;

SELECT left(product_name,3) FROM products;

SELECT LENGTH(customer_name) AS len_customers FROM customers;

UPDATE customers SET email = REPLACE(email,"@gmail.com","@yahoo.com");

SET SQL_SAFE_UPDATES = 0;

SELECT CONCAT(customer_name,email) FROM customers;

SELECT lower(product_name) FROM products;

SELECT emp_name FROM employees WHERE emp_name LIKE "S%";

SELECT now();

SELECT emp_name,emp_id,YEAR(hire_date) AS hierd_year FROM employees WHERE YEAR(hire_date) = "2024";

SELECT order_id,MONTH(order_date) AS order_month FROM orders;

SELECT order_id,DATEDIFF(delivery_date,order_date) AS diff_day FROM orders;

SELECT curdate() AS cur_date,curtime() AS cur_time;

SELECT emp_name,hire_date FROM employees WHERE month(hire_date) = month(curdate());

SELECT *,ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num FROM employees;

SELECT *,RANK() OVER(ORDER BY marks DESC) AS student_ranks FROM students;

SELECT *,DENSE_RANK() OVER(ORDER BY salary DESC) AS emp_rank FROM employees;

SELECT *,MAX(salary) OVER() AS total_salary FROM employees;

SELECT department_id,AVG(salary) OVER(PARTITION BY department_id) AS avg_of_dept FROM employees;

SELECT * FROM (
SELECT emp_name,department_id,salary,AVG(salary) OVER(PARTITION BY department_id) AS avg_of_dept FROM employees)t
WHERE salary > avg_of_dept;

SELECT *,SUM(sale_amount) OVER(ORDER BY sale_date) as cumilative_amount FROM sales;
