use cust;

-- SELECT * FROM CUSTOMER;

-- SELECT city,gender , count(*)
-- FROM customer
-- GROUP BY city,gender;

-- SELECT gender , count(*)
-- FROM customer
-- GROUP BY gender ;

-- CONSTRAINTS 
-- UNIQUE
-- NOT NULL
-- PRIMARY KEY
-- FOREIGN KEY
-- CHECK
-- DEFAULT

-- UNIQUE CONSTRAINTS

CREATE TABLE unique_table(
custid INT UNIQUE,
custname VARCHAR(100),
gender CHAR(1),
age INT,
city VARCHAR(20)
);

INSERT INTO unique_table VALUES(1000,'Madhavan','M',38,'Chennai');
SELECT * FROM unique_table;
INSERT INTO unique_table VALUES(1001,'Augustin','M',38,'Bangalore');
INSERT INTO unique_table VALUES(1002,'Murugan','M',38,'Bangalore');
INSERT INTO unique_table VALUES(1002,'Sheik','M',38,'Dubai');  -- Error
INSERT INTO unique_table(custname,gender,age,city) VALUES('Balaji','M',40,'Pune');
INSERT INTO unique_table(custname,gender,age,city) VALUES('Siva','M',30,'Delhi');
INSERT INTO unique_table(custname,gender,age,city) VALUES('Sindhya','F',31,'Ooty');


-- NOT NULL CONSTRAINTS
CREATE TABLE notnull_table(
custid INT NOT NULL,
custname VARCHAR(100),
gender CHAR(1),
age INT,
city VARCHAR(20)
);

INSERT INTO notnull_table VALUES(1000,'Madhavan','M',38,'Chennai');
SELECT * FROM notnull_table;
INSERT INTO notnull_table VALUES(1001,'Augustin','M',38,'Bangalore');
INSERT INTO notnull_table VALUES(1002,'Murugan','M',38,'Bangalore');
INSERT INTO notnull_table VALUES(1002,'Sheik','M',38,'Dubai');  
INSERT INTO notnull_table VALUES(1003,'Bala','M',380,'Dubai');  
INSERT INTO notnull_table(custname,gender,age,city) VALUES('Balaji','M',40,'Pune');  -- Error
INSERT INTO notnull_table(custname,gender,age,city) VALUES('Siva','M',30,'Delhi');    -- Error
INSERT INTO notnull_table(custname,gender,age,city) VALUES('Sindhya','F',31,'Ooty');  -- Error

-- CHECK CONSTRAINTS

CREATE TABLE check_table(
custid INT NOT NULL,
custname VARCHAR(100),
gender CHAR(1),
age INT CHECK (age>0 and age<=100),
city VARCHAR(20)
);


INSERT INTO check_table VALUES(1000,'Raghul','M',38,'Chennai');
SELECT * FROM check_table;
INSERT INTO check_table VALUES(1001,'Ashwin','M',101,'Chennai');  -- Error
INSERT INTO check_table VALUES(1001,'Ashwin','M',100,'Chennai');
INSERT INTO check_table VALUES(1002,'Malini','F',0,'Chennai');   -- Error

-- DEFAULT CONSTRAINTS

CREATE TABLE default_table(
custid INT UNIQUE NOT NULL,
custname VARCHAR(100),
gender CHAR(1),
age INT CHECK (age>0 and age<=100),
city VARCHAR(20) DEFAULT 'Bangalore'
);

INSERT INTO default_table VALUES(1000,'Tharani','F',30,'Trichy');
SELECT * FROM default_table;
INSERT INTO default_table VALUES(1001,'Karthick','M',35,'Mumbai');
INSERT INTO default_table(custname,gender,age,city) VALUES('Sindhya','F',31,'Ooty') ; -- ERROR - NOT NULL
INSERT INTO default_table(custid,custname,gender,age) VALUES(1002,'Sindhya','F',31);

-- PRIMARY KEY CONSTARINTS
CREATE TABLE primarykey_table(
custid INT PRIMARY KEY,    -- 1 table can have only one primary key constraints. SIMPLE and COMPOSITE primary key
custname VARCHAR(100),
gender CHAR(1),
age INT CHECK (age>0 and age<=100),
city VARCHAR(20) DEFAULT 'Bangalore'
);

INSERT INTO primarykey_table VALUES(1000,'Tharani','F',30,'Trichy');
SELECT * FROM primarykey_table;
INSERT INTO primarykey_table VALUES(1001,'Karthick','M',35,'Mumbai');
INSERT INTO primarykey_table(custname,gender,age,city) VALUES('Sindhya','F',31,'Ooty') ; -- ERROR - NOT NULL
INSERT INTO primarykey_table(custid,custname,gender,age) VALUES(1002,'Sindhya','F',31);


CREATE TABLE primarykey_table2(
custid INT ,    -- 1 table can have only one primary key constraints. SIMPLE and COMPOSITE primary key
custname VARCHAR(100),
gender CHAR(1),
age INT CHECK (age>0 and age<=100),
contact VARCHAR(100),
city VARCHAR(20) DEFAULT 'Bangalore',
CONSTRAINT pk1 PRIMARY KEY(custname,contact)
);

INSERT INTO primarykey_table2 VALUES(1000,'Tharani','F',30,'9876543210','Trichy');
SELECT * FROM primarykey_table2;
INSERT INTO primarykey_table2 VALUES(1001,'Tharani','F',30,'9876543211','Trichy');
INSERT INTO primarykey_table2 VALUES(1001,'Malini','F',30,'9876543211','Trichy');
INSERT INTO primarykey_table2 VALUES(1002,'Malini','F',31,'9876543211','Chennai');


-- FOREIGN KEY CONSTAINTS
CREATE TABLE order_fk_table(
orderId INT UNIQUE,
custid INT,
productname VARCHAR(100),
amount DECIMAL(20,2),
orderdate date,
foreign key (custid) REFERENCES primarykey_table(custid)
);

INSERT INTO order_fk_table VALUES(1,1000,'TV',75000,current_date());
SELECT * FROM order_fk_table;
INSERT INTO order_fk_table VALUES(2,1002,'MOBILE',25000,current_date());


SELECT * FROM primarykey_table;
DELETE FROM primarykey_table WHERE custid=1002;  -- error
DELETE FROM primarykey_table WHERE custid=1001;  

-- ON DELETE CASCADE
DROP TABLE order_fk_table;

CREATE TABLE order_fk_table(
orderId INT UNIQUE,
custid INT,
productname VARCHAR(100),
amount DECIMAL(20,2),
orderdate date,
foreign key (custid) REFERENCES primarykey_table(custid) ON DELETE CASCADE  -- ON UPDATE CASCADE
);


INSERT INTO order_fk_table VALUES(1,1000,'TV',75000,current_date());
SELECT * FROM order_fk_table;
INSERT INTO order_fk_table VALUES(2,1002,'MOBILE',25000,current_date());


SELECT * FROM primarykey_table;
DELETE FROM primarykey_table WHERE custid=1002;  
UPDATE primarykey_table SET custid=10000 WHERE custid=1000
