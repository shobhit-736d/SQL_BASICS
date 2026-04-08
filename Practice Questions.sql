								-------------------- Practice questions --------------------	
								
--------------------DQL (DATA QUERY LANGUAGE)--------------------------

select *
from customers

select *
from orders
-- Retrieve customers whose score is between 400 and 800 but not from USA.

select *
from customers
where score between 400 and 800
and country <> 'USA' 

-- Find customers whose first_name starts with 'J'
SELECT *
FROM customers
WHERE first_name LIKE 'j%';
-- Show customers whose score is greater than 500 OR country is Germany.

SELECT
	first_name,
	country,
	score
FROM customers
WHERE score > 500
OR country = 'Germany'

-- Display orders whose sales value is NOT between 10 and 30.
select *
from orders
where sales not between 10 and 30


-- Find customers where country value is NULL.

select *
from customers
where country = null
-- Retrieve the top 3 customers with the highest scores.

select top 2 *
from customers
order by score DESC

-- Find the 2 orders with the lowest sales values.

select top 2 *
from orders
order by sales ASC

-- Sort customers by country (ascending) and score (descending).

select *
from customers
order by 
	country ASC,
	score DESC
-- Count how many customers belong to each country.
select
	country,
	count(id) as counting_customers
	from customers
	group by country
-- Find the average score per country.

select
	country,
	avg(score) as avg_score
	from customers
	group by country
-- Calculate the total sales from the orders table.
select 
	sum(sales) as total_sales
	from orders
-- Find the minimum and maximum sales values in a single query.
select 
	min(sales) as minimum_sales,
	max(sales) as maximum_sales
	from orders
-- Count how many customers have a score greater than 500.
select
	count(score) as no_of_customers
	from customers
	where score > 500

---------------------DDL (DATA DEFINITION LANGUAGE)----------------------

	/*
Create a table named students with columns:
	id (integer, primary key)
	name (varchar 50)
	email (varchar 100)
	age (integer)
*/

CREATE TABLE students (
	id INT,
	student_name VARCHAR(50),
	email VARCHAR(100) ,
	age INT ,
	CONSTRAINT pk_students PRIMARY KEY (id)
)


/*
Create a table products with:
	product_id (integer, primary key)
	product_name (varchar 80, not null)
	price (decimal 8,2)
	created_at (date)
*/

CREATE TABLE products (
	product_id INT,
	product_name VARCHAR(80) NOT NULL,
	price DECIMAL(8 , 2),
	created_at DATE
	CONSTRAINT pk_products PRIMARY KEY (product_id)
)

/*
Create a table employees with:
	emp_id (integer, primary key)
	first_name (varchar 50)
	last_name (varchar 50)
	salary (integer)
	department (varchar 50 default 'HR')
*/

CREATE TABLE employees (
	emp_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	salary INT,
	department VARCHAR(50) DEFAULT 'HR',
	CONSTRAINT pk_employees PRIMARY KEY (emp_id)
)


/*
Create a table orders with:
	order_id (integer primary key)
	order_date (date)
	customer_id (integer)
	total_amount (decimal 10,2)
*/

CREATE TABLE orders_bag (
	order_id INT,
	order_date DATE,
	customer_id INT,
	total_amount DECIMAL(10, 2),
	CONSTRAINT pk_orders_bag PRIMARY KEY(order_id)
)

/*
Create a table courses with:
	course_id (integer primary key)
	course_name (varchar 100 not null)
	duration (integer)
	fees (integer
*/

CREATE TABLE courses (
	course_id INT,
	course_name VARCHAR(100) NOT NULL,
	duration INT,
	fees INT,
	CONSTRAINT pk_courses PRIMARY KEY(course_id)
)

-- Add a new column phone (varchar 15) to the students table.

ALTER TABLE students
ADD phone VARCHAR (15) 

-- Add column stock (integer default 0) to products table.

ALTER TABLE products
ADD stock INT DEFAULT 0

-- Modify column salary in employees table to decimal(10,2).

ALTER TABLE employees
ALTER COLUMN salary DECIMAL(10, 2)

-- Rename column name to full_name in students table.



-- Delete column age from students table

ALTER TABLE students
DROP COLUMN age

-- Change table name courses to training_courses.



-- Add constraint so that email in students table must be unique.

ALTER TABLE students
ADD CONSTRAINT unique_email UNIQUE (email)

-- Delete table students completely.

DROP TABLE students

-- Delete column stock from products table.

ALTER TABLE products
DROP CONSTRAINT DF__products__stock__787EE5A0 

ALTER TABLE products
DROP COLUMN stock

SELECT * FROM products

-- Remove UNIQUE constraint from students email column.

ALTER TABLE students
DROP CONSTRAINT unique_email 

-- Delete table employees only if it exists

DROP TABLE employees
-- Delete multiple tables: products and orders_bag and courses

DROP TABLE products,
		orders_bag,
		courses

/*
Create table departments:
	dept_id primary key
	dept_name not null unique
*/

CREATE TABLE departments (
	dept_id INT,
	dept_name VARCHAR(100) NOT NULL UNIQUE,
	CONSTRAINT pk_departments PRIMARY KEY (dept_id)
)

/*
Add foreign key in employees table referencing departments table.
(emp.department_id → departments.dept_id)
*/



-- Delete departments table but only if no other table depends on it.

DROP TABLE departments

------------------------DML(DATA MANIPULATION LANGUAGE)--------------------

/*
Insert 3 persons into the empty persons table.

Example idea:
1, Aman Sharma, 23, Delhi
2, Neha Verma, 28, Lucknow
3, Riya Singh, 25, Kanpur
*/

INSERT INTO persons (id, person_name, person_age, city)
VALUES	
	(1, 'Aman Sharma', 23, 'Delhi'),
	(2, 'Neha Verma', 28, 'Lucknow'),
	(3, 'Riya Singh', 25, 'Kanpur')

-- Insert a new customer whose name is Ankit Rao and city Delhi.

INSERT INTO persons (id, person_name, city)
VALUES	
	(4, 'Ankit Rao', 'Delhi')

/*
Insert 2 new customers:
Rahul Mehta from Mumbai
Priya Kapoor from Pune
*/

INSERT INTO persons (id, person_name, city)
VALUES	
	(5, 'Rahul Mehta', 'Mumbai'),
	(6, 'Priya Kapoor', 'Pune')

--Update the city of Neha Verma in persons table from Lucknow → Noida.

UPDATE persons
SET city = 'Noida'
WHERE person_name = 'Neha Verma'

--Increase the age of Aman Sharma by 1 year.

UPDATE persons
SET person_age = person_age + 1
WHERE person_name = 'Aman Sharma'

--Delete the record of Riya Singh from persons table.

DELETE FROM persons
WHERE id = 3


----------------------------------------WHERE CONDITION----------------------------------------

--Show customers whose score is greater than 0 and not equal to 500.

SELECT * 
FROM customers
WHERE score > 0 AND score = 500

--Select customers whose name ends with 'n' and score greater than 600.

SELECT *
FROM customers
WHERE first_name LIKE '%n' AND score > 600

--Select customers whose score is divisible by 100.

SELECT *
FROM customers
WHERE score % 100 = 0

--Display customers whose name length seems greater than 4 letters.

SELECT *
FROM customers
WHERE first_name LIKE '_____%'

--Display orders where sales > 10 AND sales < 40 AND sales != 20.

SELECT *
FROM orders
WHERE sales > 10 AND sales < 40 AND sales != 20
