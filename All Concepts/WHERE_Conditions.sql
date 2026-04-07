---------------------Comparison Operators---------------------

-- Retrieve all customers from Germany

SELECT *
FROM customers
WHERE country = 'Germany'

-- Retrieve all the customers who are not from Germany

SELECT *
FROM customers
WHERE country <> 'Germany'

-- Retrieve all customers with score greater than 500

SELECT *
FROM customers
WHERE score > 500

-- Retrieve all customers with score of 500 or more

SELECT *
FROM customers
WHERE score >= 500

-- Retrieve all customers with score less than 500

SELECT *
FROM customers
WHERE score < 500

-- Retrieve all customers with score 500 or less

SELECT *
FROM customers
WHERE score <= 500

---------------------Logical Operators-------------------

-- Retrieve all customers who are from the USA AND have a score greater than 500

SELECT *
FROM customers
WHERE country = 'USA'
	AND score > 500

-- Retrieve all customers who are either from the USA OR have a score greater than 500

SELECT *
FROM customers
WHERE country = 'USA'
	OR score > 500

-- Retrieve all customers with score NOT less than 500

SELECT *
FROM customers
WHERE NOT score < 500

------------------------Range Operator--------------------------

-- Retrieve all customers whose score falls in the range between 100 and 500

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500

---------------------Membership Operator-------------------------

-- Retrieve all customers from either Germany OR USA

SELECT *
FROM customers
WHERE country IN ('Germany', 'USA') 

-- Retrieve all customers not from Germany OR USA

SELECT *
FROM customers
WHERE country NOT IN ('Germany', 'USA') 

-----------------------Search Operator--------------------------

-- Find all customers whose first name start with 'M'

SELECT *
FROM customers
WHERE first_name LIKE 'M%'

-- Find all customers whose first name end with 'n']

SELECT *
FROM customers
WHERE first_name LIKE '%n'

-- Find all customers whose first_name contains 'r'

SELECT *
FROM customers
WHERE first_name LIKE '%r%'

-- Find all customers whose first name has 'r' in the third position

SELECT *
FROM customers
WHERE first_name LIKE '__r%'