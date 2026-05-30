CREATE DATABASE task7;
USE task7;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

ALTER TABLE employees
ADD job_role VARCHAR(50);

INSERT INTO employees (emp_id, emp_name, department, salary) VALUES
(101, 'Sai', 'HR', 35000),
(102, 'Ravi', 'IT', 50000),
(103, 'Priya', 'Finance', 45000),
(104, 'Kiran', 'IT', 55000),
(105, 'Anu', 'HR', 38000),
(106, 'Vijay', 'Sales', 42000),
(107, 'Deepa', 'Finance', 48000),
(108, 'Rahul', 'Sales', 40000);

UPDATE employees
SET job_role =
CASE
    WHEN emp_id = 101 THEN 'Developer'
    WHEN emp_id = 102 THEN 'Tester'
    WHEN emp_id = 103 THEN 'Developer'
    WHEN emp_id = 104 THEN 'Analyst'
    WHEN emp_id = 105 THEN 'Manager'
    WHEN emp_id = 106 THEN 'Manager'
    WHEN emp_id = 107 THEN 'Tester'
    WHEN emp_id = 108 THEN 'Developerr'
END
WHERE emp_id IN (101,102,103,104,105,106,107,108);

SELECT * FROM employees;

SELECT * FROM employees WHERE salary > 40000;

SELECT * FROM employees WHERE emp_name LIKE "A%";

SELECT * FROM employees WHERE department IN ('HR', "Finance");

SELECT * FROM employees WHERE department IS NULL;

SELECT department ,count(emp_id) AS emp_count FROM employees WHERE salary > 40000 GROUP BY department;

SELECT department ,AVG(salary) AS avg_salary FROM employees GROUP BY department;

SELECT job_role ,AVG(salary) AVG_SALARY FROM employees WHERE depArtment = "IT" GROUP BY job_role;

SELECT department , job_role ,SUM(salary) AS total_salary FROM employees GROUP BY department , job_role;

SELECT department ,SUM(salary) AS total_salary FROM employees GROUP BY department ;

SELECT department ,COUNT(emp_id) AS total_emp FROM employees GROUP BY department ;

SELECT department ,AVG(salary) AS AVG_salary FROM employees GROUP BY department ;

SELECT department , job_role , count(emp_id) FROM employees GROUP BY department , job_role;



