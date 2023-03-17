
	


	
     USE exercise_hr;
--     
     SHOW TABLES;
--     
     USE store;
--     
     SHOW TABLES;
     USE store;
     SELECT *
     FROM customers
--     
     ORDER BY first_namebn   DESC;
     
     
    USE hr;
--     
 SHOW TABLES;

 SELECT *
 FROM employees
 ORDER BY first_name DESC;

 USE hr ;
 SHOW TABLES;
 SELECT * FROM employees;
 SELECT employee_id ,first_name ,last_name , salary 
 FROM employees
 ORDER BY salary ASC;

 select 1,2;
 select 1+2;
 select 100 - 50 /2 as 'value';

 USE store;
 select first_name
 from customers;

 select first_name, last_name,points, points + 10 as 'new points'
 from customers;

 select 171*214+625 as answer;

 USE exercise_hr;
 SELECT first_name AS 'First Name', last_name AS 'Last Name'
  FROM employees;
  
  use store;
  select distinct state
  from customers;
  
  use store;
  select unit_price , unit_price * 1.1 as 'new price'
  from products;
  
  select *
  from customers
  where state = 'FL';
  
  select *
  from customers
  where points > 3000;
  
  select *
  from customers
 where birth_date >= '1950-01-01';

 select *
 from customers
 where points > 3000 and birth_date >= '1950-01-01';

 select *
 from customers
 where points > 3000 or birth_date >= '1950-01-01';

 select*
 from customers
 where birth_date > '1889-01-01' or points > '1000' and state = 'VA' ;

 select*
 from customers
 where birth_date > '1990-01-01' and points > '1000' and state = 'FL' ;

 select *
 from customers
 where state != 'FL';

 select *
 from customers
 where not (state = 'FL');

 use store;

 show tables;
 select * from customers;
 select * from customers where state = 'FL' or state ='VA' or state='GA';

 select * from customers where state ='FL' or state = 'VA' or state='GA';

 select * 
 from products where quantity_in_stock in (38,49,72);

 select * 
 from customers where points between 3000 and 10000;

 select * 
 from customers where birth_date between '1990-01-01' and '2000-01-01';

 select *
 from customers where last_name like 'MacCaffrey';

 select *
 from customers where last_name like 'B%';

 select *
 from customers where address like '%Trail%' ;

 select *
 from customers where address like '%Trail%' or address like '%Avenue%' ;

 select *
 from customers where phone like '%9';

 select *
 from customers where phone  NOT like '9%';

 use store;

 select*
 from customers 
 where last_name like '_____y';

 select*
 from customers 
 where last_name like 'b____y';

 select*
 from customers 
 where last_name like 'b%y';

 select*
 from customers 
 where last_name regexp 'Mac';

 select*
 from customers 
 where last_name regexp 'field$';

 use store;

 select*
 from customers 
 where last_name regexp 'Mac[field$]rose';

 select *
 from customers 
 where last_name regexp '[bc]e';

 select *
 from customers 
 where last_name regexp '[ff]' || '[qf]' || '[cf]' ;

 use exercise_hr;

 select *
 from employees 
 where first_name like '%b%' and first_name like '%c%';

 select *
 from employees 
 where first_name regexp 'b' and first_name regexp 'c';

 select *
 from employees 
 where last_name like '______' ;

 use store;

 show tables ;

 select *
 from orders 
 where status ='1';

 select *
 from orders 
 where shipper_id is null;

 select *
 from orders
where status = '2';

 select *
 from orders 
 where shipper_id is not null
 limit 1,3;

 select *
 from orders 
 where shipper_id is not null
 limit 5;

 select *
 from customers
 order by customer_id desc
 limit 5;

 select *
 from customers
 order by points desc
 limit 3;

 select *
 from customers;

 explain select *
 from customers;

 use exercise_hr;

 explain select *
 from employees
 where employee_id = 102;

 select *
 from employees;

 explain select *
 from employees
 where last_name = 'De Haan' ;

 create database if not exists countries;

 use countries;

 create table if not exists user(
 country_ID varchar(2) not null,
 country_NAME varchar(40) ,
 REGION_ID int
 );

 create database if  not exists countries; 
 use countries;
 CREATE TABLE IF NOT EXISTS count ( 
 COUNTRY_ID VARCHAR(2) PRIMARY KEY, 
 COUNTRY_NAME VARCHAR(40), 
 REGION_ID int 
 );  
 DESCRIBE count;

ALTER TABLE count
ADD COUNTRY_CODE varchar(3); 
DESCRIBE count;

Alter TABLE count
DROP COUNTRY_CODE;  
 DESCRIBE count;

INSERT INTO countries ( COUNTRY_ID,COUNTRY_NAME, REGION_ID )
VALUES ('91','india','001');

INSERT INTO  countries (COUNTRY_ID,COUNTRY_NAME, REGION_ID,COUNTRY_CODE)
 values ("r1","india",234,2343);
INSERT INTO countries (COUNTRY_ID,COUNTRY_NAME, REGION_ID,COUNTRY_CODE)
VALUES("r1","india","null",2343), ("r2","pakistan","",2343), ("r3","china","",2343);





