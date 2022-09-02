use cust;
SELECT * FROM customer;

SELECT * FROM customer WHERE age > 3;

SELECT * FROM CUSTOMER WHERE age <= 30;

-- DELETE QUERY

DELETE FROM customer WHERE age > 30;
SELECT * FROM CUSTOMER;
SELECT * FROM CUSTOMER WHERE age < 30 and city='Kolkata';
DELETE FROM CUSTOMER WHERE age < 30 and city='Kolkata';
DELETE FROM CUSTOMER;
SELECT * FROM CUSTOMER;

-- TRANSACTION CONTROL LANGUAGE ( START TRANSACTION, COMMIT, ROLLBACK)
INSERT INTO customer VALUES(1000,'Madhan Kumar','M',38,'Hyderabad','+91-9829384999');

INSERT INTO customer VALUES(1001,'Balamurugan','M',40,'Chennai','8939952546'),(1002,'Prabha','M',30,'Bangalore','9876543211'),
(1003,'Durga','F',25,'Pune','9897654321'),(1004,'Satya','F',30,'Delhi','9876661231');

INSERT INTO customer(custid,custname,gender,city) VALUES(1005,'Priya','F','Bangalore');

SELECT * FROM customer;


start transaction;  -- commit, rollback
SELECT * FROM CUSTOMER;
DELETE FROM customer WHERE city!='Delhi';
rollback;


start transaction;  -- commit, rollback
SELECT * FROM CUSTOMER;
DELETE FROM customer WHERE city='Delhi';
commit;

-- CREATE TABLE , INSERT, UPDATE, DELETE , SELECT 

-- DELETE vs DROP vs TRUNCATE

SELECT * FROM CUSTOMER;
-- DELETE
START TRANSACTION;
DELETE FROM CUSTOMER;
SELECT * FROM CUSTOMER;
ROLLBACK;

-- TRUNCATE
START TRANSACTION;
TRUNCATE TABLE CUSTOMER;
ROLLBACK;

-- RELOADING THE DATE FOR DROP 
INSERT INTO customer VALUES(1000,'Madhan Kumar','M',38,'Hyderabad','+91-9829384999');

INSERT INTO customer VALUES(1001,'Balamurugan','M',40,'Chennai','8939952546'),(1002,'Prabha','M',30,'Bangalore','9876543211'),
(1003,'Durga','F',25,'Pune','9897654321'),(1004,'Satya','F',30,'Delhi','9876661231');

INSERT INTO customer(custid,custname,gender,city) VALUES(1005,'Priya','F','Bangalore');

-- DROP
SELECT * FROM CUSTOMER;

START TRANSACTION;
DROP TABLE CUSTOMER;
ROLLBACK;


-- COMMIT & ROLLBACK

CREATE TABLE IF NOT EXISTS customer(
custid INT,
custname VARCHAR(100),
gender CHAR(1),
age INT,
city VARCHAR(100),
contact VARCHAR(100)
);

INSERT INTO customer VALUES(1000,'Madhan Kumar','M',38,'Hyderabad','+91-9829384999');

INSERT INTO customer VALUES(1001,'Balamurugan','M',40,'Chennai','8939952546'),(1002,'Prabha','M',30,'Bangalore','9876543211'),
(1003,'Durga','F',25,'Pune','9897654321'),(1004,'Satya','F',30,'Delhi','9876661231');

INSERT INTO customer(custid,custname,gender,city) VALUES(1005,'Priya','F','Bangalore');

SELECT * FROM CUSTOMER;

START TRANSACTION;

DELETE FROM CUSTOMER WHERE city NOT IN ('Chennai','Bangalore');
COMMIT;


-- GROUP BY , HAVING, ORDER BY 

SELECT * FROM CUSTOMER;

INSERT INTO customer VALUES(1006,'Augustin','M',38,'Hyderabad','+91-9829384666');

INSERT INTO customer VALUES(1007,'Madhavan','M',40,'Chennai','8939952667'),(1008,'Balaji','M',30,'Bangalore','9876543668'),
(1009,'Sindya','F',25,'Pune','9897654669'),(1010,'Saranya','F',30,'Delhi','9876661670');

INSERT INTO customer(custid,custname,gender,city) VALUES(1011,'Reena','F','Bangalore');

SELECT * FROM CUSTOMER ORDER BY age ;
SELECT * FROM CUSTOMER ORDER BY age DESC;

SELECT * FROM CUSTOMER ORDER BY CITY ASC;
SELECT * FROM CUSTOMER ORDER BY CITY DESC;

SELECT COUNT(*) FROM CUSTOMER;

SELECT gender, count(*) FROM CUSTOMER
GROUP BY gender;

SELECT city, count(*) from customer
group by city;

SELECT city , gender, count(*) FROM customer
group by  city , gender;

SELECT city, max(age), min(age) FROM customer
group by city;

SELECT * FROM CUSTOMER;

SELECT gender, sum(age) FROM customer
GROUP BY gender;

-- HAVING

SELECT * FROM CUSTOMER;

SELECT CITY, COUNT(*) 
FROM CUSTOMER
WHERE age is NOT NULL
GROUP BY CITY
HAVING COUNT(*)>=2
ORDER BY CITY;