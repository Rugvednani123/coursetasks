CREATE DATABASE task5;
USE task5;
CREATE TABLE users( 
user_id INT,
user_name VARCHAR(100),
phone_num BIGINT UNIQUE);

ALTER TABLE users
ADD UNIQUE(user_id); 

DESC users;

CREATE TABLE students(
std_roll_no INT PRIMARY KEY,
std_name VARCHAR(100) NOT NULL,
std_age INT);

DESC students;

ALTER TABLE students 
MODIFY address VARCHAR(400);

ALTER TABLE students 
MODIFY address VARCHAR(400) NOT NULL;

CREATE TABLE books( 
book_id INT PRIMARY KEY,
book_name VARCHAR(100));

DESC books; 

ALTER TABLE users 
ADD PRIMARY KEY (user_id);

CREATE TABLE employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(100) NOT NULL,
emp_age INT CHECK (emp_age BETWEEN 21 AND 60));

DESC employees;

ALTER TABLE employees
MODIFY emp_age INT NOT NULL;

INSERT INTO employees VALUES 
(1,"A",24),
(2,"B",23);

SELECT * FROM employees;

ALTER TABLE students
MODIFY std_age INT CHECK (std_age BETWEEN 3 AND 20);


INSERT INTO students VALUES 
(1,"rugved",13,"hyd"),
(2,"vinay",12,"mhbd");

SELECT * FROM students;