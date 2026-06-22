CREATE DATABASE task21;
use task21;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO employees
(emp_id, emp_name, department, salary)
VALUES
(101,'Ravi','IT',50000),
(102,'Sneha','HR',45000),
(103,'Kiran','Finance',60000);

SELECT * FROM employees;

Delimiter $$
CREATE TRIGGER trg_update_timestamp
BEFORE UPDATE
ON employees
FOR EACH ROW
BEGIN
SET	NEW.updated_at = CURRENT_TIMESTAMP;
END $$
DELIMITER ;

UPDATE employees
SET salary = 55000
WHERE emp_id = 101;


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    product_code VARCHAR(20),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(1,'Laptop','LP101',65000),
(2,'Mouse','MS102',500),
(3,'Keyboard','KB103',1200);

DELIMITER $$

CREATE TRIGGER trg_no_duplicate_products
BEFORE INSERT
ON products
FOR EACH ROW
BEGIN

    IF EXISTS (
        SELECT 1
        FROM products
        WHERE product_name = NEW.product_name
        AND product_code = NEW.product_code
    )
    THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT =
        'Duplicate Product Name and Product Code Not Allowed';
    END IF;

END$$

DELIMITER ;


INSERT INTO products
VALUES
(4,'Monitor','MN104',12000);

INSERT INTO products
VALUES
(5,'Laptop','LP101',70000);


DELIMITER $$
CREATE TRIGGER defualt_salary
BEFORE INSERT
ON employees
FOR EACH ROW
BEGIN
IF NEW.salary IS NULL THEN
SET NEW.salary = 20000;
END IF;
END $$
DELIMITER ;

INSERT INTO employees
(emp_id,emp_name,department)
VALUES
(104,'Teja','IT');