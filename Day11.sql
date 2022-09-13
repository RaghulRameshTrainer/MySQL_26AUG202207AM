REM   Script: 26Aug2022PLSQL2
REM   26Aug2022PLSQL2

DECLARE 
    TYPE namearray IS VARRAY(5) OF VARCHAR2(100); 
    TYPE markarray IS VARRAY(5) OF INTEGER; 
    names namearray; 
    mark markarray; 
    total INTEGER; 
BEGIN 
    names := namearray('Ramesh','Kamal','Ezhil','Meena','Prabha'); 
    mark := markarray(90,95,80,85,75); 
    total := names.count; 
     
    dbms_output.put_line('Total number of students :' || total); 
     
    FOR i in 1 .. total LOOP 
        dbms_output.put_line('Student : '|| names(i) || ' Mark: '|| mark(i)); 
    END LOOP; 
END; 
/

CREATE TABLE CUSTOMER( 
ID INT NOT NULL, 
NAME  VARCHAR2(100), 
AGE INT, 
CITY VARCHAR2(20), 
BALANCE DECIMAL(10,2) 
);

INSERT INTO CUSTOMER VALUES(1000,'Rajesh Kumar',30,'Chennai',10000);

INSERT INTO CUSTOMER VALUES(1001,'Ashwin Sekar',25,'Bangalore',20000);

INSERT INTO CUSTOMER VALUES(1002,'Tharani Priya',35,'Hyderabad',30000);

INSERT INTO CUSTOMER VALUES(1003,'Vignesh',36,'Pune',40000);

INSERT INTO CUSTOMER VALUES(1003,'Dhivya',40,'Delhi',50000);

SELECT * FROM CUSTOMER;

DECLARE 
    c_id customer.id%type := 1002; 
    c_name customer.name%type; 
    c_city customer.city%type; 
BEGIN 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHER ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
END; 
/

DECLARE 
    c_id customer.id%type := 1002; 
    c_name customer.name%type; 
    c_city customer.city%type; 
BEGIN 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
END; 
/

DECLARE 
    c_id customer.id%type := 1010; 
    c_name customer.name%type; 
    c_city customer.city%type; 
BEGIN 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
END; 
/

DECLARE 
    c_id customer.id%type := 1000; 
    c_name customer.name%type; 
    c_city customer.city%type; 
BEGIN 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
     
    EXCEPTION 
    WHEN no_data_found THEN 
        dbms_output.put_line('No such customer with id: '|| c_cid); 
    WHEN others THEN 
        dbms_output.put_line('Cought an error while fetching the customer data'); 
END; 
/

DECLARE 
    c_id customer.id%type := 1000; 
    c_name customer.name%type; 
    c_city customer.city%type; 
BEGIN 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
     
    EXCEPTION 
    WHEN no_data_found THEN 
        dbms_output.put_line('No such customer with id: '|| c_id); 
    WHEN others THEN 
        dbms_output.put_line('Cought an error while fetching the customer data'); 
END; 
/

DECLARE 
    c_id customer.id%type := 1006; 
    c_name customer.name%type; 
    c_city customer.city%type; 
BEGIN 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
     
    EXCEPTION 
    WHEN no_data_found THEN 
        dbms_output.put_line('No such customer with id: '|| c_id); 
    WHEN others THEN 
        dbms_output.put_line('Cought an error while fetching the customer data'); 
END; 
/

DECLARE 
    c_id customer.id%type := 1006; 
    c_name customer.name%type; 
    c_city customer.city%type; 
BEGIN 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
     
    -- EXCEPTION 
    -- WHEN no_data_found THEN 
    --     dbms_output.put_line('No such customer with id: '|| c_id); 
    -- WHEN others THEN 
    --     dbms_output.put_line('Cought an error while fetching the customer data'); 
         
    dbms_output.put_line('MySQL Training!') 
END; 
/

