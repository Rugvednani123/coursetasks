# product_id 
# Product_name 
# price 
# discount  
# stock_quantity 
#emp_id 
# name 
# monthly_salary  
# bonus_percent 
CREATE DATABASE Ecommerce;
USE Ecommerce;
CREATE TABLE Products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
price DECIMAL(7,2),
discount INT,
stock_quality INT
);

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
montly_salary DECIMAL(7,2),
bonus_percent INT
);
INSERT INTO Products (product_id, product_name, price, discount, stock_quality) VALUES
(101, 'Laptop', 55000.00, 10, 50),
(102, 'Smartphone', 25000.00, 5, 120),
(103, 'Headphones', 2000.00, 15, 200),
(104, 'Keyboard', 1500.00, 8, 80),
(105, 'Mouse', 800.00, 12, 150),
(106, 'Monitor', 12000.00, 7, 60),
(107, 'Printer', 9000.00, 10, 40),
(108, 'Tablet', 18000.00, 6, 70),
(109, 'Power Bank', 1200.00, 20, 180),
(110, 'Smart Watch', 5000.00, 9, 90),
(111, 'Speaker', 3000.00, 14, 110),
(112, 'External HDD', 6500.00, 11, 75),
(113, 'USB Drive', 600.00, 25, 250),
(114, 'Webcam', 2200.00, 13, 95),
(115, 'Router', 3500.00, 10, 85);
INSERT INTO Products (product_id, product_name, price, discount, stock_quality) VALUES
(116, 'cable', 500.00, 5, 200);
INSERT INTO Employees (emp_id, name, montly_salary, bonus_percent) VALUES
(1, 'Ravi Kumar', 30000.00, 10),
(2, 'Suresh Reddy', 35000.00, 12),
(3, 'Anita Sharma', 40000.00, 15),
(4, 'Priya Singh', 32000.00, 8),
(5, 'Rahul Verma', 45000.00, 20),
(6, 'Kiran Patel', 28000.00, 7),
(7, 'Neha Gupta', 37000.00, 10),
(8, 'Amit Joshi', 39000.00, 11),
(9, 'Pooja Mehta', 31000.00, 9),
(10, 'Arjun Nair', 42000.00, 14),
(11, 'Sneha Iyer', 36000.00, 13),
(12, 'Vikram Rao', 47000.00, 18);

SELECT product_id ,product_name,(price*stock_quality) AS total_stock_value FROM Products;
SELECT product_name,(price-5) AS after_discount FROM Products;
SELECT product_id,product_name,(price*1.10) AS incresation_price FROM Products;
SELECT emp_id,name,(montly_salary*12) AS annual_salary FROM Employees;
SELECT emp_id,name, ROUND((montly_salary * bonus_percent) / 100) AS bonus_salary FROM Employees;

#Comparison Operators

SELECT product_name ,price FROM Products WHERE price = 500;
SELECT product_name,stock_quality FROM Products WHERE stock_quality < 100;
SELECT product_name,price FROM Products WHERE price > 1000;
SELECT product_name,price FROM Products WHERE price <=2000;
SELECT product_name,price FROM Products WHERE price >=2000;
SELECT product_id,product_name FROM Products WHERE NOT product_name = "Speaker";

CREATE TABLE Emp_s (
    name VARCHAR(50),
    salary DECIMAL(10,2),
    department VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO Emp_s (name, salary, department, city) VALUES
('Ravi', 45000, 'HR', 'Hyderabad'),
('Anjali', 60000, 'IT', 'Bangalore'),
('Kiran', 55000, 'Finance', 'Mumbai'),
('Sneha', 70000, 'IT', 'Chennai'),
('Arjun', 50000, 'HR', 'Delhi'),
('Pooja', 65000, 'Marketing', 'Pune'),
('Rahul', 48000, 'Finance', 'Kolkata'),
('Neha', 72000, 'IT', 'Hyderabad'),
('Vikram', 53000, 'Marketing', 'Bangalore'),
('Divya', 58000, 'HR', 'Chennai');

#Logical Operators
SELECT * FROM Emp_s WHERE department = "Finance" AND salary > 40000;
SELECT * FROM Emp_s WHERE city = "Hyderabad" OR salary > 60000;
SELECT * FROM Emp_s WHERE NOT department = "Finance";

CREATE TABLE Students (
    name VARCHAR(50),
    city VARCHAR(50),
    marks INT,
    email VARCHAR(100)
);
INSERT INTO Students (name, city, marks, email) VALUES
('Amit', 'Hyderabad', 85, 'amit@gmail.com'),
('Priya', 'Bangalore', 92, 'priya@gmail.com'),
('Rahul', 'Mumbai', 76, 'rahul@gmail.com'),
('Sneha', 'Chennai', 88, 'sneha@gmail.com'),
('Kiran', 'Delhi', 69, 'kiran@gmail.com'),
('Neha', 'Pune', 95, 'neha@gmail.com'),
('Arjun', 'Kolkata', 81, 'arjun@gmail.com'),
('Divya', 'Hyderabad', 73, 'divya@gmail.com'),
('Rohit', 'Bangalore', 66, 'rohit@gmail.com'),
('Pooja', 'Chennai', 90, 'pooja@gmail.com');
INSERT INTO Students (name, city, marks, email) VALUES
('Suresh', 'Hyderabad', 78, NULL);

SELECT * FROM Students WHERE city IN ("Hyderabad","Chennai","Bangalore");
SELECT * FROM Students WHERE city NOT IN ("Delhi","Chennai");
SELECT * FROM Students WHERE email is Null;
SELECT * FROM Students WHERE email is NOT Null;
SELECT * FROM Students WHERE name LIKE "S%";
SELECT * FROM Students WHERE name LIKE "%a";
SELECT * FROM Students WHERE name LIKE "____";
SELECT * FROM Students WHERE name NOT LIKE "R%";