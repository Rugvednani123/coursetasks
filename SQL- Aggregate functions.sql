CREATE DATABASE task6;
USE task6;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

ALTER TABLE employees
ADD bonus DECIMAL(10,2);

INSERT INTO employees (emp_id, emp_name, department, salary) VALUES
(101, 'Sai', 'HR', 35000),
(102, 'Ravi', 'IT', 50000),
(103, 'Priya', 'Finance', 45000),
(104, 'Kiran', 'IT', 55000),
(105, 'Anu', 'HR', 38000),
(106, 'Vijay', 'Sales', 42000),
(107, 'Deepa', 'Finance', 48000),
(108, 'Rahul', 'Sales', 40000);

UPDATE employees SET bonus = 5000 WHERE emp_id = 101;
UPDATE employees SET bonus = 8000 WHERE emp_id = 102;
UPDATE employees SET bonus = 6000 WHERE emp_id = 103;
UPDATE employees SET bonus = 9000 WHERE emp_id = 104;
UPDATE employees SET bonus = 5500 WHERE emp_id = 105;
UPDATE employees SET bonus = 7000 WHERE emp_id = 106;
UPDATE employees SET bonus = 6500 WHERE emp_id = 107;
UPDATE employees SET bonus = 6000 WHERE emp_id = 108;

SELECT* FROM employees;

SELECT COUNT(*) AS emp_count FROM employees;

SELECT count(salary) AS salay_count FROM employees;

SELECT COUNT(DISTINCT department) AS dept FROM employees;

SELECT SUM(salary) AS total_slary FROM employees;

SELECT avg(salary) AS avg_salary FROM employees;

SELECT count(DISTINCT salary) AS distinct_salary FROM employees;

SELECT MAX(salary) AS max_salary FROM employees;

SELECT min(salary) AS max_salary FROM employees;

SELECT SUM(salary+bonus) AS total_amt FROM employees;

SELECT AVG(salary*0.90) AS after_deducting_tax FROM employees;