DECLARE 
    c_id customer.id%type := 1006; 
    c_name customer.name%type; 
    c_city customer.city%type; 
BEGIN 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
     
    -- EXCEPTION 
    -- WHEN no_data_found THEN 
    --     dbms_output.put_line('No such customer with id: '|| c_id); 
    -- WHEN others THEN 
    --     dbms_output.put_line('Cought an error while fetching the customer data'); 
         
    dbms_output.put_line('MySQL Training!'); 
END; 
/

DECLARE 
    c_id customer.id%type := 1006; 
    c_name customer.name%type; 
    c_city customer.city%type; 
BEGIN 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
     
    EXCEPTION 
    WHEN no_data_found THEN 
        dbms_output.put_line('No such customer with id: '|| c_id); 
    WHEN others THEN 
        dbms_output.put_line('Cought an error while fetching the customer data'); 
         
    dbms_output.put_line('MySQL Training!'); 
END; 
/

DECLARE 
    c_id customer.id%type := 1006; 
    c_name customer.name%type; 
    c_city customer.city%type; 
BEGIN 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
     
    EXCEPTION 
    WHEN no_data_found THEN 
        dbms_output.put_line('No such customer with id: '|| c_id); 
    WHEN others THEN 
        dbms_output.put_line('Cought an error while fetching the customer data'); 
         
    dbms_output.put_line('MySQL Training!'); 
END; 
/

DECLARE 
    c_id customer.id%type := 1006; 
    c_name customer.name%type; 
    c_city customer.city%type; 
BEGIN 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
     
    -- EXCEPTION 
    -- WHEN no_data_found THEN 
    --     dbms_output.put_line('No such customer with id: '|| c_id); 
    -- WHEN others THEN 
    --     dbms_output.put_line('Cought an error while fetching the customer data'); 
         
END; 
/

DECLARE 
    c_id customer.id%type := 1006; 
    c_name customer.name%type; 
    c_city customer.city%type; 
BEGIN 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
     
    EXCEPTION 
    WHEN no_data_found THEN 
        dbms_output.put_line('No such customer with id: '|| c_id); 
    WHEN others THEN 
        dbms_output.put_line('Cought an error while fetching the customer data'); 
         
END; 
/

SELECT * FROM CUSTOMER;

DECLARE 
    c_id customer.id%type := &cc_id; 
    c_name customer.name%type; 
    c_city customer.city%type; 
    invalid_customer_id EXCEPTION; 
BEGIN 
    IF c_id < 1000 THEN 
        RAISE invalid_customer_id 
    ELSE 
        SELECT name , city INTO c_name,c_city 
        FROM CUSTOMER 
        WHERE ID=c_id; 
        dbms_output.put_line('Name : ' || c_name || ' City :' || c_city);     
    END IF; 
END; 
/

DECLARE 
    c_id customer.id%type := & cc_id; 
    c_name customer.name%type; 
    c_city customer.city%type; 
    invalid_customer_id EXCEPTION; 
BEGIN 
    IF c_id < 1000 THEN 
        RAISE invalid_customer_id 
    ELSE 
        SELECT name , city INTO c_name,c_city 
        FROM CUSTOMER 
        WHERE ID=c_id; 
        dbms_output.put_line('Name : ' || c_name || ' City :' || c_city);     
    END IF; 
END; 
/

DECLARE 
    c_id customer.id%type := &cc_id; 
    c_name customer.name%type; 
    c_city customer.city%type; 
    invalid_customer_id EXCEPTION; 
BEGIN 
    IF c_id < 1000 THEN 
        RAISE invalid_customer_id 
    ELSE 
        SELECT name , city INTO c_name,c_city 
        FROM CUSTOMER 
        WHERE ID=c_id; 
        dbms_output.put_line('Name : ' || c_name || ' City :' || c_city);     
    END IF; 
END; 
/

