CREATE DATABASE task14;
USE task14;
CREATE TABLE employees(
id INT PRIMARY KEY ,
sno INT UNIQUE AUTO_INCREMENT,
salary DECIMAL(10,2),
address TEXT,
status BOOLEAN,
department VARCHAR(100))
AUTO_INCREMENT = 101;
 INSERT INTO employees (id,salary,address,status,department) VALUES 
(1,10000,"HYD",1,"CSE"),
(2,20000,"HYD",0,"CSE");

INSERT INTO employees (id,salary,address,status,department) VALUES 
(3,15000,"MABD",1,"CSE");

INSERT INTO employees (id,salary,address,status,department) VALUES 
(4,9000,"CHENNAI",0,"EEE"),
(5,20000,"BHOPAL",1,"AIML"),
(6,14500,"MABD",1,"ECE");

SELECT * FROM employees;





