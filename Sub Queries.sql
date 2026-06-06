CREATE DATABASE task13;
USE task13;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(101,'Rugved','Engineering',75000),
(102,'Rahul','Engineering',68000),
(103,'Murali','Engineering',82000),
(104,'Kiran','Engineering',90000),
(105,'Aman','Engineering',72000),

(106,'Varun','HR',50000),
(107,'Teja','HR',55000),

(108,'Deepak','Finance',62000),
(109,'Siva','Finance',60000),
(110,'Ganesh','Finance',95000),

(111,'Ravi','Sales',58000),
(112,'Arun','Sales',65000),
(113,'Venu','Sales',70000);


SELECT * FROM employees;

SELECT AVG(salary) AS avg_dept FROM employees GROUP BY department;

SELECT emp_id,
       emp_name,
       department,
       salary
FROM employees e
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
    WHERE department = e.department
);

SELECT department ,AVG(salary) FROM employees GROUP BY department ORDER BY AVG(salary) DESC LIMIT 1 ;

SELECT * FROM employees WHERE department = (SELECT department FROM employees GROUP BY department ORDER BY AVG(salary) DESC LIMIT 1 );

SELECT AVG(salary) FROM employees;
SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT department,SUM(salary) FROM employees GROUP BY department;

SELECT department,total_salary FROM (SELECT department,SUM(salary) AS total_salary FROM employees GROUP BY department) dept_totals ORDER BY total_salary DESC LIMIT 3;