DECLARE 
    c_id customer.id%type := 1; 
    c_name customer.name%type; 
    c_city customer.city%type; 
    invalid_customer_id EXCEPTION; 
BEGIN 
    IF c_id < 1000 THEN 
        RAISE invalid_customer_id 
    ELSE 
        SELECT name , city INTO c_name,c_city 
        FROM CUSTOMER 
        WHERE ID=c_id; 
        dbms_output.put_line('Name : ' || c_name || ' City :' || c_city);     
    END IF; 
END; 
/

DECLARE 
    c_id customer.id%type := 1; 
    c_name customer.name%type; 
    c_city customer.city%type; 
    invalid_customer_id EXCEPTION; 
BEGIN 
    IF c_id < 1000 THEN 
        RAISE invalid_customer_id; 
    ELSE 
        SELECT name , city INTO c_name,c_city 
        FROM CUSTOMER 
        WHERE ID=c_id; 
        dbms_output.put_line('Name : ' || c_name || ' City :' || c_city);     
    END IF; 
END; 
/

DECLARE 
    c_id customer.id%type := 1; 
    c_name customer.name%type; 
    c_city customer.city%type; 
    ex_invalid_id EXCEPTION; 
BEGIN 
    IF c_id < 1000 THEN 
        RAISE ex_invalid_id; 
    ELSE 
        SELECT name , city INTO c_name,c_city 
        FROM CUSTOMER 
        WHERE ID=c_id; 
        dbms_output.put_line('Name : ' || c_name || ' City :' || c_city);     
    END IF; 
END; 
/

DECLARE 
    c_id customer.id%type := 1; 
    c_name customer.name%type; 
    c_city customer.city%type; 
    ex_invalid_id EXCEPTION; 
BEGIN 
    IF c_id < 1000 THEN 
        RAISE ex_invalid_id; 
    ELSE 
        SELECT name , city INTO c_name,c_city 
        FROM CUSTOMER 
        WHERE ID=c_id; 
        dbms_output.put_line('Name : ' || c_name || ' City :' || c_city);     
    END IF; 
END; 
/

DECLARE 
    c_id customer.id%type := 1; 
    c_name customer.name%type; 
    c_city customer.city%type; 
    ex_invalid_id EXCEPTION; 
BEGIN 
    -- IF c_id < 1000 THEN 
    --     RAISE ex_invalid_id; 
    -- ELSE 
    --     SELECT name , city INTO c_name,c_city 
    --     FROM CUSTOMER 
    --     WHERE ID=c_id; 
    --     dbms_output.put_line('Name : ' || c_name || ' City :' || c_city);     
    -- END IF; 
    dbms_output.put_line('Has run'); 
END; 
/

DECLARE 
    c_id customer.id%type := 1; 
    c_name customer.name%type; 
    c_city customer.city%type; 
    ex_invalid_id EXCEPTION; 
     
BEGIN 
    IF c_id < 1000 THEN 
        RAISE ex_invalid_id; 
    -- ELSE 
    --     SELECT name , city INTO c_name,c_city 
    --     FROM CUSTOMER 
    --     WHERE ID=c_id; 
    --     dbms_output.put_line('Name : ' || c_name || ' City :' || c_city);     
    -- END IF; 
    dbms_output.put_line('Has run'); 
END; 
/

DECLARE 
    c_id customer.id%type := 1; 
    c_name customer.name%type; 
    c_city customer.city%type; 
    ex_invalid_id EXCEPTION; 
     
BEGIN 
 
        SELECT name , city INTO c_name,c_city 
        FROM CUSTOMER 
        WHERE ID=c_id; 
        dbms_output.put_line('Name : ' || c_name || ' City :' || c_city);     
    dbms_output.put_line('Has run'); 
END; 
/

DECLARE 
    c_id customer.id%type := 1005; 
    c_name customer.name%type; 
    c_city customer.city%type; 
