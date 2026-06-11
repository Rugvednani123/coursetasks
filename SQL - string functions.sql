CREATE DATABASE task18;
use task18;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    customer_name VARCHAR(100),
    email VARCHAR(100),
    country VARCHAR(50),
    phone VARCHAR(20),
    account_code VARCHAR(20),
    product_name VARCHAR(100),
    order_code VARCHAR(20),
    date_string VARCHAR(8)
);

INSERT INTO customers VALUES
(101,'Ravi','Kumar','  Ravi Kumar  ','Ravi@gmail.com','India',
'9876543210','000123','Laptop Pro','ORD-2024-00842','20240115'),

(102,'Sneha','Reddy',' Sneha Reddy ','SNEHA@YAHOO.COM','INDIA',
'987654321','000456','Mouse','ORD-2023-00125','20231220'),

(103,'Kiran','Patel','Kiran Patel  ','kiran@company.com','india',
'98765432101','001789','Gaming Keyboard','ORD-2024-00456','20240510'),

(104,'Anjali','Sharma','  Anjali Sharma','anjali@gmail.com','USA',
'9123456789','000999','Office Chair','ORD-2022-00789','20221125'),

(105,'Teja','Rao','Teja Rao','TEJA@OUTLOOK.COM','India',
'9988776655','000111','Smartphone Ultra Max','ORD-2024-00234','20240630');

INSERT INTO customers VALUES
(106,'Varun','Gupta','  Varun Gupta  ','VARUN@GMAIL.COM','India',
'9876501234','000222','Tablet','ORD-2025-00111','20250105'),

(107,'Priya','Singh',' Priya Singh ','priya@yahoo.com','Canada',
'9988774455','000333','Wireless Mouse','ORD-2024-00567','20240318'),

(108,'Suresh','Verma','Suresh Verma  ','SURESH@COMPANY.COM','INDIA',
'9876541111','000444','Mechanical Keyboard','ORD-2023-00999','20230922'),

(109,'Aman','Shah','  Aman Shah','aman@gmail.com','Australia',
'9123451234','000555','Monitor','ORD-2024-00888','20240714'),

(110,'Pooja','Nair','Pooja Nair','POOJA@OUTLOOK.COM','india',
'9988123456','000666','Printer','ORD-2025-00222','20250210'),

(111,'Rahul','Mehta',' Rahul Mehta ','rahul@company.com','India',
'9876545678','000777','Scanner','ORD-2024-00333','20240425'),

(112,'Deepak','Jain','Deepak Jain  ','DEEPAK@GMAIL.COM','USA',
'9988770000','000888','Laptop Air','ORD-2023-00777','20231111'),

(113,'Neha','Kapoor','  Neha Kapoor  ','neha@yahoo.com','india',
'9876549999','000999','Smart Watch','ORD-2024-00666','20240820'),

(114,'Arjun','Reddy','Arjun Reddy','ARJUN@HOTMAIL.COM','UK',
'9123409876','001000','Bluetooth Speaker','ORD-2025-00444','20250515'),

(115,'Kavya','Iyer',' Kavya Iyer ','kavya@gmail.com','India',
'9988771111','001111','Gaming Laptop','ORD-2024-00123','20240101');


SELECT * FROM customers;


SELECT UPPER(email) FROM customers;

SELECT customer_name,country FROM customers WHERE lower(country) = "India";
desc customers;
SELECT substring(order_code,5,4) ,order_code AS order_year FROM customers WHERE substring(order_code,5,4) = "2024";

SELECT email,substring(email,position('@'in email)+1) as domain from customers; 

SELECT email,substring(email,instr(email,'@')+1) as domain from customers; 

SELECT SUBSTRING(date_string,1,4) AS year ,SUBSTRING(date_string,5,2) AS month , SUBSTRING(date_string,7,2) AS day FROM customers;

SELECT trim(customer_name) FROM customers;

SELECT trim(leading"0"from account_code) from customers;

SELECT trim(trailing "0" from account_code) from customers;

SELECT phone FROM customers WHERE length(phone) != 10;

SELECT product_name,length(product_name) AS len_product ,
CASE
WHEN length(product_name) < 10 THEN "short"
WHEN length(product_name) BETWEEN 10 AND 30 THEN 'medium'
ELSE "long"
END AS category
FROM customers;

SELECT concat(first_name," ",last_name) AS cust_name FROM customers;

SELECT concat(first_name,last_name,"@company.com") AS comp_mail FROM customers;

SELECT position('@' in email) AS position_email , SUBSTRING(email,position("@" in email)+1) AS domain FROM customers;

SELECT email,
CASE
WHEN INSTR(email,"@") > 0 THEN 'VALID'
ELSE "INVAILD" 
END AS email_status
FROM customers;



