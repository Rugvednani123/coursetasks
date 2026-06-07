CREATE DATABASE Project1;
use Project1;
SELECT * FROM customers;

SELECT full_name,UPPER(full_name) FROM customers;
SELECT full_name ,TRIM(full_name) FROM customers;

UPDATE customers SET full_name = UPPER(full_name);

SET SQL_SAFE_UPDATES = 0;

UPDATE customers SET full_name = TRIM(full_name) WHERE customer_id;

SELECT email,LOWER(email) FROM customers;

UPDATE customers SET email = TRIM(LOWER(email));

UPDATE customers SET city = UPPER(TRIM(city));

SELECT * FROM customers;

SELECT email, COUNT(*)
FROM customers
GROUP BY email
HAVING COUNT(*) > 1;

SELECT full_name, COUNT(*)
FROM customers
GROUP BY full_name
HAVING COUNT(*) > 1;

SELECT full_name, phone_num, COUNT(*)
FROM customers
GROUP BY full_name, phone_num
HAVING COUNT(*) > 1;

UPDATE customers SET phone = REPLACE(phone, '-', '');

UPDATE customer SET phone = REPLACE(phone, ' ', '');

SELECT *FROM customers WHERE NOT LENGTH(phone) = 10;

SELECT *FROM customers WHERE email NOT LIKE '%@gmail.com';

SELECT * FROM customers WHERE email NOT LIKE '%@gmail.com' AND email NOT LIKE '%@mail.com'AND email NOT LIKE '%@yahoo.com' AND email NOT LIKE '%@outlook.com';
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE customers RENAME COLUMN phone TO phone_num;
ALTER TABLE customers RENAME COLUMN username TO user_name;

SELECT * FROM customers;
