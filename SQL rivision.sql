CREATE DATABASE task17;
use task17; 
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_name VARCHAR(100)
);

INSERT INTO departments VALUES
(101,'Engineering','Ramesh'),
(102,'Sales','Suresh'),
(103,'HR','Mahesh'),
(104,'Finance','Ganesh');

-- =====================================================
-- EMPLOYEES TABLE
-- =====================================================

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary DECIMAL(10,2),
    dept_id INT,
    manager_id INT NULL,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO employees VALUES
(1,'Rugved',75000,101,10),
(2,'Rahul',68000,101,10),
(3,'Murali',82000,101,10),
(4,'Varun',55000,102,11),
(5,'Deepak',62000,104,12),
(6,'Kiran',70000,101,10),
(7,'Teja',58000,102,11),
(8,'Aman',72000,101,10),
(9,'Siva',45000,103,NULL),
(10,'Ramesh',100000,101,NULL),
(11,'Suresh',95000,102,NULL),
(12,'Ganesh',110000,104,NULL);


CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    emp_id INT,
    sale_amount DECIMAL(10,2),
    sale_date DATE,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

INSERT INTO sales VALUES
(1,1,50000,'2026-01-01'),
(2,1,40000,'2026-01-05'),
(3,2,35000,'2026-01-10'),
(4,2,25000,'2026-01-15'),
(5,3,70000,'2026-01-20'),
(6,3,50000,'2026-01-25'),
(7,4,30000,'2026-01-08'),
(8,4,20000,'2026-01-18'),
(9,5,45000,'2026-01-12'),
(10,6,60000,'2026-01-28'),
(11,7,15000,'2026-01-22'),
(12,8,55000,'2026-01-29');


SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM sales;

SELECT emp_name,
       dept_id,
       salary
FROM employees e
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
    WHERE dept_id = e.dept_id
);

SELECT e.emp_id,e.emp_name,d.manager_name, d.dept_id FROM employees e INNER JOIN departments d ON e.dept_id = d.dept_id;

SELECT * FROM employees;

SELECT max(salary) FROM employees;

INSERT INTO employees VALUES(13,"rugved",110000,104,NULL);