BEGIN 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
     
    EXCEPTION 
    WHEN no_data_found THEN 
        dbms_output.put_line('No such customer with id: '|| c_id); 
    WHEN others THEN 
        dbms_output.put_line('Cought an error while fetching the customer data'); 
         
END; 
/

DECLARE 
    c_id customer.id%type := 1005; 
    c_name customer.name%type; 
    c_city customer.city%type; 
    ex_invalid_id EXCEPTION; 
     
BEGIN 
 
        SELECT name , city INTO c_name,c_city 
        FROM CUSTOMER 
        WHERE ID=c_id; 
        dbms_output.put_line('Name : ' || c_name || ' City :' || c_city);     
    dbms_output.put_line('Has run'); 
END; 
/

DECLARE 
    c_id customer.id%type := 1005; 
    c_name customer.name%type; 
    c_city customer.city%type; 
     
    ex_invalid_id EXCEPTION; 
     
BEGIN 
 
    IF c_id < 1000 THEN 
        RAISE ex_invalid_id 
    ELSE 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
    END IF; 
     
    EXCEPTION 
    WHEN no_data_found THEN 
        dbms_output.put_line('No such customer with id: '|| c_id); 
    WHEN ex_invalid_id 
        dbms_output.put_line('INVALID CUST ID'); 
    WHEN others THEN 
        dbms_output.put_line('Cought an error while fetching the customer data'); 
         
END; 
/

DECLARE 
    c_id customer.id%type := 1005; 
    c_name customer.name%type; 
    c_city customer.city%type; 
     
    ex_invalid_id EXCEPTION; 
     
BEGIN 
 
    IF c_id < 1000 THEN 
        RAISE ex_invalid_id; 
    ELSE 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
    END IF; 
     
    EXCEPTION 
    WHEN no_data_found THEN 
        dbms_output.put_line('No such customer with id: '|| c_id); 
    WHEN ex_invalid_id 
        dbms_output.put_line('INVALID CUST ID'); 
    WHEN others THEN 
        dbms_output.put_line('Cought an error while fetching the customer data'); 
         
END; 
/

DECLARE 
    c_id customer.id%type := 1005; 
    c_name customer.name%type; 
    c_city customer.city%type; 
     
    ex_invalid_id EXCEPTION; 
     
BEGIN 
 
    IF c_id < 1000 THEN 
        RAISE ex_invalid_id; 
    ELSE 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
    END IF; 
     
    EXCEPTION 
    WHEN no_data_found THEN 
        dbms_output.put_line('No such customer with id: '|| c_id); 
    WHEN ex_invalid_id THEN 
        dbms_output.put_line('INVALID CUST ID'); 
    WHEN others THEN 
        dbms_output.put_line('Cought an error while fetching the customer data'); 
         
END; 
/

DECLARE 
    c_id customer.id%type := 105; 
    c_name customer.name%type; 
    c_city customer.city%type; 
     
    ex_invalid_id EXCEPTION; 
     
BEGIN 
 
    IF c_id < 1000 THEN 
        RAISE ex_invalid_id; 
    ELSE 
    SELECT name , city INTO c_name,c_city 
    FROM CUSTOMER 
    WHERE ID=c_id; 
    dbms_output.put_line('Name : ' || c_name || ' City :' || c_city); 
    END IF; 
     
    EXCEPTION 
    WHEN no_data_found THEN 
        dbms_output.put_line('No such customer with id: '|| c_id); 
    WHEN ex_invalid_id THEN 
        dbms_output.put_line('INVALID CUST ID'); 
    WHEN others THEN 
        dbms_output.put_line('Cought an error while fetching the customer data'); 
         
END; 
/

DECLARE 
    c_name customer.name%type; 
    c_city customer.city%type; 
     
    CURSOR cust_data IS 
        SELECT name, city FROM CUSTOMER; 
