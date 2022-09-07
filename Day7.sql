use cust;

-- SUB QUERY

CREATE TABLE student(
id INT unique,
name varchar(100) 
);


CREATE TABLE marks(
studentid INT unique,
marks INT
);

ALTER TABLE marks RENAME COLUMN marks to mark;

INSERT INTO student VALUES(100,'Ramkumar'),(101,'Balaji'),(102,'Bala'),(103,'Madhavan'),(104,'Murugan'),(105,'Siva');
SELECT * FROM student;

INSERT INTO marks VALUES(100,90),(101,95),(102,80),(103,100),(104,96),(105,76);
SELECT * FROM marks;

-- SUB QUERY
SELECT id, name 
FROM student 
WHERE id IN ( SELECT studentid
FROM marks
WHERE mark >= 90);

-- JOIN

SELECT s.id,s.name,m.mark FROM student s JOIN marks m ON s.id=m.studentid
WHERE mark>=90;

-- SUB QUERY EX2

SELECT * FROM transaction_tbl;
SELECT * FROM CUSTOMER;

-- PLEASE GET THE CUSTOMER NAME, CITY, PRODUCTNAME and AMOUNT WHOEVER SPENT 60k AND ABOVE TO PUCHASE A PRODUCT

SELECT custname, city, prodname, amount
FROM CUSTOMER c JOIN TRANSACTION_TBL t
ON c.custid=t.custid
WHERE amount>=60000;

-- DATA CONTROL LANGUAGE (GRANT , REVOKE)

-- Privilege: - SELECT , INSERT, DELETE, INDEX, CREATE, ALTER, DROP, UPDATE, GRANT, ALL

-- Granting SELECT privilege to a user for transaction_tbl

GRANT SELECT ON TRANSACTION_TBL TO 'root'@'localhost';

-- Granting more than one privilege 

GRANT SELECT, INSERT, UPDATE, DELETE ON TRANSACTION_TBL TO 'root'@'localhost';

-- Granting all privilege 

GRANT ALL ON TRANSACTION_TBL TO 'root'@'localhost';



-- Check the privileges that the user has

SHOW GRANTS FOR 'root'@'localhost';


-- REVOKING PRIVILEGES FROM A TABLE

REVOKE DELETE ON TRANSACTION_TBL FROM 'root'@'localhost';

REVOKE SELECT, INSERT, UPDATE ON TRANSACTION_TBL FROM 'root'@'localhost';

-- TYPES OF RELATIONSHIPS:
-- 	1. one - one relationship (1-1)
--     2. one - many relationship (1-M)
--     3. many - many relationship (M-M)

CREATE TABLE person(
person_id INT PRIMARY KEY,
name VARCHAR(100),
emailid VARCHAR(100)
);

CREATE TABLE AadharDetails(
aadhar_id INT primary key,
aadhar_number VARCHAR(100),
person_id INT UNIQUE ,
FOREIGN KEY (person_id) REFERENCES person(person_id)
);

INSERT INTO person VALUES(1000,'Rajesh','Rajesh@gmail.com'),(1001,'Prabha','Prabha@gmail.com'),(1002,'Ananthi','Ananthi@gmail.com');
SELECT * FROM person;

INSERT INTO AadharDetails VALUES(100,'1234 5678 1234',1000),
								(101,'9876 5432 1091', 1001),
								(102,'6546 6221 2121', 1002);
SELECT * FROM AadharDetails;
SELECT * FROM person;

SELECT person.person_id,person.name, person.emailid, AadharDetails.aadhar_number 
FROM person  JOIN AadharDetails 
ON person.person_id=AadharDetails.person_id;

-- one to many relationship

SELECT * FROM CUSTOMER;
SELECT * FROM TRANSACTION_TBL;

SELECT * FROM CUSTOMER c JOIN TRANSACTION_TBL t ON c.custid=t.custid;

-- many to many relationship:

CREATE TABLE BOOK(
book_id INT ,
book_name VARCHAR(100),
author_id INT
);

CREATE TABLE AUTHOR(
authorid INT,
author_name VARCHAR(100),
book_id INT
);

INSERT INTO BOOK VALUES(1,'Physics',100),(2,'Maths',101),(1,'Physics',101),(2,'Maths',100);
INSERT INTO AUTHOR VALUES(100,'Rajesh',1),(100,'Rajesh',2),(101,'Sankavi',1),(101,'Sankavi',2);

SELECT * FROM BOOK;
SELECT * FROM AUTHOR;

SELECT distinct book_name,author_id,author_name FROM BOOK JOIN AUTHOR ON BOOK.author_id=AUTHOR.authorid;

-- 