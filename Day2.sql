-- TYPES OF QUERIES

-- DDL Data Definition Language ( CREATE, ALTER, DROP, TRUNCATE)
-- DML Data Manupulation Language (INSERT, UPDATE, DELETE)
-- DCL Data Control Language (GRANT , REVOKE)
-- TCL Transaction Control Language (COMMIT, ROLLBACK)
-- DQL Data query language (SELECT)

-- CREATE DATABASE customer_database;
-- DROP DATABASE customer_database;

use cust;

CREATE TABLE IF NOT EXISTS customer(
custid INT,
custname VARCHAR(100),
gender CHAR(1),
age INT,
city VARCHAR(100),
contact VARCHAR(100)
);

-- DATA TYPES:
-- INT (0-9)
-- CHAR(n) 
-- VARCHAR(n)
-- DECIMAL(10,2)
-- DATE
-- DATETIME
-- TIME  

-- SELECT <column_names> FROM <table_name>;

SELECT  * FROM customer;

-- LOAD DATE INTO THE TABLE

INSERT INTO customer VALUES(1000,'Madhan Kumar','M',38,'Hyderabad','+91-9829384999');

SELECT * FROM customer;

INSERT INTO customer VALUES(1001,'Balamurugan','M',40,'Chennai','8939952546'),(1002,'Prabha','M',30,'Bangalore','9876543211'),
(1003,'Durga','F',25,'Pune','9897654321'),(1004,'Satya','F',30,'Delhi','9876661231');

INSERT INTO customer(custid,custname,gender,city) VALUES(1005,'Priya','F','Bangalore');

-- SELECT QUERIES

SELECT * FROM customer;

SELECT custname, city FROM customer;

SELECT city, custname, age FROM customer;

SELECT * FROM customer WHERE city='Bangalore';
select * from customer where city='Hyderabad';

SELECT * FROM customer WHERE city IN ('Bangalore','Hyderabad');
SELECT * FROM customer WHERE city NOT IN ('Bangalore','Hyderabad');
SELECT * FROM customer WHERE city != 'Hyderabad';

SELECT * FROM CUSTOMER WHERE age>30;
SELECT * FROM CUSTOMER WHERE age<=30 AND gender='F';
SELECT * FROM CUSTOMER WHERE age<=30 AND gender='F' and city!='Delhi';

SELECT * FROM CUSTOMER;

SELECT * FROM CUSTOMER WHERE city='BANGALORE' OR AGE>30;

SELECT * FROM CUSTOMER WHERE custid>=1000 AND custid<=1003 AND AGE >30;

SELECT * FROM customer WHERE CITY !='Bangalore';

-- UPDATE QUERY 

SELECT * FROM customer;

			set sql_safe_updates=0;

UPDATE customer SET age=26 WHERE custid=1005;

UPDATE customer SET contact='9998887766' WHERE custid=1005;

UPDATE CUSTOMER SET age=27,city='Kolkata',contact='9111122222' WHERE custid=1005;

SELECT * FROM customer;

