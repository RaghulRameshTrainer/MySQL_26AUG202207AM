use cust;

-- AUTO INCREMENT

CREATE TABLE autoincr_table(
orderId INT UNIQUE AUTO_INCREMENT,
productname VARCHAR(100),
amount INT
);

INSERT INTO autoincr_table(productname,amount) VALUES('Mobile',25000);
SELECT * FROM autoincr_table;
INSERT INTO autoincr_table(productname,amount) VALUES('Laptop',75000);
INSERT INTO autoincr_table VALUES(100,'TV',65000);
INSERT INTO autoincr_table(productname,amount) VALUES('Fridge',60000);

-- ALTER TABLE

DESCRIBE TABLE customer;
DESC customer;
DESC primarykey_table;
SHOW CREATE TABLE CUSTOMER;


-- Add a column
SELECT * FROM CUSTOMER;
ALTER TABLE CUSTOMER ADD COLUMN COUNTRY VARCHAR(100);
SELECT * FROM CUSTOMER;

set sql_safe_updates=0;

UPDATE CUSTOMER SET COUNTRY='INDIA' ;

-- Removing/Drop a colum
ALTER TABLE customer DROP COLUMN country;

SELECT * FROM CUSTOMER;

DESC CUSTOMER;

-- Modify the column
ALTER TABLE CUSTOMER MODIFY COLUMN city VARCHAR(25);
DESC CUSTOMER;
ALTER TABLE CUSTOMER MODIFY COLUMN custid INT UNIQUE;
DESC CUSTOMER;
ALTER TABLE CUSTOMER ADD CONSTRAINT pk_custid PRIMARY KEY (custid);
DESC CUSTOMER;

-- rename the column and table name
ALTER TABLE customer RENAME COLUMN city TO location;
DESC CUSTOMER;

RENAME TABLE customer TO new_customer;
SELECT * FROM NEW_CUSTOMER;

-- Add a column
SELECT * FROM NEW_CUSTOMER;
ALTER TABLE NEW_CUSTOMER ADD COLUMN COUNTRY VARCHAR(100) default 'INDIA';
SELECT * FROM NEW_CUSTOMER;

-- Renaming the database
-- ALTER DATABASE cust MODIFY NAME=custdb;


-- JOINS IN SQL

-- INNER JOIN
-- OUTER JOIN
-- 	LEFT OUTER JOIN / LEFT JOIN
--     RIGHT OUTER JOIN / RIGHT JOIN
--     CROSS JOIN / FULL OUTER JOIN

CREATE TABLE CUSTOMER(
custid INT UNIQUE,
custname VARCHAR(100),
city VARCHAR(100)
);

INSERT INTO CUSTOMER VALUES(1000,'Raghul Ramesh','Chennai');
INSERT INTO CUSTOMER VALUES(1001,'SivaMurugan','Bangalore');
INSERT INTO CUSTOMER VALUES(1002,'Venkatesh Babu','Hyderabad');
INSERT INTO CUSTOMER VALUES(1003,'Chandra','Pune');
INSERT INTO CUSTOMER VALUES(1004,'Aveek','Delhi');
INSERT INTO CUSTOMER VALUES(1005,'Rajini','Bangalore');

SELECT * FROM CUSTOMER;

CREATE TABLE TRANSACATION_TBL(
transid INT PRIMARY KEY,
custid INT,
prodname VARCHAR(100),
amount INT
);

ALTER TABLE TRANSACATION_TBL RENAME TO TRANSACTION_TBL;


INSERT INTO TRANSACTION_TBL VALUES(1,1000,'Mobile',50000);
INSERT INTO TRANSACTION_TBL VALUES(2,1000,'Laptop',70000);
INSERT INTO TRANSACTION_TBL VALUES(3,1001,'TV',65000);
INSERT INTO TRANSACTION_TBL VALUES(4,1002,'Fridge',50000);
INSERT INTO TRANSACTION_TBL VALUES(5,1003,'WashingMachine',55000);
INSERT INTO TRANSACTION_TBL VALUES(6,1002,'Desktop',60000);
INSERT INTO TRANSACTION_TBL VALUES(7,1000,'Charger',3000);
INSERT INTO TRANSACTION_TBL VALUES(8,1004,'Toys',2000);
INSERT INTO TRANSACTION_TBL VALUES(9,1002,'Snacks',1000);
INSERT INTO TRANSACTION_TBL VALUES(10,1001,'Laptop',220000);
INSERT INTO TRANSACTION_TBL VALUES(11,1100,'Chairs',5000);

SELECT * FROM TRANSACTION_TBL;

-- INNER JOIN

SELECT * FROM CUSTOMER c INNER JOIN TRANSACTION_TBL t ON c.custid=t.custid;
SELECT * FROM CUSTOMER c  JOIN TRANSACTION_TBL t ON c.custid=t.custid;

-- LEFT JOIN

SELECT * FROM CUSTOMER c LEFT JOIN TRANSACTION_TBL t ON c.custid=t.custid;

-- RIGHT JOIN

SELECT * FROM CUSTOMER c RIGHT JOIN TRANSACTION_TBL t ON c.custid=t.custid;

-- CROSS JOIN

SELECT * FROM CUSTOMER c CROSS JOIN TRANSACTION_TBL t;

-- ######################################################################################

-- VIEW (Virtual Table)

CREATE VIEW cust_view AS
SELECT custname FROM CUSTOMER;-- WHERE city NOT IN ('Delhi','Bangalore');

SELECT * FROM cust_view;

SELECT * FROM transaction_tbl;

CREATE VIEW cust_trans AS
SELECT custid, prodname FROM transaction_tbl;

SELECT * FROM cust_trans;

SELECT * FROM transaction_tbl;
INSERT INTO transaction_tbl VALUES(12,1001,'Cycle',25000);

-- ######################################################################################
-- INDEX

CREATE INDEX trans_idx ON transaction_tbl(transid);

SHOW INDEXES FROM transaction_tbl;

SELECT * FROM transaction_tbl;
CREATE INDEX trans_tbl_idx ON transaction_tbl(transid,custid,prodname);
CREATE INDEX trans_cust_idx ON transaction_tbl(transid,custid);

SELECT * FROM transaction_tbl WHERE transid=10;
SELECT * FROM transaction_tbl WHERE transid>5 and custid=1001 and prodname='Cycle';