BEGIN 
   OPEN cust_data; 
   LOOP 
    FETCH cust_data INTO c_name, c_city; 
    EXIT WHEN cust_data%notfound;' 
    dbms_output.put_line(c_name || ' - ' || c_city); 
   END LOOP; 
 
END; 
/

DECLARE 
    c_name customer.name%type; 
    c_city customer.city%type; 
     
    CURSOR cust_data IS 
        SELECT name, city FROM CUSTOMER; 
BEGIN 
   OPEN cust_data; 
   LOOP 
    FETCH cust_data INTO c_name, c_city; 
    EXIT WHEN cust_data%notfound; 
    dbms_output.put_line(c_name || ' - ' || c_city); 
   END LOOP; 
 
END; 
/

DECLARE 
    c_name customer.name%type; 
    c_city customer.city%type; 
     
    CURSOR cust_data IS 
        SELECT name, city FROM CUSTOMER; 
BEGIN 
   OPEN cust_data;; 
   LOOP 
    FETCH cust_data INTO c_name, c_city; 
    EXIT WHEN cust_data%notfound; 
    dbms_output.put_line(c_name || ' - ' || c_city); 
   END LOOP; 
    CLOSE cust_data; 
END; 
/

DECLARE 
    c_name customer.name%type; 
    c_city customer.city%type; 
     
    CURSOR cust_data IS 
        SELECT name, city FROM CUSTOMER; 
BEGIN 
   OPEN cust_data; 
   LOOP 
    FETCH cust_data INTO c_name, c_city; 
    EXIT WHEN cust_data%notfound; 
    dbms_output.put_line(c_name || ' - ' || c_city); 
   END LOOP; 
    CLOSE cust_data; 
END; 
/

DECLARE 
    c_name customer.name%type; 
    c_city customer.city%type; 
    amount customer.balance%type; 
    CURSOR cust_data IS 
        SELECT name, city, balance FROM CUSTOMER; 
BEGIN 
   OPEN cust_data; 
   LOOP 
    FETCH cust_data INTO c_name, c_city, amount; 
    EXIT WHEN cust_data%notfound; 
    dbms_output.put_line(c_name || ' - ' || c_city || ' - ' || amount); 
   END LOOP; 
    CLOSE cust_data; 
END; 
/

DECLARE 
    c_name customer.name%type; 
    c_city customer.city%type; 
    c_balance customer.balance%type; 
    CURSOR cust_data IS 
        SELECT name, city, balance FROM CUSTOMER; 
BEGIN 
   OPEN cust_data; 
   LOOP 
    FETCH cust_data INTO c_name, c_city, c_balance; 
    EXIT WHEN cust_data%notfound; 
    dbms_output.put_line(c_name || ' - ' || c_city || ' - ' || c_balance); 
   END LOOP; 
    CLOSE cust_data; 
END; 
/

DECLARE 
    c_name customer.name%type; 
    c_city customer.city%type; 
    c_balance customer.balance%type; 
    CURSOR cust_data IS 
        SELECT name, city, balance FROM CUSTOMER ORDER  BY name; 
BEGIN 
   OPEN cust_data; 
   LOOP 
    FETCH cust_data INTO c_name, c_city, c_balance; 
    EXIT WHEN cust_data%notfound; 
    dbms_output.put_line(c_name || ' - ' || c_city || ' - ' || c_balance); 
   END LOOP; 
    CLOSE cust_data; 
END; 
/

DECLARE 
    c_name customer.name%type; 
    c_city customer.city%type; 
    c_balance customer.balance%type; 
    CURSOR cust_data IS 
        SELECT name, city, balance FROM CUSTOMER ORDER  BY balance desc; 
BEGIN 
   OPEN cust_data; 
   LOOP 
    FETCH cust_data INTO c_name, c_city, c_balance; 
    EXIT WHEN cust_data%notfound; 
    dbms_output.put_line(c_name || ' - ' || c_city || ' - ' || c_balance); 
   END LOOP; 
    CLOSE cust_data; 
END; 
/

