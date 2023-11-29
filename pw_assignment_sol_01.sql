use mavenmovies;
---------- ANS for question no 1 question---------------
SELECT TABLE_NAME, COLUMN_NAME FROM information_schema.KEY_COLUMN_USAGE WHERE CONSTRAINT_NAME = 'PRIMARY'
  AND TABLE_SCHEMA = 'mavenmovies';
  
SELECT CONSTRAINT_NAME,TABLE_NAME,COLUMN_NAME,REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
FROM
    information_schema.KEY_COLUMN_USAGE
WHERE
    CONSTRAINT_NAME != 'PRIMARY'
        AND REFERENCED_TABLE_NAME IS NOT NULL
        AND TABLE_SCHEMA = 'mavenmovies';
-- Primary Key: Uniquely identifies records within a table.It can hold unique and Not null Values
-- Foreign Key: Establishes relationships between tables by referencing the primary key of another table.It can contin null values also        
  
-------------- ANS for Question no 2 --------------------
select * from actor;
-------------- ANS for Question no 3 --------------------
select * from customer;
-------------- ANS for Question no 4 --------------------
select distinct(country) from country;
-------------- ANS for Question no 5 -------------------- 
select * from customer where active =1 ;
-------------- ANS for Question no 6 -------------------- 
select rental_id  , customer_id from rental where customer_id =1; 
-------------- ANS for Question no 7 -------------------- 
select title,rental_duration from film where rental_duration > 5;
-------------- ANS for Question no 8 -------------------- 
select title ,replacement_cost  from film where replacement_cost >15 and replacement_cost <20;
-------------- ANS for Question no 9 --------------------
select count(distinct first_name) as first_name_count from actor;
-------------- ANS for Question no 10 --------------------
select * from customer limit 10 ; 
-------------- ANS for Question no 11 --------------------
select first_name from customer where first_name like 'b%' limit 3;
-------------- ANS for Question no 12 --------------------
select title, rating from film where rating ="G" limit 5;
-------------- ANS for Question no 13 --------------------
select first_name from customer where first_name like 'a%'; 
-------------- ANS for Question no 14 --------------------
select first_name from customer where first_name like '%a';
-------------- ANS for Question no 15 --------------------
select city from city  where city like "a%a" limit 4;
-------------- ANS for Question no 16 --------------------
select first_name from customer where first_name like "%ni%" ;
-------------- ANS for Question no 17 --------------------
select first_name from customer where first_name like "_r%" ;
-------------- ANS for Question no 18 --------------------
select first_name from customer where first_name like "r%" and length(first_name)>=5 ;
-------------- ANS for Question no 19 --------------------	
select first_name from customer where first_name like "a%o";
-------------- ANS for Question no 20 --------------------	
select title ,rating from film where rating in ("PG","PG-13") ;
-------------- ANS for Question no 21 --------------------
select * from film where length between 50 and 100;
-------------- ANS for Question no 22 --------------------
select * from actor limit 50;
-------------- ANS for Question no 23 --------------------
select distinct film_id from inventory;
