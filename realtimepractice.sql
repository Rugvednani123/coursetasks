CREATE DATABASE EcommerceDB;
USE EcommerceDB;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO Customers VALUES
(1, 'Ravi', 'Hyderabad', '2023-01-10'),
(2, 'Anjali', 'Delhi', '2023-03-15'),
(3, 'Kiran', 'Mumbai', '2023-05-20'),
(4, 'Sneha', 'Chennai', '2023-06-01');

INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 60000),
(102, 'Phone', 'Electronics', 30000),
(103, 'Shoes', 'Fashion', 2000),
(104, 'Watch', 'Accessories', 5000);

INSERT INTO Orders VALUES
(1001, 1, '2024-01-01', 62000),
(1002, 2, '2024-01-05', 30000),
(1003, 1, '2024-02-10', 2000), #4000
(1004, 3, '2024-02-15', 5000);#15000

INSERT INTO Order_Details VALUES
(1, 1001, 101, 1),
(2, 1001, 103, 1),
(3, 1002, 102, 1),
(4, 1003, 103, 2),
(5, 1004, 104, 3);
 
INSERT INTO Customers VALUES
(5, 'Murali', 'Hyderabad', '2023-05-11'),
(6, 'Vinay', 'Chennai', '2023-07-10');

INSERT INTO Orders VALUES
(1005, 4, '2024-02-05', 90000),
(1006, 5, '2024-02-05', 5000),
(1007, 6, '2024-09-20', 2000);

INSERT INTO Order_Details VALUES
(6, 1005, 101, 1),
(7, 1005, 102, 1),
(8, 1006, 104, 1),
(9, 1007, 103, 1);		
		

UPDATE Orders
SET total_amount = CASE
    WHEN order_id = 1003 THEN 4000
    WHEN order_id = 1004 THEN 15000
END
WHERE order_id IN (1003, 1004);


