use cust;

SELECT * FROM CUSTOMER;
INSERT INTO CUSTOMER(custid,city) VALUES(1006,'Cochin');
INSERT INTO CUSTOMER(custid,city) VALUES(1007,'Kolkatta');

SELECT custid, coalesce(custname,"***MISSING***"), city FROM CUSTOMER;
SELECT custid,IFNULL(custname,"**************") as custname, city from CUSTOMER;

SELECT CURRENT_USER();

SELECT DATABASE();

SELECT transid,custid,prodname,amount, IF(amount>=50000,"HIGH","LESS") as category FROM transaction_tbl;

-- x=10
-- y=20
-- z=30
-- SELECT COALESCE(@x,@y,@z);

SELECT COALESCE(NULL,NULL,'INDIA') ;
SELECT IFNULL(NULL,NULL);

-- LIKE CLAUSE

SELECT * FROM TRANSACTION_TBL;

SELECT * FROM TRANSACTION_TBL WHERE prodname LIKE 'C%';
SELECT * FROM TRANSACTION_TBL WHERE prodname LIKE '%p';
SELECT * FROM TRANSACTION_TBL WHERE prodname LIKE '%r%';
SELECT  * FROM TRANSACTION_TBL WHERE amount LIKE '_0000';

SELECT * FROM transaction_tbl WHERE amount LIKE '5_00';


-- BETWEEN

SELECT * FROM TRANSACTION_TBL;

SELECT * FROM transaction_tbl WHERE amount >= 50000 AND amount <=70000;
SELECT * FROM  transaction_tbl WHERE amount between 50000 AND 70000;

-- LIMIT

SELECT * FROM transaction_tbl LIMIT 5;
SELECT * FROM transaction_tbl LIMIT 3;
SELECT * FROM transaction_tbl order by amount desc limit 3;

-- DIFF B/W BETWEEN and IN

SELECT * FROM transaction_tbl;

SELECT * FROM TRANSACTION_TBL WHERE AMOUNT BETWEEN 0 AND 50000;

SELECT * FROM TRANSACTION_TBL WHERE AMOUNT IN (0,1000,2000,3000,50000);


-- ORDER BY

SELECT * FROM TRANSACTION_TBL ORDER BY AMOUNT LIMIT 3;
SELECT * FROM TRANSACTION_TBL ORDER BY AMOUNT DESC LIMIT 5;

-- UNION and UNION ALL
SELECT * FROM CUSTOMER WHERE city='Chennai'
UNION 
SELECT * FROM CUSTOMER WHERE city='Bangalore';

SELECT * FROM CUSTOMER
UNION ALL
SELECT * FROM CUSTOMER;

-- EXISTS
SELECT * FROM CUSTOMER;
SELECT * FROM transaction_tbl;

SELECT * FROM CUSTOMER WHERE custid IN
(SELECT custid FROM transaction_tbl WHERE amount > 50000);

SELECT custname FROM CUSTOMER WHERE EXISTS
(SELECT * FROM transaction_tbl WHERE amount = 1000);

-- CTAS
CREATE TABLE VALID_CUSTOMER AS
SELECT * FROM CUSTOMER WHERE CUSTNAME IS NOT NULL;

SELECT * FROM VALID_CUSTOMER;

-- INSERT SELECT 
TRUNCATE TABLE VALID_CUSTOMER;
SELECT * FROM VALID_CUSTOMER;

INSERT INTO VALID_CUSTOMER
SELECT * FROM CUSTOMER WHERE CUSTNAME IS NOT NULL;

SELECT * FROM VALID_CUSTOMER;

-- CASE STATEMENT
SELECT * FROM TRANSACTION_TBL;   
-- 0-10000 => min transaction
-- 10000-50000 -> avg transaction
-- 50000-100000- -> high transaction
-- >100000  --> super transaction

-- CASE
-- 	WHEN <condition> THEN <value1>
--     WHEN <condition2> THEN <value2>
--     WHEN <condition3> THEN <value3>
--     ELSE <valuen>
--     END <column_name>

SELECT *, CASE
WHEN amount BETWEEN 0 AND 10000 THEN "MINIMUM TRANSACTION"
WHEN amount>10000 AND amount <=50000 THEN "AVERAGE TRANSACTION"
WHEN amount>50000 AND amount<100000 THEN "HIGH TRANSACTION"
WHEN amount>=100000 THEN "SUPER TRANSACTION"
END AS trans_Category
FROM TRANSACTION_TBL; 

SELECT *, CASE
WHEN amount BETWEEN 0 AND 10000 THEN "MINIMUM TRANSACTION"
WHEN amount>10000 AND amount <=50000 THEN "AVERAGE TRANSACTION"
WHEN amount>50000 AND amount<100000 THEN "HIGH TRANSACTION"
ELSE  "SUPER TRANSACTION"
END AS trans_Category
FROM TRANSACTION_TBL; 

SELECT *, CASE
WHEN amount BETWEEN 0 AND 10000 THEN 1
WHEN amount>10000 AND amount <=50000 THEN 2
WHEN amount>50000 AND amount<100000 THEN 3
WHEN amount>=100000 THEN 4
END AS cust_rating
FROM TRANSACTION_TBL; 

SELECT *, CASE
WHEN amount BETWEEN 0 AND 10000 THEN 0.9*amount                        -- 10%
WHEN amount>10000 AND amount <=50000 THEN 0.8*amount                        -- 20#
WHEN amount>50000 AND amount<100000 THEN 0.7*amount                           -- 30%
WHEN amount>=100000 THEN 0.5*amount                                              -- 50%
END AS billable_amount
FROM TRANSACTION_TBL;

CREATE TABLE TRANSACTION_TBL_1 AS
SELECT * FROM transaction_tbl;

SELECT * FROM TRANSACTION_TBL_1;

SET sql_safe_updates=0;

UPDATE TRANSACTION_TBL_1 SET amount =  CASE
WHEN amount BETWEEN 0 AND 10000 THEN 0.9*amount                        -- 10%
WHEN amount>10000 AND amount <=50000 THEN 0.8*amount                        -- 20#
WHEN amount>50000 AND amount<100000 THEN 0.7*amount                           -- 30%
WHEN amount>=100000 THEN 0.5*amount                                              -- 50%
END;                                         

SELECT * FROM TRANSACTION_TBL_1;
