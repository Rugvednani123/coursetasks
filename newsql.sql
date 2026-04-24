create database murali;
use murali;
create table sample (
name varchar(100),
roll_no int,
age int);
select * from sample;
show tables;
insert into sample(name,roll_no,age)
values("rugved",1,20),
("murali",2,21),
("vinay",3,20);

CREATE DATABASE Petrolpump;
USE Petrolpump;
CREATE TABLE Fuels(
fuelname VARCHAR(20) NOT NULL,
fuelid INT PRIMARY KEY,
density DECIMAL (5,2)
);
CREATE TABLE Fuelprice(
petrolprice DECIMAL(5,2),
dieselprice DECIMAL(5,2),
powerpetrolprice DECIMAL(5,2)
);
ALTER TABLE Fuelprice ADD cal_date date;
ALTER TABLE Fuelprice DROP COLUMN petrolprice,
DROP COLUMN dieselprice,
DROP COLUMN powerpetrolprice;
ALTER TABLE Fuelprice ADD COLUMN fuelid INT,
ADD COLUMN price_per_liter DECIMAL(5,2);
ALTER TABLE Fuelprice ADD PRIMARY KEY (fuelid,cal_date);
ALTER TABLE Fuelprice ADD FOREIGN KEY (fuelid) REFERENCES Fuels(fuelid);
DESC Fuelprice;
CREATE TABLE Employees(
name VARCHAR(100) NOT NULL,
employeeid INT PRIMARY KEY,
salary  INT,
days_of_working_permonth INT
);
ALTER TABLE EmplOyees MODIFY COLUMN salary DECIMAL(10,2);
DESC Fuelsales;
CREATE TABLE Fuelsales(
cal_date date,
petrolsale DECIMAL(9,2),
dieselsale DECIMAL(5,2),
powersale DECIMAL(5,2),
totalsale DECIMAL(9,2),
petrol_s_liters DECIMAL(9,3),
diesel_s_liters DECIMAL(9,3),
power_s_liters DECIMAL(9,3),
total_li_sale DECIMAL(9,3)
);
ALTER TABLE Fuelsales DROP COLUMN petrolsale,
DROP COLUMN dieselsale,
DROP COLUMN powersale,
DROP COLUMN petrol_s_liters,
DROP COLUMN diesel_s_liters,
DROP COLUMN power_s_liters,
DROP COLUMN total_li_sale;
ALTER TABLE Fuelsales ADD COLUMN saleid INT FIRST,
ADD COLUMN fuelid INT AFTER cal_date,
ADD COLUMN liters_sold DECIMAL(9,3) AFTER fuelid;
ALTER TABLE Fuelsales ADD PRIMARY KEY (saleid,fuelid);
ALTER TABLE Fuelsales ADD FOREIGN KEY (fuelid) REFERENCES Fuels(fuelid); 
ALTER TABLE Fuelsales ADD FOREIGN KEY (saleid) REFERENCES DailySales(saleid);
DESC Fuelsales;

CREATE TABLE DailySales (
    saleid INT PRIMARY KEY AUTO_INCREMENT,
    cal_date DATE UNIQUE
) AUTO_INCREMENT = 101;
Drop table DailySales;
CREATE TABLE Calender(
cal_date date,
Month_num INT,
month_name VARCHAR(20),
year YEAR,
weekday_num INT,
weekday_name VARCHAR(20)
);
CREATE TABLE FuelStock (
    stockid INT PRIMARY KEY AUTO_INCREMENT,
    fuelid INT,
    cal_date DATE,
    opening_stock DECIMAL(12,3),
    fuel_received DECIMAL(12,3),
    fuel_sold DECIMAL(12,3),
    closing_stock DECIMAL(12,3),
    FOREIGN KEY (fuelid) REFERENCES Fuels(fuelid)
);
DROP TABLE Fuelprice;
SHOW TABLES;
DESC Calender;
DESC Employees;
DESC Fuelprice;
DESC Fuels;
DESC Fuelsales;
DESC DailySales;
DESC FuelStock;
