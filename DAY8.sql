use cust;

SELECT * FROM TRANSACTION_TBL;

-- NUMERICAL FUNCTION
SELECT * FROM TRANSACTION_TBL WHERE amount = (
SELECT max(amount) FROM transaction_tbl);

SELECT min(amount) FROM transaction_tbl;

SELECT sum(amount) FROM transaction_tbl;

SELECT avg(amount) FROM transaction_tbl;

SELECT count(*) FROM transaction_tbl;

SELECT ASIN(0.5);
SELECT acos(0.25);
SELECT atan(0.25);

SELECT LN(2);
SELECT LOG2(32);
SELECT LOG10(100);

SELECT CEIL(55.5);
SELECT FLOOR(55.5);

SELECT 10/2;
SELECT 20*2;
SELECT 100+100;

SELECT greatest(3,35,26,643,6557,2365,33);
SELECT LEAST(3,35,26,643,6557,2365,33);

SELECT PI();

SELECT ROUND(11.34321);
SELECT TRUNCATE(11.34321,2);
SELECT SQRT(100);

-- STRING functions:
-- ======================

SELECT * FROM CUSTOMER;

SELECT custname,length(custname) as no_of_character FROM customer;

SELECT CONCAT(custname,' - ' ,city) as custinfo FROM customer;

SELECT CONCAT(custid,' - ',custname,' - ', city) FROM CUSTOMER;

SELECT CONCAT_WS(' - ', custid, custname,city)  as custinfo FROM customer;

SELECT INSTR('ExcelR','R');  -- Used to find the occurance of this character in the given string

SELECT custid,upper(custname),city FROM customer;
SELECT custid,lower(custname),city FROM customer;
SELECT REVERSE(city) FROM CUSTOMER;

SELECT * FROM CUSTOMER;
SELECT REPLACE('12345EXCELR','12345','');
SELECT custid,replace(custname,' ',',') , city FROM CUSTOMER;

SELECT LEFT(custname,3) FROM CUSTOMER;
SELECT RIGHT(custname,3) FROM CUSTOMER;

SELECT custname, SUBSTR(custname,3,6) FROM CUSTOMER;

-- DATE FUNCTION

SELECT curdate();
SELECT current_timestamp();
SELECT current_time();
SELECT NOW();

SELECT DATE_ADD(curdate(),INTERVAL 30 DAY) as next_month_date ;
SELECT DATE_ADD(curdate(),INTERVAL 100 DAY) as next_month_date ;


SELECT DATE_SUB(curdate(),INTERVAL 100 DAY) as next_month_date ;

SELECT DATEDIFF('2022-08-31','2022-08-09');

SELECT DATE_FORMAT(curdate(),'%d-%c-%Y');
SELECT DATE_FORMAT(curdate(),'%d-%b-%Y');
SELECT DATE_FORMAT(curdate(),'%d-%M-%Y');

SELECT DATE_FORMAT(current_timestamp(),'%D %b %Y %H:%i %p %W') as cur_date;


